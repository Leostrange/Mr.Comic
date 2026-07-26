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
    fun highlightSelectedText(selectedText: String) {
        val normalized = selectedText.trim().replace(Regex("\\s+"), " ")
        if (normalized.isBlank()) return
        _uiState.update { it.copy(pendingHighlightText = normalized) }
    }

    fun confirmHighlight(colorArgb: Int) {
        val text = _uiState.value.pendingHighlightText ?: return
        _uiState.update { it.copy(pendingHighlightText = null) }
        val comic = _uiState.value.comic ?: return
        val page = _uiState.value.currentPage
        viewModelScope.launch {
            runCatching {
                val html = _uiState.value.currentHtmlContent.orEmpty()
                val bodyText = html.replace(Regex("<[^>]+>"), " ").replace(Regex("\\s+"), " ")
                val startOffset = bodyText.indexOf(text).coerceAtLeast(0)
                val endOffset = startOffset + text.length
                textHighlightRepository.saveHighlight(
                    io.leostrange.mrcomic.core.data.db.entity.TextHighlight(
                        comicId = comic.id,
                        comicTitle = comic.title ?: "",
                        page = page,
                        text = text,
                        startOffset = startOffset,
                        endOffset = endOffset,
                        colorArgb = colorArgb
                    )
                )
                loadHighlightsForCurrentPage()
            }.onFailure { e ->
                Log.w("ReaderVM", "Failed to save highlight", e)
            }
        }
    }

    fun dismissHighlight() {
        _uiState.update { it.copy(pendingHighlightText = null) }
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
