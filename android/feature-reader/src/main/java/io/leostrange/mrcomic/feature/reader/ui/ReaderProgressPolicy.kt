package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.feature.reader.domain.progress.ReaderPositionCodec

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

/** Page progress and structured cursor are deduplicated independently. */
internal fun isSamePersistedPage(
    marker: PersistedProgressMarker?,
    comicId: String?,
    page: Int
): Boolean = marker != null &&
    comicId != null &&
    marker.comicId == comicId &&
    marker.page == page

/** Compares the restorable cursor while ignoring write-time metadata. */
internal fun isSamePersistedPosition(
    firstJson: String?,
    secondJson: String?
): Boolean {
    if (firstJson == secondJson) return true
    val first = ReaderPositionCodec.decode(firstJson) ?: return false
    val second = ReaderPositionCodec.decode(secondJson) ?: return false
    return first.copy(updatedAtMillis = 0L) == second.copy(updatedAtMillis = 0L)
}

/** A cursor-only write must not claim that the legacy page row was updated. */
internal fun persistedPageMarkerAfterFlush(
    current: PersistedProgressMarker?,
    pending: PendingProgressSave
): PersistedProgressMarker? = if (pending.positionOnly) {
    current
} else {
    PersistedProgressMarker(
        comicId = pending.comicId,
        page = pending.page,
        positionJson = pending.positionJson
    )
}
