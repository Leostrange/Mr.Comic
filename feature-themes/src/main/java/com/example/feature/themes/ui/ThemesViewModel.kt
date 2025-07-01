package com.example.feature.themes.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch

enum class AppTheme {
    LIGHT,
    DARK,
    SYSTEM
}

class ThemesViewModel : ViewModel() {
    private val _selectedTheme = MutableStateFlow(AppTheme.SYSTEM)
    val selectedTheme: StateFlow<AppTheme> = _selectedTheme.asStateFlow()

    fun selectTheme(theme: AppTheme) {
        viewModelScope.launch {
            _selectedTheme.value = theme
        }
    }
}

