package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Manages bookmark operations for the reader.
 *
 * Extracted from ReaderViewModel to reduce its size.
 * Handles toggling, removing, loading, and saving bookmarks.
 */
internal class ReaderBookmarkController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val readerPreferences: UserPreferences,
    private val analyticsTracker: ReadingAnalyticsTracker
) {
    /** Toggles a bookmark on/off for the current page. */
    fun toggleBookmark() {
        val page = _uiState.value.currentPage
        val comicId = _uiState.value.comic?.id ?: return
        val updated = _uiState.value.bookmarkedPages.toMutableSet()
        val isNowBookmarked = if (page in updated) {
            updated.remove(page)
            false
        } else {
            updated.add(page)
            true
        }
        _uiState.update { it.copy(bookmarkedPages = updated) }
        saveBookmarks(updated)
        analyticsTracker.track(
            ReadingAnalyticsEvent.BookmarkToggled(
                comicId = comicId,
                page = page,
                bookmarked = isNowBookmarked
            )
        )
    }

    /** Removes a specific page bookmark (called from the bookmarks list in TOC). */
    fun removeBookmark(page: Int) {
        val updated = _uiState.value.bookmarkedPages.toMutableSet()
        if (updated.remove(page)) {
            _uiState.update { it.copy(bookmarkedPages = updated) }
            saveBookmarks(updated)
        }
    }

    /** Loads bookmarks for a comic from preferences. */
    fun loadBookmarks(comicId: String, totalPages: Int) {
        viewModelScope.launch {
            val raw: String = readerPreferences.get(PreferencesKeys.bookmarks(comicId), "").first()
            val maxPage = (totalPages - 1).coerceAtLeast(0)
            val pages = raw
                .split(",")
                .mapNotNull { it.trim().toIntOrNull() }
                .filter { it in 0..maxPage }
                .toSet()
            if (_uiState.value.comic?.id != comicId) return@launch
            _uiState.update { it.copy(bookmarkedPages = pages) }
            if (pages.joinToString(",") != raw) {
                saveBookmarksForComic(comicId, pages)
            }
        }
    }

    private fun saveBookmarks(pages: Set<Int>) {
        val comicId = _uiState.value.comic?.id ?: return
        saveBookmarksForComic(comicId, pages)
    }

    private fun saveBookmarksForComic(comicId: String, pages: Set<Int>) {
        val raw = pages.sorted().joinToString(",")
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.bookmarks(comicId), raw) }
    }
}
