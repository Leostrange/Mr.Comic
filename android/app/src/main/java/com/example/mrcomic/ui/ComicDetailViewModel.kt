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
                val comic = getComicById(comicId)
                if (comic != null) {
                    _comicState.value = ComicDetailState.Success(comic)
                } else {
                    _comicState.value = ComicDetailState.Error("Комикс не найден")
                }
            } catch (e: Exception) {
                _comicState.value = ComicDetailState.Error(e.message ?: "Ошибка загрузки комикса")
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
        // Адаптировано под вашу структуру данных с реальными URL
        return when (id) {
            1 -> Comic(
                id = 1,
                title = "XKCD Comic",
                author = "Randall Munroe",
                images = listOf(
                    "https://imgs.xkcd.com/comics/barrel_cropped_(1).jpg",
                    "https://imgs.xkcd.com/comics/tree_cropped_(1).jpg",
                    "https://imgs.xkcd.com/comics/balloon_cropped_(1).jpg"
                ),
                description = "Классический веб-комикс о науке, технологиях и жизни"
            )
            2 -> Comic(
                id = 2,
                title = "Dilbert Comic",
                author = "Scott Adams",
                images = listOf(
                    "https://assets.amuniversal.com/example1.jpg",
                    "https://assets.amuniversal.com/example2.jpg",
                    "https://assets.amuniversal.com/example3.jpg",
                    "https://assets.amuniversal.com/example4.jpg"
                ),
                description = "Юмористический комикс о жизни в офисе"
            )
            3 -> Comic(
                id = 3,
                title = "Тестовый комикс 3",
                author = "Автор 3",
                images = listOf(
                    "https://picsum.photos/400/600?random=1",
                    "https://picsum.photos/400/600?random=2",
                    "https://picsum.photos/400/600?random=3",
                    "https://picsum.photos/400/600?random=4",
                    "https://picsum.photos/400/600?random=5"
                ),
                description = "Тестовый комикс с случайными изображениями"
            )
            else -> null
        }
    }
} 