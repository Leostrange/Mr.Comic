package com.example.mrcomic.icons

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

/**
 * ViewModel для экрана настроек иконки приложения
 */
@HiltViewModel
class AppIconSettingsViewModel @Inject constructor(
    private val appIconManager: AppIconManager
) : ViewModel() {
    
    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()
    
    private val _errorMessage = MutableStateFlow<String?>(null)
    val errorMessage: StateFlow<String?> = _errorMessage.asStateFlow()
    
    /**
     * Текущая выбранная иконка
     */
    val currentIcon = appIconManager.currentIcon
    
    /**
     * Получить список всех доступных иконок
     */
    fun getAvailableIcons(): List<AppIcon> {
        return appIconManager.getAvailableIcons()
    }
    
    /**
     * Изменить иконку приложения
     */
    suspend fun changeIcon(iconId: String): Boolean {
        _isLoading.value = true
        _errorMessage.value = null
        
        return try {
            val success = appIconManager.setAppIcon(iconId)
            if (!success) {
                _errorMessage.value = "Не удалось изменить иконку приложения"
            }
            success
        } catch (e: Exception) {
            _errorMessage.value = "Ошибка при изменении иконки: ${e.message}"
            false
        } finally {
            _isLoading.value = false
        }
    }
    
    /**
     * Перезапустить приложение для применения новой иконки
     */
    fun restartApp() {
        appIconManager.restartAppForIconChange()
    }
    
    /**
     * Проверить, поддерживается ли смена иконок
     */
    fun isIconChangeSupported(): Boolean {
        return appIconManager.isIconChangeSupported()
    }
    
    /**
     * Очистить сообщение об ошибке
     */
    fun clearError() {
        _errorMessage.value = null
    }
}
