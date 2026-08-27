package io.leostrange.mrcomic.feature.reader.ui

import android.util.Log
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.model.isTextReadingFormat
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
        targetLanguage: String?
    ) {
        val comic = _uiState.value.comic ?: return
        val page = _uiState.value.currentPage
        val state = _uiState.value
        // BUG-CANDIDATE-01: Build structured position for precise quote navigation
        val positionJson = buildQuotePositionJson(state, comic.format, page)
        val characterOffset = if (state.readingMode == io.leostrange.mrcomic.core.model.ReadingMode.WEBTOON) {
            state.freeScrollCharacterOffset.takeIf { it >= 0 }
        } else {
            state.sectionCharacterOffset.takeIf { it > 0 }
        }
        val domAnchor = state.pendingScrollToAnchor
        viewModelScope.launch {
            runCatching {
                quoteRepository.saveQuote(
                    comic = comic,
                    page = page,
                    text = text,
                    translatedText = translatedText,
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage,
                    positionJson = positionJson,
                    characterOffset = characterOffset,
                    domAnchor = domAnchor
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

    /**
     * BUG-CANDIDATE-01: Build structured position JSON for a quote.
     * Mirrors [ReaderProgressController.buildPositionJson] so the quote carries
     * enough information to navigate back to the exact reading position.
     */
    private fun buildQuotePositionJson(
        state: ReaderUiState,
        format: io.leostrange.mrcomic.core.model.ComicFormat,
        page: Int
    ): String? {
        val mode = state.readingMode
        val isText = format.isTextReadingFormat()
        val webtoonFraction = if (mode == io.leostrange.mrcomic.core.model.ReadingMode.WEBTOON) {
            state.freeScrollProgression.takeIf { it in 0.0..1.0 }?.toFloat()
        } else {
            null
        }
        val position = io.leostrange.mrcomic.feature.reader.domain.progress.ReaderPosition(
            engineSectionIndex = if (isText) state.currentPage.coerceAtLeast(0) else page.coerceAtLeast(0),
            visualPageIndex = if (isText) state.sectionCurrentPage.coerceAtLeast(0) else page.coerceAtLeast(0),
            characterOffset = if (mode == io.leostrange.mrcomic.core.model.ReadingMode.WEBTOON) {
                state.freeScrollCharacterOffset.takeIf { it >= 0 }
                    ?: state.sectionCharacterOffset.takeIf { it > 0 }
            } else {
                state.sectionCharacterOffset.takeIf { it > 0 }
            },
            domAnchor = state.pendingScrollToAnchor,
            mode = mode,
            webtoonScrollFraction = webtoonFraction,
            updatedAtMillis = System.currentTimeMillis(),
            schemaVersion = io.leostrange.mrcomic.feature.reader.domain.progress.ReaderPosition.SCHEMA_VERSION
        )
        return io.leostrange.mrcomic.feature.reader.domain.progress.ReaderPositionCodec.encode(position)
    }
}
