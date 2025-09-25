package com.example.mrcomic.feature.settings

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.ui.theme.*
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.launch
import javax.inject.Inject

/**
 * ViewModel для редактора тем
 */
@HiltViewModel
class ThemeEditorViewModel @Inject constructor(
    private val themePreferencesRepository: ThemePreferencesRepository
) : ViewModel() {

    val themeConfig = themePreferencesRepository.themeConfig
    val readerThemeConfig = themePreferencesRepository.readerThemeConfig

    /**
     * Установить режим темы
     */
    fun setThemeMode(themeMode: ThemeMode) {
        viewModelScope.launch {
            themePreferencesRepository.setThemeMode(themeMode)
        }
    }

    /**
     * Установить использование динамических цветов
     */
    fun setUseDynamicColor(useDynamicColor: Boolean) {
        viewModelScope.launch {
            themePreferencesRepository.setUseDynamicColor(useDynamicColor)
        }
    }

    /**
     * Установить использование AMOLED темной темы
     */
    fun setUseAmoledDark(useAmoledDark: Boolean) {
        viewModelScope.launch {
            themePreferencesRepository.setUseAmoledDark(useAmoledDark)
        }
    }

    /**
     * Установить режим темы для чтения
     */
    fun setReaderThemeMode(themeMode: ReaderThemeMode) {
        viewModelScope.launch {
            themePreferencesRepository.setReaderThemeMode(themeMode)
        }
    }

    /**
     * Установить использование AMOLED для чтения
     */
    fun setReaderUseAmoled(useAmoled: Boolean) {
        viewModelScope.launch {
            themePreferencesRepository.setReaderUseAmoled(useAmoled)
        }
    }
}
