package com.example.feature.reader.ui

import androidx.compose.runtime.*
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*

/**
 * UI Controller для управления видимостью панелей с автоскрытием
 * Обеспечивает предсказуемое появление/скрытие тулбара и статус-бара
 */
class UIController {
    private val _uiVisible = MutableStateFlow(true)
    val uiVisible: StateFlow<Boolean> = _uiVisible.asStateFlow()
    
    private val _topPanelVisible = MutableStateFlow(false)
    val topPanelVisible: StateFlow<Boolean> = _topPanelVisible.asStateFlow()
    
    private val _rightPanelVisible = MutableStateFlow(false)
    val rightPanelVisible: StateFlow<Boolean> = _rightPanelVisible.asStateFlow()
    
    private val _thumbnailPanelVisible = MutableStateFlow(false)
    val thumbnailPanelVisible: StateFlow<Boolean> = _thumbnailPanelVisible.asStateFlow()
    
    // Настройки автоскрытия
    private var autoHideDelayMs = 3000L // 3 секунды по умолчанию
    private var isAutoHideEnabled = true
    
    // Корутина для автоскрытия
    private var autoHideJob: Job? = null
    private val scope = CoroutineScope(Dispatchers.Main + SupervisorJob())
    
    /**
     * Показать UI (панели)
     */
    fun showUI() {
        _uiVisible.value = true
        resetAutoHideTimer()
    }
    
    /**
     * Скрыть UI (панели)
     */
    fun hideUI() {
        _uiVisible.value = false
        hideAllPanels()
        cancelAutoHideTimer()
    }
    
    /**
     * Переключить видимость UI
     */
    fun toggleUI() {
        if (_uiVisible.value) {
            hideUI()
        } else {
            showUI()
        }
    }
    
    /**
     * Показать верхнюю панель
     */
    fun showTopPanel() {
        hideAllPanels()
        _topPanelVisible.value = true
        showUI()
    }
    
    /**
     * Показать правую панель
     */
    fun showRightPanel() {
        hideAllPanels()
        _rightPanelVisible.value = true
        showUI()
    }
    
    /**
     * Показать панель миниатюр
     */
    fun showThumbnailPanel() {
        hideAllPanels()
        _thumbnailPanelVisible.value = true
        showUI()
    }
    
    /**
     * Скрыть все панели
     */
    fun hideAllPanels() {
        _topPanelVisible.value = false
        _rightPanelVisible.value = false
        _thumbnailPanelVisible.value = false
    }
    
    /**
     * Скрыть все панели и UI
     */
    fun hideAll() {
        hideAllPanels()
        hideUI()
    }
    
    /**
     * Установить задержку автоскрытия
     */
    fun setAutoHideDelay(delayMs: Long) {
        autoHideDelayMs = delayMs
    }
    
    /**
     * Включить/выключить автоскрытие
     */
    fun setAutoHideEnabled(enabled: Boolean) {
        isAutoHideEnabled = enabled
        if (!enabled) {
            cancelAutoHideTimer()
        }
    }
    
    /**
     * Сбросить таймер автоскрытия
     */
    private fun resetAutoHideTimer() {
        if (!isAutoHideEnabled) return
        
        cancelAutoHideTimer()
        autoHideJob = scope.launch {
            delay(autoHideDelayMs)
            hideUI()
        }
    }
    
    /**
     * Отменить таймер автоскрытия
     */
    private fun cancelAutoHideTimer() {
        autoHideJob?.cancel()
        autoHideJob = null
    }
    
    /**
     * Обработать пользовательское взаимодействие
     * Сбрасывает таймер автоскрытия
     */
    fun onUserInteraction() {
        if (_uiVisible.value) {
            resetAutoHideTimer()
        }
    }
    
    /**
     * Очистить ресурсы
     */
    fun cleanup() {
        cancelAutoHideTimer()
        scope.cancel()
    }
}

/**
 * Composable для управления UI состоянием
 */
@Composable
fun rememberUIController(
    autoHideDelayMs: Long = 3000L,
    autoHideEnabled: Boolean = true
): UIController {
    val controller = remember { UIController() }
    
    LaunchedEffect(autoHideDelayMs, autoHideEnabled) {
        controller.setAutoHideDelay(autoHideDelayMs)
        controller.setAutoHideEnabled(autoHideEnabled)
    }
    
    DisposableEffect(Unit) {
        onDispose {
            controller.cleanup()
        }
    }
    
    return controller
}
