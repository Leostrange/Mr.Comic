package com.example.feature.ocr.ui

import androidx.lifecycle.ViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import javax.inject.Inject

@HiltViewModel
class TranslateOcrViewModel @Inject constructor() : ViewModel() {

    private val _targetLanguage = MutableStateFlow("en")
    val targetLanguage: StateFlow<String> = _targetLanguage

    private val _ocrEngine = MutableStateFlow("Tesseract")
    val ocrEngine: StateFlow<String> = _ocrEngine

    private val _translationProvider = MutableStateFlow("Google")
    val translationProvider: StateFlow<String> = _translationProvider

    private val _translationApiKey = MutableStateFlow("")
    val translationApiKey: StateFlow<String> = _translationApiKey

    private val _isWhisperModelAvailable = MutableStateFlow(false)
    val isWhisperModelAvailable: StateFlow<Boolean> = _isWhisperModelAvailable

    fun onLanguageSelected(language: String) {
        _targetLanguage.value = language
    }

    fun onEngineSelected(engine: String) {
        _ocrEngine.value = engine
    }

    fun onProviderSelected(provider: String) {
        _translationProvider.value = provider
    }

    fun onApiKeyChanged(key: String) {
        _translationApiKey.value = key
    }

    fun downloadWhisperModel() {
        _isWhisperModelAvailable.value = true
    }
}
