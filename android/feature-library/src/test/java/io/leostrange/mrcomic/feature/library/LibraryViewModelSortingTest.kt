package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.SortOrder
import org.junit.Assert.assertEquals
import org.junit.Test

class LibraryViewModelSortingTest {

    @Test
    fun progressSortUsesDisplayProgressThenTitleAsTieBreaker() {
        val comics = listOf(
            Comic(id = "zeta", title = "Zeta", format = ComicFormat.EPUB, readingProgress = 0.5f, pageCount = 10, currentPage = 5),
            Comic(id = "alpha", title = "Alpha", format = ComicFormat.EPUB, readingProgress = 0.5f, pageCount = 10, currentPage = 5),
            Comic(id = "new", title = "New", format = ComicFormat.EPUB)
        )

        val ascending = sortLibraryComics(comics, SortOrder.PROGRESS_ASC)
        val descending = sortLibraryComics(comics, SortOrder.PROGRESS_DESC)

        assertEquals(listOf("new", "alpha", "zeta"), ascending.map { it.id })
        assertEquals(listOf("alpha", "zeta", "new"), descending.map { it.id })
    }

    @Test
    fun folderSortTrimsWhitespaceAndSlashes() {
        val comics = listOf(
            Comic(id = "z", folderId = " /Zeta/ "),
            Comic(id = "a", folderId = " /alpha/ "),
            Comic(id = "root", folderId = null)
        )

        assertEquals(
            listOf("root", "a", "z"),
            sortLibraryComics(comics, SortOrder.FOLDER_ASC).map { it.id }
        )
        assertEquals(
            listOf("z", "a", "root"),
            sortLibraryComics(comics, SortOrder.FOLDER_DESC).map { it.id }
        )
    }
}
