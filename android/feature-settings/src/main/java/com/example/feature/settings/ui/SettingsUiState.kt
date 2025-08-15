package com.example.feature.settings.ui

import androidx.compose.runtime.Immutable
import com.example.core.model.SortOrder
import com.example.core.model.LocalDictionary
import com.example.core.model.LocalModel

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
    val availableModels: List<LocalModel> = emptyList()
)
