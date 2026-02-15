package com.example.feature.reader.ui

/**
 * Настройки ридера для передачи между компонентами
 */
data class ReaderSettings(
    // Reader Customization Settings
    val readerTapZonesSize: Float = 1.0f,
    val readerTapZonesSensitivity: Float = 1.0f,
    val readerShowPageIndicator: Boolean = true,
    val readerShowProgressBar: Boolean = true,
    val readerAutoHideUI: Boolean = true,
    val readerAutoHideDelay: Int = 3000,
    val readerGestureSensitivity: Float = 1.0f,
    val readerVibrationFeedback: Boolean = true,
    val enableDualPageMode: Boolean = true,
    val enableWebtoonMode: Boolean = false,

    // Image Quality Settings
    val imageQuality: String = "high",
    val imageRenderDpi: Int = 3200, // Увеличено для лучшего качества
    val imageCacheSize: Int = 100,
    val imagePreloadPages: Int = 3,
    val imageCompressionLevel: Int = 80,
    
    // Gesture Settings
    val gestureSwipeThreshold: Float = 50f,
    val gestureZoomSensitivity: Float = 1.0f,
    val gesturePanSensitivity: Float = 1.0f,
    val navigationSwipeEnabled: Boolean = true,
    val navigationTapZonesEnabled: Boolean = true,
    val navigationKeyboardShortcuts: Boolean = true,
    
    // Notification Settings
    val soundPageTurn: Boolean = false,
    val soundVolume: Float = 0.5f,
    val vibrationPageTurn: Boolean = true,
    val vibrationIntensity: Float = 0.5f,
    val notificationProgress: Boolean = true
)
