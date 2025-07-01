package com.example.mrcomic.viewmodel

import android.app.Application
import android.net.Uri
import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.utils.FormatProcessor
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import java.io.File
import javax.inject.Inject

enum class ComicType {
    PDF, CBZ, CBR, TXT, EPUB, UNKNOWN
}

sealed class ComicUiState {
    object Idle : ComicUiState()
    object Loading : ComicUiState()
    data class Success(
        val comicType: ComicType,
        val pages: List<Uri>,
        val currentPageIndex: Int,
        val txtContent: String? = null,
        val epubCoverUri: Uri? = null
    ) : ComicUiState()
    data class Error(val message: String) : ComicUiState()
}

@HiltViewModel
class ComicViewModel @Inject constructor(
    private val application: Application
) : ViewModel() {

    private val _uiState = MutableStateFlow<ComicUiState>(ComicUiState.Idle)
    val uiState: StateFlow<ComicUiState> = _uiState.asStateFlow()

    private var currentComicFileUri: Uri? = null
    private var tempComicDir: File? = null

    fun loadComic(uri: Uri?) {
        if (uri == null) {
            _uiState.value = ComicUiState.Error("No comic selected.")
            return
        }
        clearCurrentComic()
        currentComicFileUri = uri
        _uiState.value = ComicUiState.Loading
        viewModelScope.launch {
            try {
                val fileExtension = uri.lastPathSegment?.substringAfterLast('.')?.lowercase() ?: "unknown"
                val comicType = when (fileExtension) {
                    "pdf" -> ComicType.PDF
                    "cbz" -> ComicType.CBZ
                    "cbr" -> ComicType.CBR
                    "txt" -> ComicType.TXT
                    "epub" -> ComicType.EPUB
                    else -> ComicType.UNKNOWN
                }
                if (comicType == ComicType.UNKNOWN) {
                    _uiState.value = ComicUiState.Error("Unsupported file type: .$fileExtension")
                    return@launch
                }
                val tempDir = File(application.cacheDir, "comic_temp_${System.currentTimeMillis()}")
                tempDir.mkdirs()
                tempComicDir = tempDir
                when (comicType) {
                    ComicType.PDF -> {
                        _uiState.value = ComicUiState.Success(ComicType.PDF, listOf(uri), 0)
                    }
                    ComicType.CBZ, ComicType.CBR -> {
                        val extractedPages = if (comicType == ComicType.CBZ) {
                            FormatProcessor.extractZip(application, uri, tempDir)
                        } else {
                            FormatProcessor.extractRar(application, uri, tempDir)
                        }
                        if (extractedPages.isEmpty()) {
                            throw IllegalStateException("No images found in the archive or failed to extract.")
                        }
                        _uiState.value = ComicUiState.Success(comicType, extractedPages, 0)
                    }
                    ComicType.TXT -> {
                        val txtContent = FormatProcessor.readTxt(application, uri)
                        _uiState.value = ComicUiState.Success(ComicType.TXT, listOf(uri), 0, txtContent = txtContent)
                    }
                    ComicType.EPUB -> {
                        val (htmlPages, coverUri) = FormatProcessor.extractEpub(application, uri, tempDir)
                        if (htmlPages.isEmpty()) {
                            throw IllegalStateException("No readable content found in EPUB.")
                        }
                        _uiState.value = ComicUiState.Success(ComicType.EPUB, htmlPages, 0, epubCoverUri = coverUri)
                    }
                    ComicType.UNKNOWN -> {}
                }
            } catch (e: Exception) {
                Log.e("ComicViewModel", "Error loading comic: ${e.message}", e)
                _uiState.value = ComicUiState.Error("Failed to load comic: ${e.localizedMessage ?: "Unknown error"}")
                tempComicDir?.let {
                    FormatProcessor.clearDirectory(it)
                    tempComicDir = null
                }
            }
        }
    }

    fun nextPage() {
        _uiState.value.let { currentState ->
            if (currentState is ComicUiState.Success) {
                val newIndex = (currentState.currentPageIndex + 1).coerceAtMost(currentState.pages.size - 1)
                _uiState.value = currentState.copy(currentPageIndex = newIndex)
            }
        }
    }

    fun prevPage() {
        _uiState.value.let { currentState ->
            if (currentState is ComicUiState.Success) {
                val newIndex = (currentState.currentPageIndex - 1).coerceAtLeast(0)
                _uiState.value = currentState.copy(currentPageIndex = newIndex)
            }
        }
    }

    private fun clearCurrentComic() {
        tempComicDir?.let {
            FormatProcessor.clearDirectory(it)
            tempComicDir = null
            Log.d("ComicViewModel", "Cleared temporary comic directory: ${it.absolutePath}")
        }
        currentComicFileUri = null
        _uiState.value = ComicUiState.Idle
    }

    override fun onCleared() {
        super.onCleared()
        clearCurrentComic()
        Log.d("ComicViewModel", "ViewModel cleared, temporary files removed.")
    }
} 