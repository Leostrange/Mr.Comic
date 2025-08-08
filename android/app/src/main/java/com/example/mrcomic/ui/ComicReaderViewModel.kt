package com.example.mrcomic.ui

import android.graphics.Bitmap
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.data.ComicEntity
import com.example.core.data.repository.ComicRepository
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
    
    private val _comicState = MutableStateFlow<ComicEntity?>(null)
    val comicState = _comicState.asStateFlow()

    private val _currentPageBitmap = MutableStateFlow<Bitmap?>(null)
    val currentPageBitmap = _currentPageBitmap.asStateFlow()

    private val _currentPageIndex = MutableStateFlow(0)
    val currentPageIndex = _currentPageIndex.asStateFlow()

    init {
        viewModelScope.launch {
            repository.getComicById(comicId).collect { comic ->
                _comicState.value = comic
                _currentPageIndex.value = comic?.currentPage ?: 0
                // Page rendering not implemented here
            }
        }
    }

    fun nextPage() {
        val comic = _comicState.value ?: return
        val newPageIndex = (comic.currentPage + 1).coerceAtMost((comic.pageCount - 1).coerceAtLeast(0))
        updateAndLoadPage(newPageIndex)
    }

    fun prevPage() {
        val comic = _comicState.value ?: return
        val newPageIndex = (comic.currentPage - 1).coerceAtLeast(0)
        updateAndLoadPage(newPageIndex)
    }

    private fun updateAndLoadPage(newPageIndex: Int) {
        val comic = _comicState.value ?: return
        viewModelScope.launch {
            repository.updateProgress(comic.id, newPageIndex)
        }
    }
} 