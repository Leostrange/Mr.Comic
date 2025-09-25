package com.example.mrcomic.ui.settings

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

/**
 * ViewModel для экрана настройки иконок приложения
 */
@HiltViewModel
class AppIconSettingsViewModel @Inject constructor(
    private val appIconRepository: AppIconRepository
) : ViewModel() {
    
    private val _uiState = MutableStateFlow(AppIconSettingsUiState())
    val uiState: StateFlow<AppIconSettingsUiState> = _uiState.asStateFlow()
    
    init {
        loadIcons()
    }
    
    /**
     * Загрузить доступные иконки
     */
    private fun loadIcons() {
        viewModelScope.launch {
            try {
                _uiState.value = _uiState.value.copy(isLoading = true)
                
                val allIcons = appIconRepository.getAllIcons()
                val currentIcon = appIconRepository.getCurrentIcon()
                
                val iconItems = allIcons.map { icon ->
                    AppIconItem(
                        icon = icon,
                        isSelected = icon == currentIcon,
                        isAvailable = appIconRepository.isIconAvailable(icon)
                    )
                }
                
                _uiState.value = _uiState.value.copy(
                    isLoading = false,
                    icons = iconItems,
                    currentIcon = currentIcon
                )
            } catch (e: Exception) {
                _uiState.value = _uiState.value.copy(
                    isLoading = false,
                    error = e.message ?: "Unknown error occurred"
                )
            }
        }
    }
    
    /**
     * Выбрать новую иконку
     */
    fun selectIcon(icon: AppIconRepository.AppIcon) {
        viewModelScope.launch {
            try {
                _uiState.value = _uiState.value.copy(isChangingIcon = true)
                
                val result = appIconRepository.setAppIcon(icon)
                
                if (result.isSuccess) {
                    // Обновляем состояние UI
                    val updatedIcons = _uiState.value.icons.map { item ->
                        item.copy(isSelected = item.icon == icon)
                    }
                    
                    _uiState.value = _uiState.value.copy(
                        isChangingIcon = false,
                        icons = updatedIcons,
                        currentIcon = icon,
                        successMessage = "App icon changed successfully"
                    )
                } else {
                    _uiState.value = _uiState.value.copy(
                        isChangingIcon = false,
                        error = result.exceptionOrNull()?.message ?: "Failed to change app icon"
                    )
                }
            } catch (e: Exception) {
                _uiState.value = _uiState.value.copy(
                    isChangingIcon = false,
                    error = e.message ?: "Unknown error occurred"
                )
            }
        }
    }
    
    /**
     * Сбросить к иконке по умолчанию
     */
    fun resetToDefault() {
        selectIcon(AppIconRepository.AppIcon.DEFAULT)
    }
    
    /**
     * Очистить сообщения об ошибках и успехе
     */
    fun clearMessages() {
        _uiState.value = _uiState.value.copy(
            error = null,
            successMessage = null
        )
    }
}

/**
 * Состояние UI для экрана настройки иконок
 */
data class AppIconSettingsUiState(
    val isLoading: Boolean = false,
    val isChangingIcon: Boolean = false,
    val icons: List<AppIconItem> = emptyList(),
    val currentIcon: AppIconRepository.AppIcon? = null,
    val error: String? = null,
    val successMessage: String? = null
)

/**
 * Элемент иконки для отображения в UI
 */
data class AppIconItem(
    val icon: AppIconRepository.AppIcon,
    val isSelected: Boolean = false,
    val isAvailable: Boolean = true
)