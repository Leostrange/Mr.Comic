package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ComicFormat

/** Guards persistence and completion until a reader position is meaningful. */
internal object ReaderProgressPolicy {

    /**
     * EPUB stores an absolute visual page accumulated across spine sections. Every other
     * format already reports a reader-global page and must retain that exact coordinate.
     */
    fun pageForPersistence(
        format: ComicFormat,
        readerPage: Int,
        epubAbsolutePage: Int
    ): Int = if (format == ComicFormat.EPUB) epubAbsolutePage else readerPage

    fun shouldPersist(
        totalPages: Int,
        isHeavyReflowable: Boolean,
        isEpub: Boolean,
        epubAccumulatedPages: Int,
        paginatedSectionCount: Int
    ): Boolean {
        if (totalPages <= 1 && isHeavyReflowable) return false
        if (!isEpub) return true
        return epubAccumulatedPages > 0 && paginatedSectionCount >= 2
    }

    fun shouldComplete(
        reachedLastPage: Boolean,
        currentComicIdMatches: Boolean,
        alreadyCompleted: Boolean,
        countsTowardReadingProgress: Boolean,
        sessionManualPageTurns: Int
    ): Boolean {
        if (!reachedLastPage || !currentComicIdMatches || alreadyCompleted) return false
        return countsTowardReadingProgress || sessionManualPageTurns > 0
    }
}
