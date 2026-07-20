package io.leostrange.mrcomic.engine.llm.polish

import android.util.Log
import io.leostrange.mrcomic.core.domain.translation.TranslatorEngine
import io.leostrange.mrcomic.core.domain.translation.TranslationErrorCode
import io.leostrange.mrcomic.core.domain.translation.TranslationException
import io.leostrange.mrcomic.engine.llm.LlmEngine
import io.leostrange.mrcomic.engine.llm.LlmGenerationConfig
import javax.inject.Inject
import javax.inject.Singleton

/**
 * LLM Polish engine that improves the literary quality of translations.
 *
 * This engine takes a raw machine translation (from ML Kit or NLLB) and
 * refines it using an LLM to produce more natural, literary-quality text.
 *
 * Use cases:
 * - Improve awkward machine translation phrasing
 * - Add cultural context and idiomatic expressions
 * - Maintain consistent tone and style
 *
 * This engine should NOT be used for:
 * - Fast bubble-by-bubble comic translation (too slow)
 * - Real-time translation (takes 5-15 seconds per paragraph)
 * - Languages the LLM doesn't support well
 *
 * Typical flow:
 * 1. ML Kit/NLLB produces a raw translation
 * 2. LlmPolishEngine refines it for literary quality
 * 3. User sees the polished version
 */
@Singleton
class LlmPolishEngine @Inject constructor(
    private val llmEngine: LlmEngine
) : TranslatorEngine {

    override val engineName = "LLM Polish"
    override val requiresNetwork = false

    override suspend fun isLanguagePairAvailable(sourceLang: String, targetLang: String): Boolean {
        // LLM polish works best for common language pairs
        val supported = setOf("en", "ru", "ja", "zh", "ko", "de", "fr", "es", "it", "pt")
        return sourceLang.take(2) in supported && targetLang.take(2) in supported
    }

    override suspend fun prepareLanguagePair(sourceLang: String, targetLang: String): Boolean {
        return llmEngine.isReady() || llmEngine.loadModel()
    }

    override suspend fun translate(
        text: String,
        sourceLang: String,
        targetLang: String
    ): String {
        val normalized = text.trim()
        if (normalized.isEmpty()) return ""

        if (!llmEngine.isReady()) {
            val loaded = llmEngine.loadModel()
            if (!loaded) {
                throw TranslationException(
                    "LLM model not available",
                    TranslationErrorCode.MODEL_NOT_DOWNLOADED
                )
            }
        }

        val prompt = buildPolishPrompt(normalized, sourceLang, targetLang)

        return try {
            llmEngine.generateText(
                prompt,
                LlmGenerationConfig(
                    maxTokens = maxOf(normalized.length * 2, 512),
                    temperature = 0.3f,
                    topP = 0.9f
                )
            ).trim()
        } catch (e: Exception) {
            Log.e("LlmPolishEngine", "Polish failed", e)
            throw TranslationException(
                "LLM polish error: ${e.message}",
                TranslationErrorCode.ENGINE_UNAVAILABLE,
                e
            )
        }
    }

    /**
     * Polish an existing raw translation for better literary quality.
     * This is the primary use case — take ML Kit output and improve it.
     */
    suspend fun polishTranslation(
        originalText: String,
        rawTranslation: String,
        sourceLang: String,
        targetLang: String
    ): String {
        if (!llmEngine.isReady()) {
            llmEngine.loadModel()
        }

        val prompt = buildRefinePrompt(originalText, rawTranslation, sourceLang, targetLang)

        return try {
            llmEngine.generateText(
                prompt,
                LlmGenerationConfig(
                    maxTokens = maxOf(rawTranslation.length * 2, 512),
                    temperature = 0.2f,
                    topP = 0.85f
                )
            ).trim()
        } catch (e: Exception) {
            Log.e("LlmPolishEngine", "Refinement failed", e)
            rawTranslation // Return raw translation on failure
        }
    }

    private fun buildPolishPrompt(text: String, sourceLang: String, targetLang: String): String {
        return """You are a professional literary translator. Translate the following text from ${langName(sourceLang)} to ${langName(targetLang)}.

Requirements:
- Produce natural, fluent ${langName(targetLang)} text
- Preserve the original meaning and tone
- Use idiomatic expressions where appropriate
- Maintain paragraph structure
- Do not add explanations or notes

Text to translate:
$text

Translation:"""
    }

    private fun buildRefinePrompt(
        original: String,
        rawTranslation: String,
        sourceLang: String,
        targetLang: String
    ): String {
        return """You are a professional literary editor. Improve the following machine translation to make it more natural and literary.

Original ${langName(sourceLang)} text:
$original

Machine translation to ${langName(targetLang)}:
$rawTranslation

Improved translation (only the refined text, no explanations):"""
    }

    private fun langName(code: String): String = when (code.take(2)) {
        "en" -> "English"; "ru" -> "Russian"; "ja" -> "Japanese"
        "zh" -> "Chinese"; "ko" -> "Korean"; "de" -> "German"
        "fr" -> "French"; "es" -> "Spanish"; "it" -> "Italian"
        "pt" -> "Portuguese"; "pl" -> "Polish"; "tr" -> "Turkish"
        else -> code
    }

    private fun targetTargetLang(code: String) = code
}
