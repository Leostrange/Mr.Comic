package com.example.core.domain.util

/**
 * Canonical normalization for stored library view mode keys.
 *
 * Valid inputs (case-insensitive, trimmed): `GRID`, `LIST`, `STRIPS`.
 * Invalid or null values fall back to [legacyDefault] — `GRID` for legacy installs,
 * `LIST` for fresh installs.
 *
 * This is the shared string-level primitive. Callers that need the strongly-typed
 * enum should map the result via `LibraryViewMode.valueOf(...)` themselves; see
 * `feature-library/.../LibraryViewModel.kt` for the typed wrapper.
 *
 * Replaces the duplicated `private fun normalizeLibraryViewMode` previously living
 * in both `feature-library/.../LibraryViewModel.kt` and
 * `feature-settings/.../SettingsViewModel.kt`.
 */
fun normalizeLibraryViewModeKey(
    stored: String?,
    legacyDefault: LibraryViewModeKey = LibraryViewModeKey.GRID,
): LibraryViewModeKey {
    val candidate = stored?.trim()?.uppercase()
    return when (candidate) {
        LibraryViewModeKey.GRID.name,
        LibraryViewModeKey.LIST.name,
        LibraryViewModeKey.STRIPS.name -> LibraryViewModeKey.valueOf(candidate)
        else -> legacyDefault
    }
}

/**
 * String keys for library view mode, matching the persisted values used by
 * `LibraryViewMode`. Lives in `core-domain` so both `feature-library` and
 * `feature-settings` can share the canonical name list without depending on each
 * other.
 *
 * Intentionally mirrors `com.example.feature.library.LibraryViewMode` for now —
 * the enum should be migrated to this package in a follow-up (LIB-3).
 */
enum class LibraryViewModeKey { GRID, LIST, STRIPS }