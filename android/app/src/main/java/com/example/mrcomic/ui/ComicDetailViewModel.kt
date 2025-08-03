package com.example.mrcomic.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.data.Comic
import com.example.mrcomic.ui.state.ComicDetailState
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class ComicDetailViewModel @Inject constructor() : ViewModel() {

    private val _comicState = MutableStateFlow<ComicDetailState>(ComicDetailState.Loading)
    val comicState: StateFlow<ComicDetailState> = _comicState.asStateFlow()

    fun loadComic(comicId: Int) {
        viewModelScope.launch {
            _comicState.value = ComicDetailState.Loading
            try {
                // Имитация загрузки комикса (замените на реальную логику)
                val comic = getComicById(comicId)
                if (comic != null) {
                    _comicState.value = ComicDetailState.Success(comic)
                } else {
                    _comicState.value = ComicDetailState.Error("Комикс не найден")
                }
            } catch (e: Exception) {
                _comicState.value = ComicDetailState.Error(e.message ?: "Неизвестная ошибка")
            }
        }
    }

    fun updateCurrentPage(page: Int) {
        val currentState = _comicState.value
        if (currentState is ComicDetailState.Success) {
            val updatedComic = currentState.comic.copy(currentPage = page)
            _comicState.value = ComicDetailState.Success(updatedComic)
        }
    }

    fun toggleFavorite() {
        val currentState = _comicState.value
        if (currentState is ComicDetailState.Success) {
            val updatedComic = currentState.comic.copy(isFavorite = !currentState.comic.isFavorite)
            _comicState.value = ComicDetailState.Success(updatedComic)
        }
    }

    fun resetProgress() {
        val currentState = _comicState.value
        if (currentState is ComicDetailState.Success) {
            val updatedComic = currentState.comic.copy(currentPage = 0)
            _comicState.value = ComicDetailState.Success(updatedComic)
        }
    }

    private fun getComicById(id: Int): Comic? {
        // Здесь должна быть реальная логика получения комикса
        // Пока возвращаем тестовые данные
        return Comic(
            id = id,
            title = "Тестовый комикс $id",
            author = "Автор $id",
            pageCount = 5,
            currentPage = 0,
            description = "Описание тестового комикса $id"
        )
    }
} 