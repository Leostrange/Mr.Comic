package com.example.feature.settings.ui

import androidx.compose.runtime.Immutable
import com.example.core.model.SortOrder

@Immutable
data class SettingsUiState(
    val sortOrder: SortOrder = SortOrder.DATE_ADDED_DESC,
    val libraryFolders: Set<String> = emptySet(),
    val targetLanguage: String = "en",
    val ocrEngine: String = "Tesseract",
    val translationProvider: String = "Google",
    val translationApiKey: String = ""
)
