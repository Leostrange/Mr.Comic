package io.leostrange.mrcomic.shared.analytics

/**
 * Platform-agnostic analytics tracking interface.
 */
interface ReadingAnalyticsTracker {
    fun track(event: AnalyticsEvent)
}

/** Base class for analytics events. */
sealed class AnalyticsEvent {
    abstract val name: String

    data class ReaderOpened(
        val comicId: String,
        val format: String,
        val startedAtMillis: Long
    ) : AnalyticsEvent() { override val name = "reader_opened" }

    data class ReaderClosed(
        val comicId: String,
        val format: String,
        val durationMillis: Long,
        val pagesRead: Int
    ) : AnalyticsEvent() { override val name = "reader_closed" }

    data class PageTurned(
        val comicId: String,
        val page: Int,
        val totalPages: Int
    ) : AnalyticsEvent() { override val name = "page_turned" }

    data class Custom(override val name: String, val properties: Map<String, Any> = emptyMap()) : AnalyticsEvent()
}
