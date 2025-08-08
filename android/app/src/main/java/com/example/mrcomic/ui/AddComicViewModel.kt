package com.example.mrcomic.ui

import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.ComicRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class AddComicViewModel @Inject constructor(
    private val comicRepository: ComicRepository
) : ViewModel() {
    
    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()
    
    private val _isSuccess = MutableStateFlow(false)
    val isSuccess: StateFlow<Boolean> = _isSuccess.asStateFlow()
    
    private val _filePath = MutableStateFlow<String?>(null)
    val filePath = _filePath.asStateFlow()

    fun setFilePath(uri: String?) {
        _filePath.value = uri
        if (uri == null) {
            _isSuccess.value = false
        }
    }

    fun importComic(uriString: String) {
        viewModelScope.launch {
            _isLoading.value = true
            try {
                val uri = Uri.parse(uriString)
                comicRepository.importComicFromUri(uri)
                _isSuccess.value = true
            } catch (e: Exception) {
                _isSuccess.value = false
            } finally {
                _isLoading.value = false
            }
        }
    }
} 