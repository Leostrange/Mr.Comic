package io.leostrange.mrcomic.shared

import io.leostrange.mrcomic.shared.translation.LanguageDetector
import io.leostrange.mrcomic.shared.translation.DetectionResult

/**
 * Wraps core-domain LanguageDetector to satisfy shared interface.
 */
class AndroidLanguageDetector(
    private val delegate: io.leostrange.mrcomic.core.domain.translation.LanguageDetector
) : LanguageDetector {
    override suspend fun detectLanguage(text: String): DetectionResult {
        val result = delegate.detectLanguage(text)
        return when (result) {
            is io.leostrange.mrcomic.core.domain.util.Result.Success -> {
                DetectionResult(
                    languageCode = result.data.languageCode,
                    confidence = if (result.data.isReliable) 0.9f else 0.5f
                )
            }
            else -> DetectionResult(languageCode = "und", confidence = 0f)
        }
    }
}
