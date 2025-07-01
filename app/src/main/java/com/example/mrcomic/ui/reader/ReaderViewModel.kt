package com.example.mrcomic.ui.reader

import android.content.Context
import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch

class ReaderViewModel(private val pageExtractor: PageExtractor) : ViewModel() {

    private val _pageCount = MutableStateFlow(0)
    val pageCount: StateFlow<Int> = _pageCount.asStateFlow()

    init {
        viewModelScope.launch {
            _pageCount.value = pageExtractor.getPageCount()
        }
    }

    suspend fun getPage(pageIndex: Int) = pageExtractor.getPage(pageIndex)

    override fun onCleared() {
        super.onCleared()
        pageExtractor.close()
    }

    companion object {
        fun createFactory(context: Context, uri: Uri): ViewModelProvider.Factory {
            return object : ViewModelProvider.Factory {
                @Suppress("UNCHECKED_CAST")
                override fun <T : ViewModel> create(modelClass: Class<T>): T {
                    val extractor = createExtractor(context, uri)
                    return ReaderViewModel(extractor) as T
                }
            }
        }

        private fun createExtractor(context: Context, uri: Uri): PageExtractor {
            val type = context.contentResolver.getType(uri)
            return when {
                type == "application/pdf" -> PdfPageExtractor(context, uri)
                type == "application/vnd.comicbook+zip" || type == "application/zip" || type == "application/x-zip-compressed" -> ArchivePageExtractor(context, uri)
                type == "application/vnd.comicbook-rar" || type == "application/x-rar-compressed" -> ArchivePageExtractor(context, uri)
                // Добавьте другие типы архивов по необходимости
                else -> throw IllegalArgumentException("Unsupported file type: $type")
            }
        }
    }
} 