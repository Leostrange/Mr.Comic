package com.example.mrcomic.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.di.OcrTranslationRepository
import com.example.mrcomic.data.network.dto.TextToTranslateDto
import com.example.mrcomic.data.network.dto.TranslationParametersDto
import com.example.mrcomic.data.network.dto.TranslationRequestDto
import com.example.mrcomic.data.network.dto.TranslationResponseDto
import com.example.mrcomic.di.Resource
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.launchIn
import kotlinx.coroutines.flow.onEach
import kotlinx.coroutines.launch
import javax.inject.Inject

data class TranslateUiState(
    val isLoading: Boolean = false,
    val translationResponse: TranslationResponseDto? = null,
    val error: String? = null,
    val originalText: String = ""
)

@HiltViewModel
class TranslateViewModel @Inject constructor(
    private val ocrTranslationRepository: OcrTranslationRepository
) : ViewModel() {

    private val _uiState = MutableStateFlow(TranslateUiState())
    val uiState: StateFlow<TranslateUiState> = _uiState.asStateFlow()

    fun setOriginalText(text: String) {
        _uiState.value = _uiState.value.copy(originalText = text, translationResponse = null, error = null)
    }

    fun performTranslation(
        textsToTranslate: List<TextToTranslateDto>,
        sourceLanguage: String,
        targetLanguage: String,
        translationParams: TranslationParametersDto? = null
    ) {
        if (textsToTranslate.isEmpty()) {
            _uiState.value = _uiState.value.copy(error = "No text provided for translation.")
            return
        }
        _uiState.value = _uiState.value.copy(originalText = textsToTranslate.first().text)

        val requestDto = TranslationRequestDto(
            texts = textsToTranslate,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage,
            translationParams = translationParams
        )

        viewModelScope.launch {
            ocrTranslationRepository.translateText(requestDto)
                .onEach { resource ->
                    when (resource) {
                        is Resource.Loading -> {
                            _uiState.value = _uiState.value.copy(isLoading = true, error = null)
                        }
                        is Resource.Success -> {
                            _uiState.value = _uiState.value.copy(
                                isLoading = false,
                                translationResponse = resource.data
                            )
                        }
                        is Resource.Error -> {
                            _uiState.value = _uiState.value.copy(
                                isLoading = false,
                                error = resource.message ?: "Unknown translation error",
                                translationResponse = null
                            )
                        }
                    }
                }.launchIn(viewModelScope)
        }
    }
}
