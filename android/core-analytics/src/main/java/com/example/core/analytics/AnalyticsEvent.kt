package com.example.core.analytics

/**
 * Базовый класс для всех событий аналитики
 */
sealed class AnalyticsEvent(
    val eventName: String,
    val parameters: Map<String, Any> = emptyMap()
) {
    // Навигация
    object AppLaunched : AnalyticsEvent("app_launched")
    object AppClosed : AnalyticsEvent("app_closed")
    data class ScreenViewed(val screenName: String) : AnalyticsEvent(
        "screen_viewed",
        mapOf("screen_name" to screenName)
    )

    // Библиотека комиксов
    object LibraryOpened : AnalyticsEvent("library_opened")
    data class ComicAdded(val format: String, val fileSize: Long?) : AnalyticsEvent(
        "comic_added",
        buildMap {
            put("format", format)
            fileSize?.let { put("file_size", it) }
        }
    )
    data class ComicDeleted(val format: String) : AnalyticsEvent(
        "comic_deleted",
        mapOf("format" to format)
    )
    data class ComicOpened(val format: String, val totalPages: Int) : AnalyticsEvent(
        "comic_opened",
        mapOf(
            "format" to format,
            "total_pages" to totalPages
        )
    )

    // Чтение
    data class ReadingStarted(val comicId: String, val format: String) : AnalyticsEvent(
        "reading_started",
        mapOf(
            "comic_id" to comicId,
            "format" to format
        )
    )
    data class ReadingFinished(
        val comicId: String,
        val pagesRead: Int,
        val totalPages: Int,
        val sessionDuration: Long
    ) : AnalyticsEvent(
        "reading_finished",
        mapOf(
            "comic_id" to comicId,
            "pages_read" to pagesRead,
            "total_pages" to totalPages,
            "session_duration" to sessionDuration,
            "completion_rate" to (pagesRead.toDouble() / totalPages.toDouble())
        )
    )
    data class PageTurned(val pageNumber: Int, val direction: String) : AnalyticsEvent(
        "page_turned",
        mapOf(
            "page_number" to pageNumber,
            "direction" to direction
        )
    )

    // Настройки
    data class ThemeChanged(val themeName: String) : AnalyticsEvent(
        "theme_changed",
        mapOf("theme_name" to themeName)
    )
    data class ReadingModeChanged(val mode: String) : AnalyticsEvent(
        "reading_mode_changed",
        mapOf("mode" to mode)
    )
    data class SettingChanged(val settingName: String, val value: Any) : AnalyticsEvent(
        "setting_changed",
        mapOf(
            "setting_name" to settingName,
            "value" to value.toString()
        )
    )

    // OCR и перевод
    data class OcrStarted(val language: String) : AnalyticsEvent(
        "ocr_started",
        mapOf("language" to language)
    )
    data class OcrCompleted(val language: String, val success: Boolean, val duration: Long) : AnalyticsEvent(
        "ocr_completed",
        mapOf(
            "language" to language,
            "success" to success,
            "duration" to duration
        )
    )
    data class TranslationRequested(val fromLanguage: String, val toLanguage: String) : AnalyticsEvent(
        "translation_requested",
        mapOf(
            "from_language" to fromLanguage,
            "to_language" to toLanguage
        )
    )

    // Ошибки
    data class Error(
        val errorType: String,
        val errorMessage: String,
        val stackTrace: String? = null
    ) : AnalyticsEvent(
        "error_occurred",
        buildMap {
            put("error_type", errorType)
            put("error_message", errorMessage)
            stackTrace?.let { put("stack_trace", it) }
        }
    )

    // Производительность
    data class PerformanceMetric(
        val metricName: String,
        val value: Double,
        val unit: String
    ) : AnalyticsEvent(
        "performance_metric",
        mapOf(
            "metric_name" to metricName,
            "value" to value,
            "unit" to unit
        )
    )
}