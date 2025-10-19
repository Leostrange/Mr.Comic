package com.example.feature.settings.ui

import androidx.compose.runtime.Immutable
import com.example.core.model.SortOrder
import com.example.core.model.LocalDictionary
import com.example.core.model.LocalModel
import com.example.core.ui.theme.ThemeMode
import com.example.core.ui.theme.ReaderThemeMode

@Immutable
data class SettingsUiState(
    val sortOrder: SortOrder = SortOrder.DATE_ADDED_DESC,
    val libraryFolders: Set<String> = emptySet(),
    val targetLanguage: String = "en",
    val ocrEngine: String = "Tesseract",
    val translationProvider: String = "Google",
    val translationApiKey: String = "",
    val performanceMode: Boolean = false,
    val selectedDictionary: LocalDictionary? = null,
    val selectedModel: LocalModel? = null,
    val availableDictionaries: List<LocalDictionary> = emptyList(),
    val availableModels: List<LocalModel> = emptyList(),
    // Theme settings
    val themeMode: ThemeMode = ThemeMode.SYSTEM,
    val useDynamicColor: Boolean = true,
    val useAmoledDark: Boolean = false,
    val readerThemeMode: ReaderThemeMode = ReaderThemeMode.SYSTEM,
    val readerUseAmoled: Boolean = false,
    // Reading settings
    val readingMode: String = "page",
    val scaleMode: String = "width",
    val doubleTapZoom: Float = 2.0f,
    val blockSwipeWhenZoomed: Boolean = true,
    val readerBackground: Long = 0xFFFFFFFF,
    val readerBrightness: Float = 1.0f,
    val readerAnimationSpeed: Float = 1.0f,
    val pageTurnSoundEnabled: Boolean = false,
    
    // Reader Customization Settings
    val readerTapZonesSize: Float = 1.0f, // Размер зон для панелей (0.5f - 2.0f)
    val readerTapZonesSensitivity: Float = 1.0f, // Чувствительность зон (0.5f - 2.0f)
    val readerShowPageIndicator: Boolean = true, // Показывать индикатор страниц
    val readerShowProgressBar: Boolean = true, // Показывать прогресс-бар
    val readerAutoHideUI: Boolean = true, // Автоскрытие UI
    val readerAutoHideDelay: Int = 3000, // Задержка автоскрытия (мс)
    val readerGestureSensitivity: Float = 1.0f, // Чувствительность жестов (0.5f - 2.0f)
    val readerVibrationFeedback: Boolean = true, // Вибрация при жестах
    
    // Image Quality Settings
    val imageQuality: String = "high", // high/medium/low
    val imageRenderDpi: Int = 2560, // DPI рендеринга
    val imageCacheSize: Int = 100, // Размер кэша в МБ
    val imagePreloadPages: Int = 3, // Количество предзагружаемых страниц
    val imageCompressionLevel: Int = 80, // Уровень сжатия (0-100)
    
    // Gesture Settings
    val gestureSwipeThreshold: Float = 50f, // Порог свайпа
    val gestureZoomSensitivity: Float = 1.0f, // Чувствительность зума
    val gesturePanSensitivity: Float = 1.0f, // Чувствительность панорамирования
    val navigationSwipeEnabled: Boolean = true, // Свайп для навигации
    val navigationTapZonesEnabled: Boolean = true, // Тап-зоны
    val navigationKeyboardShortcuts: Boolean = true, // Горячие клавиши
    
    // Notification Settings
    val soundPageTurn: Boolean = false, // Звук перелистывания
    val soundVolume: Float = 0.5f, // Громкость звуков
    val vibrationPageTurn: Boolean = true, // Вибрация при перелистывании
    val vibrationIntensity: Float = 0.5f, // Интенсивность вибрации
    val notificationProgress: Boolean = true // Уведомления о прогрессе
)
