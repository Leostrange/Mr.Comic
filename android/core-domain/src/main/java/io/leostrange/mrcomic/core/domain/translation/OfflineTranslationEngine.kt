package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.TranslationRequest
import io.leostrange.mrcomic.core.model.TranslationResult

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
