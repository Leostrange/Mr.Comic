package io.leostrange.mrcomic.feature.reader.ui

import android.util.Log
import io.leostrange.mrcomic.core.data.repository.TextHighlightRepository
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Manages text highlight CRUD: pending highlight state, saving highlights,
 * deleting highlights, loading highlights for the current page, and
 * generating highlight injection JavaScript.
 */
internal class ReaderHighlightController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val textHighlightRepository: TextHighlightRepository
) {
    fun highlightSelectedText(selection: ReaderTextSelection) {
        val normalized = selection.text.trim()
        if (normalized.isBlank()) return
        _uiState.update {
            it.copy(
                pendingHighlightText = normalized,
                pendingHighlightStartOffset = selection.startOffset,
                pendingHighlightEndOffset = selection.endOffset,
            )
        }
    }

    fun confirmHighlight(colorArgb: Int) {
        val text = _uiState.value.pendingHighlightText ?: return
        val startOffset = _uiState.value.pendingHighlightStartOffset.coerceAtLeast(0)
        val endOffset = _uiState.value.pendingHighlightEndOffset.coerceAtLeast(startOffset)
        _uiState.update {
            it.copy(
                pendingHighlightText = null,
                pendingHighlightStartOffset = 0,
                pendingHighlightEndOffset = 0,
            )
        }
        val comic = _uiState.value.comic ?: return
        val page = _uiState.value.currentPage
        viewModelScope.launch {
            runCatching {
                val highlight = io.leostrange.mrcomic.core.data.db.entity.TextHighlight(
                    comicId = comic.id,
                    comicTitle = comic.title ?: "",
                    page = page,
                    text = text,
                    startOffset = startOffset,
                    endOffset = endOffset,
                    colorArgb = colorArgb
                )
                textHighlightRepository.saveHighlight(highlight)
                // The Room flow remains the source of truth, but its next emission is
                // asynchronous. Update the active page immediately so the existing
                // WebView receives the new mark without waiting for a document reload.
                _uiState.update { state ->
                    if (state.comic?.id == comic.id && state.currentPage == page) {
                        state.copy(pageHighlights = state.pageHighlights + highlight)
                    } else {
                        state
                    }
                }
                loadHighlightsForCurrentPage()
            }.onFailure { e ->
                Log.w("ReaderVM", "Failed to save highlight", e)
            }
        }
    }

    fun dismissHighlight() {
        _uiState.update {
            it.copy(
                pendingHighlightText = null,
                pendingHighlightStartOffset = 0,
                pendingHighlightEndOffset = 0,
            )
        }
    }

    fun deleteHighlight(id: String) {
        viewModelScope.launch {
            runCatching {
                textHighlightRepository.deleteHighlight(id)
                loadHighlightsForCurrentPage()
            }
        }
    }

    fun loadHighlightsForCurrentPage() {
        val comicId = _uiState.value.comic?.id ?: return
        val page = _uiState.value.currentPage
        viewModelScope.launch {
            textHighlightRepository.highlightsForPage(comicId, page).collect { highlights ->
                _uiState.update { it.copy(pageHighlights = highlights) }
            }
        }
    }

    fun injectHighlightsJs(): String {
        val highlights = _uiState.value.pageHighlights
        return HighlightJsGenerator.generate(highlights)
    }
}
