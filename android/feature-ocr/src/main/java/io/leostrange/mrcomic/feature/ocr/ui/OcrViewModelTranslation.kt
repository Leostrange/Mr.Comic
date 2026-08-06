package io.leostrange.mrcomic.feature.ocr.ui

import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.domain.translation.SingleWordDictionaryMatch
import io.leostrange.mrcomic.core.domain.translation.TranslationBackendUnavailableException
import io.leostrange.mrcomic.core.domain.translation.hasMeaningfulTranslationFor
import io.leostrange.mrcomic.core.domain.translation.resolveBestSingleWordDictionaryMatch
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.model.DictionaryEntry
import io.leostrange.mrcomic.core.model.LanguageDetectionResult
import io.leostrange.mrcomic.core.model.LookupRouteKind
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationRequest
import io.leostrange.mrcomic.core.model.TranslationRoutingFailureReason
import io.leostrange.mrcomic.core.model.TranslationRoutingRequest
import io.leostrange.mrcomic.core.model.TranslationSourceType
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.feature.ocr.data.shouldAllowOcrDictionaryLookup
import io.leostrange.mrcomic.feature.ocr.data.shouldUseOcrDictionaryFallback
import io.leostrange.mrcomic.core.ui.locale.isSupportedOcrSourceLanguageCode
import io.leostrange.mrcomic.core.ui.locale.isSupportedTranslationLanguageCode
import io.leostrange.mrcomic.core.ui.locale.normalizeTranslationLanguageCode
import io.leostrange.mrcomic.core.ui.locale.supportedTranslationLanguageCodes
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Manual-text translation scenario: source-language resolution, dictionary
 * fallback and route decision. All helpers are extensions on [OcrViewModel]
 * so the logic lives outside the 2K-line ViewModel file.
 */

internal suspend fun OcrViewModel.applyManualDictionaryFallback(
    normalizedText: String,
    preferredSourceLanguage: String?,
    detectedLanguage: String?,
    detectedCandidates: List<String>,
    targetLanguage: String,
    uiLanguage: String
): Boolean {
    val match = resolveOcrSingleWordDictionaryMatch(
        rawWord = normalizedText,
        preferredSourceLanguage = preferredSourceLanguage,
        detectedLanguage = detectedLanguage,
        detectedCandidates = detectedCandidates,
        targetLanguage = targetLanguage
    )
    val lookupSourceLanguage = match?.sourceLanguage ?: preferredSourceLanguage ?: detectedLanguage
    return when (val entry = match?.entry ?: lookupSourceLanguage?.let { sourceLanguage ->
        resolveOcrDictionaryEntry(
            rawWord = normalizedText,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
    }) {
        null -> {
            _uiState.update {
                it.copy(
                    isTranslating = false,
                    manualResultMode = null,
                    manualDictionaryEntry = null,
                    error = ocrDictionaryUnavailableMessage(uiLanguage)
                )
            }
            false
        }

        else -> {
            _uiState.update {
                it.copy(
                    isTranslating = false,
                    translatedText = entry.translations.firstOrNull().orEmpty(),
                    manualResultMode = TranslationMode.DICTIONARY,
                    manualDictionaryEntry = entry,
                    manualExplanation = null,
                    manualExplanationError = null,
                    error = null
                )
            }
            true
        }
    }
}

internal suspend fun OcrViewModel.resolveOcrSingleWordDictionaryMatch(
    rawWord: String,
    preferredSourceLanguage: String?,
    detectedLanguage: String? = preferredSourceLanguage,
    detectedCandidates: List<String> = emptyList(),
    targetLanguage: String
): SingleWordDictionaryMatch? {
    return resolveBestSingleWordDictionaryMatch(
        rawWord = rawWord,
        targetLanguage = targetLanguage,
        dictionaryEngine = dictionaryEngine,
        preferredSourceLanguage = preferredSourceLanguage,
        detectedLanguage = detectedLanguage,
        detectedCandidates = detectedCandidates,
        fallbackSourceLanguages = supportedTranslationLanguageCodes.filter { it != targetLanguage }
    )
}

internal suspend fun OcrViewModel.resolveOcrDictionaryEntry(
    rawWord: String,
    sourceLanguage: String,
    targetLanguage: String
): DictionaryEntry? {
    return when (
        val dictionaryResult = dictionaryEngine.lookup(
            rawWord = rawWord,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
    ) {
        is Result.Success -> dictionaryResult.data.takeIf { entry ->
            entry.hasMeaningfulTranslationFor(rawWord) || entry.translations.isNotEmpty() || entry.glosses.isNotEmpty()
        }
        is Result.Error -> null
        Result.Loading -> null
    }
}

internal fun String.countSelectionTokens(): Int =
    OcrViewModel.OCR_SELECTION_TOKEN_REGEX.findAll(this).count().coerceAtLeast(if (isBlank()) 0 else 1)

internal suspend fun OcrViewModel.resolveManualSourceLanguage(
    text: String
): ManualSourceResolution {
    val configuredSourceLanguage = _uiState.value.sourceLang.normalizeLanguageCode()
        ?.takeIf(::isSupportedTranslationLanguageCode)
    if (configuredSourceLanguage != null) {
        return ManualSourceResolution(
            sourceLanguage = configuredSourceLanguage,
            detectionResult = LanguageDetectionResult(
                languageCode = configuredSourceLanguage,
                isReliable = true,
                fallbackUsed = true
            )
        )
    }

    val detectionResult = when (val detection = languageDetector.detectLanguage(text)) {
        is Result.Success -> detection.data
        is Result.Error -> null
        Result.Loading -> null
    }
    return ManualSourceResolution(
        sourceLanguage = detectionResult
            ?.languageCode
            ?.takeIf(::isSupportedTranslationLanguageCode),
        detectionResult = detectionResult
    )
}

internal fun OcrViewModel.ocrTranslateManualText() {
    if (_uiState.value.isInteractionLocked()) return
    val text = _uiState.value.manualText
    if (text.isBlank()) return
    viewModelScope.launch {
        val uiLanguage = currentUiLanguage()
        _uiState.update {
            it.clearSelectedBlockState()
                .clearManualScenarioState()
                .clearTransientFeedback()
                .copy(
                    isTranslating = true,
                    translatedBlocks = emptyList(),
                    overlayEnabled = true
                )
        }

        val targetLanguage = _uiState.value.targetLang.normalizeLanguageCode() ?: "ru"
        val normalizedText = text.trim().replace(Regex("\\s+"), " ")
        val preferredTransport = _uiState.value.preferredTransport
        val manualSourceResolution = resolveManualSourceLanguage(normalizedText)
        val shouldUseDictionaryFallback = shouldUseOcrDictionaryFallback(
            rawText = normalizedText,
            sourceLanguage = manualSourceResolution.sourceLanguage
                ?: manualSourceResolution.detectionResult?.languageCode
        )
        val canUseDictionaryLookup = shouldAllowOcrDictionaryLookup(
            rawText = normalizedText,
            sourceLanguage = manualSourceResolution.sourceLanguage
                ?: manualSourceResolution.detectionResult?.languageCode
        )
        val singleWordDictionaryMatch = if (shouldUseDictionaryFallback) {
            resolveOcrSingleWordDictionaryMatch(
                rawWord = normalizedText,
                preferredSourceLanguage = manualSourceResolution.sourceLanguage,
                detectedLanguage = manualSourceResolution.detectionResult?.languageCode,
                detectedCandidates = manualSourceResolution.detectionResult?.candidates
                    ?.map { it.languageCode }
                    .orEmpty(),
                targetLanguage = targetLanguage
            )
        } else {
            null
        }
        val sourceLanguage = singleWordDictionaryMatch?.sourceLanguage ?: manualSourceResolution.sourceLanguage
        if (sourceLanguage == null) {
            _uiState.update {
                it.copy(
                    isTranslating = false,
                    manualResultMode = null,
                    manualDictionaryEntry = null,
                    manualExplanation = null,
                    manualExplanationError = null,
                    error = ocrTranslationUnavailableMessage(uiLanguage)
                )
            }
            return@launch
        }
        if (sourceLanguage == targetLanguage) {
            _uiState.update {
                it.copy(
                    isTranslating = false,
                    translatedText = normalizedText,
                    manualResultMode = null,
                    manualDictionaryEntry = null,
                    manualExplanation = null,
                    manualExplanationError = null
                )
            }
            return@launch
        }

        val dictionaryAvailable = singleWordDictionaryMatch != null || when (
            val availability = dictionaryEngine.isLookupAvailable(
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> availability.data
            is Result.Error -> false
            Result.Loading -> false
        }
        val offlineAvailable = when (
            val availability = offlineTranslationEngine.isLanguagePairAvailable(
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> availability.data
            is Result.Error -> false
            Result.Loading -> false
        }
        val networkAvailable = isNetworkAvailable()
        val onlineTranslationAvailable = when (val configured = onlineTranslationEngine.isConfigured()) {
            is Result.Success -> configured.data
            is Result.Error -> false
            Result.Loading -> false
        }

        val routingDecision = when (
            val routing = lookupRouter.route(
                TranslationRoutingRequest(
                    text = normalizedText,
                    sourceType = TranslationSourceType.OCR_TEXT,
                    sourceLanguageHint = sourceLanguage,
                    fallbackLanguage = sourceLanguage,
                    preferredTransport = preferredTransport,
                    networkAvailable = networkAvailable,
                    onlineTranslationAvailable = onlineTranslationAvailable,
                    offlineModelAvailable = offlineAvailable,
                    dictionaryAvailable = dictionaryAvailable,
                    llmAvailable = false
                )
            )
        ) {
            is Result.Success -> routing.data
            is Result.Error -> null
            Result.Loading -> null
        }

        var translationMode = when {
            routingDecision == null -> null
            routingDecision.primaryMode == TranslationMode.DICTIONARY && !shouldUseDictionaryFallback ->
                routingDecision.secondaryModes.firstOrNull {
                    it == TranslationMode.OFFLINE_MT || it == TranslationMode.ONLINE_MT
                }
            else -> routingDecision.primaryMode
        }

        if (translationMode == TranslationMode.DICTIONARY) {
            val usedDictionary = applyManualDictionaryFallback(
                normalizedText = normalizedText,
                preferredSourceLanguage = sourceLanguage,
                detectedLanguage = manualSourceResolution.detectionResult?.languageCode,
                detectedCandidates = manualSourceResolution.detectionResult?.candidates
                    ?.map { it.languageCode }
                    .orEmpty(),
                targetLanguage = targetLanguage,
                uiLanguage = uiLanguage
            )
            if (usedDictionary) return@launch
            translationMode = routingDecision?.secondaryModes.orEmpty().firstOrNull {
                it == TranslationMode.OFFLINE_MT || it == TranslationMode.ONLINE_MT
            }
        }

        if (routingDecision == null || routingDecision.routeKind == LookupRouteKind.UNAVAILABLE || translationMode == null) {
            if (canUseDictionaryLookup && dictionaryAvailable) {
                val usedDictionary = applyManualDictionaryFallback(
                    normalizedText = normalizedText,
                    preferredSourceLanguage = sourceLanguage,
                    detectedLanguage = manualSourceResolution.detectionResult?.languageCode,
                    detectedCandidates = manualSourceResolution.detectionResult?.candidates
                        ?.map { it.languageCode }
                        .orEmpty(),
                    targetLanguage = targetLanguage,
                    uiLanguage = uiLanguage
                )
                if (usedDictionary) return@launch
            }
            val error = when (routingDecision?.unavailableReason) {
                TranslationRoutingFailureReason.NO_TRANSLATION_BACKEND ->
                    resolveOcrTranslationUnavailableMessage(
                        language = uiLanguage,
                        preferredTransport = preferredTransport,
                        availability = _uiState.value.translationAvailability,
                        dictionaryRouteAvailable = canUseDictionaryLookup && dictionaryAvailable,
                        sourceLanguage = sourceLanguage,
                        targetLanguage = targetLanguage
                    )
                else -> ocrTranslationUnavailableMessage(uiLanguage)
            }
            _uiState.update { it.copy(isTranslating = false, error = error) }
            return@launch
        }

        val request = TranslationRequest(
            id = "ocr-manual-${System.currentTimeMillis()}",
            sourceType = TranslationSourceType.OCR_TEXT,
            text = normalizedText,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage,
            mode = translationMode,
            createdAt = System.currentTimeMillis()
        )

        val result = when (translationMode) {
            TranslationMode.OFFLINE_MT -> offlineTranslationEngine.translate(request)
            TranslationMode.ONLINE_MT -> onlineTranslationEngine.translate(request)
            else -> Result.Error(IllegalStateException())
        }

        when (result) {
            is Result.Success -> {
                _uiState.update {
                    it.copy(
                        isTranslating = false,
                        translatedText = result.data.translatedText,
                        manualResultMode = if (result.data.isOffline) {
                            TranslationMode.OFFLINE_MT
                        } else {
                            translationMode
                        },
                        manualDictionaryEntry = null,
                        manualExplanation = null,
                        manualExplanationError = null
                    )
                }
            }

            is Result.Error -> {
                if (canUseDictionaryLookup && dictionaryAvailable) {
                    val usedDictionary = applyManualDictionaryFallback(
                        normalizedText = normalizedText,
                        preferredSourceLanguage = sourceLanguage,
                        detectedLanguage = manualSourceResolution.detectionResult?.languageCode,
                        detectedCandidates = manualSourceResolution.detectionResult?.candidates
                            ?.map { it.languageCode }
                            .orEmpty(),
                        targetLanguage = targetLanguage,
                        uiLanguage = uiLanguage
                    )
                    if (usedDictionary) return@launch
                }
                _uiState.update {
                    it.copy(
                        isTranslating = false,
                        error = when (result.exception) {
                            is TranslationBackendUnavailableException ->
                                resolveOcrTranslationUnavailableMessage(
                                    language = uiLanguage,
                                    preferredTransport = preferredTransport,
                                    availability = _uiState.value.translationAvailability,
                                    dictionaryRouteAvailable = canUseDictionaryLookup && dictionaryAvailable,
                                    sourceLanguage = sourceLanguage,
                                    targetLanguage = targetLanguage
                                )
                            else -> ocrTranslationUnavailableMessage(uiLanguage)
                        }
                    )
                }
            }

            Result.Loading -> Unit
        }
    }
}

internal data class ManualSourceResolution(
    val sourceLanguage: String?,
    val detectionResult: LanguageDetectionResult?
)

internal fun String.coerceToSupportedTargetLanguage(): String =
    normalizeTranslationLanguageCode(this)
        ?.takeIf(::isSupportedTranslationLanguageCode)
        ?: "ru"

internal fun String.coerceToSupportedManualSourceLanguage(): String =
    normalizeTranslationLanguageCode(this)
        ?.takeIf(::isSupportedTranslationLanguageCode)
        ?: "en"

internal fun String.coerceToSupportedOcrSourceLanguage(): String =
    if (equals(OcrViewModel.AUTO_SOURCE_LANGUAGE, ignoreCase = true)) {
        OcrViewModel.AUTO_SOURCE_LANGUAGE
    } else {
        normalizeTranslationLanguageCode(this)
            ?.takeIf(::isSupportedOcrSourceLanguageCode)
            ?: OcrViewModel.AUTO_SOURCE_LANGUAGE
    }

internal fun String.normalizeLanguageCode(): String? =
    normalizeTranslationLanguageCode(this)
