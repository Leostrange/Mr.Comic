package com.example.core.domain.translation

import com.example.core.domain.util.Result
import com.example.core.domain.util.runCatchingResult
import com.example.core.model.LanguageDetectionResult
import com.example.core.model.LookupRouteKind
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationRoutingDecision
import com.example.core.model.TranslationRoutingFailureReason
import com.example.core.model.TranslationRoutingRequest
import com.example.core.model.TranslationSourceType
import com.example.core.model.TranslationTransportPreference
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class DefaultLookupRouter @Inject constructor(
    private val languageDetector: LanguageDetector
) : LookupRouter {

    override suspend fun route(request: TranslationRoutingRequest): Result<TranslationRoutingDecision> =
        runCatchingResult {
            val normalizedText = request.text.normalizeTranslationText()
            if (normalizedText.isBlank()) {
                return@runCatchingResult TranslationRoutingDecision(
                    routeKind = LookupRouteKind.UNAVAILABLE,
                    unavailableReason = TranslationRoutingFailureReason.NO_TEXT
                )
            }

            val detectedLanguage = detectLanguage(request, normalizedText)
            val tokenCount = normalizedText.countTranslationTokens()
            val machineTranslationMode = resolveMachineTranslationMode(request)
            val shouldOfferExplanation = request.llmAvailable && tokenCount > 1
            val isLongText = tokenCount > LONG_TEXT_THRESHOLD

            if (request.forceExplain) {
                return@runCatchingResult TranslationRoutingDecision(
                    routeKind = LookupRouteKind.LLM_EXPLAIN,
                    primaryMode = TranslationMode.LLM,
                    detectedLanguage = detectedLanguage,
                    secondaryModes = machineTranslationMode?.let(::listOf).orEmpty(),
                    shouldOfferExplanation = request.llmAvailable,
                    isLongText = isLongText
                )
            }

            if (shouldReviewOcrText(request)) {
                return@runCatchingResult TranslationRoutingDecision(
                    routeKind = LookupRouteKind.REVIEW_OCR_TEXT,
                    primaryMode = machineTranslationMode,
                    secondaryModes = buildList {
                        if (request.llmAvailable) add(TranslationMode.LLM)
                    },
                    detectedLanguage = detectedLanguage,
                    requiresUserReview = true,
                    shouldOfferExplanation = request.llmAvailable,
                    isLongText = isLongText,
                    unavailableReason = if (machineTranslationMode == null) {
                        TranslationRoutingFailureReason.NO_TRANSLATION_BACKEND
                    } else {
                        null
                    }
                )
            }

            when {
                tokenCount <= 1 && request.dictionaryAvailable -> {
                    TranslationRoutingDecision(
                        routeKind = LookupRouteKind.DICTIONARY_LOOKUP,
                        primaryMode = TranslationMode.DICTIONARY,
                        detectedLanguage = detectedLanguage,
                        shouldOfferExplanation = shouldOfferExplanation
                    )
                }

                tokenCount in 2..3 && request.dictionaryAvailable -> {
                    TranslationRoutingDecision(
                        routeKind = LookupRouteKind.DICTIONARY_WITH_TRANSLATION_OPTION,
                        primaryMode = TranslationMode.DICTIONARY,
                        secondaryModes = machineTranslationMode?.let(::listOf).orEmpty(),
                        detectedLanguage = detectedLanguage,
                        shouldOfferPhraseTranslation = machineTranslationMode != null,
                        shouldOfferExplanation = shouldOfferExplanation
                    )
                }

                machineTranslationMode != null -> {
                    TranslationRoutingDecision(
                        routeKind = LookupRouteKind.MACHINE_TRANSLATION,
                        primaryMode = machineTranslationMode,
                        detectedLanguage = detectedLanguage,
                        shouldOfferExplanation = shouldOfferExplanation,
                        isLongText = isLongText
                    )
                }

                request.dictionaryAvailable -> {
                    TranslationRoutingDecision(
                        routeKind = LookupRouteKind.DICTIONARY_LOOKUP,
                        primaryMode = TranslationMode.DICTIONARY,
                        detectedLanguage = detectedLanguage,
                        shouldOfferExplanation = shouldOfferExplanation,
                        isLongText = isLongText
                    )
                }

                else -> {
                    TranslationRoutingDecision(
                        routeKind = LookupRouteKind.UNAVAILABLE,
                        detectedLanguage = detectedLanguage,
                        shouldOfferExplanation = shouldOfferExplanation,
                        isLongText = isLongText,
                        unavailableReason = TranslationRoutingFailureReason.NO_TRANSLATION_BACKEND
                    )
                }
            }
        }

    private suspend fun detectLanguage(
        request: TranslationRoutingRequest,
        normalizedText: String
    ): LanguageDetectionResult {
        val hintedLanguage = normalizeLanguageCode(request.sourceLanguageHint)
        if (hintedLanguage != null) {
            return LanguageDetectionResult(
                languageCode = hintedLanguage,
                isReliable = true
            )
        }

        return when (val detected = languageDetector.detectLanguage(normalizedText, request.fallbackLanguage)) {
            is Result.Success -> detected.data
            is Result.Error -> {
                val fallbackLanguage = normalizeLanguageCode(request.fallbackLanguage)
                LanguageDetectionResult(
                    languageCode = fallbackLanguage ?: UNKNOWN_LANGUAGE,
                    fallbackUsed = fallbackLanguage != null
                )
            }

            Result.Loading -> {
                val fallbackLanguage = normalizeLanguageCode(request.fallbackLanguage)
                LanguageDetectionResult(
                    languageCode = fallbackLanguage ?: UNKNOWN_LANGUAGE,
                    fallbackUsed = fallbackLanguage != null
                )
            }
        }
    }

    private fun resolveMachineTranslationMode(
        request: TranslationRoutingRequest
    ): TranslationMode? = when (request.preferredTransport) {
        TranslationTransportPreference.AUTO -> when {
            request.offlineModelAvailable -> TranslationMode.OFFLINE_MT
            request.networkAvailable -> TranslationMode.ONLINE_MT
            else -> null
        }

        TranslationTransportPreference.OFFLINE -> when {
            request.offlineModelAvailable -> TranslationMode.OFFLINE_MT
            request.networkAvailable -> TranslationMode.ONLINE_MT
            else -> null
        }

        TranslationTransportPreference.ONLINE -> when {
            request.networkAvailable -> TranslationMode.ONLINE_MT
            request.offlineModelAvailable -> TranslationMode.OFFLINE_MT
            else -> null
        }
    }

    private fun shouldReviewOcrText(request: TranslationRoutingRequest): Boolean =
        request.sourceType != TranslationSourceType.BOOK_TEXT &&
            request.ocrConfidence?.let { it < LOW_OCR_CONFIDENCE } == true

    private fun String.normalizeTranslationText(): String =
        trim().replace(WHITESPACE_REGEX, " ")

    private fun String.countTranslationTokens(): Int =
        TOKEN_REGEX.findAll(this).count().coerceAtLeast(if (isBlank()) 0 else 1)

    private fun normalizeLanguageCode(rawCode: String?): String? =
        rawCode
            ?.trim()
            ?.replace('_', '-')
            ?.lowercase()
            ?.substringBefore('-')
            ?.takeIf { it.isNotBlank() && it != UNKNOWN_LANGUAGE }

    private companion object {
        val WHITESPACE_REGEX = "\\s+".toRegex()
        val TOKEN_REGEX = "[\\p{L}\\p{N}]+".toRegex()
        const val LONG_TEXT_THRESHOLD = 40
        const val LOW_OCR_CONFIDENCE = 0.55f
        const val UNKNOWN_LANGUAGE = "und"
    }
}
