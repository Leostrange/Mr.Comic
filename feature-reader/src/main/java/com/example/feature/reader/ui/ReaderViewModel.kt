package com.example.feature.reader.ui

import android.net.Uri
import android.graphics.Bitmap
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.feature.reader.domain.BookReader
import com.example.feature.reader.domain.BookReaderFactory
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import javax.inject.Inject

@HiltViewModel
class ReaderViewModel @Inject constructor(
    private val readerFactory: BookReaderFactory,
    savedStateHandle: SavedStateHandle
) : ViewModel() {

    private val _uiState = MutableStateFlow(ReaderUiState())
    val uiState = _uiState.asStateFlow()

    private var bookReader: BookReader? = null

    companion object {
        private const val PRELOAD_DISTANCE = 1
    }

    init {
        // The file path is passed as a navigation argument.
        // SavedStateHandle automatically receives arguments from the NavController.
        val uriString = savedStateHandle.get<String>("uri")
        if (uriString != null) {
            openBook(Uri.parse(uriString))
        } else {
            _uiState.update { it.copy(isLoading = false, error = "File URI not provided.") }
        }
    }

    fun openBook(uri: Uri) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true, error = null) }
            // Close previous reader if a new book is opened
            bookReader?.close()

            try {
                bookReader = readerFactory.create(uri)
                val pageCount = bookReader!!.open(uri)
                _uiState.update { it.copy(pageCount = pageCount) }
                loadPage(0) // Load the first page
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(isLoading = false, error = "Failed to open file: ${e.message}")
                }
            }
        }
    }

    fun goToNextPage() {
        val currentState = _uiState.value
        if (currentState.currentPageIndex < currentState.pageCount - 1) {
            loadPage(currentState.currentPageIndex + 1)
        }
    }

    fun goToPreviousPage() {
        val currentState = _uiState.value
        if (currentState.currentPageIndex > 0) {
            loadPage(currentState.currentPageIndex - 1)
        }
    }

    fun setReadingMode(mode: ReadingMode) {
        _uiState.update { it.copy(readingMode = mode) }
    }

    fun setReadingDirection(direction: ReadingDirection) {
        _uiState.update { it.copy(readingDirection = direction) }
    }

    suspend fun getPage(pageIndex: Int): Bitmap? {
        return withContext(Dispatchers.IO) {
            bookReader?.renderPage(pageIndex)
        }
    }

    private fun loadPage(pageIndex: Int) {
        _uiState.update { it.copy(isLoading = true) }
        viewModelScope.launch {
            val bitmap = withContext(Dispatchers.IO) {
                bookReader?.renderPage(pageIndex)
            }
            _uiState.update {
                it.copy(
                    isLoading = false,
                    currentPageIndex = pageIndex,
                    currentPageBitmap = bitmap,
                    error = if (bitmap == null) "Failed to load page ${pageIndex + 1}" else null
                )
            }
            // After updating UI, preload adjacent pages for a smoother experience
            preloadAdjacentPages(pageIndex)
        }
    }

    /**
     * Preloads pages before and after the given index into the cache.
     * This is a "fire-and-forget" operation running in the background.
     */
    private fun preloadAdjacentPages(centerPageIndex: Int) {
        val pageCount = _uiState.value.pageCount
        if (pageCount <= 1) return

        viewModelScope.launch(Dispatchers.IO) {
            // Preload pages after the current one
            for (i in 1..PRELOAD_DISTANCE) {
                val nextIndex = centerPageIndex + i
                if (nextIndex < pageCount) bookReader?.renderPage(nextIndex)
            }
            // Preload pages before the current one
            for (i in 1..PRELOAD_DISTANCE) {
                val prevIndex = centerPageIndex - i
                if (prevIndex >= 0) bookReader?.renderPage(prevIndex)
            }
        }
    }

    override fun onCleared() {
        super.onCleared()
        // Ensure resources are freed when the ViewModel is destroyed
        bookReader?.close()
        bookReader = null
    }
}