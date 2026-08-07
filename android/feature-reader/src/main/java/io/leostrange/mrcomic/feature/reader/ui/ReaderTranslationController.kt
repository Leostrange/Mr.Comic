package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.LanguageDetector
import io.leostrange.mrcomic.core.domain.translation.LlmExplainEngine
import io.leostrange.mrcomic.core.domain.translation.LookupRouter
import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.TranslationComparisonEngine
import io.leostrange.mrcomic.core.domain.translation.TranslatorEngine
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableStateFlow

/**
 * Facade over the reader translation sub-controllers.
 *
 * Keeps the [ReaderViewModel] wiring and UI call sites stable while each concern
 * (selected text, comparison, chapter, LLM explanation) lives in its own class.
 */
internal class ReaderTranslationController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    viewModelScope: CoroutineScope,
    languageDetector: LanguageDetector,
    dictionaryEngine: DictionaryEngine,
    lookupRouter: LookupRouter,
    offlineTranslationEngine: OfflineTranslationEngine,
    onlineTranslationEngine: OnlineTranslationEngine,
    translatorEngine: TranslatorEngine,
    translationComparisonEngine: TranslationComparisonEngine,
    llmExplainEngine: LlmExplainEngine,
    readerPreferences: UserPreferences,
    context: Context
) {

    private val selectedTextController = ReaderSelectedTextTranslationController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        languageDetector = languageDetector,
        dictionaryEngine = dictionaryEngine,
        lookupRouter = lookupRouter,
        offlineTranslationEngine = offlineTranslationEngine,
        onlineTranslationEngine = onlineTranslationEngine,
        readerPreferences = readerPreferences,
        context = context
    )

    private val comparisonController = ReaderTranslationComparisonController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        translationComparisonEngine = translationComparisonEngine,
        readerPreferences = readerPreferences
    )

    private val chapterController = ReaderChapterTranslationController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        translatorEngine = translatorEngine,
        readerPreferences = readerPreferences,
        translateSelectedText = selectedTextController::translateSelectedText
    )

    private val explainController = ReaderExplainController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        languageDetector = languageDetector,
        dictionaryEngine = dictionaryEngine,
        llmExplainEngine = llmExplainEngine,
        readerPreferences = readerPreferences,
        translateSelectedText = selectedTextController::translateSelectedText
    )

    // ── Selected text translation ──────────────────────────────────────────

    fun translateSelectedText(
        selectedText: String,
        preferredTransport: TranslationTransportPreference? = null,
        preferDictionary: Boolean = true
    ) = selectedTextController.translateSelectedText(
        selectedText = selectedText,
        preferredTransport = preferredTransport,
        preferDictionary = preferDictionary
    )

    fun translateSelectedTextWithTransport(preferredTransport: TranslationTransportPreference) =
        selectedTextController.translateSelectedTextWithTransport(preferredTransport)

    fun translateSelectedTextAsPhrase() =
        selectedTextController.translateSelectedTextAsPhrase()

    fun openDictionaryForSelectedText() =
        selectedTextController.openDictionaryForSelectedText()

    fun dismissSelectedTextTranslation() =
        selectedTextController.dismissSelectedTextTranslation()

    // ── Translation comparison ─────────────────────────────────────────────

    fun compareTranslations(selectedText: String) =
        comparisonController.compareTranslations(selectedText)

    fun dismissTranslationComparison() =
        comparisonController.dismissTranslationComparison()

    // ── Chapter / page translation ─────────────────────────────────────────

    fun translateCurrentChapter() =
        chapterController.translateCurrentChapter()

    fun requestTextPageTranslation(formatReader: FormatReader?, page: Int = _uiState.value.currentPage) =
        chapterController.requestTextPageTranslation(formatReader, page)

    // ── LLM explanation + action sheet ─────────────────────────────────────

    fun explainSelectedText(selectedText: String) =
        explainController.explainSelectedText(selectedText)

    fun dismissSelectedTextActions() =
        explainController.dismissSelectedTextActions()

    fun translateFromSelectedTextActions() =
        explainController.translateFromSelectedTextActions()

    fun openDictionaryFromSelectedTextActions() =
        explainController.openDictionaryFromSelectedTextActions()

    fun explainFromSelectedTextActions() =
        explainController.explainFromSelectedTextActions()

    fun explainSelectedTextDirect(selectedText: String) =
        explainController.explainSelectedTextDirect(selectedText)

    fun explainSelectedTextFromResult() =
        explainController.explainSelectedTextFromResult()
}
