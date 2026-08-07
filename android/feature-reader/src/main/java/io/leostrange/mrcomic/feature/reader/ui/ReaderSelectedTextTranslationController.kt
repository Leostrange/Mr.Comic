package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.LanguageDetector
import io.leostrange.mrcomic.core.domain.translation.LookupRouter
import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.TranslationBackendUnavailableException
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.DictionaryEntry
import io.leostrange.mrcomic.core.model.LanguageDetectionResult
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationRequest
import io.leostrange.mrcomic.core.model.TranslationRoutingRequest
import io.leostrange.mrcomic.core.model.TranslationSourceType
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Handles translating selected book text (dictionary, offline/online MT, routing).
 */
internal class ReaderSelectedTextTranslationController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val languageDetector: LanguageDetector,
    private val dictionaryEngine: DictionaryEngine,
    private val lookupRouter: LookupRouter,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val readerPreferences: UserPreferences,
    private val context: Context
) {

    // ── Selected text translation ──────────────────────────────────────────

    fun translateSelectedText(
        selectedText: String,
        preferredTransport: TranslationTransportPreference? = null,
        preferDictionary: Boolean = true
    ) {
        val normalizedText = selectedText
            .trim()
            .replace(Regex("\\s+"), " ")
        if (normalizedText.isBlank()) return
        val tokenCount = normalizedText.countSelectionTokens()
        val canTranslateAsPhrase = tokenCount <= 3
        val canUseDictionaryLookup = tokenCount <= 3

        viewModelScope.launch {
            val translationSettings = resolveReaderTranslationSettings(readerPreferences)
            val effectiveTransport = preferredTransport ?: translationSettings.preferredTransport
            val targetLanguage = translationSettings.targetLanguage
            val canExplainSelection = true
            _uiState.update {
                it.copy(
                    selectedTextTranslation = SelectedTextTranslationState(
                        originalText = normalizedText,
                        targetLanguage = targetLanguage,
                        preferredTransport = effectiveTransport,
                        canTranslateAsPhrase = canTranslateAsPhrase,
                        canExplain = canExplainSelection,
                        isLoading = true
                    )
                )
            }

            val detectionResult = translationSettings.sourceLanguage?.let { sourceLanguage ->
                LanguageDetectionResult(
                    languageCode = sourceLanguage,
                    isReliable = true,
                    fallbackUsed = true
                )
            } ?: when (val detection = languageDetector.detectLanguage(normalizedText)) {
                is Result.Success -> detection.data
                is Result.Error -> null
                Result.Loading -> null
            }

            val detectedLanguage = detectionResult
                ?.languageCode
                ?.takeUnless { it == "und" }

            val singleWordDictionaryMatch = if (tokenCount == 1) {
                resolveSingleWordDictionaryMatch(
                    rawWord = normalizedText,
                    targetLanguage = targetLanguage,
                    preferredSourceLanguage = translationSettings.sourceLanguage,
                    detectionResult = detectionResult,
                    dictionaryEngine = dictionaryEngine
                )
            } else {
                null
            }

            val resolvedSourceLanguage = singleWordDictionaryMatch?.sourceLanguage ?: detectedLanguage

            if (resolvedSourceLanguage == null) {
                val errorMessage = localizedReaderError(readerPreferences, ::readerTranslationLanguageDetectFailedMessage)
                _uiState.update {
                    it.copy(
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canTranslateAsPhrase = canTranslateAsPhrase,
                            canExplain = canExplainSelection,
                            isLoading = false,
                            error = errorMessage
                        )
                    )
                }
                return@launch
            }

            if (resolvedSourceLanguage == targetLanguage) {
                _uiState.update {
                    it.copy(
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            translatedText = normalizedText,
                            sourceLanguage = resolvedSourceLanguage,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canExplain = canExplainSelection,
                            isLoading = false
                        )
                    )
                }
                return@launch
            }

            val networkAvailable = isNetworkAvailable(context)
            val dictionaryAvailable = singleWordDictionaryMatch != null || when (
                val availability = dictionaryEngine.isLookupAvailable(
                    sourceLanguage = resolvedSourceLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }

            val offlineAvailable = when (
                val availability = offlineTranslationEngine.isLanguagePairAvailable(
                    sourceLanguage = resolvedSourceLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }
            val onlineTranslationAvailable = when (val configured = onlineTranslationEngine.isConfigured()) {
                is Result.Success -> configured.data
                is Result.Error -> false
                Result.Loading -> false
            }
            val phraseTranslationAvailable = readerPhraseTranslationAvailable(
                canTranslateAsPhrase = canTranslateAsPhrase,
                offlineAvailable = offlineAvailable,
                networkAvailable = networkAvailable,
                onlineTranslationAvailable = onlineTranslationAvailable
            )
            val dictionarySourceLanguage = singleWordDictionaryMatch?.sourceLanguage ?: resolvedSourceLanguage
            val fallbackDictionaryEntry = if (canUseDictionaryLookup && dictionaryAvailable) {
                if (tokenCount == 1) {
                    singleWordDictionaryMatch?.entry ?: resolveReaderDictionaryEntry(
                        rawWord = normalizedText,
                        sourceLanguage = resolvedSourceLanguage,
                        targetLanguage = targetLanguage,
                        dictionaryEngine = dictionaryEngine
                    )
                } else {
                    resolveReaderDictionaryEntry(
                        rawWord = normalizedText,
                        sourceLanguage = resolvedSourceLanguage,
                        targetLanguage = targetLanguage,
                        dictionaryEngine = dictionaryEngine
                    )
                }
            } else {
                null
            }
            val dictionaryActionAvailable = fallbackDictionaryEntry != null

            val routingDecision = when (
                val routeResult = lookupRouter.route(
                    TranslationRoutingRequest(
                        text = normalizedText,
                        sourceType = TranslationSourceType.BOOK_TEXT,
                        sourceLanguageHint = resolvedSourceLanguage,
                        fallbackLanguage = resolvedSourceLanguage,
                        preferredTransport = effectiveTransport,
                        networkAvailable = networkAvailable,
                        onlineTranslationAvailable = onlineTranslationAvailable,
                        offlineModelAvailable = offlineAvailable,
                        dictionaryAvailable = dictionaryAvailable && preferDictionary,
                        llmAvailable = translationSettings.explainEnabled && false
                    )
                )
            ) {
                is Result.Success -> routeResult.data
                is Result.Error -> null
                Result.Loading -> null
            }

            val translationMode = when {
                routingDecision == null -> null
                routingDecision.primaryMode == TranslationMode.DICTIONARY && tokenCount > 1 ->
                    routingDecision.secondaryModes.firstOrNull {
                        it == TranslationMode.OFFLINE_MT || it == TranslationMode.ONLINE_MT
                    }
                else -> routingDecision.primaryMode
            }

            if (translationMode == TranslationMode.DICTIONARY) {
                when (val entry = fallbackDictionaryEntry) {
                    null -> {
                        val errorMessage = localizedReaderError(readerPreferences, ::readerDictionaryUnavailableMessage)
                        _uiState.update {
                            it.copy(
                                selectedTextTranslation = SelectedTextTranslationState(
                                    originalText = normalizedText,
                                    sourceLanguage = resolvedSourceLanguage,
                                    targetLanguage = targetLanguage,
                                    mode = TranslationMode.DICTIONARY,
                                    preferredTransport = effectiveTransport,
                                    canUseDictionary = dictionaryActionAvailable,
                                    canTranslateAsPhrase = phraseTranslationAvailable,
                                    canExplain = canExplainSelection,
                                    isLoading = false,
                                    error = errorMessage
                                )
                            )
                        }
                    }

                    else -> {
                        showSelectedTextDictionaryResult(
                            originalText = normalizedText,
                            entry = entry,
                            sourceLanguage = dictionarySourceLanguage,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canUseDictionary = dictionaryActionAvailable,
                            canTranslateAsPhrase = phraseTranslationAvailable,
                            canExplainSelection = canExplainSelection
                        )
                    }
                }
                return@launch
            }

            if (translationMode == null || translationMode == TranslationMode.LLM) {
                if (fallbackDictionaryEntry != null) {
                    showSelectedTextDictionaryResult(
                        originalText = normalizedText,
                        entry = fallbackDictionaryEntry,
                        sourceLanguage = dictionarySourceLanguage,
                        targetLanguage = targetLanguage,
                        preferredTransport = effectiveTransport,
                        canUseDictionary = dictionaryActionAvailable,
                        canTranslateAsPhrase = phraseTranslationAvailable,
                        canExplainSelection = canExplainSelection
                    )
                    return@launch
                }
                val uiLanguage = currentReaderUiLanguage(readerPreferences)
                val errorMessage = resolveReaderTranslationUnavailableMessage(
                    language = uiLanguage,
                    preferredTransport = effectiveTransport,
                    networkAvailable = networkAvailable,
                    onlineConfigured = onlineTranslationAvailable,
                    offlineModelAvailable = offlineAvailable,
                    dictionaryRouteAvailable = dictionaryActionAvailable,
                    sourceLanguage = resolvedSourceLanguage,
                    targetLanguage = targetLanguage
                )
                _uiState.update {
                    it.copy(
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            sourceLanguage = resolvedSourceLanguage,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canUseDictionary = dictionaryActionAvailable,
                            canTranslateAsPhrase = phraseTranslationAvailable,
                            canExplain = canExplainSelection,
                            isLoading = false,
                            error = errorMessage
                        )
                    )
                }
                return@launch
            }

            val request = TranslationRequest(
                id = "reader-selection-${System.currentTimeMillis()}",
                sourceType = TranslationSourceType.BOOK_TEXT,
                text = normalizedText,
                sourceLanguage = resolvedSourceLanguage,
                targetLanguage = targetLanguage,
                mode = translationMode,
                createdAt = System.currentTimeMillis()
            )

            val translationResult = when (translationMode) {
                TranslationMode.OFFLINE_MT -> offlineTranslationEngine.translate(request)
                TranslationMode.ONLINE_MT -> onlineTranslationEngine.translate(request)
                else -> Result.Error(IllegalStateException("Unsupported reader translation mode: $translationMode"))
            }

            when (translationResult) {
                is Result.Success -> {
                    val resolvedMode = if (translationResult.data.isOffline) {
                        TranslationMode.OFFLINE_MT
                    } else {
                        translationMode
                    }
                    _uiState.update {
                        it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                translatedText = translationResult.data.translatedText,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage,
                                mode = resolvedMode,
                                preferredTransport = effectiveTransport,
                                canUseDictionary = dictionaryActionAvailable,
                                canExplain = canExplainSelection,
                                isLoading = false
                            )
                        )
                    }
                }

                is Result.Error -> {
                    if (fallbackDictionaryEntry != null) {
                        showSelectedTextDictionaryResult(
                            originalText = normalizedText,
                            entry = fallbackDictionaryEntry,
                            sourceLanguage = dictionarySourceLanguage,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canUseDictionary = dictionaryActionAvailable,
                            canTranslateAsPhrase = phraseTranslationAvailable,
                            canExplainSelection = canExplainSelection
                        )
                        return@launch
                    }

                    val uiLanguage = currentReaderUiLanguage(readerPreferences)
                    val errorMessage = when (translationResult.exception) {
                        is TranslationBackendUnavailableException ->
                            resolveReaderTranslationUnavailableMessage(
                                language = uiLanguage,
                                preferredTransport = effectiveTransport,
                                networkAvailable = networkAvailable,
                                onlineConfigured = onlineTranslationAvailable,
                                offlineModelAvailable = offlineAvailable,
                                dictionaryRouteAvailable = dictionaryActionAvailable,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage
                            )
                        else -> translationResult.message
                            ?: resolveReaderTranslationUnavailableMessage(
                                language = uiLanguage,
                                preferredTransport = effectiveTransport,
                                networkAvailable = networkAvailable,
                                onlineConfigured = onlineTranslationAvailable,
                                offlineModelAvailable = offlineAvailable,
                                dictionaryRouteAvailable = dictionaryActionAvailable,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage
                            )
                    }
                    _uiState.update {
                        it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage,
                                mode = translationMode,
                                preferredTransport = effectiveTransport,
                                canUseDictionary = dictionaryActionAvailable,
                                canTranslateAsPhrase = phraseTranslationAvailable,
                                canExplain = canExplainSelection,
                                isLoading = false,
                                error = errorMessage
                            )
                        )
                    }
                }

                Result.Loading -> Unit
            }
        }
    }

    fun translateSelectedTextWithTransport(preferredTransport: TranslationTransportPreference) {
        val selectedText = _uiState.value.selectedTextTranslation?.originalText ?: return
        translateSelectedText(
            selectedText = selectedText,
            preferredTransport = preferredTransport,
            preferDictionary = false
        )
    }

    fun translateSelectedTextAsPhrase() {
        val selectedText = _uiState.value.selectedTextTranslation?.originalText ?: return
        translateSelectedText(
            selectedText = selectedText,
            preferredTransport = _uiState.value.selectedTextTranslation?.preferredTransport
                ?: TranslationTransportPreference.AUTO,
            preferDictionary = false
        )
    }

    fun openDictionaryForSelectedText() {
        val selectedText = _uiState.value.selectedTextTranslation?.originalText ?: return
        translateSelectedText(
            selectedText = selectedText,
            preferredTransport = _uiState.value.selectedTextTranslation?.preferredTransport
                ?: TranslationTransportPreference.AUTO,
            preferDictionary = true
        )
    }

    fun dismissSelectedTextTranslation() {
        _uiState.update { it.copy(selectedTextTranslation = null) }
    }

    // ── Internal helpers ───────────────────────────────────────────────────

    private fun showSelectedTextDictionaryResult(
        originalText: String,
        entry: DictionaryEntry,
        sourceLanguage: String,
        targetLanguage: String,
        preferredTransport: TranslationTransportPreference,
        canUseDictionary: Boolean,
        canTranslateAsPhrase: Boolean,
        canExplainSelection: Boolean
    ) {
        _uiState.update {
            it.copy(
                selectedTextTranslation = SelectedTextTranslationState(
                    originalText = originalText,
                    translatedText = entry.translations.firstOrNull().orEmpty(),
                    dictionaryEntry = entry,
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage,
                    mode = TranslationMode.DICTIONARY,
                    preferredTransport = preferredTransport,
                    canUseDictionary = canUseDictionary,
                    canTranslateAsPhrase = canTranslateAsPhrase,
                    canExplain = canExplainSelection,
                    isLoading = false
                )
            )
        }
    }
}
