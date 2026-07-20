package com.example.core.data.preferences

import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.intPreferencesKey
import androidx.datastore.preferences.core.longPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey

object PreferencesKeys {
    val APP_ONBOARDING_COMPLETED  = booleanPreferencesKey("app_onboarding_completed")
    val READING_MODE              = stringPreferencesKey("reading_mode")
    val READING_BRIGHTNESS        = floatPreferencesKey("reading_brightness")
    val READER_KEEP_SCREEN_ON     = booleanPreferencesKey("reader_keep_screen_on")
    val READER_SCREEN_TIMEOUT_MODE = stringPreferencesKey("reader_screen_timeout_mode")
    val READER_LANDSCAPE_SPREAD_ENABLED = booleanPreferencesKey("reader_landscape_spread_enabled")
    // Библиотека
    val LIBRARY_GRID_COLUMNS      = intPreferencesKey("library_grid_columns")   // 2..4, default 3
    val LIBRARY_VIEW_GRID         = booleanPreferencesKey("library_view_grid")  // true=grid, false=list
    val LIBRARY_VIEW_MODE         = stringPreferencesKey("library_view_mode")   // GRID/LIST/STRIPS
    // Ридер
    val READER_PRELOAD_PAGES      = intPreferencesKey("reader_preload_pages")   // 2..8, default 3
    val READER_IMMERSIVE_MODE     = booleanPreferencesKey("reader_immersive_mode")
    val READER_CHROME_AUTO_HIDE   = booleanPreferencesKey("reader_chrome_auto_hide")
    val READER_TOP_TOOLBAR_OPACITY = floatPreferencesKey("reader_top_toolbar_opacity")
    val READER_BOTTOM_TOOLBAR_OPACITY = floatPreferencesKey("reader_bottom_toolbar_opacity")
    val READER_TOOLBAR_BLUR       = floatPreferencesKey("reader_toolbar_blur")
    val READER_IMAGE_SCALE_MODE   = stringPreferencesKey("reader_image_scale_mode")
    val READER_PAGE_MARGIN_CROP_HORIZONTAL = floatPreferencesKey("reader_page_margin_crop_horizontal")
    val READER_PAGE_MARGIN_CROP_VERTICAL = floatPreferencesKey("reader_page_margin_crop_vertical")
    val APP_NAV_TRANSITION_STYLE  = stringPreferencesKey("app_nav_transition_style") // NONE/FADE/SLIDE/LIFT
    val READER_PAGE_ANIMATION     = stringPreferencesKey("reader_page_animation") // NONE/SLIDE/FADE
    val READER_PAGE_SOUND         = booleanPreferencesKey("reader_page_sound")    // page-flip sound
    val READER_EYE_REST_ENABLED   = booleanPreferencesKey("reader_eye_rest_enabled")
    val READER_EYE_REST_MINUTES   = intPreferencesKey("reader_eye_rest_minutes")
    val READER_TAP_ZONE_MODE      = stringPreferencesKey("reader_tap_zone_mode") // SIMPLE/CUSTOM
    val READER_TAP_ZONE_SWAP      = booleanPreferencesKey("reader_tap_zone_swap")
    val READER_VOLUME_KEYS_PAGING = booleanPreferencesKey("reader_volume_keys_paging")
    val READER_TTS_PROVIDER       = stringPreferencesKey("reader_tts_provider")
    val READER_TTS_SPEED          = floatPreferencesKey("reader_tts_speed")
    val READER_TTS_PITCH          = floatPreferencesKey("reader_tts_pitch")
    val READER_TTS_VOLUME         = floatPreferencesKey("reader_tts_volume")
    val READER_TTS_VOICE_NAME     = stringPreferencesKey("reader_tts_voice_name")
    val READER_TTS_SLEEP_TIMER_MODE = stringPreferencesKey("reader_tts_sleep_timer_mode")
    val READER_TAP_ZONE_LEFT      = stringPreferencesKey("reader_tap_zone_left")
    val READER_TAP_ZONE_CENTER    = stringPreferencesKey("reader_tap_zone_center")
    val READER_TAP_ZONE_RIGHT     = stringPreferencesKey("reader_tap_zone_right")
    val READER_HEADER_LEFT_SLOT   = stringPreferencesKey("reader_header_left_slot")
    val READER_HEADER_CENTER_SLOT = stringPreferencesKey("reader_header_center_slot")
    val READER_HEADER_RIGHT_SLOT  = stringPreferencesKey("reader_header_right_slot")
    val READER_FOOTER_LEFT_SLOT   = stringPreferencesKey("reader_footer_left_slot")
    val READER_FOOTER_CENTER_SLOT = stringPreferencesKey("reader_footer_center_slot")
    val READER_FOOTER_RIGHT_SLOT  = stringPreferencesKey("reader_footer_right_slot")
    val READER_HEADER_FOOTER_FONT_SIZE = intPreferencesKey("reader_header_footer_font_size")
    val READER_HEADER_FOOTER_VERTICAL_PADDING = intPreferencesKey("reader_header_footer_vertical_padding")
    val READER_HEADER_FOOTER_LEFT_PADDING = intPreferencesKey("reader_header_footer_left_padding")
    val READER_HEADER_FOOTER_RIGHT_PADDING = intPreferencesKey("reader_header_footer_right_padding")
    val READER_CHECKPOINT_COMIC_ID = stringPreferencesKey("reader_checkpoint_comic_id")
    val READER_CHECKPOINT_COMIC_TITLE = stringPreferencesKey("reader_checkpoint_comic_title")
    val READER_CHECKPOINT_CHAPTER_TITLE = stringPreferencesKey("reader_checkpoint_chapter_title")
    val READER_CHECKPOINT_PAGE    = intPreferencesKey("reader_checkpoint_page")
    val READER_CHECKPOINT_REACHED_AT = longPreferencesKey("reader_checkpoint_reached_at")
    val CONTINUE_MASCOT_RECAP_ENABLED = booleanPreferencesKey("continue_mascot_recap_enabled")
    val CONTINUE_MASCOT_RECAP_ENABLED_AT = longPreferencesKey("continue_mascot_recap_enabled_at")
    val MASCOT_QUEST_PROMPTS_ENABLED = booleanPreferencesKey("mascot_quest_prompts_enabled")
    val MASCOT_QUEST_PROMPTS_ENABLED_AT = longPreferencesKey("mascot_quest_prompts_enabled_at")
    val MASCOT_LAST_ACKNOWLEDGED_STAGE = stringPreferencesKey("mascot_last_acknowledged_stage")
    val MASCOT_LAST_QUEST_ACHIEVEMENT_ID = stringPreferencesKey("mascot_last_quest_achievement_id")
    val MASCOT_LAST_QUEST_ACTION = stringPreferencesKey("mascot_last_quest_action")
    val DAILY_READING_GOAL_ENABLED = booleanPreferencesKey("daily_reading_goal_enabled")
    val DAILY_READING_GOAL_ENABLED_AT = longPreferencesKey("daily_reading_goal_enabled_at")
    val DAILY_READING_GOAL_TARGET_PAGES = intPreferencesKey("daily_reading_goal_target_pages")
    val DAILY_READING_GOAL_PROGRESS_DAY = stringPreferencesKey("daily_reading_goal_progress_day")
    val DAILY_READING_GOAL_PROGRESS_PAGES = intPreferencesKey("daily_reading_goal_progress_pages")
    val DAILY_READING_WEEK_PROGRESS_WEEK = stringPreferencesKey("daily_reading_week_progress_week")
    val DAILY_READING_WEEK_PROGRESS_PAGES = intPreferencesKey("daily_reading_week_progress_pages")
    val DAILY_READING_WEEK_COMPLETED_DAYS = stringPreferencesKey("daily_reading_week_completed_days")
    val DAILY_READING_HISTORY = stringPreferencesKey("daily_reading_history")
    val DAILY_READING_STREAK_ENABLED = booleanPreferencesKey("daily_reading_streak_enabled")
    val DAILY_READING_STREAK_GRACE_ENABLED = booleanPreferencesKey("daily_reading_streak_grace_enabled")
    val DAILY_READING_STREAK_CURRENT = intPreferencesKey("daily_reading_streak_current")
    val DAILY_READING_STREAK_BEST = intPreferencesKey("daily_reading_streak_best")
    val DAILY_READING_STREAK_LAST_SUCCESS_DAY = stringPreferencesKey("daily_reading_streak_last_success_day")
    val DAILY_READING_STREAK_LAST_SUCCESS_AT = longPreferencesKey("daily_reading_streak_last_success_at")
    val DAILY_READING_STREAK_GRACE_USED_WEEK = stringPreferencesKey("daily_reading_streak_grace_used_week")
    // Кастомизация
    val UI_FONT_SCALE             = floatPreferencesKey("ui_font_scale")       // 0.85/1.0/1.15/1.3
    val UI_DENSITY_SCALE          = floatPreferencesKey("ui_density_scale")    // 0.9..1.1
    val UI_CORNER_RADIUS          = intPreferencesKey("ui_corner_radius")      // 4/8/12/16/20 dp
    val UI_REDUCED_MOTION         = booleanPreferencesKey("ui_reduced_motion")
    val UI_REDUCED_VISUAL_EFFECTS = booleanPreferencesKey("ui_reduced_visual_effects")
    val APP_THEME_PRESET_1        = stringPreferencesKey("app_theme_preset_1")
    val APP_THEME_PRESET_2        = stringPreferencesKey("app_theme_preset_2")
    val APP_THEME_PRESET_3        = stringPreferencesKey("app_theme_preset_3")
    // Перевод
    val TRANSLATION_MODE          = stringPreferencesKey("translation_mode")   // OFF/OCR/DICTIONARY
    val TRANSLATION_SOURCE_LANGUAGE = stringPreferencesKey("translation_source_language") // AUTO/RU/EN/JA/ZH/KO/FR/IT/PL/TR/PT
    val TRANSLATION_TARGET_LANGUAGE = stringPreferencesKey("translation_target_language") // APP/RU/EN/JA/ZH/KO/FR/IT/PL/TR/PT
    val TRANSLATION_TRANSPORT     = stringPreferencesKey("translation_transport") // AUTO/OFFLINE/ONLINE
    val TRANSLATION_EXPLAIN_ENABLED = booleanPreferencesKey("translation_explain_enabled")
    val TRANSLATION_EXPLAIN_PROVIDER = stringPreferencesKey("translation_explain_provider") // LOCAL/ONLINE
    val TRANSLATION_OPENROUTER_API_KEY = stringPreferencesKey("translation_openrouter_api_key")
    val TRANSLATION_OPENROUTER_MODEL = stringPreferencesKey("translation_openrouter_model")
    val TRANSLATION_DEEPL_API_KEY = stringPreferencesKey("translation_deepl_api_key")
    val TRANSLATION_DEEPL_USE_FREE = booleanPreferencesKey("translation_deepl_use_free")
    val TRANSLATION_GOOGLE_API_KEY = stringPreferencesKey("translation_google_api_key")
    val TRANSLATION_YANDEX_API_KEY = stringPreferencesKey("translation_yandex_api_key")
    val TRANSLATION_YANDEX_FOLDER_ID = stringPreferencesKey("translation_yandex_folder_id")
    val TRANSLATION_ONLINE_PROVIDER_ORDER = stringPreferencesKey("translation_online_provider_order")
    val CUSTOM_AI_PROVIDERS = stringPreferencesKey("custom_ai_providers")           // JSON array of configs
    val CUSTOM_AI_SELECTED_PROVIDER = stringPreferencesKey("custom_ai_selected_provider")
    val CUSTOM_AI_PROVIDER_ORDER = stringPreferencesKey("custom_ai_provider_order") // "id1,id2,..."
    val TRANSLATION_WIFI_ONLY = booleanPreferencesKey("translation_wifi_only")
    val TRANSLATION_DAILY_CHAR_LIMIT = intPreferencesKey("translation_daily_char_limit")
    val OCR_LANGUAGE              = stringPreferencesKey("ocr_language")       // JA/ZH/EN/KO/FR/IT/PL/TR/PT
    val OCR_DIALOGUES_ONLY        = booleanPreferencesKey("ocr_dialogues_only")
    val OCR_INCLUDE_SFX           = booleanPreferencesKey("ocr_include_sfx")
    val OCR_OVERLAY_OPACITY       = floatPreferencesKey("ocr_overlay_opacity")
    val OCR_OVERLAY_FONT_SCALE    = floatPreferencesKey("ocr_overlay_font_scale")
    val OCR_OVERLAY_STYLE         = stringPreferencesKey("ocr_overlay_style") // AUTO/LIGHT/DARK
    // Бэкап
    val AUTO_BACKUP_ENABLED       = booleanPreferencesKey("auto_backup_enabled")
    val SETTINGS_IMPORT_ERROR_PRESENTATION = stringPreferencesKey("settings_import_error_presentation") // TEXT/IMAGE
    val IMAGE_MESSAGE_POPUP_POSITION = stringPreferencesKey("image_message_popup_position")
    val IMAGE_MESSAGE_POPUP_FREE_MOVE = booleanPreferencesKey("image_message_popup_free_move")
    val IMAGE_MESSAGE_POPUP_SIZE_SCALE = floatPreferencesKey("image_message_popup_size_scale")
    val IMAGE_MESSAGE_POPUP_DURATION_SECONDS = intPreferencesKey("image_message_popup_duration_seconds")
    // Библиотека — размер плиток (80..200 dp, default 150)
    val LIBRARY_TILE_SIZE_DP      = intPreferencesKey("library_tile_size_dp")
    val LIBRARY_CARD_STYLE        = stringPreferencesKey("library_card_style") // COMPACT/BALANCED/SHOWCASE
    val LIBRARY_SHOW_PROGRESS     = booleanPreferencesKey("library_show_progress")
    val LIBRARY_SHOW_COVER_TITLES = booleanPreferencesKey("library_show_cover_titles")
    val LIBRARY_SHOW_STATUS_CHIPS = booleanPreferencesKey("library_show_status_chips")
    val LIBRARY_COVER_SCALE       = stringPreferencesKey("library_cover_scale") // CROP/FIT
    val LIBRARY_BACKDROP_STRENGTH = floatPreferencesKey("library_backdrop_strength")
    val LIBRARY_RECENT_STRIP_POSITION = stringPreferencesKey("library_recent_strip_position") // TOP/BOTTOM/HIDDEN
    val LIBRARY_SORT_ORDER        = stringPreferencesKey("library_sort_order")
    val LIBRARY_GROUP_BY          = stringPreferencesKey("library_group_by")
    val LIBRARY_BACKGROUND_STYLE  = stringPreferencesKey("library_background_style") // .../LIQUID_GLASS/MIDNIGHT_MICA/SUNSET_HAZE/IMAGE
    val LIBRARY_BACKGROUND_IMAGE_URI = stringPreferencesKey("library_background_image_uri")
    val LIBRARY_BACKGROUND_BLUR   = floatPreferencesKey("library_background_blur")
    val LIBRARY_BACKGROUND_VEIL   = floatPreferencesKey("library_background_veil")
    val LIBRARY_SHELF_STYLE       = stringPreferencesKey("library_shelf_style") // GLASS/FROST/ALUMINUM/OAK/.../FLOAT/NONE
    val LIBRARY_SHELF_DEPTH       = floatPreferencesKey("library_shelf_depth")
    val LIBRARY_CARD_SHADOW       = floatPreferencesKey("library_card_shadow")
    val LIBRARY_TITLE_SCALE       = floatPreferencesKey("library_title_scale")
    val LIBRARY_TITLE_LINES       = intPreferencesKey("library_title_lines")
    val LIBRARY_CARD_STROKE       = floatPreferencesKey("library_card_stroke")
    val LIBRARY_CARD_CORNER_RADIUS = intPreferencesKey("library_card_corner_radius")
    val LIBRARY_TITLE_PANEL_OPACITY = floatPreferencesKey("library_title_panel_opacity")
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
    val APP_VIDEO_SPLASH_ENABLED  = booleanPreferencesKey("app_video_splash_enabled")
    // Настройки текстового ридера (FB2 / EPUB)
    val TEXT_FONT_SIZE            = intPreferencesKey("text_font_size")      // 12..32, default 18
    val TEXT_COLOR_SCHEME         = stringPreferencesKey("text_color_scheme") // DAY/SEPIA/NIGHT
    val TEXT_FONT_FAMILY          = stringPreferencesKey("text_font_family")  // Georgia/Merriweather/…
    val TEXT_LINE_HEIGHT          = floatPreferencesKey("text_line_height")   // 1.0..3.0, default 1.8
    val TEXT_LETTER_SPACING       = floatPreferencesKey("text_letter_spacing") // 0.0..0.2 em
    val TEXT_WORD_SPACING         = floatPreferencesKey("text_word_spacing")   // 0.0..0.6 em
    val TEXT_PARAGRAPH_SPACING    = floatPreferencesKey("text_paragraph_spacing") // 0.1..1.2 em
    val TEXT_ALIGNMENT            = stringPreferencesKey("text_alignment")    // justify/left/right/center
    val TEXT_BOLD                 = booleanPreferencesKey("text_bold")        // false by default
    val TEXT_CUSTOM_TEXT_COLOR    = longPreferencesKey("text_custom_text_color")
    val TEXT_CUSTOM_BACKGROUND_COLOR = longPreferencesKey("text_custom_background_color")
    val TEXT_CUSTOM_ACCENT_COLOR  = longPreferencesKey("text_custom_accent_color")

    // Язык интерфейса: ru / en / ja / zh / ko
    val APP_LANGUAGE              = stringPreferencesKey("app_language")
    // Пресет ридера: CUSTOM / NOVEL / MANGA / NIGHT / STUDY
    val READER_PRESET             = stringPreferencesKey("reader_preset")
    val READER_STYLE_PRESET_LIST  = stringPreferencesKey("reader_style_preset_list")
    val READER_STYLE_PRESET_1     = stringPreferencesKey("reader_style_preset_1")
    val READER_STYLE_PRESET_2     = stringPreferencesKey("reader_style_preset_2")
    val READER_STYLE_PRESET_3     = stringPreferencesKey("reader_style_preset_3")
    val READER_CHROME_ICON_ORDER  = stringPreferencesKey("reader_chrome_icon_order")
    val READER_CHROME_SHOW_TOC    = booleanPreferencesKey("reader_chrome_show_toc")
    val READER_CHROME_SHOW_STYLE  = booleanPreferencesKey("reader_chrome_show_style")
    val READER_CHROME_SHOW_AUDIO  = booleanPreferencesKey("reader_chrome_show_audio")
    val READER_CHROME_SHOW_DIRECTION = booleanPreferencesKey("reader_chrome_show_direction")
    val READER_CHROME_SHOW_TRANSLATE = booleanPreferencesKey("reader_chrome_show_translate")
    val READER_CHROME_SHOW_BRIGHTNESS = booleanPreferencesKey("reader_chrome_show_brightness")

    // Последняя секция библиотеки (FILES/AUDIOBOOKS/BOOKMARKS/QUOTES/ACHIEVEMENTS)
    val LIBRARY_CONTENT_SECTION    = stringPreferencesKey("library_content_section")

    // Пасхалка — «Читатель-мастер»
    val LIBRARY_SECRET_CAT_UNLOCKED = booleanPreferencesKey("library_secret_cat_unlocked")

    // Закладки — сохраняются отдельно для каждого комикса: "0,5,12,…"
    fun bookmarks(comicId: String) = stringPreferencesKey("bookmarks_$comicId")

    // Выделения текста — JSON-массив, сохраняется отдельно для каждой книги.
    fun highlights(comicId: String) = stringPreferencesKey("highlights_$comicId")

    fun audiobookBookmarkChapter(audiobookId: String) =
        intPreferencesKey("audiobook_bookmark_${audiobookId}_chapter")

    fun audiobookBookmarkPosition(audiobookId: String) =
        longPreferencesKey("audiobook_bookmark_${audiobookId}_position")

    // Заметка/сохранённый перевод для конкретной страницы комикса
    fun translationNote(comicId: String, page: Int) = stringPreferencesKey("translation_note_${comicId}_$page")

    fun readerCheckpointComicId(slot: Int) = when (slot.coerceIn(1, 3)) {
        1 -> READER_CHECKPOINT_COMIC_ID
        else -> stringPreferencesKey("reader_checkpoint_${slot}_comic_id")
    }

    fun readerCheckpointComicTitle(slot: Int) = when (slot.coerceIn(1, 3)) {
        1 -> READER_CHECKPOINT_COMIC_TITLE
        else -> stringPreferencesKey("reader_checkpoint_${slot}_comic_title")
    }

    fun readerCheckpointChapterTitle(slot: Int) = when (slot.coerceIn(1, 3)) {
        1 -> READER_CHECKPOINT_CHAPTER_TITLE
        else -> stringPreferencesKey("reader_checkpoint_${slot}_chapter_title")
    }

    fun readerCheckpointPage(slot: Int) = when (slot.coerceIn(1, 3)) {
        1 -> READER_CHECKPOINT_PAGE
        else -> intPreferencesKey("reader_checkpoint_${slot}_page")
    }

    fun readerCheckpointReachedAt(slot: Int) = when (slot.coerceIn(1, 3)) {
        1 -> READER_CHECKPOINT_REACHED_AT
        else -> longPreferencesKey("reader_checkpoint_${slot}_reached_at")
    }
}
