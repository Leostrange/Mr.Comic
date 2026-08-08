// 4.1 (2026-08-09):
// Library/app/reader theme preset save/apply/clear/rename extracted from
// SettingsViewModelPresets.kt + the apply/persist helpers from
// SettingsViewModelHelpers.kt into an explicit-dependency controller
// (Reader/LibraryCrudController pattern). The ViewModel stays the single
// owner of state and lifecycle; the controller only needs preferences,
// the theme repository, a scope and the current UI state.

package io.leostrange.mrcomic.feature.settings.ui

import androidx.datastore.preferences.core.Preferences
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.ui.library.LibraryThemePresetSnapshot
import io.leostrange.mrcomic.core.ui.library.parseLibraryThemePreset
import io.leostrange.mrcomic.core.ui.library.libraryQuickPresetSpec
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryBackgroundStyle
import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import io.leostrange.mrcomic.core.ui.theme.ThemePreset
import io.leostrange.mrcomic.core.ui.theme.ThemePreferencesRepository
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

internal class SettingsPresetsController(
    private val preferences: UserPreferences,
    private val themePreferencesRepository: ThemePreferencesRepository,
    private val scope: CoroutineScope,
    private val uiState: () -> SettingsUiState,
    private val persistNullableColor: suspend (Preferences.Key<Long>, Long?) -> Unit,
) {

    fun saveLibraryThemePreset(slot: Int) {
        val snapshot = uiState().toLibraryThemePresetSnapshot()
        scope.launch {
            preferences.set(libraryThemePresetKey(slot), snapshot.serialize())
        }
    }

    fun applyLibraryThemePreset(slot: Int) {
        val snapshot = parseLibraryThemePreset(
            uiState().libraryThemePresetSlots.firstOrNull { it.index == slot }?.serialized
        ) ?: return
        scope.launch {
            applyLibraryPresetSnapshot(snapshot)
        }
    }

    fun clearLibraryThemePreset(slot: Int) {
        scope.launch {
            preferences.set(libraryThemePresetKey(slot), "")
        }
    }

    fun saveAppThemePreset(slot: Int) {
        val snapshot = uiState().toAppThemePresetSnapshot()
        scope.launch {
            preferences.set(appThemePresetKey(slot), snapshot.serialize())
        }
    }

    fun applyAppThemePreset(slot: Int) {
        val snapshot = parseAppThemePreset(
            uiState().appThemePresetSlots.firstOrNull { it.index == slot }?.serialized
        ) ?: return
        scope.launch {
            applyAppThemePresetSnapshot(snapshot)
        }
    }

    fun clearAppThemePreset(slot: Int) {
        scope.launch {
            preferences.set(appThemePresetKey(slot), "")
        }
    }

    fun saveReaderStylePreset(slot: Int) {
        val normalizedSlot = slot.coerceIn(1, 3)
        val existingEntry = uiState().readerStylePresetEntries.getOrNull(normalizedSlot - 1)
        if (existingEntry != null) {
            overwriteReaderStylePreset(existingEntry.id)
        } else {
            saveCurrentReaderStylePreset(displayName = settingsReaderStyleFallbackName(normalizedSlot))
        }
    }

    fun applyReaderStylePreset(slot: Int) {
        uiState().readerStylePresetEntries.getOrNull(slot.coerceIn(1, 3) - 1)?.let {
            applyReaderStylePreset(it.id)
        }
    }

    fun clearReaderStylePreset(slot: Int) {
        uiState().readerStylePresetEntries.getOrNull(slot.coerceIn(1, 3) - 1)?.let {
            deleteReaderStylePreset(it.id)
        }
    }

    fun renameReaderStylePreset(slot: Int, displayName: String) {
        uiState().readerStylePresetEntries.getOrNull(slot.coerceIn(1, 3) - 1)?.let {
            renameReaderStylePreset(it.id, displayName)
        }
    }

    fun saveCurrentReaderStylePreset(displayName: String? = null) {
        val snapshot = uiState().toReaderStylePresetSnapshot(
            displayName = displayName?.trim()?.takeIf { it.isNotEmpty() }
                ?: settingsReaderStyleFallbackName(uiState().readerStylePresetEntries.size + 1)
        )
        val updatedEntries = listOf(
            ReaderStylePresetEntry(
                id = "preset_${System.currentTimeMillis()}",
                snapshot = snapshot
            )
        ) + uiState().readerStylePresetEntries
        scope.launch { persistReaderStylePresetEntries(updatedEntries) }
    }

    fun overwriteReaderStylePreset(id: String) {
        val existing = uiState().readerStylePresetEntries.firstOrNull { it.id == id } ?: return
        val updatedEntries = uiState().readerStylePresetEntries.map { entry ->
            if (entry.id == id) {
                entry.copy(
                    snapshot = uiState().toReaderStylePresetSnapshot(
                        displayName = existing.snapshot.displayName
                    )
                )
            } else {
                entry
            }
        }
        scope.launch { persistReaderStylePresetEntries(updatedEntries) }
    }

    fun applyReaderStylePreset(id: String) {
        val snapshot = uiState().readerStylePresetEntries
            .firstOrNull { it.id == id }
            ?.snapshot
            ?: return
        scope.launch { applyReaderStylePresetSnapshot(snapshot) }
    }

    fun deleteReaderStylePreset(id: String) {
        scope.launch {
            persistReaderStylePresetEntries(
                uiState().readerStylePresetEntries.filterNot { it.id == id }
            )
        }
    }

    fun renameReaderStylePreset(id: String, displayName: String) {
        val trimmed = displayName.trim()
        val updatedEntries = uiState().readerStylePresetEntries.map { entry ->
            if (entry.id == id) {
                entry.copy(
                    snapshot = entry.snapshot.copy(
                        displayName = trimmed.takeIf { it.isNotEmpty() }
                    )
                )
            } else {
                entry
            }
        }
        scope.launch { persistReaderStylePresetEntries(updatedEntries) }
    }

    fun applyLibraryZonePreset(style: String) {
        scope.launch {
            when (normalizeLibraryBackgroundStyle(style)) {
                "DARK_STUDY" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "DARK_STUDY")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "WALNUT")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "SHOWCASE")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "INK")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.58f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.18f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.46f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.62f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.64f)
                }
                "LIGHT_GREENHOUSE" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "LIGHT_GREENHOUSE")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "OAK")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "BALANCED")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "MINIMAL")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.4f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.08f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.24f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.28f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.44f)
                }
                "SCIENCE_LAB" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "SCIENCE_LAB")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "GLASS")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "SHOWCASE")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "POSTER")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.54f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.24f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.32f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.5f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.56f)
                }
                "CITY_LIBRARY" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "CITY_LIBRARY")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "STEEL")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "BALANCED")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "POSTER")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.44f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.12f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.28f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.42f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.52f)
                }
                "LIQUID_GLASS" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "LIQUID_GLASS")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "FROST")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "SHOWCASE")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "MINIMAL")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.48f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.42f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.18f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.22f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.34f)
                }
                "MIDNIGHT_MICA" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "MIDNIGHT_MICA")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "ALUMINUM")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "BALANCED")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "INK")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.36f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.22f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.22f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.18f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.3f)
                }
                "SUNSET_HAZE" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "SUNSET_HAZE")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "FLOAT")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "SHOWCASE")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "POSTER")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.4f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.18f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.16f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.2f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.18f)
                }
                else -> Unit
            }
        }
    }

    fun applyLibraryLookPreset(presetId: String) {
        scope.launch {
            val preset = libraryQuickPresetSpec(presetId) ?: return@launch
            applyLibraryPresetSnapshot(preset.snapshot, preset.useAmoledDark)
        }
    }

    suspend fun persistReaderStylePresetEntries(entries: List<ReaderStylePresetEntry>) {
        val normalizedEntries = entries.distinctBy { it.id }
        val legacySlots = normalizedEntries.toLegacyReaderStyleSlots()
        preferences.set(
            PreferencesKeys.READER_STYLE_PRESET_LIST,
            serializeReaderStylePresetEntries(normalizedEntries)
        )
        preferences.set(PreferencesKeys.READER_STYLE_PRESET_1, legacySlots[0].serialized.orEmpty())
        preferences.set(PreferencesKeys.READER_STYLE_PRESET_2, legacySlots[1].serialized.orEmpty())
        preferences.set(PreferencesKeys.READER_STYLE_PRESET_3, legacySlots[2].serialized.orEmpty())
    }

    private suspend fun applyLibraryPresetSnapshot(
        snapshot: LibraryThemePresetSnapshot,
        useAmoledDark: Boolean? = null
    ) {
        preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, snapshot.backgroundStyle)
        preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_IMAGE_URI, snapshot.backgroundImageUri ?: "")
        preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, snapshot.backdropStrength)
        preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, snapshot.backgroundBlur)
        preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, snapshot.backgroundVeil)
        preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, snapshot.shelfStyle)
        preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, snapshot.shelfDepth)
        preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, snapshot.cardShadow)
        preferences.set(PreferencesKeys.LIBRARY_TITLE_SCALE, snapshot.titleScale)
        preferences.set(PreferencesKeys.LIBRARY_TITLE_LINES, snapshot.titleLines)
        preferences.set(PreferencesKeys.LIBRARY_CARD_STROKE, snapshot.cardStroke)
        preferences.set(PreferencesKeys.LIBRARY_CARD_CORNER_RADIUS, snapshot.cardCornerRadius)
        preferences.set(PreferencesKeys.LIBRARY_TITLE_PANEL_OPACITY, snapshot.titlePanelOpacity)
        preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, snapshot.cardStyle)
        preferences.set(PreferencesKeys.LIBRARY_THUMBNAIL_MODE, snapshot.thumbnailMode)
        preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, snapshot.graphicCoverStyle)
        preferences.set(PreferencesKeys.LIBRARY_COVER_SCALE, snapshot.coverScale)
        themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
        themePreferencesRepository.setSurfaceOpacity(snapshot.surfaceOpacity)
        if (useAmoledDark != null) {
            themePreferencesRepository.setUseAmoledDark(useAmoledDark)
        }
    }

    private suspend fun applyAppThemePresetSnapshot(
        snapshot: AppThemePresetSnapshot
    ) {
        themePreferencesRepository.setThemePreset(
            runCatching { ThemePreset.valueOf(snapshot.themePreset) }.getOrDefault(ThemePreset.CUSTOM)
        )
        themePreferencesRepository.setThemeMode(
            runCatching { ThemeMode.valueOf(snapshot.themeMode) }.getOrDefault(ThemeMode.SYSTEM)
        )
        themePreferencesRepository.setUseDynamicColor(snapshot.useDynamicColor)
        themePreferencesRepository.setUseAmoledDark(snapshot.useAmoledDark)
        themePreferencesRepository.setCustomPrimaryColor(snapshot.customPrimaryColor)
        themePreferencesRepository.setCustomSecondaryColor(snapshot.customSecondaryColor)
        themePreferencesRepository.setCustomBackgroundColor(snapshot.customBackgroundColor)
        themePreferencesRepository.setCustomSurfaceColor(snapshot.customSurfaceColor)
        themePreferencesRepository.setSurfaceOpacity(snapshot.surfaceOpacity)
        preferences.set(PreferencesKeys.UI_FONT_SCALE, snapshot.uiFontScale)
        preferences.set(PreferencesKeys.UI_DENSITY_SCALE, snapshot.uiDensityScale)
        preferences.set(PreferencesKeys.UI_CORNER_RADIUS, snapshot.uiCornerRadius)
    }

    private suspend fun applyReaderStylePresetSnapshot(
        snapshot: ReaderStylePresetSnapshot
    ) {
        preferences.set(PreferencesKeys.READER_PRESET, snapshot.readerPreset)
        preferences.set(PreferencesKeys.TEXT_FONT_SIZE, snapshot.textFontSize)
        preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, snapshot.textColorScheme)
        persistNullableColor(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, snapshot.textCustomTextColor)
        persistNullableColor(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, snapshot.textCustomBackgroundColor)
        persistNullableColor(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, snapshot.textCustomAccentColor)
        preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, snapshot.textFontFamily)
        preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, snapshot.textLineHeight)
        preferences.set(PreferencesKeys.TEXT_LETTER_SPACING, snapshot.textLetterSpacing)
        preferences.set(PreferencesKeys.TEXT_WORD_SPACING, snapshot.textWordSpacing)
        preferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, snapshot.textParagraphSpacing)
        preferences.set(PreferencesKeys.TEXT_ALIGNMENT, snapshot.textAlignment)
        preferences.set(PreferencesKeys.TEXT_BOLD, snapshot.textBold)
        preferences.set(PreferencesKeys.READING_BRIGHTNESS, snapshot.brightness)
        preferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, snapshot.immersiveMode)
        preferences.set(PreferencesKeys.READER_PAGE_ANIMATION, snapshot.pageAnimation)
    }
}
