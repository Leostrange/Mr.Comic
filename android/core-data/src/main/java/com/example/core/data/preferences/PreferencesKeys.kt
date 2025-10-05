package com.example.core.data.preferences

import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.intPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey

/**
 * Ключи настроек для DataStore
 */
object PreferencesKeys {
    
    // Настройки темы
    val THEME_MODE = stringPreferencesKey("theme_mode")
    val THEME_PRIMARY_COLOR = stringPreferencesKey("theme_primary_color")
    val THEME_SECONDARY_COLOR = stringPreferencesKey("theme_secondary_color")
    val THEME_BACKGROUND_COLOR = stringPreferencesKey("theme_background_color")
    val THEME_OVERLAY_ALPHA = floatPreferencesKey("theme_overlay_alpha")
    val THEME_BLUR_ENABLED = booleanPreferencesKey("theme_blur_enabled")
    val THEME_ICON_PACK = stringPreferencesKey("theme_icon_pack")
    val THEME_FONT_FAMILY = stringPreferencesKey("theme_font_family")
    val THEME_FONT_SIZE_MENU = floatPreferencesKey("theme_font_size_menu")
    val THEME_FONT_SIZE_OVERLAY = floatPreferencesKey("theme_font_size_overlay")
    val THEME_FONT_SIZE_INDICATOR = floatPreferencesKey("theme_font_size_indicator")
    
    // Настройки библиотеки
    val LIBRARY_VIEW_MODE = stringPreferencesKey("library_view_mode") // GRID, LIST, FOLDER
    val LIBRARY_SORT_ORDER = stringPreferencesKey("library_sort_order") // NAME, DATE, SIZE
    val LIBRARY_SORT_ASCENDING = booleanPreferencesKey("library_sort_ascending")
    val LIBRARY_GRID_COLUMNS = intPreferencesKey("library_grid_columns")
    
    // Настройки чтения
    val READING_ORIENTATION = stringPreferencesKey("reading_orientation") // PORTRAIT, LANDSCAPE, AUTO
    val READING_MODE = stringPreferencesKey("reading_mode") // PAGED, VERTICAL_SCROLL
    val READING_TRANSITION_EFFECT = stringPreferencesKey("reading_transition_effect") // SLIDE, FADE, NONE
    val READING_ANIMATION_SPEED = floatPreferencesKey("reading_animation_speed")
    val READING_DOUBLE_PAGE = booleanPreferencesKey("reading_double_page")
    val READING_MANGA_MODE = booleanPreferencesKey("reading_manga_mode")
    val READING_LOCAL_BRIGHTNESS = floatPreferencesKey("reading_local_brightness")
    val READING_GESTURE_SENSITIVITY = floatPreferencesKey("reading_gesture_sensitivity")
    val READING_TAP_ZONES_CONFIG = stringPreferencesKey("reading_tap_zones_config") // JSON
    val READING_KEEP_SCREEN_ON = booleanPreferencesKey("reading_keep_screen_on")
    val READING_VOLUME_KEY_NAVIGATION = booleanPreferencesKey("reading_volume_key_navigation")
    
    // Настройки индексации
    val SCAN_CBZ_MODE = stringPreferencesKey("scan_cbz_mode") // ALWAYS, CONDITIONAL, NEVER
    val SCAN_CBR_MODE = stringPreferencesKey("scan_cbr_mode")
    val SCAN_PDF_MODE = stringPreferencesKey("scan_pdf_mode")
    val SCAN_FOLDER_MODE = stringPreferencesKey("scan_folder_mode")
    val SCAN_AUTO_REFRESH = booleanPreferencesKey("scan_auto_refresh")
    val SCAN_LAST_SCAN_TIME = stringPreferencesKey("scan_last_scan_time")
    
    // Настройки OCR
    val OCR_ENABLED = booleanPreferencesKey("ocr_enabled")
    val OCR_LANGUAGE = stringPreferencesKey("ocr_language") // RU, EN, FR
    val OCR_ENGINE = stringPreferencesKey("ocr_engine") // MLKIT, TESSERACT
    val OCR_CACHE_ENABLED = booleanPreferencesKey("ocr_cache_enabled")
    
    // Настройки перевода
    val TRANSLATION_ENABLED = booleanPreferencesKey("translation_enabled")
    val TRANSLATION_PROVIDER = stringPreferencesKey("translation_provider") // LOCAL, CLOUD
    val TRANSLATION_SOURCE_LANG = stringPreferencesKey("translation_source_lang")
    val TRANSLATION_TARGET_LANG = stringPreferencesKey("translation_target_lang")
    val TRANSLATION_AUTO_TRANSLATE = booleanPreferencesKey("translation_auto_translate")
    val TRANSLATION_CACHE_ENABLED = booleanPreferencesKey("translation_cache_enabled")
    
    // Настройки визуализации перевода
    val TRANSLATION_OVERLAY_BG_COLOR = stringPreferencesKey("translation_overlay_bg_color")
    val TRANSLATION_OVERLAY_BG_ALPHA = floatPreferencesKey("translation_overlay_bg_alpha")
    val TRANSLATION_OVERLAY_TEXT_COLOR = stringPreferencesKey("translation_overlay_text_color")
    val TRANSLATION_OVERLAY_FONT_SIZE = floatPreferencesKey("translation_overlay_font_size")
    val TRANSLATION_OVERLAY_FONT_FAMILY = stringPreferencesKey("translation_overlay_font_family")
    
    // Настройки синхронизации
    val SYNC_ENABLED = booleanPreferencesKey("sync_enabled")
    val SYNC_PROVIDER = stringPreferencesKey("sync_provider") // GOOGLE_DRIVE, ONEDRIVE, etc.
    val SYNC_PROGRESS = booleanPreferencesKey("sync_progress")
    val SYNC_BOOKMARKS = booleanPreferencesKey("sync_bookmarks")
    val SYNC_SETTINGS = booleanPreferencesKey("sync_settings")
    val SYNC_INTERVAL = stringPreferencesKey("sync_interval") // MANUAL, HOURLY, DAILY, WEEKLY
    val SYNC_WIFI_ONLY = booleanPreferencesKey("sync_wifi_only")
    val SYNC_CONFLICT_RESOLUTION = stringPreferencesKey("sync_conflict_resolution") // NEWEST, OLDEST, ASK
    val SYNC_LAST_SYNC_TIME = stringPreferencesKey("sync_last_sync_time")
    
    // Настройки приложения
    val APP_LANGUAGE = stringPreferencesKey("app_language") // RU, EN, FR
    val APP_FIRST_LAUNCH = booleanPreferencesKey("app_first_launch")
    val APP_ONBOARDING_COMPLETED = booleanPreferencesKey("app_onboarding_completed")
    val APP_VERSION = stringPreferencesKey("app_version")
}
