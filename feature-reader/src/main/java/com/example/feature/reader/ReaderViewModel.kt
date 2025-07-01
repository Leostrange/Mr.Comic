package com.example.feature.reader

import android.graphics.Bitmap
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch
import javax.inject.Inject
import com.mrcomic.reader.AdvancedComicReaderEngine
import java.io.File

@HiltViewModel
class ReaderViewModel @Inject constructor(
    private val repository: ReaderRepository
) : ViewModel() {
    private val _state = MutableStateFlow(Pair("", 1))
    val state: StateFlow<Pair<String, Int>> = _state.asStateFlow()

    private val _uiState = MutableStateFlow<ReaderUiState>(ReaderUiState.Loading)
    val uiState: StateFlow<ReaderUiState> = _uiState.asStateFlow()

    private val _pageBitmap = MutableStateFlow<Bitmap?>(null)
    val pageBitmap: StateFlow<Bitmap?> = _pageBitmap.asStateFlow()

    private val _currentPageIndex = MutableStateFlow(-1)
    val currentPageIndex: StateFlow<Int> = _currentPageIndex.asStateFlow()
    private val _totalPages = MutableStateFlow(0)
    val totalPages: StateFlow<Int> = _totalPages.asStateFlow()

    private val engine = AdvancedComicReaderEngine()
    private var loaded = false

    enum class ReadingMode {
        SINGLE_PAGE, DOUBLE_PAGE, WEBTOON, MANGA_RTL
    }

    private val _readingMode = MutableStateFlow(ReadingMode.SINGLE_PAGE)
    val readingMode: StateFlow<ReadingMode> = _readingMode.asStateFlow()

    init {
        initLoad()
    }

    fun setState(comicTitle: String, page: Int) {
        if (repository is RoomReaderRepository) {
            viewModelScope.launch { repository.setState(comicTitle, page) }
        }
    }

    fun retry() {
        initLoad()
    }

    private fun initLoad() {
        viewModelScope.launch {
            try {
                _uiState.value = ReaderUiState.Loading
                delay(1000) // имитация загрузки
                if (repository is RoomReaderRepository) {
                    repository.getStateFlow().collectLatest { (comic, page) ->
                        if (comic.isBlank()) throw Exception("Нет выбранного комикса!")
                        _uiState.value = ReaderUiState.Success(comic, page)
                    }
                } else {
                    val (comic, page) = repository.getCurrentComic() to 1
                    if (comic.isBlank()) throw Exception("Нет выбранного комикса!")
                    _uiState.value = ReaderUiState.Success(comic, page)
                }
            } catch (e: Exception) {
                _uiState.value = ReaderUiState.Error(e.message ?: "Неизвестная ошибка")
            }
        }
    }

    fun loadTestComic(pages: List<File>) {
        viewModelScope.launch {
            if (engine.loadComic(pages)) {
                loaded = true
                _totalPages.value = engine.getTotalPages()
                goToPage(0)
            }
        }
    }

    fun goToPage(index: Int) {
        viewModelScope.launch {
            if (!loaded) return@launch
            val bmp = engine.goToPage(index)
            if (bmp != null) {
                _pageBitmap.value = bmp
                _currentPageIndex.value = engine.getCurrentPageIndex()
            }
        }
    }

    fun nextPage() {
        viewModelScope.launch {
            if (!loaded) return@launch
            val bmp = engine.getNextPage()
            if (bmp != null) {
                _pageBitmap.value = bmp
                _currentPageIndex.value = engine.getCurrentPageIndex()
            }
        }
    }

    fun prevPage() {
        viewModelScope.launch {
            if (!loaded) return@launch
            val bmp = engine.getPreviousPage()
            if (bmp != null) {
                _pageBitmap.value = bmp
                _currentPageIndex.value = engine.getCurrentPageIndex()
            }
        }
    }

    fun setReadingMode(mode: ReadingMode) {
        _readingMode.value = mode
    }
} 