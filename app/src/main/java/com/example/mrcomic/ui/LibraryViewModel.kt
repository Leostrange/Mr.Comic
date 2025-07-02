package com.example.mrcomic.ui

import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.data.ComicEntity
import com.example.mrcomic.data.ComicRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import javax.inject.Inject

sealed class LibraryUiState {
    object Idle : LibraryUiState()
    object Importing : LibraryUiState()
    data class Error(val message: String) : LibraryUiState()
}

@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val repository: ComicRepository
) : ViewModel() {

    private val _searchQuery = MutableStateFlow("")
    val searchQuery: StateFlow<String> = _searchQuery.asStateFlow()

    private val _filter = MutableStateFlow("All")
    val filter: StateFlow<String> = _filter.asStateFlow()

    private val _sortOrder = MutableStateFlow("Title")
    val sortOrder: StateFlow<String> = _sortOrder.asStateFlow()

    val comics: StateFlow<List<ComicEntity>> = repository.getAllComics()
        .combine(_searchQuery) { comics, query ->
            if (query.isBlank()) {
                comics
            } else {
                comics.filter { it.title.contains(query, ignoreCase = true) }
            }
        }
        .combine(_filter) { comics, filter ->
            when (filter) {
                "Favorites" -> comics.filter { it.isFavorite }
                "Read" -> comics.filter { it.currentPage > 0 }
                "Unread" -> comics.filter { it.currentPage == 0 }
                else -> comics
            }
        }
        .combine(_sortOrder) { comics, sortOrder ->
            when (sortOrder) {
                "Title" -> comics.sortedBy { it.title }
                "Author" -> comics.sortedBy { it.author }
                "Last Read" -> comics.sortedByDescending { it.lastRead }
                else -> comics
            }
        }
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = emptyList()
        ) 