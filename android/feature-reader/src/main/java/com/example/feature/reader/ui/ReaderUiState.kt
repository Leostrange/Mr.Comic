package com.example.feature.reader.ui

import android.graphics.Bitmap
import androidx.compose.runtime.Immutable

enum class ReadingMode {
    PAGE,
    WEBTOON
}

enum class ReadingDirection {
    LTR, // Left-to-Right
    RTL  // Right-to-Left
}

@Immutable
data class ReaderUiState(
    val isLoading: Boolean = true,
    val error: String? = null,
    val pageCount: Int = 0,
    val currentPageIndex: Int = 0,
    val currentPageBitmap: Bitmap? = null,
    val readingMode: ReadingMode = ReadingMode.PAGE,
    val readingDirection: ReadingDirection = ReadingDirection.LTR
)