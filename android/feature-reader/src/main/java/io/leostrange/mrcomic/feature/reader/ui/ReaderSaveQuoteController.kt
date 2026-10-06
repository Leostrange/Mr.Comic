package io.leostrange.mrcomic.feature.reader.ui

import android.util.Log
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Handles saving quotes from selected text: persists to the quote repository,
 * tracks analytics, and emits save-status messages.
 */
internal class ReaderSaveQuoteController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val quoteRepository: QuoteRepository,
    private val analyticsTracker: ReadingAnalyticsTracker,
    private val _quoteSaveMessages: MutableSharedFlow<String>,
    private val localizedReaderText: suspend () -> ReaderUiText
) {
    fun saveQuoteFromSelectedTextActions() {
        val selectedText = _uiState.value.selectedTextActionSheet?.originalText ?: return
        _uiState.update { it.copy(selectedTextActionSheet = null) }
        saveQuote(
            text = selectedText,
            translatedText = null,
            sourceLanguage = null,
            targetLanguage = null
        )
    }

    /** Saves the quote at the selection's own section and text offset. */
    fun saveQuoteFromSelection(selection: ReaderTextSelection) {
        val state = _uiState.value
        saveQuote(
            text = selection.text.trim(),
            translatedText = null,
            sourceLanguage = null,
            targetLanguage = null,
            page = selection.sectionIndex.takeIf { it in 0 until state.totalPages } ?: state.currentPage,
            characterOffset = selection.anchorOffset.takeIf { it >= 0 }
        )
    }

    fun saveQuoteDirectly(selectedText: String) {
        saveQuote(
            text = selectedText,
            translatedText = null,
            sourceLanguage = null,
            targetLanguage = null
        )
    }

    fun saveQuoteFromSelectedTextResult() {
        val state = _uiState.value.selectedTextTranslation ?: return
        _uiState.update { it.copy(selectedTextTranslation = null) }
        saveQuote(
            text = state.originalText,
            translatedText = state.translatedText.ifBlank { null },
            sourceLanguage = state.sourceLanguage,
            targetLanguage = state.targetLanguage
        )
    }

    private fun saveQuote(
        text: String,
        translatedText: String?,
        sourceLanguage: String?,
        targetLanguage: String?,
        page: Int = _uiState.value.currentPage,
        // Without a selection offset, the visible page/scroll position is the best location.
        characterOffset: Int? = _uiState.value.textCursorOffset()
    ) {
        val comic = _uiState.value.comic ?: return
        viewModelScope.launch {
            runCatching {
                quoteRepository.saveQuote(
                    comic = comic,
                    page = page,
                    text = text,
                    translatedText = translatedText,
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage,
                    characterOffset = characterOffset
                )
            }.onSuccess { result ->
                val readerText = localizedReaderText()
                if (result == null) {
                    _quoteSaveMessages.emit(readerText.quoteSaveFailed)
                    return@onSuccess
                }
                analyticsTracker.track(
                    ReadingAnalyticsEvent.QuoteSaved(
                        comicId = comic.id,
                        page = page,
                        inserted = result.inserted
                    )
                )
                _quoteSaveMessages.emit(
                    if (result.inserted) readerText.quoteSaved else readerText.quoteUpdated
                )
            }.onFailure { error ->
                Log.e("ReaderViewModel", "Failed to save quote", error)
                _quoteSaveMessages.emit(localizedReaderText().quoteSaveFailed)
            }
        }
    }
}
