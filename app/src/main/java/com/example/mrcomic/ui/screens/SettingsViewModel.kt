package com.example.mrcomic.ui.screens

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.analytics.AnalyticsHelper
import com.example.core.analytics.PerformanceProfiler
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class SettingsViewModel @Inject constructor(
    private val analyticsHelper: AnalyticsHelper,
    private val performanceProfiler: PerformanceProfiler
) : ViewModel() {
    
    private val _uiState = MutableStateFlow(SettingsUiState())
    val uiState: StateFlow<SettingsUiState> = _uiState.asStateFlow()
    
    init {
        loadSettings()
    }
    
    fun setTheme(theme: AppTheme) {
        val oldTheme = _uiState.value.theme
        _uiState.update { it.copy(theme = theme) }
        
        viewModelScope.launch {
            saveTheme(theme)
            
            analyticsHelper.trackPerformance(
                metricName = "theme_changed",
                value = theme.ordinal.toDouble(),
                unit = "option",
                scope = viewModelScope
            )
        }
    }
    
    fun setLanguage(language: AppLanguage) {
        val oldLanguage = _uiState.value.language
        _uiState.update { it.copy(language = language) }
        
        viewModelScope.launch {
            saveLanguage(language)
            
            analyticsHelper.trackPerformance(
                metricName = "language_changed",
                value = language.ordinal.toDouble(),
                unit = "option",
                scope = viewModelScope
            )
        }
    }
    
    fun setDefaultReadingMode(mode: ReadingMode) {
        val oldMode = _uiState.value.defaultReadingMode
        _uiState.update { it.copy(defaultReadingMode = mode) }
        
        viewModelScope.launch {
            saveDefaultReadingMode(mode)
            
            analyticsHelper.trackPerformance(
                metricName = "default_reading_mode_changed",
                value = mode.ordinal.toDouble(),
                unit = "option",
                scope = viewModelScope
            )
        }
    }
    
    fun setKeepScreenOn(keepOn: Boolean) {
        _uiState.update { it.copy(keepScreenOn = keepOn) }
        
        viewModelScope.launch {
            saveKeepScreenOn(keepOn)
            
            analyticsHelper.trackPerformance(
                metricName = "keep_screen_on_changed",
                value = if (keepOn) 1.0 else 0.0,
                unit = "setting",
                scope = viewModelScope
            )
        }
    }
    
    fun setDefaultBrightness(brightness: Float) {
        _uiState.update { it.copy(defaultBrightness = brightness) }
        
        viewModelScope.launch {
            saveDefaultBrightness(brightness)
            
            analyticsHelper.trackPerformance(
                metricName = "default_brightness_changed",
                value = (brightness * 100).toDouble(),
                unit = "percent",
                scope = viewModelScope
            )
        }
    }
    
    fun clearCache() {
        val measurementId = performanceProfiler.startMeasurement("clear_cache")
        
        viewModelScope.launch {
            try {
                // Симуляция очистки кэша
                kotlinx.coroutines.delay(1000)
                
                // Обновляем информацию о хранилище
                val newStorageInfo = _uiState.value.storageInfo.copy(
                    cacheSize = "0 MB",
                    usedSpace = "8.5 GB",
                    usagePercent = 8.5f / 32f
                )
                
                _uiState.update { it.copy(storageInfo = newStorageInfo) }
                
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "clear_cache",
                    viewModelScope,
                    mapOf(
                        "cache_cleared" to true,
                        "space_freed" to "350 MB"
                    )
                )
                
                analyticsHelper.trackPerformance(
                    metricName = "cache_cleared",
                    value = 350.0,
                    unit = "megabytes",
                    scope = viewModelScope
                )
                
            } catch (e: Exception) {
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "clear_cache_error",
                    viewModelScope,
                    mapOf("error" to (e.message ?: "unknown"))
                )
            }
        }
    }
    
    fun exportSettings() {
        val measurementId = performanceProfiler.startMeasurement("export_settings")
        
        viewModelScope.launch {
            try {
                // Симуляция экспорта настроек
                kotlinx.coroutines.delay(500)
                
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "export_settings",
                    viewModelScope,
                    mapOf("success" to true)
                )
                
                analyticsHelper.trackPerformance(
                    metricName = "settings_exported",
                    value = 1.0,
                    unit = "action",
                    scope = viewModelScope
                )
                
            } catch (e: Exception) {
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "export_settings_error",
                    viewModelScope,
                    mapOf("error" to (e.message ?: "unknown"))
                )
            }
        }
    }
    
    fun importSettings() {
        val measurementId = performanceProfiler.startMeasurement("import_settings")
        
        viewModelScope.launch {
            try {
                // Симуляция импорта настроек
                kotlinx.coroutines.delay(500)
                
                // TODO: Открыть диалог выбора файла и применить настройки
                
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "import_settings",
                    viewModelScope,
                    mapOf("success" to true)
                )
                
                analyticsHelper.trackPerformance(
                    metricName = "settings_imported",
                    value = 1.0,
                    unit = "action",
                    scope = viewModelScope
                )
                
            } catch (e: Exception) {
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "import_settings_error",
                    viewModelScope,
                    mapOf("error" to (e.message ?: "unknown"))
                )
            }
        }
    }
    
    fun resetSettings() {
        val measurementId = performanceProfiler.startMeasurement("reset_settings")
        
        viewModelScope.launch {
            try {
                // Сброс к значениям по умолчанию
                val defaultState = SettingsUiState(
                    theme = AppTheme.SYSTEM,
                    language = AppLanguage.SYSTEM,
                    defaultReadingMode = ReadingMode.FIT_WIDTH,
                    keepScreenOn = true,
                    defaultBrightness = 0.5f,
                    storageInfo = _uiState.value.storageInfo, // Сохраняем реальную информацию
                    appInfo = _uiState.value.appInfo // Сохраняем информацию о приложении
                )
                
                _uiState.update { defaultState }
                
                // Сохраняем сброшенные настройки
                saveAllSettings(defaultState)
                
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "reset_settings",
                    viewModelScope,
                    mapOf("success" to true)
                )
                
                analyticsHelper.trackPerformance(
                    metricName = "settings_reset",
                    value = 1.0,
                    unit = "action",
                    scope = viewModelScope
                )
                
            } catch (e: Exception) {
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "reset_settings_error",
                    viewModelScope,
                    mapOf("error" to (e.message ?: "unknown"))
                )
            }
        }
    }
    
    // Dialog management
    fun showAboutDialog() {
        _uiState.update { it.copy(showAboutDialog = true) }
        
        viewModelScope.launch {
            analyticsHelper.trackPerformance(
                metricName = "about_dialog_shown",
                value = 1.0,
                unit = "dialog",
                scope = viewModelScope
            )
        }
    }
    
    fun hideAboutDialog() {
        _uiState.update { it.copy(showAboutDialog = false) }
    }
    
    fun showResetDialog() {
        _uiState.update { it.copy(showResetDialog = true) }
        
        viewModelScope.launch {
            analyticsHelper.trackPerformance(
                metricName = "reset_dialog_shown",
                value = 1.0,
                unit = "dialog",
                scope = viewModelScope
            )
        }
    }
    
    fun hideResetDialog() {
        _uiState.update { it.copy(showResetDialog = false) }
    }
    
    fun showThemeDialog() {
        _uiState.update { it.copy(showThemeDialog = true) }
        
        viewModelScope.launch {
            analyticsHelper.trackPerformance(
                metricName = "theme_dialog_shown",
                value = 1.0,
                unit = "dialog",
                scope = viewModelScope
            )
        }
    }
    
    fun hideThemeDialog() {
        _uiState.update { it.copy(showThemeDialog = false) }
    }
    
    // Private methods
    private fun loadSettings() {
        val measurementId = performanceProfiler.startMeasurement("load_settings")
        
        viewModelScope.launch {
            try {
                // Симуляция загрузки настроек
                kotlinx.coroutines.delay(300)
                
                // TODO: Загрузить реальные настройки из SharedPreferences или DataStore
                
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "load_settings",
                    viewModelScope,
                    mapOf("success" to true)
                )
                
            } catch (e: Exception) {
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "load_settings_error",
                    viewModelScope,
                    mapOf("error" to (e.message ?: "unknown"))
                )
            }
        }
    }
    
    private suspend fun saveTheme(theme: AppTheme) {
        try {
            // TODO: Сохранить в SharedPreferences/DataStore
            kotlinx.coroutines.delay(50)
        } catch (e: Exception) {
            analyticsHelper.trackError(e, "save_theme", viewModelScope)
        }
    }
    
    private suspend fun saveLanguage(language: AppLanguage) {
        try {
            // TODO: Сохранить в SharedPreferences/DataStore
            kotlinx.coroutines.delay(50)
        } catch (e: Exception) {
            analyticsHelper.trackError(e, "save_language", viewModelScope)
        }
    }
    
    private suspend fun saveDefaultReadingMode(mode: ReadingMode) {
        try {
            // TODO: Сохранить в SharedPreferences/DataStore
            kotlinx.coroutines.delay(50)
        } catch (e: Exception) {
            analyticsHelper.trackError(e, "save_reading_mode", viewModelScope)
        }
    }
    
    private suspend fun saveKeepScreenOn(keepOn: Boolean) {
        try {
            // TODO: Сохранить в SharedPreferences/DataStore
            kotlinx.coroutines.delay(50)
        } catch (e: Exception) {
            analyticsHelper.trackError(e, "save_keep_screen_on", viewModelScope)
        }
    }
    
    private suspend fun saveDefaultBrightness(brightness: Float) {
        try {
            // TODO: Сохранить в SharedPreferences/DataStore
            kotlinx.coroutines.delay(50)
        } catch (e: Exception) {
            analyticsHelper.trackError(e, "save_brightness", viewModelScope)
        }
    }
    
    private suspend fun saveAllSettings(settings: SettingsUiState) {
        try {
            // TODO: Сохранить все настройки
            saveTheme(settings.theme)
            saveLanguage(settings.language)
            saveDefaultReadingMode(settings.defaultReadingMode)
            saveKeepScreenOn(settings.keepScreenOn)
            saveDefaultBrightness(settings.defaultBrightness)
        } catch (e: Exception) {
            analyticsHelper.trackError(e, "save_all_settings", viewModelScope)
        }
    }
    
    override fun onCleared() {
        super.onCleared()
        
        viewModelScope.launch {
            analyticsHelper.trackPerformance(
                metricName = "settings_viewmodel_cleared",
                value = 1.0,
                unit = "lifecycle",
                scope = viewModelScope
            )
        }
    }
}