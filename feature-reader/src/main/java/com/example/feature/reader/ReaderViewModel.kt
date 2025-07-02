package com.example.feature.reader

import android.content.Context
import android.net.Uri
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
import dagger.hilt.android.qualifiers.ApplicationContext

import com.example.mrcomic.data.BookmarkDao
import com.example.mrcomic.data.BookmarkEntity

@HiltViewModel
class ReaderViewModel @Inject constructor(
    private val repository: ReaderRepository,
    private val bookmarkDao: BookmarkDao,
    @ApplicationContext private val context: Context
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

    private lateinit var engine: AdvancedComicReaderEngine
    private var loaded = false

    enum class ReadingMode {
        SINGLE_PAGE, DOUBLE_PAGE, WEBTOON, MANGA_RTL
    }

    private val _readingMode = MutableStateFlow(ReadingMode.SINGLE_PAGE)
    val readingMode: StateFlow<ReadingMode> = _readingMode.asStateFlow()

    init {
        engine = AdvancedComicReaderEngine(context)
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
                        val comicUri = Uri.parse(comic) // Assuming comic is now a URI string
                        val lastReadPage = loadBookmark(comic) // Load last read page
                        if (engine.loadComic(comicUri)) {
                            loaded = true
                            _totalPages.value = engine.getTotalPages()
                            goToPage(lastReadPage)
                            _uiState.value = ReaderUiState.Success(comic, lastReadPage)
                        } else {
                            throw Exception("Не удалось загрузить комикс: $comic")
                        }
                    }
                } else {
                    val comicUri = Uri.parse(repository.getCurrentComic()) // Assuming comic is now a URI string
                    if (comicUri.toString().isBlank()) throw Exception("Нет выбранного комикса!")
                    val lastReadPage = loadBookmark(comicUri.toString())
                    if (engine.loadComic(comicUri)) {
                        loaded = true
                        _totalPages.value = engine.getTotalPages()
                        goToPage(lastReadPage)
                        _uiState.value = ReaderUiState.Success(comicUri.toString(), lastReadPage)
                    } else {
                        throw Exception("Не удалось загрузить комикс: $comicUri")
                    }
                }
            } catch (e: Exception) {
                _uiState.value = ReaderUiState.Error(e.message ?: "Неизвестная ошибка")
            }
        }
    }

    fun loadComicFromUri(uri: Uri) {
        viewModelScope.launch {
            if (engine.loadComic(uri)) {
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
                // Save bookmark when page changes
                saveBookmark(repository.getCurrentComic(), engine.getCurrentPageIndex())
            }
        }
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
            bookmarkDao.getBookmarkAtPage(comicUri, 0)?.page ?: 0 // Assuming we want to load the first bookmark for the comic
        } else {
            0
        }
    }

    fun nextPage() {
        viewModelScope.launch {
            if (!loaded) return@launch
            val bmp = engine.getNextPage()
            if (bmp != null) {
                _pageBitmap.value = bmp
                _currentPageIndex.value = engine.getCurrentPageIndex()
                saveBookmark(repository.getCurrentComic(), engine.getCurrentPageIndex())
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
                saveBookmark(repository.getCurrentComic(), engine.getCurrentPageIndex())
            }
        }
    }

    fun setReadingMode(mode: ReadingMode) {
        _readingMode.value = mode
    }

    override fun onCleared() {
        super.onCleared()
        engine.releaseResources()
    }
} 