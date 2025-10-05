package com.example.feature.library

import com.example.core.model.Comic
import com.example.core.model.Folder
import com.example.feature.library.search.SearchFilters

/**
 * UI состояние экрана библиотеки
 */
data class LibraryUiState(
    val comics: List<Comic> = emptyList(),
    val folders: List<Folder> = emptyList(),
    val viewMode: ViewMode = ViewMode.GRID,
    val sortOrder: SortOrder = SortOrder.DATE_ADDED_DESC,
    val isLoading: Boolean = false,
    val error: String? = null,
    val selectedFolder: Folder? = null,
    val searchQuery: String = "",
    val isSearchExpanded: Boolean = false,
    val filters: SearchFilters = SearchFilters()
)

/**
 * Режим отображения библиотеки
 */
enum class ViewMode {
    GRID,   // Сетка
    LIST,   // Список
    FOLDER  // По папкам
}

/**
 * Порядок сортировки
 */
enum class SortOrder {
    TITLE_ASC,          // По названию (А-Я)
    TITLE_DESC,         // По названию (Я-А)
    DATE_ADDED_ASC,     // По дате добавления (старые)
    DATE_ADDED_DESC,    // По дате добавления (новые)
    DATE_READ_DESC,     // По дате чтения
    SIZE_ASC,           // По размеру (маленькие)
    SIZE_DESC           // По размеру (большие)
}

/**
 * События экрана библиотеки
 */
sealed class LibraryEvent {
    data class ComicClicked(val comic: Comic) : LibraryEvent()
    data class FolderClicked(val folder: Folder) : LibraryEvent()
    data class ComicLongPressed(val comic: Comic) : LibraryEvent()
    data class ViewModeChanged(val viewMode: ViewMode) : LibraryEvent()
    data class SortOrderChanged(val sortOrder: SortOrder) : LibraryEvent()
    data class SearchQueryChanged(val query: String) : LibraryEvent()
    object AddComicClicked : LibraryEvent()
    object ScanLibraryClicked : LibraryEvent()
    object RefreshClicked : LibraryEvent()
    object BackPressed : LibraryEvent()
}
