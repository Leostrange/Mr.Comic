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
    val bitmaps: Map<Int, Bitmap> = emptyMap(),
    val readingMode: ReadingMode = ReadingMode.PAGE,
    val readingDirection: ReadingDirection = ReadingDirection.LTR,
    val scaleMode: String = "width",
    val doubleTapZoom: Float = 2.0f,
    val blockSwipeWhenZoomed: Boolean = true,
    val orientation: String = "auto",
    // Gesture settings
    val gestureSensitivity: Float = 1.0f,
    val tapZoneLeftRatio: Float = 0.25f,
    val tapZoneRightRatio: Float = 0.25f,
    val tapZonesEnabled: Boolean = true,
    val showUIControls: Boolean = true,
    val showTopPanel: Boolean = false,
    val showLeftPanel: Boolean = false,
    val showRightPanel: Boolean = false,
    val showBottomPanel: Boolean = false,
    // Pin settings
    val isPinned: Boolean = false,
    val pinnedPage: Int? = null,
    // Zoom and pan state
    val currentZoomScale: Float = 1.0f,
    val zoomCenter: androidx.compose.ui.geometry.Offset = androidx.compose.ui.geometry.Offset.Zero,
    val offsetX: Float = 0f,
    val offsetY: Float = 0f,
    // Reader settings
    val readerBrightness: Float = 1.0f,
    // Panel states
    val anyPanelOpen: Boolean = false
)
