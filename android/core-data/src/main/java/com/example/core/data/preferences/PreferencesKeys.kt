package com.example.core.data.preferences

import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.intPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey

object PreferencesKeys {
    val APP_ONBOARDING_COMPLETED  = booleanPreferencesKey("app_onboarding_completed")
    val READING_MODE              = stringPreferencesKey("reading_mode")
    val READING_BRIGHTNESS        = floatPreferencesKey("reading_brightness")
    val READER_KEEP_SCREEN_ON     = booleanPreferencesKey("reader_keep_screen_on")
    // Библиотека
    val LIBRARY_GRID_COLUMNS      = intPreferencesKey("library_grid_columns")   // 2..4, default 3
    val LIBRARY_VIEW_GRID         = booleanPreferencesKey("library_view_grid")  // true=grid, false=list
    // Ридер
    val READER_PRELOAD_PAGES      = intPreferencesKey("reader_preload_pages")   // 2..8, default 3
    val READER_IMMERSIVE_MODE     = booleanPreferencesKey("reader_immersive_mode")
    val READER_PAGE_ANIMATION     = stringPreferencesKey("reader_page_animation") // NONE/SLIDE/FADE
    val READER_PAGE_SOUND         = booleanPreferencesKey("reader_page_sound")    // page-flip sound
    val READER_EYE_REST_ENABLED   = booleanPreferencesKey("reader_eye_rest_enabled")
    val READER_EYE_REST_MINUTES   = intPreferencesKey("reader_eye_rest_minutes")
    // Кастомизация
    val UI_FONT_SCALE             = floatPreferencesKey("ui_font_scale")       // 0.85/1.0/1.15/1.3
    val UI_DENSITY_SCALE          = floatPreferencesKey("ui_density_scale")    // 0.9..1.1
    val UI_CORNER_RADIUS          = intPreferencesKey("ui_corner_radius")      // 4/8/12/16/20 dp
    // Перевод
    val TRANSLATION_MODE          = stringPreferencesKey("translation_mode")   // OFF/OCR/DICTIONARY
    val TRANSLATION_SOURCE_LANGUAGE = stringPreferencesKey("translation_source_language") // AUTO/RU/EN/JA/ZH/KO/FR/IT/PL/TR/PT
    val TRANSLATION_TARGET_LANGUAGE = stringPreferencesKey("translation_target_language") // APP/RU/EN/JA/ZH/KO/FR/IT/PL/TR/PT
    val TRANSLATION_TRANSPORT     = stringPreferencesKey("translation_transport") // AUTO/OFFLINE/ONLINE
    val TRANSLATION_EXPLAIN_ENABLED = booleanPreferencesKey("translation_explain_enabled")
    val OCR_LANGUAGE              = stringPreferencesKey("ocr_language")       // JA/ZH/EN/KO/FR/IT/PL/TR/PT
    val OCR_DIALOGUES_ONLY        = booleanPreferencesKey("ocr_dialogues_only")
    val OCR_INCLUDE_SFX           = booleanPreferencesKey("ocr_include_sfx")
    val OCR_OVERLAY_OPACITY       = floatPreferencesKey("ocr_overlay_opacity")
    val OCR_OVERLAY_FONT_SCALE    = floatPreferencesKey("ocr_overlay_font_scale")
    val OCR_OVERLAY_STYLE         = stringPreferencesKey("ocr_overlay_style") // AUTO/LIGHT/DARK
    // Бэкап
    val AUTO_BACKUP_ENABLED       = booleanPreferencesKey("auto_backup_enabled")
    // Библиотека — размер плиток (80..200 dp, default 150)
    val LIBRARY_TILE_SIZE_DP      = intPreferencesKey("library_tile_size_dp")
    val LIBRARY_CARD_STYLE        = stringPreferencesKey("library_card_style") // COMPACT/BALANCED/SHOWCASE
    val LIBRARY_SHOW_PROGRESS     = booleanPreferencesKey("library_show_progress")
    val LIBRARY_COVER_SCALE       = stringPreferencesKey("library_cover_scale") // CROP/FIT
    val LIBRARY_BACKDROP_STRENGTH = floatPreferencesKey("library_backdrop_strength")
    val LIBRARY_RECENT_STRIP_POSITION = stringPreferencesKey("library_recent_strip_position") // TOP/BOTTOM/HIDDEN
    val LIBRARY_SORT_ORDER        = stringPreferencesKey("library_sort_order")
    val LIBRARY_GROUP_BY          = stringPreferencesKey("library_group_by")
    val LIBRARY_BACKGROUND_STYLE  = stringPreferencesKey("library_background_style") // AURORA_MIST/CINEMA_NOIR/PAPER_GRAIN/MANGA_INK/EINK_WASH/IMAGE
    val LIBRARY_BACKGROUND_IMAGE_URI = stringPreferencesKey("library_background_image_uri")
    val LIBRARY_BACKGROUND_VEIL   = floatPreferencesKey("library_background_veil")
    val LIBRARY_SHELF_STYLE       = stringPreferencesKey("library_shelf_style") // GLASS/OAK/WALNUT/STEEL/LACQUER/NEON/MINIMAL/NONE
    val LIBRARY_SHELF_DEPTH       = floatPreferencesKey("library_shelf_depth")
    val LIBRARY_CARD_SHADOW       = floatPreferencesKey("library_card_shadow")
    val LIBRARY_THUMBNAIL_MODE    = stringPreferencesKey("library_thumbnail_mode") // RECTANGLE/SQUARE
    val LIBRARY_GRAPHIC_COVER_STYLE = stringPreferencesKey("library_graphic_cover_style") // POSTER/INK/MINIMAL
    val LIBRARY_THEME_PRESET_1    = stringPreferencesKey("library_theme_preset_1")
    val LIBRARY_THEME_PRESET_2    = stringPreferencesKey("library_theme_preset_2")
    val LIBRARY_THEME_PRESET_3    = stringPreferencesKey("library_theme_preset_3")
    // Стиль звука перелистывания: PAPER / CRISP / SOFT
    val READER_PAGE_SOUND_STYLE   = stringPreferencesKey("reader_page_sound_style")
    // Звуки UI-элементов (переключатели, кнопки)
    val UI_SOUND_ENABLED          = booleanPreferencesKey("ui_sound_enabled")
    // Громкость UIFeedback (0.0 .. 1.0), default 0.6
    val UI_SOUNDS_VOLUME          = floatPreferencesKey("ui_sounds_volume")
    // Настройки текстового ридера (FB2 / EPUB)
    val TEXT_FONT_SIZE            = intPreferencesKey("text_font_size")      // 12..32, default 18
    val TEXT_COLOR_SCHEME         = stringPreferencesKey("text_color_scheme") // DAY/SEPIA/NIGHT
    val TEXT_FONT_FAMILY          = stringPreferencesKey("text_font_family")  // Georgia/Merriweather/…
    val TEXT_LINE_HEIGHT          = floatPreferencesKey("text_line_height")   // 1.0..3.0, default 1.8
    val TEXT_ALIGNMENT            = stringPreferencesKey("text_alignment")    // justify/left/right/center
    val TEXT_BOLD                 = booleanPreferencesKey("text_bold")        // false by default

    // Язык интерфейса: ru / en / ja / zh / ko
    val APP_LANGUAGE              = stringPreferencesKey("app_language")
    // Пресет ридера: CUSTOM / NOVEL / MANGA / NIGHT / STUDY
    val READER_PRESET             = stringPreferencesKey("reader_preset")

    // Пасхалка — «Читатель-мастер»
    val LIBRARY_SECRET_CAT_UNLOCKED = booleanPreferencesKey("library_secret_cat_unlocked")

    // Закладки — сохраняются отдельно для каждого комикса: "0,5,12,…"
    fun bookmarks(comicId: String) = stringPreferencesKey("bookmarks_$comicId")

    // Заметка/сохранённый перевод для конкретной страницы комикса
    fun translationNote(comicId: String, page: Int) = stringPreferencesKey("translation_note_${comicId}_$page")
}
