package com.example.feature.reader

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.reader.AdvancedComicReaderEngine
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

import com.example.mrcomic.data.BookmarkDao
import com.example.mrcomic.data.BookmarkEntity

data class ReaderUiState(
    val isLoading: Boolean = false,
    val error: String? = null,
    val currentPageIndex: Int = 0,
    val pageCount: Int = 0,
    val readingMode: ReadingMode = ReadingMode.PAGE,
    val currentPageBitmap: Bitmap? = null,
    val bitmaps: Map<Int, Bitmap> = emptyMap()
)

enum class ReadingMode {
    PAGE, WEBTOON
}

@HiltViewModel
class ReaderViewModel @Inject constructor(
    private val repository: ReaderRepository,
    private val bookmarkDao: BookmarkDao,
    @ApplicationContext private val context: Context
) : ViewModel() {

    private val _uiState = MutableStateFlow(ReaderUiState())
    val uiState: StateFlow<ReaderUiState> = _uiState.asStateFlow()

    private lateinit var engine: AdvancedComicReaderEngine

    init {
        engine = AdvancedComicReaderEngine(context)
    }

    fun loadComicFromUri(uriString: String) {
        viewModelScope.launch {
            _uiState.value = _uiState.value.copy(isLoading = true, error = null)
            try {
                val uri = Uri.parse(uriString)
                if (engine.loadComic(uri)) {
                    val totalPages = engine.getTotalPages()
                    val lastReadPage = loadBookmark(uriString)
                    _uiState.value = _uiState.value.copy(
                        isLoading = false,
                        pageCount = totalPages,
                        currentPageIndex = lastReadPage
                    )
                    goToPage(lastReadPage)
                } else {
                    _uiState.value = _uiState.value.copy(isLoading = false, error = "Не удалось загрузить комикс: $uriString")
                }
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
            val bmp = engine.goToPage(index)
            if (bmp != null) {
                _uiState.value = _uiState.value.copy(
                    currentPageIndex = index,
                    currentPageBitmap = bmp,
                    bitmaps = _uiState.value.bitmaps.toMutableMap().apply { put(index, bmp) }
                )
                saveBookmark(repository.getCurrentComic(), index)
            }
        }
    }

    fun getPage(pageIndex: Int): Bitmap? {
        return _uiState.value.bitmaps[pageIndex]
    }

    private fun saveBookmark(comicUri: String, page: Int) {
        viewModelScope.launch {
            if (comicUri.isNotBlank()) {
                val bookmark = BookmarkEntity(comicId = comicUri, page = page)
                bookmarkDao.insertBookmark(bookmark)
            }
        }
    }

    private suspend fun loadBookmark(comicUri: String): Int {
        return if (comicUri.isNotBlank()) {
            bookmarkDao.getBookmarkAtPage(comicUri, 0)?.page ?: 0
        } else {
            0
        }
    }

    fun setReadingMode(mode: ReadingMode) {
        _uiState.value = _uiState.value.copy(readingMode = mode)
    }

    override fun onCleared() {
        super.onCleared()
        engine.releaseResources()
    }
}


