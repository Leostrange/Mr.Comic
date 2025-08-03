package com.example.mrcomic.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.data.Comic
import com.example.mrcomic.ui.state.ComicListState
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class ComicListViewModel @Inject constructor() : ViewModel() {

    private val _comicsState = MutableStateFlow<ComicListState>(ComicListState.Loading)
    val comicsState: StateFlow<ComicListState> = _comicsState.asStateFlow()

    init {
        loadComics()
    }

    fun loadComics() {
        viewModelScope.launch {
            _comicsState.value = ComicListState.Loading
            try {
                val comics = getTestComics()
                _comicsState.value = ComicListState.Success(comics)
            } catch (e: Exception) {
                _comicsState.value = ComicListState.Error(e.message ?: "Неизвестная ошибка")
            }
        }
    }

    private fun getTestComics(): List<Comic> {
        return listOf(
            Comic(
                id = 1,
                title = "XKCD Adventures",
                author = "Randall Munroe",
                images = listOf(
                    "https://imgs.xkcd.com/comics/barrel_cropped_(1).jpg",
                    "https://imgs.xkcd.com/comics/tree_cropped_(1).jpg",
                    "https://imgs.xkcd.com/comics/balloon_cropped_(1).jpg"
                ),
                description = "Классический веб-комикс о науке, технологиях и жизни"
            ),
            Comic(
                id = 2,
                title = "Dilbert Daily",
                author = "Scott Adams",
                images = listOf(
                    "https://assets.amuniversal.com/example1.jpg",
                    "https://assets.amuniversal.com/example2.jpg",
                    "https://assets.amuniversal.com/example3.jpg",
                    "https://assets.amuniversal.com/example4.jpg"
                ),
                description = "Юмористический комикс о жизни в офисе"
            ),
            Comic(
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
        )
    }
}