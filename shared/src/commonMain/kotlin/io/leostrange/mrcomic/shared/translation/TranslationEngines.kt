package io.leostrange.mrcomic.shared.translation

/**
 * Offline translation using on-device models.
 */
interface OfflineTranslationEngine {
    suspend fun translate(text: String, sourceLanguage: String, targetLanguage: String): TranslationResult
    suspend fun isLanguagePairSupported(sourceLanguage: String, targetLanguage: String): Boolean
}

/**
 * Online translation using cloud APIs.
 */
interface OnlineTranslationEngine {
    suspend fun translate(text: String, sourceLanguage: String, targetLanguage: String): TranslationResult
}

data class TranslationResult(
    val translatedText: String,
    val sourceLanguage: String,
    val targetLanguage: String,
    val engine: String
)
