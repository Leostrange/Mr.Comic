package com.example.feature.library

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.feature.library.data.ComicEntity
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch
import javax.inject.Inject

sealed class UiState {
    object Loading : UiState()
    data class Success(val comics: List<ComicEntity>) : UiState()
    data class Error(val message: String) : UiState()
}

@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val repository: LibraryRepository
) : ViewModel() {
    private val _uiState = MutableStateFlow<UiState>(UiState.Loading)
    val uiState: StateFlow<UiState> = _uiState.asStateFlow()

    init {
        loadComics()
    }

    fun loadComics() {
        viewModelScope.launch {
            _uiState.value = UiState.Loading
            try {
                repository.getComicsFlow().collectLatest { comics ->
                    _uiState.value = UiState.Success(comics)
                }
            } catch (e: Exception) {
                _uiState.value = UiState.Error(e.message ?: "Неизвестная ошибка")
            }
        }
    }

    fun addComic(comic: ComicEntity) {
        viewModelScope.launch {
            try {
                repository.addComic(comic)
            } catch (e: Exception) {
                _uiState.value = UiState.Error(e.message ?: "Ошибка добавления")
            }
        }
    }

    fun deleteComic(id: Long) {
        viewModelScope.launch {
            try {
                repository.deleteComic(id)
            } catch (e: Exception) {
                _uiState.value = UiState.Error(e.message ?: "Ошибка удаления")
            }
        }
    }

    fun searchComics(query: String) {
        viewModelScope.launch {
            _uiState.value = UiState.Loading
            try {
                val result = repository.searchComics(query)
                _uiState.value = UiState.Success(result)
            } catch (e: Exception) {
                _uiState.value = UiState.Error(e.message ?: "Ошибка поиска")
            }
        }
    }

    fun toggleFavorite(id: Long, isFavorite: Boolean) {
        viewModelScope.launch {
            try {
                repository.updateFavorite(id, isFavorite)
            } catch (e: Exception) {
                _uiState.value = UiState.Error(e.message ?: "Ошибка избранного")
            }
        }
    }

    fun removeComic(id: Long) {
        viewModelScope.launch {
            try {
                repository.deleteComic(id)
            } catch (e: Exception) {
                _uiState.value = UiState.Error(e.message ?: "Ошибка удаления")
            }
        }
    }
} 