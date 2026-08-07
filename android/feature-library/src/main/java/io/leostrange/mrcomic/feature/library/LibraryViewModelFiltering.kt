package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.isReadCompleted
import io.leostrange.mrcomic.core.model.isReadingInProgress
import io.leostrange.mrcomic.core.model.isTextReadingFormat

internal fun filterLibraryComics(
    comics: List<Comic>,
    statusFilter: LibraryStatusFilter,
    formatFilter: LibraryFormatFilter
): List<Comic> {
    val byStatus = when (statusFilter) {
        LibraryStatusFilter.ALL -> comics
        LibraryStatusFilter.BOOKMARKED -> comics.filter { it.isBookmarked }
        LibraryStatusFilter.IN_PROGRESS -> comics.filter { it.isReadingInProgress() }
        LibraryStatusFilter.COMPLETED -> comics.filter { it.isReadCompleted() }
    }
    return when (formatFilter) {
        LibraryFormatFilter.ALL -> byStatus
        LibraryFormatFilter.IMAGE -> byStatus.filter {
            it.format in setOf(
                ComicFormat.CBZ,
                ComicFormat.CBR,
                ComicFormat.ZIP,
                ComicFormat.RAR,
                ComicFormat.SEVENZ,
                ComicFormat.TAR,
                ComicFormat.FOLDER
            )
        }
        LibraryFormatFilter.PDF -> byStatus.filter { it.format == ComicFormat.PDF }
        LibraryFormatFilter.TEXT -> byStatus.filter { it.format.isTextReadingFormat() }
    }
}
