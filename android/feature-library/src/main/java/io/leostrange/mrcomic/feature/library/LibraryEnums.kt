package io.leostrange.mrcomic.feature.library

/**
 * Library screen enums.
 *
 * Extracted from LibraryScreen to reduce its size.
 * Pure enums with no dependencies.
 */

internal enum class MrComicQuestType {
    START_TITLE, FINISH_TITLE, FINISH_SERIES,
    READ_COLLECTION, PIN_ROUTE, FIND_SECRET
}

internal enum class MrComicDiscoveryAction {
    OPEN_RECENT, OPEN_FILES, OPEN_SERIES, OPEN_COLLECTION
}

internal enum class MrComicQuestPriorityReason {
    LIVE_ROUTE, DAILY_PUSH, WEEKLY_PUSH, STREAK_SUPPORT,
    WEEKLY_RELAXED, SERIES_FOCUS, COLLECTION_PULL,
    SHELF_BUILD, ACHIEVEMENT_FOCUS
}

internal enum class MrComicQuickAction {
    FILES, BOOKMARKS, QUOTES
}

internal enum class MrComicNextStepRoute {
    RECENT, FILES, BOOKMARKS, QUOTES
}

internal enum class LibraryNavigateUpAction {
    DISMISS_PROGRESS, SHOW_FILES_SECTION, SHOW_ALL_FILES,
    CLEAR_FORMAT_FILTER, EXIT_FOLDER, NONE
}

internal enum class MrComicReadingCalendarTone {
    READY, IN_MOTION, STREAK, DAILY_DONE, WEEKLY_DONE
}

internal enum class MrComicMetric {
    TITLES, COMPLETED, BOOKMARKS, QUOTES
}
