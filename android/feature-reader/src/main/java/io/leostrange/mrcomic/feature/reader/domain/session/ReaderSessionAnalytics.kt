package io.leostrange.mrcomic.feature.reader.domain.session

import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent

internal fun buildReaderClosedAnalyticsEvent(
    comicId: String,
    format: String,
    totalPages: Int,
    readingMode: String,
    startedAtMillis: Long,
    finishedAtMillis: Long,
    sessionMetrics: ReaderClosedSessionMetrics
): ReadingAnalyticsEvent.ReaderClosed = ReadingAnalyticsEvent.ReaderClosed(
    comicId = comicId,
    format = format,
    totalPages = totalPages,
    endPage = sessionMetrics.endPage,
    readingMode = readingMode,
    startedAtMillis = startedAtMillis,
    durationMs = (finishedAtMillis - startedAtMillis).coerceAtLeast(0L),
    completed = sessionMetrics.completed,
    manualPageTurns = sessionMetrics.manualPageTurns,
    chapterTransitions = sessionMetrics.chapterTransitions
)
