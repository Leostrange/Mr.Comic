package com.example.feature.themes.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import com.example.feature.themes.data.ThemeRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import javax.inject.Inject

enum class AppTheme {
    LIGHT,
    DARK,
    SYSTEM
}

@HiltViewModel
class ThemesViewModel @Inject constructor(
    private val themeRepository: ThemeRepository
) : ViewModel() {
    private val _selectedTheme = MutableStateFlow(AppTheme.SYSTEM)
    val selectedTheme: StateFlow<AppTheme> = _selectedTheme.asStateFlow()

    private val _availableThemes = MutableStateFlow<List<String>>(emptyList())
    val availableThemes: StateFlow<List<String>> = _availableThemes.asStateFlow()

    init {
        viewModelScope.launch {
            _availableThemes.value = themeRepository.getAvailableThemes()
        }
    }

    fun selectTheme(theme: AppTheme) {
        viewModelScope.launch {
            _selectedTheme.value = theme
        }
    }

    fun selectCustomTheme(themeName: String) {
        viewModelScope.launch {
            // Logic to apply custom theme from themes_store
            // This would involve loading the theme.json and applying its properties
            // For now, we'll just update the selected theme name
            // _selectedTheme.value = AppTheme.CUSTOM // A new enum value might be needed
        }
    }
}


