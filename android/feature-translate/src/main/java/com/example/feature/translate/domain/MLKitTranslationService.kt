package com.example.feature.translate.domain

import android.util.Log
import com.google.mlkit.common.model.DownloadConditions
import com.google.mlkit.common.model.RemoteModelManager
import com.google.mlkit.nl.translate.TranslateLanguage
import com.google.mlkit.nl.translate.TranslateRemoteModel
import com.google.mlkit.nl.translate.Translation
import com.google.mlkit.nl.translate.Translator
import com.google.mlkit.nl.translate.TranslatorOptions
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.tasks.await
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Offline translation service using ML Kit Translate
 *
 * Features:
 * - On-device translation (no internet required after model download)
 * - Automatic language model management
 * - Support for 59 languages
 * - Efficient caching of translator instances
 */
@Singleton
class MLKitTranslationService @Inject constructor() : TranslateEngine {

    companion object {
        private const val TAG = "MLKitTranslationService"

        /**
         * ML Kit supported languages (59 total)
         * Full list: https://developers.google.com/ml-kit/language/translation/translation-language-support
         */
        private val SUPPORTED_LANGUAGES = setOf(
            "af", "ar", "be", "bg", "bn", "ca", "cs", "cy", "da", "de",
            "el", "en", "eo", "es", "et", "fa", "fi", "fr", "ga", "gl",
            "gu", "he", "hi", "hr", "ht", "hu", "id", "is", "it", "ja",
            "ka", "kn", "ko", "lt", "lv", "mk", "mr", "ms", "mt", "nl",
            "no", "pl", "pt", "ro", "ru", "sk", "sl", "sq", "sv", "sw",
            "ta", "te", "th", "tl", "tr", "uk", "ur", "vi", "zh"
        )
    }

    override val id: String = "mlkit"
    override val displayName: String = "ML Kit (Offline)"

    // Cache translators to avoid recreating them
    private val translatorCache = mutableMapOf<String, Translator>()
    private val modelManager = RemoteModelManager.getInstance()

    override fun getSupportedLanguages(): Set<String> = SUPPORTED_LANGUAGES

    /**
     * Translate text from one language to another
     *
     * @param text Text to translate
     * @param from Source language code (ISO 639-1)
     * @param to Target language code (ISO 639-1)
     * @return Translated text
     * @throws IllegalArgumentException if language not supported
     * @throws Exception if translation fails or model not downloaded
     */
    override suspend fun translate(text: String, from: String, to: String): String = withContext(Dispatchers.IO) {
        try {
            // Validate languages
            if (from !in SUPPORTED_LANGUAGES) {
                throw IllegalArgumentException("Source language not supported: $from")
            }
            if (to !in SUPPORTED_LANGUAGES) {
                throw IllegalArgumentException("Target language not supported: $to")
            }

            // Same language - no translation needed
            if (from == to) {
                return@withContext text
            }

            // Get or create translator
            val translator = getOrCreateTranslator(from, to)

            // Ensure model is downloaded
            ensureModelDownloaded(translator, from, to)

            // Translate
            val result = translator.translate(text).await()
            Log.d(TAG, "✅ Translated from $from to $to: ${text.take(50)}... -> ${result.take(50)}...")
            result

        } catch (e: Exception) {
            Log.e(TAG, "❌ Translation failed from $from to $to", e)
            throw Exception("Translation failed: ${e.message}", e)
        }
    }

    /**
     * Check if a language model is downloaded
     */
    suspend fun isModelDownloaded(languageCode: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val mlKitLanguage = convertToMLKitLanguage(languageCode)
            val model = TranslateRemoteModel.Builder(mlKitLanguage).build()
            modelManager.isModelDownloaded(model).await()
        } catch (e: Exception) {
            Log.w(TAG, "Failed to check if model is downloaded for $languageCode", e)
            false
        }
    }

    /**
     * Download a language model
     *
     * @param languageCode Language code to download
     * @return true if download successful
     */
    suspend fun downloadModel(languageCode: String): Boolean = withContext(Dispatchers.IO) {
        try {
            Log.d(TAG, "📥 Downloading model for language: $languageCode")

            val mlKitLanguage = convertToMLKitLanguage(languageCode)
            val model = TranslateRemoteModel.Builder(mlKitLanguage).build()

            // Download with WiFi-only condition
            val conditions = DownloadConditions.Builder()
                .requireWifi()
                .build()

            modelManager.download(model, conditions).await()
            Log.i(TAG, "✅ Model downloaded for $languageCode")
            true

        } catch (e: Exception) {
            Log.e(TAG, "❌ Failed to download model for $languageCode", e)
            false
        }
    }

    /**
     * Delete a language model to free up space
     */
    suspend fun deleteModel(languageCode: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val mlKitLanguage = convertToMLKitLanguage(languageCode)
            val model = TranslateRemoteModel.Builder(mlKitLanguage).build()

            modelManager.deleteDownloadedModel(model).await()

            // Also close and remove translator from cache
            translatorCache.entries.removeAll { entry ->
                if (entry.key.startsWith(languageCode)) {
                    entry.value.close()
                    true
                } else false
            }

            Log.i(TAG, "✅ Deleted model for $languageCode")
            true

        } catch (e: Exception) {
            Log.e(TAG, "❌ Failed to delete model for $languageCode", e)
            false
        }
    }

    /**
     * Get list of all downloaded language models
     */
    suspend fun getDownloadedModels(): Set<String> = withContext(Dispatchers.IO) {
        try {
            val downloadedModels = modelManager.getDownloadedModels(TranslateRemoteModel::class.java).await()
            downloadedModels.mapNotNull { model ->
                // Extract language code from model
                when (model) {
                    is TranslateRemoteModel -> {
                        // ML Kit language to ISO 639-1 conversion
                        convertFromMLKitLanguage(model.language)
                    }
                    else -> null
                }
            }.toSet()
        } catch (e: Exception) {
            Log.e(TAG, "Failed to get downloaded models", e)
            emptySet()
        }
    }

    /**
     * Close all translators and clear cache
     */
    fun cleanup() {
        translatorCache.values.forEach { translator ->
            try {
                translator.close()
            } catch (e: Exception) {
                Log.w(TAG, "Error closing translator", e)
            }
        }
        translatorCache.clear()
        Log.d(TAG, "Cleaned up all translators")
    }

    // Private helper methods

    private fun getOrCreateTranslator(from: String, to: String): Translator {
        val key = "$from-$to"
        return translatorCache.getOrPut(key) {
            val options = TranslatorOptions.Builder()
                .setSourceLanguage(convertToMLKitLanguage(from))
                .setTargetLanguage(convertToMLKitLanguage(to))
                .build()

            Translation.getClient(options).also {
                Log.d(TAG, "Created new translator: $from -> $to")
            }
        }
    }

    private suspend fun ensureModelDownloaded(translator: Translator, from: String, to: String) {
        val conditions = DownloadConditions.Builder()
            .requireWifi()
            .build()

        try {
            translator.downloadModelIfNeeded(conditions).await()
            Log.d(TAG, "Model ready for $from -> $to")
        } catch (e: Exception) {
            throw Exception("Failed to download translation model for $from -> $to. Please check your WiFi connection.", e)
        }
    }

    /**
     * Convert ISO 639-1 language code to ML Kit language constant
     *
     * ML Kit uses different codes for some languages:
     * - zh (Chinese) -> ZH for Simplified Chinese
     * - he (Hebrew) -> HE (not IW)
     * - yi (Yiddish) -> JI in some versions
     */
    private fun convertToMLKitLanguage(isoCode: String): String {
        return when (isoCode.lowercase()) {
            "en" -> TranslateLanguage.ENGLISH
            "ru" -> TranslateLanguage.RUSSIAN
            "es" -> TranslateLanguage.SPANISH
            "fr" -> TranslateLanguage.FRENCH
            "de" -> TranslateLanguage.GERMAN
            "it" -> TranslateLanguage.ITALIAN
            "ja" -> TranslateLanguage.JAPANESE
            "ko" -> TranslateLanguage.KOREAN
            "zh" -> TranslateLanguage.CHINESE
            "ar" -> TranslateLanguage.ARABIC
            "pt" -> TranslateLanguage.PORTUGUESE
            "nl" -> TranslateLanguage.DUTCH
            "pl" -> TranslateLanguage.POLISH
            "tr" -> TranslateLanguage.TURKISH
            "sv" -> TranslateLanguage.SWEDISH
            "no" -> TranslateLanguage.NORWEGIAN
            "da" -> TranslateLanguage.DANISH
            "fi" -> TranslateLanguage.FINNISH
            "cs" -> TranslateLanguage.CZECH
            "el" -> TranslateLanguage.GREEK
            "he" -> TranslateLanguage.HEBREW
            "hi" -> TranslateLanguage.HINDI
            "th" -> TranslateLanguage.THAI
            "vi" -> TranslateLanguage.VIETNAMESE
            "uk" -> TranslateLanguage.UKRAINIAN
            "bg" -> TranslateLanguage.BULGARIAN
            "ro" -> TranslateLanguage.ROMANIAN
            "hr" -> TranslateLanguage.CROATIAN
            "sk" -> TranslateLanguage.SLOVAK
            "id" -> TranslateLanguage.INDONESIAN
            "ms" -> TranslateLanguage.MALAY
            "bn" -> TranslateLanguage.BENGALI
            "fa" -> TranslateLanguage.PERSIAN
            "ta" -> TranslateLanguage.TAMIL
            "te" -> TranslateLanguage.TELUGU
            "mr" -> TranslateLanguage.MARATHI
            "ur" -> TranslateLanguage.URDU
            "gu" -> TranslateLanguage.GUJARATI
            "kn" -> TranslateLanguage.KANNADA
            "af" -> TranslateLanguage.AFRIKAANS
            "sq" -> TranslateLanguage.ALBANIAN
            "be" -> TranslateLanguage.BELARUSIAN
            "ca" -> TranslateLanguage.CATALAN
            "cy" -> TranslateLanguage.WELSH
            "eo" -> TranslateLanguage.ESPERANTO
            "et" -> TranslateLanguage.ESTONIAN
            "ga" -> TranslateLanguage.IRISH
            "gl" -> TranslateLanguage.GALICIAN
            "ht" -> TranslateLanguage.HAITIAN_CREOLE
            "hu" -> TranslateLanguage.HUNGARIAN
            "is" -> TranslateLanguage.ICELANDIC
            "ka" -> TranslateLanguage.GEORGIAN
            "lt" -> TranslateLanguage.LITHUANIAN
            "lv" -> TranslateLanguage.LATVIAN
            "mk" -> TranslateLanguage.MACEDONIAN
            "mt" -> TranslateLanguage.MALTESE
            "sl" -> TranslateLanguage.SLOVENIAN
            "sw" -> TranslateLanguage.SWAHILI
            "tl" -> TranslateLanguage.TAGALOG
            else -> throw IllegalArgumentException("Unsupported language code: $isoCode")
        }
    }

    /**
     * Convert ML Kit language constant back to ISO 639-1 code
     */
    private fun convertFromMLKitLanguage(mlKitLang: String): String? {
        return when (mlKitLang) {
            TranslateLanguage.ENGLISH -> "en"
            TranslateLanguage.RUSSIAN -> "ru"
            TranslateLanguage.SPANISH -> "es"
            TranslateLanguage.FRENCH -> "fr"
            TranslateLanguage.GERMAN -> "de"
            TranslateLanguage.ITALIAN -> "it"
            TranslateLanguage.JAPANESE -> "ja"
            TranslateLanguage.KOREAN -> "ko"
            TranslateLanguage.CHINESE -> "zh"
            TranslateLanguage.ARABIC -> "ar"
            TranslateLanguage.PORTUGUESE -> "pt"
            TranslateLanguage.DUTCH -> "nl"
            TranslateLanguage.POLISH -> "pl"
            TranslateLanguage.TURKISH -> "tr"
            TranslateLanguage.SWEDISH -> "sv"
            TranslateLanguage.NORWEGIAN -> "no"
            TranslateLanguage.DANISH -> "da"
            TranslateLanguage.FINNISH -> "fi"
            TranslateLanguage.CZECH -> "cs"
            TranslateLanguage.GREEK -> "el"
            TranslateLanguage.HEBREW -> "he"
            TranslateLanguage.HINDI -> "hi"
            TranslateLanguage.THAI -> "th"
            TranslateLanguage.VIETNAMESE -> "vi"
            TranslateLanguage.UKRAINIAN -> "uk"
            // Add more as needed
            else -> null
        }
    }
}
