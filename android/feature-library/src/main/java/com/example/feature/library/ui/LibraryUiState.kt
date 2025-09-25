package com.example.feature.library.ui

import androidx.compose.runtime.Immutable
import com.example.core.model.Comic
import com.example.core.model.SortOrder

@Immutable
data class LibraryUiState(
    val isLoading: Boolean = true,
    val comics: List<Comic> = emptyList(),
    val error: String? = null,
    val sortOrder: SortOrder = SortOrder.DATE_ADDED_DESC,
    val viewMode: String = "grid", // list|grid|folders
    val searchQuery: String = "",
    val isSearchActive: Boolean = false,
    val inSelectionMode: Boolean = false,
    val selectedComicIds: Set<String> = emptySet(),
    val pendingDeletionIds: Set<String> = emptySet(),
    // Comic counter implementation for Issue #24
    val totalComicsCount: Int = 0,
    val visibleComicsCount: Int = 0,
    val selectedTab: LibraryTab = LibraryTab.LIBRARY,
    val isRefreshing: Boolean = false
)

enum class LibraryTab(val title: String) {
    LIBRARY("Library"),
    CLOUD("Cloud"),
    ANNOTATIONS("Annotations"),
    PLUGINS("Plugins")
}