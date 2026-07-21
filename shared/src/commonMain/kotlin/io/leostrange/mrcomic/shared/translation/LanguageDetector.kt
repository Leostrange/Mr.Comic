package io.leostrange.mrcomic.shared.translation

/**
 * Detects the language of a text snippet.
 */
interface LanguageDetector {
    suspend fun detectLanguage(text: String): DetectionResult
}

data class DetectionResult(
    val languageCode: String,
    val confidence: Float
)
