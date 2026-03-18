package com.example.core.domain.translation

import com.example.core.domain.util.Result
import com.example.core.model.TranslationRequest
import com.example.core.model.TranslationResult

interface OnlineTranslationEngine {
    suspend fun isConfigured(): Result<Boolean>

    suspend fun translate(
        request: TranslationRequest
    ): Result<TranslationResult>
}
