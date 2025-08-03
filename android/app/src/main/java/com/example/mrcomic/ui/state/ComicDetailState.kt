package com.example.mrcomic.ui.state

import com.example.mrcomic.data.Comic

/**
 * Состояния экрана деталей комикса
 */
sealed class ComicDetailState {
    object Loading : ComicDetailState()
    data class Success(val comic: Comic) : ComicDetailState()
    data class Error(val message: String) : ComicDetailState()
}

/**
 * Состояния экрана списка комиксов
 */
sealed class ComicListState {
    object Loading : ComicListState()
    data class Success(val comics: List<Comic>) : ComicListState()
    data class Error(val message: String) : ComicListState()
}