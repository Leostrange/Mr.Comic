package com.example.feature.settings

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch
import javax.inject.Inject

sealed class SettingsUiState {
    object Loading : SettingsUiState()
    data class Success(val theme: String) : SettingsUiState()
    data class Error(val message: String) : SettingsUiState()
}

@HiltViewModel
class SettingsViewModel @Inject constructor(
    private val repository: SettingsRepository
) : ViewModel() {
    private val _uiState = MutableStateFlow<SettingsUiState>(SettingsUiState.Loading)
    val uiState: StateFlow<SettingsUiState> = _uiState.asStateFlow()

    private val _themeMode = MutableStateFlow(ThemeMode.SYSTEM)
    val themeMode: StateFlow<ThemeMode> = _themeMode.asStateFlow()

    fun retry() {
        initLoad()
    }

    private fun initLoad() {
        viewModelScope.launch {
            try {
                _uiState.value = SettingsUiState.Loading
                delay(500) // имитация загрузки
                if (repository is SettingsDataStoreRepository) {
                    repository.themeFlow().collectLatest {
                        if (it.isBlank()) throw Exception("Тема не задана!")
                        _uiState.value = SettingsUiState.Success(it)
                    }
                } else {
                    val theme = repository.getTheme()
                    if (theme.isBlank()) throw Exception("Тема не задана!")
                    _uiState.value = SettingsUiState.Success(theme)
                }
            } catch (e: Exception) {
                _uiState.value = SettingsUiState.Error(e.message ?: "Неизвестная ошибка")
            }
        }
    }

    init {
        initLoad()
    }

    fun setTheme(theme: String) {
        if (repository is SettingsDataStoreRepository) {
            viewModelScope.launch { repository.setTheme(theme) }
        }
    }

    fun setThemeMode(mode: ThemeMode) {
        if (repository is SettingsDataStoreRepository) {
            viewModelScope.launch { repository.setThemeMode(mode) }
        }
    }
} 