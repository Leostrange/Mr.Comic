package com.example.feature.library.ui

import androidx.compose.runtime.Immutable
import com.example.core.model.ComicBook
import com.example.core.model.SortOrder

@Immutable
data class LibraryUiState(
    val isLoading: Boolean = true,
    val comics: List<ComicBook> = emptyList(),
    val error: String? = null,
    val sortOrder: SortOrder = SortOrder.DATE_ADDED_DESC,
    val searchQuery: String = "",
    val isSearchActive: Boolean = false,
    val inSelectionMode: Boolean = false,
    val selectedComicIds: Set<String> = emptySet(),
    val pendingDeletionIds: Set<String> = emptySet(),
    // Comic counter implementation for Issue #24
    val totalComicsCount: Int = 0,
    val visibleComicsCount: Int = 0
)