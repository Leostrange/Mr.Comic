package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.LanguageDetector
import io.leostrange.mrcomic.core.domain.translation.LlmExplainEngine
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.DictionaryEntry
import io.leostrange.mrcomic.core.model.ExplainRequest
import io.leostrange.mrcomic.core.model.LanguageDetectionResult
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationSourceType
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Handles LLM-based explanations of selected text and the selected-text action sheet.
 */
internal class ReaderExplainController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val languageDetector: LanguageDetector,
    private val dictionaryEngine: DictionaryEngine,
    private val llmExplainEngine: LlmExplainEngine,
    private val readerPreferences: UserPreferences,
    private val translateSelectedText: (String, TranslationTransportPreference?, Boolean) -> Unit
) {

    // ── LLM explanation ────────────────────────────────────────────────────

    fun explainSelectedText(selectedText: String) {
        val normalizedText = selectedText
            .trim()
            .replace(Regex("\\s+"), " ")
        if (normalizedText.isBlank()) return

        viewModelScope.launch {
            val translationSettings = resolveReaderTranslationSettings(readerPreferences)
            val uiLanguage = currentReaderUiLanguage(readerPreferences)
            val targetLanguage = translationSettings.targetLanguage
            val preferredTransport = _uiState.value.selectedTextTranslation?.preferredTransport
                ?: translationSettings.preferredTransport
            val tokenCount = normalizedText.countSelectionTokens()
            val canTranslateAsPhrase = tokenCount <= 3
            val canUseDictionaryLookup = tokenCount <= 3
            val canExplainSelection = true

            _uiState.update {
                it.copy(
                    selectedTextTranslation = SelectedTextTranslationState(
                        originalText = normalizedText,
                        targetLanguage = targetLanguage,
                        mode = TranslationMode.LLM,
                        preferredTransport = preferredTransport,
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
                        selectedTextActionSheet = null,
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            targetLanguage = targetLanguage,
                            mode = TranslationMode.LLM,
                            preferredTransport = preferredTransport,
                            canTranslateAsPhrase = canTranslateAsPhrase,
                            canExplain = true,
                            isLoading = false,
                            error = errorMessage
                        )
                    )
                }
                return@launch
            }

            val dictionaryAvailable = when (
                val availability = dictionaryEngine.isLookupAvailable(
                    sourceLanguage = resolvedSourceLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }
            var dictionaryActionAvailable = false

            if (canUseDictionaryLookup && dictionaryAvailable) {
                when (val entry = if (tokenCount == 1) {
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
                }) {
                    null -> Unit
                    else -> {
                        dictionaryActionAvailable = true
                        _uiState.update {
                            it.copy(
                                selectedTextTranslation = SelectedTextTranslationState(
                                    originalText = normalizedText,
                                    translatedText = buildDictionaryExplanation(
                                        entry = entry,
                                        uiLanguage = uiLanguage
                                    ),
                                    sourceLanguage = singleWordDictionaryMatch?.sourceLanguage ?: resolvedSourceLanguage,
                                    targetLanguage = targetLanguage,
                                    mode = TranslationMode.LLM,
                                    preferredTransport = preferredTransport,
                                    canUseDictionary = dictionaryActionAvailable,
                                    canTranslateAsPhrase = canTranslateAsPhrase,
                                    canExplain = true,
                                    isLoading = false
                                )
                            )
                        }
                        return@launch
                    }
                }
            }

            when (
                val explainResult = llmExplainEngine.explain(
                    ExplainRequest(
                        id = "reader-explain-${System.currentTimeMillis()}",
                        sourceType = TranslationSourceType.BOOK_TEXT,
                        text = normalizedText,
                        sourceLanguage = resolvedSourceLanguage,
                        targetLanguage = targetLanguage,
                        translatedText = _uiState.value.selectedTextTranslation
                            ?.translatedText
                            ?.takeIf { it.isNotBlank() },
                        createdAt = System.currentTimeMillis()
                    )
                )
            ) {
                is Result.Success -> {
                    _uiState.update {
                        it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                translatedText = explainResult.data.explanation,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage,
                                mode = TranslationMode.LLM,
                                preferredTransport = preferredTransport,
                                canUseDictionary = dictionaryActionAvailable,
                                canTranslateAsPhrase = canTranslateAsPhrase,
                                canExplain = true,
                                isLoading = false
                            )
                        )
                    }
                }

                is Result.Error -> {
                    val errorMessage = localizedReaderError(readerPreferences, ::readerExplainUnavailableMessage)
                    _uiState.update {
                        it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage,
                                mode = TranslationMode.LLM,
                                preferredTransport = preferredTransport,
                                canUseDictionary = dictionaryActionAvailable,
                                canTranslateAsPhrase = canTranslateAsPhrase,
                                canExplain = true,
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

    private fun buildDictionaryExplanation(
        entry: DictionaryEntry,
        uiLanguage: String
    ): String {
        val readerText = readerUiText(uiLanguage)
        return buildList {
            add("${readerText.dictionaryLemmaLabel}: ${entry.lemma}")
            readerDictionaryPartOfSpeechLabel(entry.partOfSpeech, uiLanguage)?.let { posLabel ->
                add("${readerText.dictionaryPartOfSpeechLabel}: $posLabel")
            }
            val meanings = entry.translations
                .map { it.trim() }
                .filter { it.isNotBlank() }
                .take(4)
            if (meanings.isNotEmpty()) {
                add("${readerText.dictionaryMeaningsLabel}: ${meanings.joinToString("; ")}")
            }
            val glosses = entry.glosses
                .map { it.trim() }
                .filter { it.isNotBlank() }
                .take(2)
            if (glosses.isNotEmpty()) {
                add(glosses.joinToString("\n"))
            }
            val forms = entry.forms
                .map { it.trim() }
                .filter { it.isNotBlank() }
                .take(4)
            if (forms.isNotEmpty()) {
                add("${readerText.dictionaryFormsLabel}: ${forms.joinToString(", ")}")
            }
        }.joinToString("\n")
    }

    // ── Selected text action handlers ─────────────────────────────────────

    fun dismissSelectedTextActions() {
        _uiState.update { it.copy(selectedTextActionSheet = null) }
    }

    fun translateFromSelectedTextActions() {
        val selectedText = _uiState.value.selectedTextActionSheet?.originalText ?: return
        dismissSelectedTextActions()
        translateSelectedText(selectedText, null, false)
    }

    fun openDictionaryFromSelectedTextActions() {
        val selectedText = _uiState.value.selectedTextActionSheet?.originalText ?: return
        dismissSelectedTextActions()
        translateSelectedText(selectedText, null, true)
    }

    fun explainFromSelectedTextActions() {
        val selectedText = _uiState.value.selectedTextActionSheet?.originalText ?: return
        dismissSelectedTextActions()
        explainSelectedText(selectedText)
    }

    fun explainSelectedTextDirect(selectedText: String) {
        explainSelectedText(selectedText)
    }

    fun explainSelectedTextFromResult() {
        val selectedText = _uiState.value.selectedTextTranslation?.originalText ?: return
        explainSelectedText(selectedText)
    }
}
