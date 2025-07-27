package com.example.feature.library.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.ComicRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

import java.util.UUID

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
            _uiState.collectLatest { uiState ->
                comicRepository.getComics(uiState.sortOrder, uiState.searchQuery).collectLatest {
                    _uiState.update { currentState ->
                        currentState.copy(isLoading = false, comics = it)
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

    fun onToggleSearch() {
        _uiState.update { it.copy(isSearchActive = !it.isSearchActive, searchQuery = "") }
    }

    fun onSortOrderChange(sortOrder: SortOrder) {
        _uiState.update { it.copy(sortOrder = sortOrder) }
    }

    fun onComicSelected(comicId: String) {
        _uiState.update { currentState ->
            val selectedIds = currentState.selectedComicIds.toMutableSet()
            if (selectedIds.contains(comicId)) {
                selectedIds.remove(comicId)
            } else {
                selectedIds.add(comicId)
            }
            // Если последний элемент снят с выбора, выходим из режима выбора
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

        _uiState.update {
            it.copy(
                pendingDeletionIds = it.pendingDeletionIds + selectedIds,
                inSelectionMode = false,
                selectedComicIds = emptySet()
            )
        }
    }

    fun onUndoDelete() {
        _uiState.update { it.copy(pendingDeletionIds = emptySet()) }
    }

    fun onDeletionTimeout() {
        viewModelScope.launch {
            comicRepository.deleteComics(_uiState.value.pendingDeletionIds)
            _uiState.update { it.copy(pendingDeletionIds = emptySet()) }
        }
    }

    fun addComic(title: String, author: String, coverPath: String, filePath: String) {
        viewModelScope.launch(Dispatchers.IO) {
            val newComic = com.example.core.model.ComicBook(
                id = UUID.randomUUID().toString(),
                title = title,
                coverUrl = coverPath,
                filePath = filePath
            )
            comicRepository.addComic(newComic)
        }
    }
}