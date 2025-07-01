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

    val comics: StateFlow<List<ComicEntity>> = repository.getAllComics()
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = emptyList()
        )
    
    private val _uiState = MutableStateFlow<LibraryUiState>(LibraryUiState.Idle)
    val uiState = _uiState.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _recentComics = MutableStateFlow<List<ComicEntity>>(emptyList())
    val recentComics: StateFlow<List<ComicEntity>> = _recentComics.asStateFlow()

    init {
        loadRecentComics()
    }

    fun addComicFromUri(uri: Uri) {
        viewModelScope.launch {
            _uiState.value = LibraryUiState.Importing
            try {
                repository.importComicFromUri(uri)
                _uiState.value = LibraryUiState.Idle
            } catch (e: Exception) {
                _uiState.value = LibraryUiState.Error("Не удалось импортировать комикс: ${e.localizedMessage}")
            }
        }
    }
    
    fun dismissError() {
        _uiState.value = LibraryUiState.Idle
    }

    fun toggleFavorite(comicId: Long, isFavorite: Boolean) {
        viewModelScope.launch {
            repository.setFavorite(comicId, isFavorite)
        }
    }

    private fun loadRecentComics() {
        viewModelScope.launch {
            _recentComics.value = repository.getRecentComics(5)
        }
    }

    fun deleteComic(comicId: Long) {
        // Implementation of deleteComic function
    }
} 