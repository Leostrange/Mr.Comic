// Phase Y (2026-08-04) + 4.1 (2026-08-09):
// Library/app/reader theme preset save/apply/clear/rename functions
// extracted from SettingsViewModel.kt; since 4.1 they delegate to
// SettingsPresetsController (explicit dependencies).

package io.leostrange.mrcomic.feature.settings.ui

// ── Preset save/apply/clear/rename (delegated to SettingsPresetsController) ──
internal fun SettingsViewModel.saveLibraryThemePreset(slot: Int) = presetsController.saveLibraryThemePreset(slot)

internal fun SettingsViewModel.applyLibraryThemePreset(slot: Int) = presetsController.applyLibraryThemePreset(slot)

internal fun SettingsViewModel.clearLibraryThemePreset(slot: Int) = presetsController.clearLibraryThemePreset(slot)

internal fun SettingsViewModel.saveReaderStylePreset(slot: Int) = presetsController.saveReaderStylePreset(slot)

internal fun SettingsViewModel.applyReaderStylePreset(slot: Int) = presetsController.applyReaderStylePreset(slot)

internal fun SettingsViewModel.clearReaderStylePreset(slot: Int) = presetsController.clearReaderStylePreset(slot)

internal fun SettingsViewModel.renameReaderStylePreset(slot: Int, displayName: String) =
    presetsController.renameReaderStylePreset(slot, displayName)

internal fun SettingsViewModel.saveCurrentReaderStylePreset(displayName: String? = null) =
    presetsController.saveCurrentReaderStylePreset(displayName)

internal fun SettingsViewModel.overwriteReaderStylePreset(id: String) =
    presetsController.overwriteReaderStylePreset(id)

internal fun SettingsViewModel.applyReaderStylePreset(id: String) = presetsController.applyReaderStylePreset(id)

internal fun SettingsViewModel.deleteReaderStylePreset(id: String) = presetsController.deleteReaderStylePreset(id)

internal fun SettingsViewModel.renameReaderStylePreset(id: String, displayName: String) =
    presetsController.renameReaderStylePreset(id, displayName)

internal fun SettingsViewModel.applyLibraryZonePreset(style: String) = presetsController.applyLibraryZonePreset(style)

internal fun SettingsViewModel.applyLibraryLookPreset(presetId: String) = presetsController.applyLibraryLookPreset(presetId)

internal suspend fun SettingsViewModel.persistReaderStylePresetEntries(entries: List<ReaderStylePresetEntry>) =
    presetsController.persistReaderStylePresetEntries(entries)
