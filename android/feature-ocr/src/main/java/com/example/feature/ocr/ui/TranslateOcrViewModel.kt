package com.example.feature.ocr.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.SettingsRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class TranslateOcrViewModel @Inject constructor(
    private val settingsRepository: SettingsRepository
) : ViewModel() {

    // Настройки из репозитория (синхронизированные с SettingsScreen)
    val targetLanguage: StateFlow<String> = settingsRepository.targetLanguage
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), "en")

    val ocrEngine: StateFlow<String> = settingsRepository.ocrEngine
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), "Tesseract")

    val translationProvider: StateFlow<String> = settingsRepository.translationProvider
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), "Google")

    val translationApiKey: StateFlow<String> = settingsRepository.translationApiKey
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), "")

    // Локальное состояние для доступности модели Whisper
    private val _isWhisperModelAvailable = MutableStateFlow(false)
    val isWhisperModelAvailable: StateFlow<Boolean> = _isWhisperModelAvailable

    fun onLanguageSelected(language: String) {
        viewModelScope.launch {
            settingsRepository.setTargetLanguage(language)
        }
    }

    fun onEngineSelected(engine: String) {
        viewModelScope.launch {
            settingsRepository.setOcrEngine(engine)
        }
    }

    fun onProviderSelected(provider: String) {
        viewModelScope.launch {
            settingsRepository.setTranslationProvider(provider)
        }
    }

    fun onApiKeyChanged(key: String) {
        viewModelScope.launch {
            settingsRepository.setTranslationApiKey(key)
        }
    }

    fun downloadWhisperModel() {
        // TODO: Реализовать загрузку модели Whisper
        _isWhisperModelAvailable.value = true
    }
}
