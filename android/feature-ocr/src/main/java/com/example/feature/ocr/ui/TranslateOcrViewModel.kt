package com.example.feature.ocr.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.SettingsRepository
import com.example.feature.translate.domain.MLKitTranslationService
import com.example.feature.translate.domain.TranslateEngine
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class TranslateOcrViewModel @Inject constructor(
    private val settingsRepository: SettingsRepository,
    private val translateEngine: TranslateEngine
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

    // ML Kit Translation states
    private val _downloadedModels = MutableStateFlow<Set<String>>(emptySet())
    val downloadedModels: StateFlow<Set<String>> = _downloadedModels

    private val _isDownloading = MutableStateFlow(false)
    val isDownloading: StateFlow<Boolean> = _isDownloading

    private val _translationError = MutableStateFlow<String?>(null)
    val translationError: StateFlow<String?> = _translationError

    private val _translatedText = MutableStateFlow<String?>(null)
    val translatedText: StateFlow<String?> = _translatedText

    init {
        // Load downloaded models on init
        refreshDownloadedModels()
    }

    /**
     * Translate text using ML Kit offline translation
     */
    fun translateText(text: String, sourceLanguage: String = "auto") {
        viewModelScope.launch {
            try {
                _translationError.value = null
                val targetLang = targetLanguage.value

                // Auto-detect source language (simplified - you may want to add language detection)
                val sourceLang = if (sourceLanguage == "auto") "en" else sourceLanguage

                val result = translateEngine.translate(text, sourceLang, targetLang)
                _translatedText.value = result

            } catch (e: Exception) {
                _translationError.value = e.message ?: "Translation failed"
                _translatedText.value = null
            }
        }
    }

    /**
     * Download a language model for offline translation
     */
    fun downloadLanguageModel(languageCode: String) {
        viewModelScope.launch {
            try {
                _isDownloading.value = true
                _translationError.value = null

                val service = translateEngine as? MLKitTranslationService
                    ?: throw IllegalStateException("ML Kit service not available")

                val success = service.downloadModel(languageCode)
                if (success) {
                    refreshDownloadedModels()
                } else {
                    _translationError.value = "Failed to download model for $languageCode"
                }

            } catch (e: Exception) {
                _translationError.value = e.message ?: "Download failed"
            } finally {
                _isDownloading.value = false
            }
        }
    }

    /**
     * Delete a language model to free up storage
     */
    fun deleteLanguageModel(languageCode: String) {
        viewModelScope.launch {
            try {
                val service = translateEngine as? MLKitTranslationService
                    ?: throw IllegalStateException("ML Kit service not available")

                val success = service.deleteModel(languageCode)
                if (success) {
                    refreshDownloadedModels()
                }

            } catch (e: Exception) {
                _translationError.value = e.message ?: "Delete failed"
            }
        }
    }

    /**
     * Check if a specific language model is downloaded
     */
    suspend fun isModelDownloaded(languageCode: String): Boolean {
        return try {
            val service = translateEngine as? MLKitTranslationService
                ?: return false
            service.isModelDownloaded(languageCode)
        } catch (e: Exception) {
            false
        }
    }

    /**
     * Refresh the list of downloaded models
     */
    fun refreshDownloadedModels() {
        viewModelScope.launch {
            try {
                val service = translateEngine as? MLKitTranslationService
                    ?: return@launch

                val models = service.getDownloadedModels()
                _downloadedModels.value = models

            } catch (e: Exception) {
                // Ignore errors when refreshing models
            }
        }
    }

    /**
     * Get list of all supported languages
     */
    fun getSupportedLanguages(): Set<String> {
        return translateEngine.getSupportedLanguages()
    }

    fun clearTranslationError() {
        _translationError.value = null
    }

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
