package io.leostrange.mrcomic.core.interfaces.preferences

import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.intPreferencesKey
import androidx.datastore.preferences.core.longPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey

/**
 * Preference keys used by core-domain modules.
 * Subset of the full PreferencesKeys from core-data.
 */
object PreferencesKeys {
    // Reader checkpoints
    val READER_CHECKPOINT_COMIC_ID = stringPreferencesKey("reader_checkpoint_comic_id")
    val READER_CHECKPOINT_COMIC_TITLE = stringPreferencesKey("reader_checkpoint_comic_title")
    val READER_CHECKPOINT_CHAPTER_TITLE = stringPreferencesKey("reader_checkpoint_chapter_title")
    val READER_CHECKPOINT_PAGE = intPreferencesKey("reader_checkpoint_page")
    val READER_CHECKPOINT_REACHED_AT = longPreferencesKey("reader_checkpoint_reached_at")

    // Daily reading goal
    val DAILY_READING_GOAL_ENABLED = booleanPreferencesKey("daily_reading_goal_enabled")
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

    // Reader checkpoint functions
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
