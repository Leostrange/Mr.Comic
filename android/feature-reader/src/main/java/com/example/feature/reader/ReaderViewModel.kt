package com.example.feature.reader

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.domain.usecase.GetComicPagesUseCase
import com.example.core.domain.usecase.LoadComicUseCase
import com.example.core.domain.usecase.SaveReadingProgressUseCase
import com.example.core.domain.usecase.GetReadingProgressUseCase
import com.example.core.domain.util.Result
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

data class ReaderUiState(
    val isLoading: Boolean = false,
    val error: String? = null,
    val currentPageIndex: Int = 0,
    val pageCount: Int = 0,
    val readingMode: ReadingMode = ReadingMode.PAGE,
    val currentPageBitmap: Bitmap? = null,
    val bitmaps: Map<Int, Bitmap> = emptyMap(),
    val comicUri: String = ""
)

enum class ReadingMode {
    PAGE, WEBTOON
}

@HiltViewModel
class ReaderViewModel @Inject constructor(
    private val loadComicUseCase: LoadComicUseCase,
    private val getComicPagesUseCase: GetComicPagesUseCase,
    private val saveReadingProgressUseCase: SaveReadingProgressUseCase,
    private val getReadingProgressUseCase: GetReadingProgressUseCase,
    @ApplicationContext private val context: Context
) : ViewModel() {

    private val _uiState = MutableStateFlow(ReaderUiState())
    val uiState: StateFlow<ReaderUiState> = _uiState.asStateFlow()

    // Background color for reader (dark theme)
    private val _background = MutableStateFlow(0xFF1A1A1A.toLong())
    val background: StateFlow<Long> = _background.asStateFlow()

    fun loadComic(uriString: String) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true, error = null, comicUri = uriString) }

            // Clear any existing cache
            getComicPagesUseCase.clearCache()

            when (val loadResult = loadComicUseCase(Uri.parse(uriString))) {
                is Result.Success -> {
                    val totalPages = when (val pagesResult = getComicPagesUseCase.getTotalPages()) {
                        is Result.Success -> pagesResult.data
                        is Result.Error -> {
                            _uiState.update { it.copy(isLoading = false, error = pagesResult.exception.message ?: "Ошибка чтения") }
                            return@launch
                        }
                    }
                    val lastReadPage = when (val progressResult = getReadingProgressUseCase(uriString)) {
                        is Result.Success -> progressResult.data
                        is Result.Error -> 0
                    }
                    _uiState.update {
                        it.copy(
                            isLoading = false,
                            pageCount = totalPages,
                            currentPageIndex = lastReadPage
                        )
                    }
                    goToPage(lastReadPage)
                }
                is Result.Error -> _uiState.update { it.copy(isLoading = false, error = loadResult.exception.message ?: "Неизвестная ошибка") }
            }
        }
    }

    fun goToNextPage() {
        viewModelScope.launch {
            val nextPageIndex = _uiState.value.currentPageIndex + 1
            if (nextPageIndex < _uiState.value.pageCount) {
                goToPage(nextPageIndex)
            }
        }
    }

    fun goToPreviousPage() {
        viewModelScope.launch {
            val prevPageIndex = _uiState.value.currentPageIndex - 1
            if (prevPageIndex >= 0) {
                goToPage(prevPageIndex)
            }
        }
    }

    private fun goToPage(index: Int) {
        viewModelScope.launch {
            when (val pageResult = getComicPagesUseCase.getPage(index)) {
                is Result.Success -> {
                    val bmp = pageResult.data
                    if (bmp != null) {
                        _uiState.update {
                            it.copy(
                                currentPageIndex = index,
                                currentPageBitmap = bmp,
                                bitmaps = it.bitmaps.toMutableMap().apply { put(index, bmp) }
                            )
                        }
                        saveReadingProgressUseCase(_uiState.value.comicUri, index)
                        // result ignored
                    }
                }
                is Result.Error -> _uiState.update { it.copy(error = pageResult.exception.message ?: "Ошибка страницы") }
            }
        }
    }

    fun getPage(pageIndex: Int): Bitmap? {
        return _uiState.value.bitmaps[pageIndex]
    }

    fun setReadingMode(mode: ReadingMode) {
        _uiState.update { it.copy(readingMode = mode) }
    }

    override fun onCleared() {
        super.onCleared()
        loadComicUseCase.releaseResources()
    }
}


