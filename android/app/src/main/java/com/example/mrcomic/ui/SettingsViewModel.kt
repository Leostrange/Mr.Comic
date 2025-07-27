package com.example.mrcomic.ui

import androidx.lifecycle.ViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow

// Модель, представляющая состояние всех настроек
data class AppSettings(
    val isDarkMode: Boolean = false,
    val readingDirection: ReadingDirection = ReadingDirection.L_TO_R,
    val showPageNumbers: Boolean = true,
    val defaultSortOrder: SortOrder = SortOrder.BY_TITLE
)

enum class ReadingDirection(val displayName: String) {
    L_TO_R("Слева направо"),
    R_TO_L("Справа налево"),
    VERTICAL("Вертикально")
}

enum class SortOrder(val displayName: String) {
    BY_TITLE("По названию"),
    BY_DATE_ADDED("По дате добавления")
}

class SettingsViewModel : ViewModel() {
    
    private val _settingsState = MutableStateFlow(AppSettings())
    val settingsState = _settingsState.asStateFlow()

    fun setDarkMode(isDark: Boolean) {
        _settingsState.value = _settingsState.value.copy(isDarkMode = isDark)
    }

    fun setReadingDirection(direction: ReadingDirection) {
        _settingsState.value = _settingsState.value.copy(readingDirection = direction)
    }
    
    fun setShowPageNumbers(show: Boolean) {
        _settingsState.value = _settingsState.value.copy(showPageNumbers = show)
    }

    fun setSortOrder(order: SortOrder) {
        _settingsState.value = _settingsState.value.copy(defaultSortOrder = order)
    }

    fun clearCache() {
        // Логика для очистки кэша
    }

    fun exportData() {
        // Логика для экспорта данных
    }

    fun importData() {
        // Логика для импорта данных
    }
} 