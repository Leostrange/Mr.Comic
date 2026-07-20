package com.example.feature.settings.ui

/**
 * Settings screen navigation enums.
 *
 * Extracted from SettingsScreen to reduce its size.
 * These are pure enums with no dependencies.
 */

internal enum class SettingsSection {
    APPEARANCE, READER, LIBRARY, PERFORMANCE, SYNC,
    READ_ALOUD, TRANSLATION, AI_SERVICES, STORAGE, ADVANCED, ABOUT
}

internal enum class AppearanceSettingsPage { OVERVIEW, BASICS, LIBRARY, THEME_STUDIO, THEME, SCALE, COLORS, EXTRA }
internal enum class ReaderSettingsPage { OVERVIEW, TEXT_APPEARANCE, PAGE_LAYOUT, HEADERS, PAGING, BEHAVIOR }
internal enum class LibrarySettingsPage { OVERVIEW, ACCESS, CACHE, IMPORT_EXPORT }
internal enum class SyncSettingsPage { OVERVIEW, BACKUP }
internal enum class TranslationSettingsPage { OVERVIEW, LANGUAGES, OCR, OVERLAY, SERVICES }
internal enum class AppearanceSettingsTab { BASICS, THEME, SCALE, COLORS, EXTRA }
internal enum class LibrarySettingsTab { DISPLAY, COVERS, STYLE, SORTING }
