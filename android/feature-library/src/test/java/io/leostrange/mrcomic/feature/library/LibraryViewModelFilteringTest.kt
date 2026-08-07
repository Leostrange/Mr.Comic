package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import org.junit.Assert.assertEquals
import org.junit.Test

class LibraryViewModelFilteringTest {

    @Test
    fun imageFilterKeepsArchiveAndFolderFormatsOnly() {
        val comics = listOf(
            Comic(id = "cbz", format = ComicFormat.CBZ),
            Comic(id = "rar", format = ComicFormat.RAR),
            Comic(id = "folder", format = ComicFormat.FOLDER),
            Comic(id = "epub", format = ComicFormat.EPUB),
            Comic(id = "pdf", format = ComicFormat.PDF)
        )

        val filtered = filterLibraryComics(
            comics = comics,
            statusFilter = LibraryStatusFilter.ALL,
            formatFilter = LibraryFormatFilter.IMAGE
        )

        assertEquals(listOf("cbz", "rar", "folder"), filtered.map { it.id })
    }

    @Test
    fun completedFilterIsAppliedBeforeFormatFilter() {
        val comics = listOf(
            Comic(id = "completed", format = ComicFormat.EPUB, isCompleted = true),
            Comic(id = "new", format = ComicFormat.EPUB),
            Comic(id = "completed-pdf", format = ComicFormat.PDF, isCompleted = true)
        )

        val filtered = filterLibraryComics(
            comics = comics,
            statusFilter = LibraryStatusFilter.COMPLETED,
            formatFilter = LibraryFormatFilter.TEXT
        )

        assertEquals(listOf("completed"), filtered.map { it.id })
    }
}
