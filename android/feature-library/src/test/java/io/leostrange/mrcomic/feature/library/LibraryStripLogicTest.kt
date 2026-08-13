package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.model.Audiobook
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.SortOrder
import org.junit.Assert.assertEquals
import org.junit.Test

class LibraryStripLogicTest {

    @Test
    fun filterAndSortAudiobooksKeepsOnlyStartedBooksAndOrdersProgressDescending() {
        val sorted = filterAndSortAudiobooks(
            audiobooks = listOf(
                audiobook(id = "unstarted"),
                audiobook(id = "chapter-two", chapter = 2, positionMs = 1L),
                audiobook(id = "chapter-one-late", chapter = 1, positionMs = 9L),
                audiobook(id = "chapter-one-early", chapter = 1, positionMs = 4L),
            ),
            statusFilter = LibraryStatusFilter.IN_PROGRESS,
            sortOrder = SortOrder.PROGRESS_DESC
        )

        assertEquals(
            listOf("chapter-two", "chapter-one-late", "chapter-one-early"),
            sorted.map { it.id }
        )
    }

    @Test
    fun filterAndSortAudiobooksHasNoBookmarkOrCompletedStates() {
        val audiobooks = listOf(audiobook(id = "started", positionMs = 1L))

        assertEquals(
            emptyList<Audiobook>(),
            filterAndSortAudiobooks(audiobooks, LibraryStatusFilter.BOOKMARKED, SortOrder.TITLE_ASC)
        )
        assertEquals(
            emptyList<Audiobook>(),
            filterAndSortAudiobooks(audiobooks, LibraryStatusFilter.COMPLETED, SortOrder.TITLE_ASC)
        )
    }

    @Test
    fun buildLibraryStripSectionsSeparatesFoldersGraphicBooksAndAudiobooks() {
        val sections = buildLibraryStripSections(
            items = listOf(
                folder("folder"),
                LibraryComicItem(comic("graphic", ComicFormat.CBZ)),
                LibraryComicItem(comic("book", ComicFormat.EPUB)),
            ),
            appLanguage = "en",
            audiobooks = listOf(audiobook("audio"))
        )

        assertEquals(listOf("folders", "graphics", "books", "audiobooks"), sections.map { it.key })
        assertEquals(listOf("folder"), sections[0].folders.map { it.path })
        assertEquals(listOf("graphic"), sections[1].comics.map { it.id })
        assertEquals(listOf("book"), sections[2].comics.map { it.id })
        assertEquals(listOf("audio"), sections[3].audiobooks.map { it.id })
    }

    @Test
    fun nextLibraryViewModeCyclesThroughAllDisplayModes() {
        assertEquals(LibraryViewMode.LIST, nextLibraryViewMode(LibraryViewMode.GRID))
        assertEquals(LibraryViewMode.STRIPS, nextLibraryViewMode(LibraryViewMode.LIST))
        assertEquals(LibraryViewMode.GRID, nextLibraryViewMode(LibraryViewMode.STRIPS))
    }

    private fun audiobook(
        id: String,
        chapter: Int = 0,
        positionMs: Long = 0L
    ) = Audiobook(id = id, lastChapterIndex = chapter, lastPositionMs = positionMs)

    private fun comic(id: String, format: ComicFormat) = Comic(id = id, format = format)

    private fun folder(path: String) = LibraryFolderItem(
        path = path,
        title = path,
        coverPath = null,
        fileCount = 0,
        subfolderCount = 0,
        newestAdded = 0L,
        lastReadDate = null,
        totalSize = 0L,
        progress = 0f
    )
}
