package com.example.mrcomic.theme.ui.viewmodel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import com.example.mrcomic.theme.data.model.Comic
import com.example.mrcomic.theme.data.repository.ComicRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.collect
import kotlinx.coroutines.launch
import javax.inject.Inject
import com.example.mrcomic.data.ComicFts
import com.example.mrcomic.data.FailedImport
import kotlinx.coroutines.flow.Flow
import androidx.lifecycle.liveData
import java.io.File

/**
 * ViewModel для библиотеки комиксов
 */
@HiltViewModel
class ComicLibraryViewModel @Inject constructor(
    private val comicRepository: ComicRepository
) : ViewModel() {

    private val _comics = MutableLiveData<List<Comic>>()
    val comics: LiveData<List<Comic>> = _comics

    private val _favoriteComics = MutableLiveData<List<Comic>>()
    val favoriteComics: LiveData<List<Comic>> = _favoriteComics

    private val _error = MutableLiveData<String?>()
    val error: LiveData<String?> = _error

    private val _failedImports = MutableLiveData<List<FailedImport>>()
    val failedImports: LiveData<List<FailedImport>> = _failedImports

    init {
        loadComics()
        loadFavoriteComics()
        loadFailedImports()
    }

    fun loadComics() {
        viewModelScope.launch {
            try {
                comicRepository.getAllComics().collect { list ->
                    _comics.value = list
                }
            } catch (e: Exception) {
                _error.value = e.message
            }
        }
    }

    fun loadFavoriteComics() {
        viewModelScope.launch {
            try {
                comicRepository.getFavoriteComics().collect { list ->
                    _favoriteComics.value = list
                }
            } catch (e: Exception) {
                _error.value = e.message
            }
        }
    }

    fun loadFailedImports() {
        viewModelScope.launch {
            try {
                comicRepository.getFailedImports().collect { list ->
                    _failedImports.value = list
                }
            } catch (e: Exception) {
                _error.value = e.message
            }
        }
    }

    fun addComic(comic: Comic, fts: ComicFts? = null) {
        viewModelScope.launch {
            try {
                comicRepository.insertComic(comic)
                if (fts != null) comicRepository.insertFtsTag(fts)
            } catch (e: Exception) {
                _error.value = e.message
            }
        }
    }

    fun updateComic(comic: Comic) {
        viewModelScope.launch {
            try {
                comicRepository.updateComic(comic)
            } catch (e: Exception) {
                _error.value = e.message
            }
        }
    }

    fun deleteComic(comic: Comic) {
        viewModelScope.launch {
            try {
                comicRepository.deleteComic(comic)
            } catch (e: Exception) {
                _error.value = e.message
            }
        }
    }

    fun insertFailedImport(failedImport: FailedImport) {
        viewModelScope.launch {
            try {
                comicRepository.insertFailedImport(failedImport)
            } catch (e: Exception) {
                _error.value = e.message
            }
        }
    }

    fun searchComicsFts(query: String): Flow<List<ComicFts>> = comicRepository.searchComicsFts(query)
    fun filterByAuthor(author: String): Flow<List<ComicFts>> = comicRepository.filterByAuthor(author)
    fun filterByTags(tags: String): Flow<List<ComicFts>> = comicRepository.filterByTags(tags)
    fun filterByCollection(collectionName: String): Flow<List<ComicFts>> = comicRepository.filterByCollection(collectionName)
    fun filterByPublisher(publisher: String): Flow<List<ComicFts>> = comicRepository.filterByPublisher(publisher)
    fun filterByYear(year: String): Flow<List<ComicFts>> = comicRepository.filterByYear(year)

    fun getThumbnailsForComic(comicId: String): LiveData<List<String>> = liveData {
        val comic = comics.value?.find { it.id == comicId }
        if (comic != null) {
            val pagesDir = File(File(comic.filePath).parentFile, "pages/${comic.id}")
            val thumbs = pagesDir.listFiles()
                ?.filter { it.extension in listOf("jpg", "png") }
                ?.sortedBy { it.name }
                ?.map { it.absolutePath }
                ?: emptyList()
            emit(thumbs)
        } else {
            emit(emptyList())
        }
    }

    fun getComicsByLabel(label: String): Flow<List<Comic>> = comicRepository.getComicsByLabel(label)
    fun updateComicLabels(comicId: String, labels: List<String>) {
        viewModelScope.launch {
            try {
                comicRepository.updateComicLabels(comicId, labels)
            } catch (e: Exception) {
                _error.value = e.message
            }
        }
    }
} 