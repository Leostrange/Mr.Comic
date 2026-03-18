package com.example.core.domain.translation

import com.example.core.domain.util.Result
import com.example.core.model.TranslationRequest
import com.example.core.model.TranslationResult

interface OfflineTranslationEngine {
    suspend fun isLanguagePairAvailable(
        sourceLanguage: String,
        targetLanguage: String
    ): Result<Boolean>

    suspend fun prepareLanguagePair(
        sourceLanguage: String,
        targetLanguage: String
    ): Result<Boolean> = isLanguagePairAvailable(
        sourceLanguage = sourceLanguage,
        targetLanguage = targetLanguage
    )

    suspend fun translate(
        request: TranslationRequest
    ): Result<TranslationResult>
}
