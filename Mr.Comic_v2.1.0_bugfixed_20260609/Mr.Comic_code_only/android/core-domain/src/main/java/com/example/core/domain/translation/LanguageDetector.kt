package com.example.core.domain.translation

import com.example.core.domain.util.Result
import com.example.core.model.LanguageDetectionResult

interface LanguageDetector {
    suspend fun detectLanguage(
        text: String,
        fallbackLanguage: String? = null
    ): Result<LanguageDetectionResult>
}
