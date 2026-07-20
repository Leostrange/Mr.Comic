package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.LanguageDetectionResult

interface LanguageDetector {
    suspend fun detectLanguage(
        text: String,
        fallbackLanguage: String? = null
    ): Result<LanguageDetectionResult>
}
