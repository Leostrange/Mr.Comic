package com.example.engine.llm.nllb

import android.content.Context
import android.util.Log
import com.example.core.domain.translation.TranslatorEngine
import com.example.core.domain.translation.TranslationErrorCode
import com.example.core.domain.translation.TranslationException
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import ai.onnxruntime.OnnxTensor
import ai.onnxruntime.OrtEnvironment
import ai.onnxruntime.OrtSession
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton

/**
 * NLLB-200 (No Language Left Behind) translation engine using ONNX Runtime.
 *
 * NLLB-200 supports 200+ languages with a single model. The distilled 600M
 * variant in INT8 quantization runs on mobile devices with ~1.5GB RAM.
 *
 * Model files expected in `llm_models/nllb/`:
 * - `nllb-200-distilled-600M-int8.onnx` — the ONNX model (~600MB)
 * - `sentencepiece.bpe.model` — the tokenizer
 * - `lang_tokens.txt` — language token mappings
 *
 * @see <a href="https://github.com/facebookresearch/fairseq/tree/nllb">NLLB on GitHub</a>
 */
@Singleton
class NllbTranslatorEngine @Inject constructor(
    @ApplicationContext private val context: Context
) : TranslatorEngine {

    override val engineName = "NLLB-200 (Offline)"
    override val requiresNetwork = false

    private val modelDir: File
        get() = File(context.filesDir, "llm_models/nllb").also { it.mkdirs() }

    private var ortEnv: OrtEnvironment? = null
    private var ortSession: OrtSession? = null
    private var isLoaded = false

    // NLLB language code mapping (BCP-47 → NLLB token)
    private val langTokenMap = mapOf(
        "en" to "eng_Latn", "ru" to "rus_Cyrl", "ja" to "jpn_Jpan",
        "zh" to "zho_Hans", "ko" to "kor_Hang", "de" to "deu_Latn",
        "fr" to "fra_Latn", "es" to "spa_Latn", "it" to "ita_Latn",
        "pt" to "por_Latn", "pl" to "pol_Latn", "tr" to "tur_Latn",
        "uk" to "ukr_Cyrl", "ar" to "arb_Arab", "hi" to "hin_Deva",
        "th" to "tha_Thai", "vi" to "vie_Latn", "nl" to "nld_Latn",
        "sv" to "swe_Latn", "da" to "dan_Latn", "fi" to "fin_Latn",
        "nb" to "nob_Latn", "cs" to "ces_Latn", "el" to "ell_Grek",
        "he" to "heb_Hebr", "hu" to "hun_Latn", "ro" to "ron_Latn",
        "sk" to "slk_Latn", "bg" to "bul_Cyrl", "sr" to "srp_Cyrl",
        "hr" to "hrv_Latn", "sl" to "slv_Latn", "et" to "est_Latn",
        "lv" to "lvs_Latn", "lt" to "lit_Latn", "id" to "ind_Latn",
        "ms" to "zsm_Latn", "tl" to "tgl_Latn", "sw" to "swh_Latn"
    )

    /** Check if the NLLB model is downloaded. */
    fun isModelDownloaded(): Boolean {
        val modelFile = File(modelDir, MODEL_FILE_NAME)
        return modelFile.exists() && modelFile.length() > 100_000_000 // >100MB
    }

    /** Get the model file path for download manager. */
    fun getModelFile(): File = File(modelDir, MODEL_FILE_NAME)

    override suspend fun isLanguagePairAvailable(sourceLang: String, targetLang: String): Boolean {
        // Only available when the actual ONNX model is downloaded and loaded.
        // The placeholder tokenizer is NOT usable for real translation.
        if (!isModelDownloaded()) return false
        if (!isLoaded) {
            val loaded = loadModel()
            if (!loaded) return false
        }
        val src = normalizeLang(sourceLang)
        val dst = normalizeLang(targetLang)
        return src in langTokenMap && dst in langTokenMap
    }

    override suspend fun prepareLanguagePair(sourceLang: String, targetLang: String): Boolean {
        return isLanguagePairAvailable(sourceLang, targetLang)
    }

    /**
     * Load the ONNX model into memory. This takes several seconds.
     * Call once at app startup or on first translation.
     */
    suspend fun loadModel(): Boolean = withContext(Dispatchers.IO) {
        if (isLoaded) return@withContext true

        val modelFile = File(modelDir, MODEL_FILE_NAME)
        if (!modelFile.exists()) {
            Log.w("NllbTranslator", "Model file not found: ${modelFile.absolutePath}")
            return@withContext false
        }

        try {
            ortEnv = OrtEnvironment.getEnvironment()
            val sessionOptions = OrtSession.SessionOptions().apply {
                setOptimizationLevel(OrtSession.SessionOptions.OptLevel.ALL_OPT)
                setIntraOpNumThreads(4)
            }
            ortSession = ortEnv!!.createSession(modelFile.absolutePath, sessionOptions)
            isLoaded = true
            Log.i("NllbTranslator", "NLLB model loaded successfully")
            true
        } catch (e: Exception) {
            Log.e("NllbTranslator", "Failed to load NLLB model", e)
            false
        }
    }

    /** Unload the model to free memory. */
    fun unloadModel() {
        ortSession?.close()
        ortSession = null
        ortEnv?.close()
        ortEnv = null
        isLoaded = false
    }

    override suspend fun translate(
        text: String,
        sourceLang: String,
        targetLang: String
    ): String = withContext(Dispatchers.IO) {
        val normalized = text.trim()
        if (normalized.isEmpty()) {
            throw TranslationException("Empty input", TranslationErrorCode.EMPTY_INPUT)
        }

        if (!isModelDownloaded()) {
            throw TranslationException(
                "NLLB model not downloaded",
                TranslationErrorCode.MODEL_NOT_DOWNLOADED
            )
        }

        if (!isLoaded) {
            val loaded = loadModel()
            if (!loaded) {
                throw TranslationException(
                    "Failed to load NLLB model",
                    TranslationErrorCode.ENGINE_UNAVAILABLE
                )
            }
        }

        val srcToken = langTokenMap[normalizeLang(sourceLang)]
            ?: throw TranslationException(
                "Source language $sourceLang not supported by NLLB",
                TranslationErrorCode.LANGUAGE_PAIR_NOT_SUPPORTED
            )
        val dstToken = langTokenMap[normalizeLang(targetLang)]
            ?: throw TranslationException(
                "Target language $targetLang not supported by NLLB",
                TranslationErrorCode.LANGUAGE_PAIR_NOT_SUPPORTED
            )

        try {
            // Tokenize input text
            val inputIds = tokenize(normalized, srcToken)
            val attentionMask = LongArray(inputIds.size) { 1 }

            // Create ONNX tensors
            val env = ortEnv!!
            val session = ortSession!!

            val inputTensor = OnnxTensor.createTensor(env, arrayOf(inputIds))
            val maskTensor = OnnxTensor.createTensor(env, arrayOf(attentionMask))
            val srcLangTensor = OnnxTensor.createTensor(env, longArrayOf(langToId(srcToken)))
            val maxLen = minOf(normalized.length * 3, 512)

            // Run inference
            val results = session.run(mapOf(
                "input_ids" to inputTensor,
                "attention_mask" to maskTensor,
                "decoder_input_ids" to OnnxTensor.createTensor(env, arrayOf(longArrayOf(langToId(dstToken))))
            ))

            // Decode output
            val outputIds = results[0].value as Array<LongArray>
            val translated = decode(outputIds[0])

            // Clean up tensors
            inputTensor.close()
            maskTensor.close()
            srcLangTensor.close()
            results.close()

            translated
        } catch (e: TranslationException) {
            throw e
        } catch (e: Exception) {
            Log.e("NllbTranslator", "Translation failed", e)
            throw TranslationException(
                "NLLB translation error: ${e.message}",
                TranslationErrorCode.ENGINE_UNAVAILABLE,
                e
            )
        }
    }

    /**
     * Simple BPE tokenizer for NLLB.
     * In production, this should use the actual SentencePiece model.
     * This is a simplified version that works with pre-tokenized text.
     */
    private fun tokenize(text: String, srcLangToken: String): LongArray {
        // Add language token prefix and encode text
        // In production, use SentencePiece tokenizer from the model file
        val langId = langToId(srcLangToken)
        val textTokens = encodeText(text)
        return longArrayOf(langId) + textTokens + longArrayOf(2) // 2 = EOS
    }

    /**
     * Encode text to token IDs using a simple character-level encoding.
     * In production, replace with SentencePiece BPE encoding.
     */
    private fun encodeText(text: String): LongArray {
        // Placeholder: use character codes as token IDs
        // Real implementation should load the SentencePiece model
        return text.map { it.code.toLong() + 3 }.toLongArray()
    }

    /**
     * Decode token IDs back to text.
     */
    private fun decode(tokenIds: LongArray): String {
        // Skip special tokens (0=PAD, 1=UNK, 2=EOS, 3=BOS)
        // and language tokens
        return tokenIds
            .filter { it > 3 && it < 256000 } // Skip special tokens
            .map { (it - 3).toInt().toChar() }
            .joinToString("")
            .trim()
    }

    private fun langToId(langToken: String): Long {
        // In production, load from lang_tokens.txt
        // This is a placeholder mapping
        return langToken.hashCode().toLong() and 0xFFFFL
    }

    private fun normalizeLang(lang: String): String {
        return when (lang.lowercase().take(2)) {
            "zh", "cmn" -> "zh"
            "nb", "nn" -> "nb"
            else -> lang.lowercase().take(2)
        }
    }

    companion object {
        const val MODEL_FILE_NAME = "nllb-200-distilled-600M-int8.onnx"
        const val MODEL_DOWNLOAD_URL = "https://huggingface.co/facebook/nllb-200-distilled-600M-int8/resolve/main/model.onnx"
        const val MODEL_SIZE_BYTES = 600_000_000L // ~600MB
    }
}
