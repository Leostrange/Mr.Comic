package com.example.feature.reader.ui

import android.content.Context
import android.net.Uri
import android.graphics.Bitmap
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.domain.usecase.GetReadingProgressUseCase
import com.example.core.domain.usecase.SaveReadingProgressUseCase
import com.example.core.domain.util.Result
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.domain.BookReaderFactory
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
import dagger.hilt.android.qualifiers.ApplicationContext

@HiltViewModel
class ReaderViewModel @Inject constructor(
    private val readerFactory: BookReaderFactory,
    private val settingsRepository: SettingsRepository,
    private val saveReadingProgressUseCase: SaveReadingProgressUseCase,
    private val getReadingProgressUseCase: GetReadingProgressUseCase,
    @ApplicationContext private val context: Context,
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


    val readingDoubleTapZoom = settingsRepository.readingDoubleTapZoom.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        2.0f
    )

    val readingBlockSwipeWhenZoomed = settingsRepository.readingBlockSwipeWhenZoomed.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        true
    )

    val readingOrientation = settingsRepository.readingOrientation.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        "auto"
    )

    val readingScaleMode = settingsRepository.scaleMode.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        "width"
    )

    private var bookReader: MediaReader? = null
    private var currentComicId: String? = null

    companion object {
        private const val PRELOAD_DISTANCE = 1
        private const val TAG = "ReaderViewModel"
    }

    init {
        // Путь к файлу приходит как аргумент навигации.
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
            // Закрываем предыдущий reader при открытии новой книги
            try {
                bookReader?.close()
            } catch (e: Exception) {
                android.util.Log.w(TAG, "Error closing previous reader", e)
            }

            try {
                val reader = readerFactory.create(uri)
                val result = reader.open(context, uri)
                
                if (result.isSuccess) {
                    bookReader = reader // назначаем только после успешного открытия
                    currentComicId = uri.toString()
                    val metadata = result.getOrThrow()
                    val pageCount = metadata.pageCount
                    android.util.Log.d(TAG, "Book opened successfully. Page count: $pageCount")

                    // Восстанавливаем прогресс чтения
                    val progressResult = getReadingProgressUseCase(currentComicId!!)
                    if (progressResult is Result.Error) {
                        android.util.Log.w(TAG, "Failed to load reading progress", progressResult.exception)
                    }

                    val lastReadPage = when (progressResult) {
                        is Result.Success -> progressResult.data.currentPage
                        is Result.Error -> 0
                    }.coerceIn(0, (pageCount - 1).coerceAtLeast(0))

                    val resolvedPageCount = when (progressResult) {
                        is Result.Success -> if (pageCount == 0) progressResult.data.totalPages else pageCount
                        is Result.Error -> pageCount
                    }

                    _uiState.update { it.copy(pageCount = resolvedPageCount) }

                    if (resolvedPageCount > 0) {
                        loadPage(lastReadPage)
                    } else {
                        _uiState.update { it.copy(isLoading = false) }
                    }
                } else {
                    throw result.exceptionOrNull() ?: Exception("Failed to open book")
                }
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

    private suspend fun getPage(pageIndex: Int): Bitmap? {
        return withContext(Dispatchers.IO) {
            val reader = bookReader
            if (reader != null) {
                val result = reader.renderPage(pageIndex, 1920, 1080, 1.0f)
                if (result.isSuccess) {
                    result.getOrNull()
                } else {
                    android.util.Log.e(TAG, "Failed to render page $pageIndex: ${result.exceptionOrNull()?.message}")
                    null
                }
            } else {
                null
            }
        }
    }

    fun loadPage(pageIndex: Int) {
        android.util.Log.d(TAG, "Loading page: $pageIndex")
        _uiState.update { it.copy(isLoading = true) }
        viewModelScope.launch {
            val bitmap = getPage(pageIndex)

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

            // Сохраняем прогресс чтения
            currentComicId?.let { comicId ->
                when (
                    val saveResult = saveReadingProgressUseCase(
                        comicId = comicId,
                        currentPage = pageIndex,
                        totalPages = _uiState.value.pageCount
                    )
                ) {
                    is Result.Error -> android.util.Log.e(TAG, "Failed to save reading progress", saveResult.exception)
                    else -> Unit
                }
            }

            // Прелоадим соседние страницы
            preloadAdjacentPages(pageIndex)
        }
    }

    /**
     * Фоновый прелоад страниц до/после текущей для более плавного UX.
     */
    private fun preloadAdjacentPages(centerPageIndex: Int) {
        val pageCount = _uiState.value.pageCount
        if (pageCount <= 1) return

        viewModelScope.launch(Dispatchers.IO) {
            for (i in 1..PRELOAD_DISTANCE) {
                val nextIndex = centerPageIndex + i
                if (nextIndex < pageCount) {
                    android.util.Log.d(TAG, "Preloading page: $nextIndex")
                    val reader = bookReader
                    if (reader != null) {
                        val result = reader.renderPage(nextIndex, 1920, 1080, 1.0f)
                        if (result.isFailure) {
                            android.util.Log.e(TAG, "Failed to preload page $nextIndex: ${result.exceptionOrNull()?.message}")
                        }
                    }
                }
            }
            for (i in 1..PRELOAD_DISTANCE) {
                val prevIndex = centerPageIndex - i
                if (prevIndex >= 0) {
                    android.util.Log.d(TAG, "Preloading page: $prevIndex")
                    val reader = bookReader
                    if (reader != null) {
                        val result = reader.renderPage(prevIndex, 1920, 1080, 1.0f)
                        if (result.isFailure) {
                            android.util.Log.e(TAG, "Failed to preload page $prevIndex: ${result.exceptionOrNull()?.message}")
                        }
                    }
                }
            }
        }
    }

    override fun onCleared() {
        super.onCleared()
        android.util.Log.d(TAG, "ViewModel cleared, closing book reader")
        try {
            bookReader?.let { reader ->
                kotlinx.coroutines.runBlocking {
                    reader.close()
                }
            }
        } catch (e: Exception) {
            android.util.Log.w(TAG, "Error closing reader", e)
        }
        bookReader = null
        currentComicId = null
    }
}