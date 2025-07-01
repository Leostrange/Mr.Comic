package com.example.mrcomic.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.data.BookmarkEntity
import com.example.mrcomic.data.ComicRepository
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

@HiltViewModel
@OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)
class ReaderViewModel @Inject constructor(
    private val repository: ComicRepository
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

    fun init(comicId: Long, startPage: Int, totalPages: Int) {
        this.comicId = comicId
        _comicId.value = comicId
        this.totalPages = totalPages
        _currentPage.value = startPage
        loadBookmarks()
        viewModelScope.launch {
            repository.updateLastOpened(comicId)
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