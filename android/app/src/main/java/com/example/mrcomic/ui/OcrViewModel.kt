package com.example.mrcomic.ui

import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.data.OcrTranslationRepository
import com.example.mrcomic.data.network.dto.OcrResponseDto
import com.example.mrcomic.di.Resource
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.launchIn
import kotlinx.coroutines.flow.onEach
import kotlinx.coroutines.launch
import javax.inject.Inject

data class OcrUiState(
    val isLoading: Boolean = false,
    val ocrResponse: OcrResponseDto? = null,
    val error: String? = null,
    val selectedImageUri: Uri? = null // Для хранения Uri выбранного изображения
)

@HiltViewModel
class OcrViewModel @Inject constructor(
    private val ocrTranslationRepository: OcrTranslationRepository
) : ViewModel() {

    private val _uiState = MutableStateFlow(OcrUiState())
    val uiState: StateFlow<OcrUiState> = _uiState.asStateFlow()

    fun setSelectedImageUri(uri: Uri?) {
        _uiState.value = _uiState.value.copy(selectedImageUri = uri, ocrResponse = null, error = null)
    }

    fun performOcr(
        imageUri: Uri,
        regionsJson: String? = null,
        languagesJson: String? = null,
        ocrParamsJson: String? = null
    ) {
        viewModelScope.launch {
            ocrTranslationRepository.processImageOcr(
                imageUri = imageUri,
                regionsJson = regionsJson,
                languagesJson = languagesJson,
                ocrParamsJson = ocrParamsJson
            ).onEach { resource ->
                when (resource) {
                    is Resource.Loading -> {
                        _uiState.value = _uiState.value.copy(isLoading = true, error = null)
                    }
                    is Resource.Success -> {
                        _uiState.value = OcrUiState(isLoading = false, ocrResponse = resource.data, selectedImageUri = _uiState.value.selectedImageUri)
                    }
                    is Resource.Error -> {
                        _uiState.value = _uiState.value.copy(
                            isLoading = false,
                            error = resource.message ?: "Unknown OCR error",
                            ocrResponse = null // Очищаем предыдущий успешный результат, если был
                        )
                    }
                }
            }.launchIn(viewModelScope)
        }
    }
}
