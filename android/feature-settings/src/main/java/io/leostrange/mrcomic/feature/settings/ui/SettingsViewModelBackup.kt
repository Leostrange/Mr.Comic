// Phase U (2026-08-04) + 4.1 (2026-08-09):
// backup/restore helpers, export/import and cache management extracted from
// SettingsViewModel.kt; since 4.1 the logic lives in SettingsBackupController
// and these extensions delegate to it (public API unchanged).

package io.leostrange.mrcomic.feature.settings.ui

import android.net.Uri
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import kotlinx.coroutines.launch
import org.json.JSONObject

// ── Backup/cache/repair orchestrators (delegated to SettingsBackupController) ──
internal fun SettingsViewModel.setAutoBackupEnabled(enabled: Boolean) = backupController.setAutoBackupEnabled(enabled)

internal suspend fun SettingsViewModel.autoBackupToDocuments() = backupController.autoBackupToDocuments()

internal fun SettingsViewModel.clearImageCache() = backupController.clearImageCache()

internal fun SettingsViewModel.consumeCacheMessage() = backupController.consumeCacheMessage()

internal fun SettingsViewModel.consumePendingLibraryRepairLaunch() =
    backupController.consumePendingLibraryRepairLaunch()

internal fun SettingsViewModel.exportProgress(uri: Uri) = backupController.exportProgress(uri)

internal fun SettingsViewModel.importProgress(uri: Uri) = backupController.importProgress(uri)

internal fun SettingsViewModel.repairLibraryAccess(treeUri: Uri) = backupController.repairLibraryAccess(treeUri)

internal suspend fun SettingsViewModel.parseImportedReaderTypography(json: JSONObject) =
    backupController.parseImportedReaderTypography(json)

// ── Popup/misc preference setters (remain ViewModel extensions) ───────────
internal fun SettingsViewModel.setSettingsImportErrorPresentation(value: String) = viewModelScope.launch {
        preferences.set(
            PreferencesKeys.SETTINGS_IMPORT_ERROR_PRESENTATION,
            normalizeSettingsImportErrorPresentation(value)
        )
    }

internal fun SettingsViewModel.setImageMessagePopupPosition(value: String) = viewModelScope.launch {
        preferences.set(
            PreferencesKeys.IMAGE_MESSAGE_POPUP_POSITION,
            normalizeSettingsImageMessagePopupPosition(value)
        )
    }

internal fun SettingsViewModel.setImageMessagePopupFreeMove(enabled: Boolean) = viewModelScope.launch {
        preferences.set(PreferencesKeys.IMAGE_MESSAGE_POPUP_FREE_MOVE, enabled)
    }

internal fun SettingsViewModel.setImageMessagePopupSizeScale(value: Float) {
        setSlider("imageMessagePopupSizeScale") {
            preferences.set(
                PreferencesKeys.IMAGE_MESSAGE_POPUP_SIZE_SCALE,
                clampSettingsImageMessagePopupScale(value)
            )
        }
    }

internal fun SettingsViewModel.setImageMessagePopupDurationSeconds(value: Int) {
        setSlider("imageMessagePopupDurationSeconds") {
            preferences.set(
                PreferencesKeys.IMAGE_MESSAGE_POPUP_DURATION_SECONDS,
                clampSettingsImageMessagePopupDurationSeconds(value)
            )
        }
    }
