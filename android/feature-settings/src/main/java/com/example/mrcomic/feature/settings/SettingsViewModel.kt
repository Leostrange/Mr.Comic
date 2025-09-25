package com.example.mrcomic.feature.settings

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.SettingsRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

/**
 * ViewModel для экрана настроек
 */
@HiltViewModel
class SettingsViewModel @Inject constructor(
    private val settingsRepository: SettingsRepository
) : ViewModel() {

    // Текущие значения настроек
    val readingMode = settingsRepository.readingMode
    val scaleMode = settingsRepository.scaleMode
    val orientation = settingsRepository.orientation
    val theme = settingsRepository.theme
    val language = settingsRepository.language
    val cacheSize = settingsRepository.cacheSize
    val librarySize = settingsRepository.librarySize

    // Методы сохранения
    fun setReadingMode(mode: String) {
        viewModelScope.launch {
            settingsRepository.setReadingMode(mode)
        }
    }

    fun setScaleMode(mode: String) {
        viewModelScope.launch {
            settingsRepository.setScaleMode(mode)
        }
    }

            fun setOrientation(mode: String) {
                viewModelScope.launch {
                    settingsRepository.setOrientation(mode)
                }
            }

    fun setTheme(theme: String) {
        viewModelScope.launch {
            settingsRepository.setTheme(theme)
        }
    }

    fun setLanguage(language: String) {
        viewModelScope.launch {
            settingsRepository.setLanguage(language)
        }
    }

    fun clearCache() {
        viewModelScope.launch {
            settingsRepository.clearCache()
        }
    }
}
