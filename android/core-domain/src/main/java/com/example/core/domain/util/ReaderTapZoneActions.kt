package com.example.core.domain.util

import com.example.core.model.ReaderTapZoneAction

/**
 * Canonical normalization for stored tap-zone action names.
 *
 * Single source of truth for both reader and settings persistence layers:
 * - Reads stored value via [ReaderTapZoneAction.fromStored] (handles legacy aliases).
 * - Rewrites the obsolete [ReaderTapZoneAction.TOGGLE_UI] to [ReaderTapZoneAction.MENU],
 *   which is the canonical UI-toggle action.
 *
 * Replaces the duplicated `private fun normalizeTapZoneActionName` previously living
 * in both `feature-reader/.../ReaderViewModel.kt` and
 * `feature-settings/.../SettingsViewModel.kt`.
 */
fun normalizeTapZoneActionName(value: String?): String {
    val action = ReaderTapZoneAction.fromStored(value)
    return if (action == ReaderTapZoneAction.TOGGLE_UI) {
        ReaderTapZoneAction.MENU.name
    } else {
        action.name
    }
}