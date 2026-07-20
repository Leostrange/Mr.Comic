package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.TranslationRequest
import io.leostrange.mrcomic.core.model.TranslationResult

interface OnlineTranslationEngine {
    suspend fun isConfigured(): Result<Boolean>

    suspend fun translate(
        request: TranslationRequest
    ): Result<TranslationResult>
}
