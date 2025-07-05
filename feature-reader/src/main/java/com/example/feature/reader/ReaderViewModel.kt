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
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
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

    fun loadComic(uriString: String) {
        viewModelScope.launch {
            _uiState.value = _uiState.value.copy(isLoading = true, error = null, comicUri = uriString)
            try {
                loadComicUseCase(Uri.parse(uriString))
                val totalPages = getComicPagesUseCase.getTotalPages()
                val lastReadPage = getReadingProgressUseCase(uriString)
                _uiState.value = _uiState.value.copy(
                    isLoading = false,
                    pageCount = totalPages,
                    currentPageIndex = lastReadPage
                )
                goToPage(lastReadPage)
            } catch (e: Exception) {
                _uiState.value = _uiState.value.copy(isLoading = false, error = e.message ?: "Неизвестная ошибка")
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
            val bmp = getComicPagesUseCase.getPage(index)
            if (bmp != null) {
                _uiState.value = _uiState.value.copy(
                    currentPageIndex = index,
                    currentPageBitmap = bmp,
                    bitmaps = _uiState.value.bitmaps.toMutableMap().apply { put(index, bmp) }
                )
                saveReadingProgressUseCase(_uiState.value.comicUri, index)
            }
        }
    }

    fun getPage(pageIndex: Int): Bitmap? {
        return _uiState.value.bitmaps[pageIndex]
    }

    fun setReadingMode(mode: ReadingMode) {
        _uiState.value = _uiState.value.copy(readingMode = mode)
    }

    override fun onCleared() {
        super.onCleared()
        loadComicUseCase.releaseResources()
    }
}


