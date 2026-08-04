// Phase Y (2026-08-04):
// Library/app/reader theme preset save/apply/clear/rename functions
// extracted from SettingsViewModel.kt

package io.leostrange.mrcomic.feature.settings.ui

import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.ui.library.parseLibraryThemePreset
import io.leostrange.mrcomic.core.ui.library.libraryQuickPresetSpec
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryBackgroundStyle
import kotlinx.coroutines.launch

// ── Phase Y: preset save/apply/clear/rename ──────────────────────────
internal fun SettingsViewModel.saveLibraryThemePreset(slot: Int) {
        val snapshot = uiState.value.toLibraryThemePresetSnapshot()
        viewModelScope.launch {
            preferences.set(libraryThemePresetKey(slot), snapshot.serialize())
        }
    }

internal fun SettingsViewModel.applyLibraryThemePreset(slot: Int) {
        val snapshot = parseLibraryThemePreset(
            uiState.value.libraryThemePresetSlots.firstOrNull { it.index == slot }?.serialized
        ) ?: return
        viewModelScope.launch {
            applyLibraryPresetSnapshot(snapshot)
        }
    }

internal fun SettingsViewModel.clearLibraryThemePreset(slot: Int) {
        viewModelScope.launch {
            preferences.set(libraryThemePresetKey(slot), "")
        }
    }

internal fun SettingsViewModel.saveAppThemePreset(slot: Int) {
        val snapshot = uiState.value.toAppThemePresetSnapshot()
        viewModelScope.launch {
            preferences.set(appThemePresetKey(slot), snapshot.serialize())
        }
    }

internal fun SettingsViewModel.applyAppThemePreset(slot: Int) {
        val snapshot = parseAppThemePreset(
            uiState.value.appThemePresetSlots.firstOrNull { it.index == slot }?.serialized
        ) ?: return
        viewModelScope.launch {
            applyAppThemePresetSnapshot(snapshot)
        }
    }

internal fun SettingsViewModel.clearAppThemePreset(slot: Int) {
        viewModelScope.launch {
            preferences.set(appThemePresetKey(slot), "")
        }
    }

internal fun SettingsViewModel.saveReaderStylePreset(slot: Int) {
        val normalizedSlot = slot.coerceIn(1, 3)
        val existingEntry = uiState.value.readerStylePresetEntries.getOrNull(normalizedSlot - 1)
        if (existingEntry != null) {
            overwriteReaderStylePreset(existingEntry.id)
        } else {
            saveCurrentReaderStylePreset(displayName = settingsReaderStyleFallbackName(normalizedSlot))
        }
    }

internal fun SettingsViewModel.applyReaderStylePreset(slot: Int) {
        uiState.value.readerStylePresetEntries.getOrNull(slot.coerceIn(1, 3) - 1)?.let {
            applyReaderStylePreset(it.id)
        }
    }

internal fun SettingsViewModel.clearReaderStylePreset(slot: Int) {
        uiState.value.readerStylePresetEntries.getOrNull(slot.coerceIn(1, 3) - 1)?.let {
            deleteReaderStylePreset(it.id)
        }
    }

internal fun SettingsViewModel.renameReaderStylePreset(slot: Int, displayName: String) {
        uiState.value.readerStylePresetEntries.getOrNull(slot.coerceIn(1, 3) - 1)?.let {
            renameReaderStylePreset(it.id, displayName)
        }
    }

internal fun SettingsViewModel.saveCurrentReaderStylePreset(displayName: String? = null) {
        val snapshot = uiState.value.toReaderStylePresetSnapshot(
            displayName = displayName?.trim()?.takeIf { it.isNotEmpty() }
                ?: settingsReaderStyleFallbackName(uiState.value.readerStylePresetEntries.size + 1)
        )
        val updatedEntries = listOf(
            ReaderStylePresetEntry(
                id = "preset_${System.currentTimeMillis()}",
                snapshot = snapshot
            )
        ) + uiState.value.readerStylePresetEntries
        viewModelScope.launch { persistReaderStylePresetEntries(updatedEntries) }
    }

internal fun SettingsViewModel.overwriteReaderStylePreset(id: String) {
        val existing = uiState.value.readerStylePresetEntries.firstOrNull { it.id == id } ?: return
        val updatedEntries = uiState.value.readerStylePresetEntries.map { entry ->
            if (entry.id == id) {
                entry.copy(
                    snapshot = uiState.value.toReaderStylePresetSnapshot(
                        displayName = existing.snapshot.displayName
                    )
                )
            } else {
                entry
            }
        }
        viewModelScope.launch { persistReaderStylePresetEntries(updatedEntries) }
    }

internal fun SettingsViewModel.applyReaderStylePreset(id: String) {
        val snapshot = uiState.value.readerStylePresetEntries
            .firstOrNull { it.id == id }
            ?.snapshot
            ?: return
        viewModelScope.launch { applyReaderStylePresetSnapshot(snapshot) }
    }

internal fun SettingsViewModel.deleteReaderStylePreset(id: String) {
        viewModelScope.launch {
            persistReaderStylePresetEntries(
                uiState.value.readerStylePresetEntries.filterNot { it.id == id }
            )
        }
    }

internal fun SettingsViewModel.renameReaderStylePreset(id: String, displayName: String) {
        val trimmed = displayName.trim()
        val updatedEntries = uiState.value.readerStylePresetEntries.map { entry ->
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
        viewModelScope.launch { persistReaderStylePresetEntries(updatedEntries) }
    }

internal fun SettingsViewModel.applyLibraryZonePreset(style: String) {
        viewModelScope.launch {
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

internal fun SettingsViewModel.applyLibraryLookPreset(presetId: String) {
        viewModelScope.launch {
            val preset = libraryQuickPresetSpec(presetId) ?: return@launch
            applyLibraryPresetSnapshot(preset.snapshot, preset.useAmoledDark)
        }
    }
