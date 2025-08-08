package com.example.mrcomic.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.ComicRepository
import com.example.mrcomic.data.BookmarkEntity
import com.example.mrcomic.data.ComicEntity
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.flow.flatMapLatest
import kotlinx.coroutines.ExperimentalCoroutinesApi
import com.example.mrcomic.data.PdfTextExtractor
import com.example.mrcomic.data.CbrTextExtractor
import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import java.io.File
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import com.example.mrcomic.data.TextWithCoordinates

@HiltViewModel
@OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)
class ReaderViewModel @Inject constructor(
    private val repository: ComicRepository,
    @ApplicationContext private val context: Context
) : ViewModel() {
    private val _currentPage = MutableStateFlow(0)
    val currentPage: StateFlow<Int> = _currentPage.asStateFlow()
    private var comicId: Long = 0L
    private var totalPages: Int = 0
    private var readingStart: Long = 0L

    private val _bookmarks = MutableStateFlow<List<BookmarkEntity>>(emptyList())
    val bookmarks: StateFlow<List<BookmarkEntity>> = _bookmarks.asStateFlow()

    private val _comicId = MutableStateFlow(0L)
    val comic: StateFlow<ComicEntity?> = _comicId.flatMapLatest { id ->
        repository.getComicById(id)
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5000),
        initialValue = null
    )

    private val _indexedTextWithCoords = MutableStateFlow<List<List<TextWithCoordinates>>>(emptyList())
    val indexedTextWithCoords: StateFlow<List<List<TextWithCoordinates>>> = _indexedTextWithCoords.asStateFlow()

    private val _searchResults = MutableStateFlow<List<Int>>(emptyList())
    val searchResults: StateFlow<List<Int>> = _searchResults.asStateFlow()

    fun init(comicId: Long, startPage: Int, totalPages: Int) {
        this.comicId = comicId
        _comicId.value = comicId
        this.totalPages = totalPages
        _currentPage.value = startPage
        loadBookmarks()
        viewModelScope.launch {
            repository.updateLastOpened(comicId)
            comic.value?.filePath?.let { path ->
                indexComicText(File(path))
            }
        }
    }

    private suspend fun indexComicText(file: File) = withContext(Dispatchers.IO) {
        val textsWithCoords = when (file.extension.lowercase()) {
            "pdf" -> PdfTextExtractor.extractTextAndCoordinatesFromPdf(context, file)
            // Для CBR пока извлекаем только текстовые файлы, не текст с изображений
            "cbr" -> CbrTextExtractor.extractTextFromCbr(context, file).map { text ->
                // Для CBR без координат, создаем заглушки
                listOf(TextWithCoordinates(text = text, x = 0f, y = 0f, width = 0f, height = 0f))
            }
            else -> emptyList()
        }
        _indexedTextWithCoords.value = textsWithCoords
    }

    fun search(query: String) {
        viewModelScope.launch(Dispatchers.Default) {
            if (query.isBlank()) {
                _searchResults.value = emptyList()
                return@launch
            }
            val results = mutableListOf<Int>()
            _indexedTextWithCoords.value.forEachIndexed { pageIndex, pageTexts ->
                if (pageTexts.any { it.text.contains(query, ignoreCase = true) }) {
                    results.add(pageIndex)
                }
            }
            _searchResults.value = results
        }
    }

    fun setPage(page: Int) {
        if (page in 0 until totalPages) {
            _currentPage.value = page
            saveProgress()
        }
    }

    private fun saveProgress() {
        viewModelScope.launch {
            repository.updateProgress(comicId, _currentPage.value)
        }
    }

    fun addBookmark(label: String? = null) {
        viewModelScope.launch {
            val bookmark = BookmarkEntity(
                comicId = comicId.toInt(),
                page = _currentPage.value,
                label = label ?: "Страница ${_currentPage.value + 1}"
            )
            repository.addBookmark(bookmark)
            loadBookmarks()
        }
    }

    fun removeBookmark(bookmark: BookmarkEntity) {
        viewModelScope.launch {
            repository.removeBookmark(bookmark)
            loadBookmarks()
        }
    }

    private fun loadBookmarks() {
        viewModelScope.launch {
            _bookmarks.value = repository.getBookmarks(comicId)
        }
    }

    fun onStartReading() {
        readingStart = System.currentTimeMillis()
    }

    fun onStopReading() {
        if (readingStart > 0 && comicId > 0) {
            val delta = System.currentTimeMillis() - readingStart
            viewModelScope.launch {
                repository.addReadingTime(comicId, delta)
            }
        }
        readingStart = 0L
    }
}


