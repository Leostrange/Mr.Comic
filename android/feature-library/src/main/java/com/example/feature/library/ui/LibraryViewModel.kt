package com.example.feature.library.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.ComicRepository
import com.example.core.model.Comic
import com.example.core.model.SortOrder
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val comicRepository: ComicRepository
) : ViewModel() {

    private val _uiState = MutableStateFlow(LibraryUiState())
    val uiState = _uiState.asStateFlow()

    init {
        observeComics()
    }

    private fun observeComics() {
        viewModelScope.launch {
            _uiState
                .map { it.sortOrder to it.searchQuery }
                .distinctUntilChanged()
                .collectLatest { (sortOrder, query) ->
                    comicRepository.getComics(sortOrder, query).collectLatest { comics ->
                        _uiState.update { currentState ->
                            val visibleComics = comics.filter { comic ->
                                comic.filePath !in currentState.pendingDeletionIds
                            }

                            currentState.copy(
                                isLoading = false,
                                comics = comics,
                                totalComicsCount = comics.size,
                                visibleComicsCount = visibleComics.size
                            )
                        }
                    }
                }
        }
    }

    fun onPermissionsGranted() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                comicRepository.refreshComicsIfEmpty()
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        isLoading = false,
                        error = e.message ?: "An unknown error occurred"
                    )
                }
            }
        }
    }

    fun onSearchQueryChange(query: String) {
        _uiState.update { it.copy(searchQuery = query) }
    }

    fun onSearchActiveChange(isActive: Boolean) {
        _uiState.update { currentState ->
            currentState.copy(
                isSearchActive = isActive,
                searchQuery = if (!isActive) currentState.searchQuery.trim() else currentState.searchQuery
            )
        }
    }

    fun onSortOrderChange(sortOrder: SortOrder) {
        _uiState.update { it.copy(sortOrder = sortOrder) }
    }

    fun onTabSelected(tab: LibraryTab) {
        _uiState.update { it.copy(selectedTab = tab) }
    }

    fun refreshLibrary() {
        if (_uiState.value.isRefreshing || _uiState.value.selectedTab != LibraryTab.LIBRARY) return

        viewModelScope.launch {
            _uiState.update { it.copy(isRefreshing = true, error = null) }
            try {
                comicRepository.rescanLibrary()
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(error = e.message ?: "Failed to refresh library")
                }
            } finally {
                _uiState.update { it.copy(isRefreshing = false) }
            }
        }
    }

    fun onComicSelected(comicId: String) {
        _uiState.update { currentState ->
            val selectedIds = currentState.selectedComicIds.toMutableSet()
            if (selectedIds.contains(comicId)) {
                selectedIds.remove(comicId)
            } else {
                selectedIds.add(comicId)
            }
            val inSelectionMode = selectedIds.isNotEmpty()
            currentState.copy(
                selectedComicIds = selectedIds,
                inSelectionMode = inSelectionMode
            )
        }
    }

    fun onEnterSelectionMode(initialComicId: String) {
        _uiState.update {
            it.copy(inSelectionMode = true, selectedComicIds = setOf(initialComicId))
        }
    }

    fun onClearSelection() {
        _uiState.update { it.copy(inSelectionMode = false, selectedComicIds = emptySet()) }
    }

    fun onDeleteRequest() {
        val selectedIds = _uiState.value.selectedComicIds
        if (selectedIds.isEmpty()) return

        _uiState.update { currentState ->
            val newPendingDeletionIds = currentState.pendingDeletionIds + selectedIds
            val visibleComics = currentState.comics.filter { comic ->
                comic.filePath !in newPendingDeletionIds
            }
            
            currentState.copy(
                pendingDeletionIds = newPendingDeletionIds,
                inSelectionMode = false,
                selectedComicIds = emptySet(),
                visibleComicsCount = visibleComics.size
            )
        }
    }

    fun onUndoDelete() {
        _uiState.update { currentState ->
            currentState.copy(
                pendingDeletionIds = emptySet(),
                visibleComicsCount = currentState.comics.size
            )
        }
    }

    fun onDeletionTimeout() {
        viewModelScope.launch {
            comicRepository.deleteComics(_uiState.value.pendingDeletionIds)
            _uiState.update { it.copy(pendingDeletionIds = emptySet()) }
        }
    }

    fun addComic(title: String, author: String, coverPath: String, filePath: String) {
        viewModelScope.launch(Dispatchers.IO) {
            val newComic = Comic(
                title = title,
                author = author,
                coverPath = coverPath,
                filePath = filePath
            )
            comicRepository.addComic(newComic)
        }
    }
}