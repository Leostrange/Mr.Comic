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
    val pageTurnSoundEnabled: Boolean = false
)
