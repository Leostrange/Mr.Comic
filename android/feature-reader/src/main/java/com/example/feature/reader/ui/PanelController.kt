package com.example.feature.reader.ui

import androidx.compose.runtime.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Controller for managing panel visibility in reader
 */
class PanelController {
    private val _topPanelVisible = MutableStateFlow(false)
    val topPanelVisible: StateFlow<Boolean> = _topPanelVisible.asStateFlow()
    
    private val _leftPanelVisible = MutableStateFlow(false)
    val leftPanelVisible: StateFlow<Boolean> = _leftPanelVisible.asStateFlow()
    
    private val _rightPanelVisible = MutableStateFlow(false)
    val rightPanelVisible: StateFlow<Boolean> = _rightPanelVisible.asStateFlow()
    
    private val _bottomPanelVisible = MutableStateFlow(false)
    val bottomPanelVisible: StateFlow<Boolean> = _bottomPanelVisible.asStateFlow()
    
    /**
     * Show top panel
     */
    fun showTopPanel() {
        hideAllPanels()
        _topPanelVisible.value = true
    }
    
    /**
     * Show left panel
     */
    fun showLeftPanel() {
        hideAllPanels()
        _leftPanelVisible.value = true
    }
    
    /**
     * Show right panel
     */
    fun showRightPanel() {
        hideAllPanels()
        _rightPanelVisible.value = true
    }
    
    /**
     * Show bottom panel
     */
    fun showBottomPanel() {
        hideAllPanels()
        _bottomPanelVisible.value = true
    }
    
    /**
     * Hide all panels
     */
    fun hideAllPanels() {
        _topPanelVisible.value = false
        _leftPanelVisible.value = false
        _rightPanelVisible.value = false
        _bottomPanelVisible.value = false
    }
    
    /**
     * Toggle specific panel
     */
    fun togglePanel(panel: PanelType) {
        when (panel) {
            PanelType.TOP -> {
                if (_topPanelVisible.value) {
                    hideAllPanels()
                } else {
                    showTopPanel()
                }
            }
            PanelType.LEFT -> {
                if (_leftPanelVisible.value) {
                    hideAllPanels()
                } else {
                    showLeftPanel()
                }
            }
            PanelType.RIGHT -> {
                if (_rightPanelVisible.value) {
                    hideAllPanels()
                } else {
                    showRightPanel()
                }
            }
            PanelType.BOTTOM -> {
                if (_bottomPanelVisible.value) {
                    hideAllPanels()
                } else {
                    showBottomPanel()
                }
            }
        }
    }
    
    /**
     * Check if any panel is visible
     */
    fun isAnyPanelVisible(): Boolean {
        return _topPanelVisible.value || 
               _leftPanelVisible.value || 
               _rightPanelVisible.value || 
               _bottomPanelVisible.value
    }
}

/**
 * Panel types
 */
enum class PanelType {
    TOP,
    LEFT,
    RIGHT,
    BOTTOM
}

/**
 * Remember panel controller
 */
@Composable
fun rememberPanelController(): PanelController {
    return remember { PanelController() }
}
