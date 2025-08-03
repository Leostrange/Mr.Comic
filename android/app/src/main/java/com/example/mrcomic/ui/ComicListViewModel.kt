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
                // Имитация загрузки комиксов (замените на реальную логику)
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
                title = "Тестовый комикс 1",
                author = "Автор 1",
                pageCount = 5,
                description = "Описание первого комикса"
            ),
            Comic(
                id = 2,
                title = "Тестовый комикс 2",
                author = "Автор 2",
                pageCount = 3,
                description = "Описание второго комикса"
            ),
            Comic(
                id = 3,
                title = "Тестовый комикс 3",
                author = "Автор 3",
                pageCount = 7,
                description = "Описание третьего комикса"
            )
        )
    }
}