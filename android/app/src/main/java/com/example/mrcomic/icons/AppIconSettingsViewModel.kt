package com.example.mrcomic.icons

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.stateIn
import javax.inject.Inject

@HiltViewModel
class AppIconSettingsViewModel @Inject constructor(
    private val appIconManager: AppIconManager
) : ViewModel() {

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _errorMessage = MutableStateFlow<String?>(null)
    val errorMessage: StateFlow<String?> = _errorMessage.asStateFlow()

    // Hot StateFlow so the UI reflects selection changes immediately
    val currentIcon: StateFlow<String> = appIconManager.currentIcon
        .stateIn(viewModelScope, SharingStarted.Eagerly, AppIconManager.DEFAULT_ICON)

    fun getAvailableIcons(): List<AppIcon> = appIconManager.getAvailableIcons()

    suspend fun changeIcon(iconId: String): Boolean {
        _isLoading.value = true
        _errorMessage.value = null
        return try {
            val changed = appIconManager.setAppIcon(iconId)
            if (!changed) {
                _errorMessage.value = "Не удалось применить иконку. Попробуйте ещё раз."
            }
            changed
        } catch (e: Exception) {
            _errorMessage.value = "Ошибка: ${e.message}"
            false
        } finally {
            _isLoading.value = false
        }
    }

    fun restartApp() = appIconManager.restartAppForIconChange()
    fun clearError() { _errorMessage.value = null }
}
