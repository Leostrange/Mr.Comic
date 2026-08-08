package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.domain.util.LibraryViewModeKey
import io.leostrange.mrcomic.core.domain.util.normalizeLibraryViewModeKey
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_STYLE
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryBackgroundStyle
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryGraphicCoverStyle
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryShelfStyle
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch

internal fun SettingsSettersController.setLibraryGridColumns(count: Int) {
        setSlider("gridColumns") { preferences.set(PreferencesKeys.LIBRARY_GRID_COLUMNS, count.coerceIn(2, 4)) }
    }

internal fun SettingsSettersController.setLibraryViewGrid(grid: Boolean) {
        setLibraryViewMode(if (grid) "GRID" else "LIST")
    }

internal fun SettingsSettersController.setLibraryViewMode(mode: String) {
        val normalized = normalizeLibraryViewModeKey(mode, LibraryViewModeKey.GRID).name
        scope.launch {
            preferences.set(PreferencesKeys.LIBRARY_VIEW_MODE, normalized)
            preferences.set(PreferencesKeys.LIBRARY_VIEW_GRID, normalized == "GRID")
        }
    }

internal fun SettingsSettersController.setLibraryTileSize(size: Int) {
        setSlider("tileSize") { preferences.set(PreferencesKeys.LIBRARY_TILE_SIZE_DP, size.coerceIn(80, 200)) }
    }

internal fun SettingsSettersController.setLibraryCardStyle(style: String) = settingsPreferencesController.setLibraryCardStyle(style)

internal fun SettingsSettersController.setLibraryRecentStripPosition(position: String) = settingsPreferencesController.setLibraryRecentStripPosition(position)

internal fun SettingsSettersController.setLibraryShowProgress(enabled: Boolean) = settingsPreferencesController.setLibraryShowProgress(enabled)

internal fun SettingsSettersController.setLibraryShowCoverTitles(enabled: Boolean) = settingsPreferencesController.setLibraryShowCoverTitles(enabled)

internal fun SettingsSettersController.setLibraryShowStatusChips(enabled: Boolean) = settingsPreferencesController.setLibraryShowStatusChips(enabled)

internal fun SettingsSettersController.setLibraryCoverScale(scale: String) = settingsPreferencesController.setLibraryCoverScale(scale)

internal fun SettingsSettersController.setLibraryBackdropStrength(value: Float) {
        setSlider("libraryBackdrop") {
            preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, value.coerceIn(0f, 1f))
        }
    }

internal fun SettingsSettersController.setLibraryBackgroundBlur(value: Float) {
        setSlider("libraryBackgroundBlur") {
            preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, value.coerceIn(0f, 1f))
        }
    }

internal fun SettingsSettersController.setLibraryBackgroundStyle(style: String) {
        scope.launch {
            preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, normalizeLibraryBackgroundStyle(style))
        }
    }

    // Phase Y (2026-08-04): preset functions → SettingsViewModelPresets.kt.
internal fun SettingsSettersController.setLibraryBackgroundVeil(value: Float) {
        setSlider("libraryVeil") {
            preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, value.coerceIn(0f, 1f))
        }
    }

internal fun SettingsSettersController.setLibraryBackgroundImageUri(uri: String?) {
        scope.launch {
            preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_IMAGE_URI, uri.orEmpty())
            if (uri.isNullOrBlank()) {
                val currentStyle = preferences
                    .get(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, DEFAULT_LIBRARY_BACKGROUND_STYLE)
                    .first()
                if (currentStyle == "IMAGE") {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, DEFAULT_LIBRARY_BACKGROUND_STYLE)
                }
            } else {
                preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "IMAGE")
            }
        }
    }

internal fun SettingsSettersController.setLibraryShelfStyle(style: String) {
        scope.launch {
            preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, normalizeLibraryShelfStyle(style))
        }
    }

internal fun SettingsSettersController.setLibraryShelfDepth(value: Float) {
        setSlider("libraryShelfDepth") {
            preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, value.coerceIn(0f, 1f))
        }
    }

internal fun SettingsSettersController.setLibraryCardShadow(value: Float) {
        setSlider("libraryCardShadow") {
            preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, value.coerceIn(0f, 1f))
        }
    }

internal fun SettingsSettersController.setLibraryTitleScale(value: Float) {
        setSlider("libraryTitleScale") {
            preferences.set(PreferencesKeys.LIBRARY_TITLE_SCALE, value.coerceIn(0.85f, 1.3f))
        }
    }

internal fun SettingsSettersController.setLibraryTitleLines(value: Int) {
        scope.launch {
            preferences.set(PreferencesKeys.LIBRARY_TITLE_LINES, value.coerceIn(1, 3))
        }
    }

internal fun SettingsSettersController.setLibraryCardStroke(value: Float) {
        setSlider("libraryCardStroke") {
            preferences.set(PreferencesKeys.LIBRARY_CARD_STROKE, value.coerceIn(0f, 1f))
        }
    }

internal fun SettingsSettersController.setLibraryCardCornerRadius(value: Int) {
        setSlider("libraryCardCornerRadius") {
            preferences.set(PreferencesKeys.LIBRARY_CARD_CORNER_RADIUS, value.coerceIn(6, 24))
        }
    }

internal fun SettingsSettersController.setLibraryTitlePanelOpacity(value: Float) {
        setSlider("libraryTitlePanelOpacity") {
            preferences.set(PreferencesKeys.LIBRARY_TITLE_PANEL_OPACITY, value.coerceIn(0.18f, 0.78f))
        }
    }

internal fun SettingsSettersController.setLibraryThumbnailMode(mode: String) = settingsPreferencesController.setLibraryThumbnailMode(mode)

internal fun SettingsSettersController.setLibraryGraphicCoverStyle(style: String) {
        scope.launch {
            preferences.set(
                PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE,
                normalizeLibraryGraphicCoverStyle(style)
            )
        }
    }

internal fun SettingsSettersController.setLibrarySortOrder(order: String) = settingsPreferencesController.setLibrarySortOrder(order)

internal fun SettingsSettersController.setLibraryGroupBy(mode: String) = settingsPreferencesController.setLibraryGroupBy(mode)
