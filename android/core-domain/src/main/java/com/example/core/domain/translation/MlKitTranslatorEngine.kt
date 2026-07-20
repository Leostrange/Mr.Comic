package com.example.core.domain.translation

import com.example.core.model.TranslationMode
import com.example.core.model.TranslationRequest
import com.example.core.model.TranslationSourceType
import java.util.UUID
import javax.inject.Inject
import javax.inject.Singleton

/**
 * ML Kit-based [TranslatorEngine] implementation.
 *
 * Bridges the existing [OfflineTranslationEngine] (ML Kit) to the unified
 * [TranslatorEngine] interface. This is the primary offline translation engine.
 */
@Singleton
class MlKitTranslatorEngine @Inject constructor(
    private val offlineTranslationEngine: OfflineTranslationEngine
) : TranslatorEngine {

    override val engineName: String = "ML Kit (Offline)"

    override val requiresNetwork: Boolean = false

    override suspend fun isLanguagePairAvailable(sourceLang: String, targetLang: String): Boolean {
        return when (val result = offlineTranslationEngine.isLanguagePairAvailable(sourceLang, targetLang)) {
            is com.example.core.domain.util.Result.Success -> result.data
            else -> false
        }
    }

    override suspend fun prepareLanguagePair(sourceLang: String, targetLang: String): Boolean {
        return when (val result = offlineTranslationEngine.prepareLanguagePair(sourceLang, targetLang)) {
            is com.example.core.domain.util.Result.Success -> result.data
            else -> false
        }
    }

    override suspend fun translate(
        text: String,
        sourceLang: String,
        targetLang: String
    ): String {
        val normalized = text.trim()
        if (normalized.isEmpty()) {
            throw TranslationException("Empty input", TranslationErrorCode.EMPTY_INPUT)
        }

        if (!isLanguagePairAvailable(sourceLang, targetLang)) {
            throw TranslationException(
                "Language pair $sourceLang→$targetLang not available",
                TranslationErrorCode.LANGUAGE_PAIR_NOT_SUPPORTED
            )
        }

        val request = TranslationRequest(
            id = UUID.randomUUID().toString(),
            sourceType = TranslationSourceType.BOOK_TEXT,
            text = normalized,
            sourceLanguage = sourceLang,
            targetLanguage = targetLang,
            mode = TranslationMode.OFFLINE_MT,
            createdAt = System.currentTimeMillis()
        )

        return when (val result = offlineTranslationEngine.translate(request)) {
            is com.example.core.domain.util.Result.Success -> result.data.translatedText
            is com.example.core.domain.util.Result.Error -> throw TranslationException(
                result.exception?.message ?: "Translation failed",
                TranslationErrorCode.ENGINE_UNAVAILABLE,
                result.exception
            )
            com.example.core.domain.util.Result.Loading -> throw TranslationException(
                "Translation in progress",
                TranslationErrorCode.ENGINE_UNAVAILABLE
            )
        }
    }
}
