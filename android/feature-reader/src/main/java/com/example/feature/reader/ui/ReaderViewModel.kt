package com.example.feature.reader.ui

import android.net.Uri
import android.graphics.Bitmap
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.feature.reader.domain.BookReader
import com.example.feature.reader.domain.BookReaderFactory
import com.example.core.data.repository.SettingsRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import javax.inject.Inject

@HiltViewModel
class ReaderViewModel @Inject constructor(
    private val readerFactory: BookReaderFactory,
    private val settingsRepository: SettingsRepository,
    savedStateHandle: SavedStateHandle
) : ViewModel() {

    private val _uiState = MutableStateFlow(ReaderUiState())
    val uiState = _uiState.asStateFlow()

    val lineSpacing = settingsRepository.readerLineSpacing.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        1.5f
    )

    val font = settingsRepository.readerFont.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        "Sans"
    )

    val background = settingsRepository.readerBackground.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        0xFFFFFFFF
    )

    private var bookReader: BookReader? = null

    companion object {
        private const val PRELOAD_DISTANCE = 1
        private const val TAG = "ReaderViewModel"
    }

    init {
        // The file path is passed as a navigation argument.
        // SavedStateHandle automatically receives arguments from the NavController.
        android.util.Log.d(TAG, "🎬 ReaderViewModel initialized")
        android.util.Log.d(TAG, "📋 SavedStateHandle keys: ${savedStateHandle.keys()}")
        val uriString = savedStateHandle.get<String>("uri")
        android.util.Log.d(TAG, "📁 Received URI from navigation: $uriString")
        if (uriString != null) {
            android.util.Log.d(TAG, "✅ URI found, opening book...")
            openBook(Uri.parse(uriString))
        } else {
            android.util.Log.e(TAG, "❌ No URI provided in navigation arguments!")
            _uiState.update { it.copy(isLoading = false, error = "File URI not provided.") }
        }
    }

    fun openBook(uri: Uri) {
        android.util.Log.d(TAG, "Opening book: $uri")
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true, error = null) }
            // Close previous reader if a new book is opened
            bookReader?.close()

            try {
                val reader = readerFactory.create(uri)
                val pageCount = reader.open(uri)
                bookReader = reader // Only assign if successful
                android.util.Log.d(TAG, "Book opened successfully. Page count: $pageCount")
                _uiState.update { it.copy(pageCount = pageCount) }
                loadPage(0) // Load the first page
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Failed to open book", e)
                _uiState.update {
                    it.copy(isLoading = false, error = "Failed to open file: ${e.message}")
                }
            }
        }
    }

    fun goToNextPage() {
        val currentState = _uiState.value
        val nextPage = currentState.currentPageIndex + 1
        android.util.Log.d(TAG, "goToNextPage: current=${currentState.currentPageIndex}, next=$nextPage, total=${currentState.pageCount}")
        if (nextPage < currentState.pageCount) {
            loadPage(nextPage)
        } else {
            android.util.Log.d(TAG, "Already at last page")
        }
    }

    fun goToPreviousPage() {
        val currentState = _uiState.value
        val prevPage = currentState.currentPageIndex - 1
        android.util.Log.d(TAG, "goToPreviousPage: current=${currentState.currentPageIndex}, prev=$prevPage")
        if (prevPage >= 0) {
            loadPage(prevPage)
        } else {
            android.util.Log.d(TAG, "Already at first page")
        }
    }

    fun setReadingMode(mode: ReadingMode) {
        android.util.Log.d(TAG, "Setting reading mode: $mode")
        _uiState.update { it.copy(readingMode = mode) }
    }

    fun setReadingDirection(direction: ReadingDirection) {
        android.util.Log.d(TAG, "Setting reading direction: $direction")
        _uiState.update { it.copy(readingDirection = direction) }
    }

    suspend fun getPage(pageIndex: Int): Bitmap? {
        return withContext(Dispatchers.IO) {
            bookReader?.renderPage(pageIndex)
        }
    }

    private fun loadPage(pageIndex: Int) {
        android.util.Log.d(TAG, "Loading page: $pageIndex")
        _uiState.update { it.copy(isLoading = true) }
        viewModelScope.launch {
            val bitmap = withContext(Dispatchers.IO) {
                bookReader?.renderPage(pageIndex)
            }
            
            if (bitmap != null) {
                android.util.Log.d(TAG, "Page $pageIndex loaded successfully (${bitmap.width}x${bitmap.height})")
            } else {
                android.util.Log.w(TAG, "Failed to load page $pageIndex")
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
                if (nextIndex < pageCount) {
                    android.util.Log.d(TAG, "Preloading page: $nextIndex")
                    bookReader?.renderPage(nextIndex)
                }
            }
            // Preload pages before the current one
            for (i in 1..PRELOAD_DISTANCE) {
                val prevIndex = centerPageIndex - i
                if (prevIndex >= 0) {
                    android.util.Log.d(TAG, "Preloading page: $prevIndex")
                    bookReader?.renderPage(prevIndex)
                }
            }
        }
    }

    override fun onCleared() {
        super.onCleared()
        android.util.Log.d(TAG, "ViewModel cleared, closing book reader")
        // Ensure resources are freed when the ViewModel is destroyed
        bookReader?.close()
        bookReader = null
    }
}