package com.example.mrcomic.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.data.ComicRepository
import com.example.mrcomic.data.ComicEntity
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class ComicDetailViewModel @Inject constructor(
    private val repository: ComicRepository
) : ViewModel() {

    private val _comic = MutableStateFlow<ComicEntity?>(null)
    val comic: StateFlow<ComicEntity?> = _comic.asStateFlow()

    fun loadComic(comicId: Long) {
        viewModelScope.launch {
            repository.getComicById(comicId).filterNotNull().collect {
                _comic.value = it
            }
        }
    }

    fun toggleFavorite() {
        _comic.value?.let { currentComic ->
            viewModelScope.launch {
                repository.setFavorite(currentComic.id, !currentComic.isFavorite)
            }
        }
    }

    fun resetProgress() {
        _comic.value?.let { currentComic ->
            viewModelScope.launch {
                repository.updateProgress(currentComic.id, 0)
            }
        }
    }

    fun deleteComic(onComicDeleted: () -> Unit) {
        _comic.value?.let { currentComic ->
            viewModelScope.launch {
                repository.deleteComics(setOf(currentComic.id.toString()))
                onComicDeleted()
            }
        }
    }
} 