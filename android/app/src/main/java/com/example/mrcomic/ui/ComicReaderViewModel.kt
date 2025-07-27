package com.example.mrcomic.ui

import android.graphics.Bitmap
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.data.ComicEntity
import com.example.mrcomic.data.ComicRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class ComicReaderViewModel @Inject constructor(
    private val repository: ComicRepository,
    savedStateHandle: SavedStateHandle
) : ViewModel() {

    private val comicId: Long = checkNotNull(savedStateHandle["comicId"])
    
    // Состояние, хранящее информацию о комиксе (название, кол-во страниц)
    private val _comicState = MutableStateFlow<ComicEntity?>(null)
    val comicState = _comicState.asStateFlow()

    // Состояние, хранящее текущую страницу в виде Bitmap
    private val _currentPageBitmap = MutableStateFlow<Bitmap?>(null)
    val currentPageBitmap = _currentPageBitmap.asStateFlow()

    // Состояние, хранящее текущий номер страницы
    private val _currentPageIndex = MutableStateFlow(0)
    val currentPageIndex = _currentPageIndex.asStateFlow()

    init {
        viewModelScope.launch {
            repository.getComicById(comicId).filterNotNull().collect { comic ->
                _comicState.value = comic
                _currentPageIndex.value = comic.currentPage // Начинаем с сохраненной страницы
                loadPage(comic.filePath, comic.currentPage)
            }
        }
    }

    fun nextPage() {
        val comic = _comicState.value ?: return
        if (comic.currentPage < comic.pageCount - 1) {
            val newPageIndex = comic.currentPage + 1
            updateAndLoadPage(newPageIndex)
        }
    }

    fun prevPage() {
        val comic = _comicState.value ?: return
        if (comic.currentPage > 0) {
            val newPageIndex = comic.currentPage - 1
            updateAndLoadPage(newPageIndex)
        }
    }

    private fun updateAndLoadPage(newPageIndex: Int) {
        val comic = _comicState.value ?: return
        viewModelScope.launch {
            // Обновляем прогресс в базе
            repository.updateProgress(comic.id, newPageIndex)
            // Загружаем новую страницу
            loadPage(comic.filePath, newPageIndex)
        }
    }
    
    private fun loadPage(filePath: String, pageIndex: Int) {
        viewModelScope.launch {
            _currentPageBitmap.value = null // Показываем загрузку
            _currentPageBitmap.value = repository.getComicPage(filePath, pageIndex)
        }
    }
} 