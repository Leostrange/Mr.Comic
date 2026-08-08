package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.SortOrder
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class LibraryContentPipelineTest {

    private val pipeline = LibraryContentPipeline()

    private fun comic(
        id: String,
        title: String = id,
        folderId: String? = null,
        series: String? = null,
        isBookmarked: Boolean = false,
        isCompleted: Boolean = false,
        isReading: Boolean = false,
        lastReadDate: Long? = null,
    ) = Comic(
        id = id,
        title = title,
        folderId = folderId,
        series = series,
        isBookmarked = isBookmarked,
        isCompleted = isCompleted,
        lastReadDate = lastReadDate,
        // A comic is "in progress" when it has a stable reading signal without
        // reaching the end: lastReadDate set + mid-document progress.
        readingProgress = if (isReading) 0.5f else 0f,
        pageCount = if (isReading) 10 else 0,
        currentPage = if (isReading) 5 else 0,
    )

    @Test
    fun folderGroupingBuildsFolderAndComicItems() {
        val comics = listOf(
            comic("c1", folderId = "a/b"),
            comic("c2", folderId = "a/c"),
            comic("c3", folderId = "other"),
        )
        val state = LibraryUiState(groupByMode = GroupByMode.FOLDER)

        val derived = pipeline.derive(state, comics, emptyList(), comics)

        assertEquals(2, derived.visibleFolderCount)
        assertEquals(0, derived.visibleComicCount)
        assertTrue(derived.displayItems.any { it is LibraryFolderItem && it.path == "a" })
        assertTrue(derived.displayItems.any { it is LibraryFolderItem && it.path == "other" })
        assertNull(derived.currentFolderPath)
    }

    @Test
    fun bookmarkFilterAndTitleSortAreApplied() {
        val comics = listOf(
            comic("zeta", title = "Zeta", isBookmarked = true),
            comic("alpha", title = "Alpha", isBookmarked = true),
            comic("plain", title = "Plain"),
        )
        val state = LibraryUiState(
            statusFilter = LibraryStatusFilter.BOOKMARKED,
            sortOrder = SortOrder.TITLE_ASC,
        )

        val derived = pipeline.derive(state, comics, emptyList(), comics)

        assertEquals(listOf("alpha", "zeta"), derived.comics.map { it.id })
        assertEquals(listOf("alpha", "zeta"), derived.bookmarkedComics.map { it.id })
        assertEquals(2, derived.totalComicCount)
    }

    @Test
    fun seriesGroupingBuildsSectionsWithFallbackLabel() {
        val comics = listOf(
            comic("s1a", series = "S1"),
            comic("s1b", series = "S1"),
            comic("no-series"),
        )
        val state = LibraryUiState(
            groupByMode = GroupByMode.SERIES,
            appLanguage = "ru",
            sortOrder = SortOrder.TITLE_ASC,
        )

        val derived = pipeline.derive(state, comics, emptyList(), comics)

        val sections = derived.groupSections.associate { it.first to it.second.map { c -> c.id } }
        assertEquals(listOf("s1a", "s1b"), sections["S1"])
        assertEquals(listOf("no-series"), sections["Без серии"])
    }

    @Test
    fun statisticsReflectRawAndFilteredLists() {
        val comics = listOf(
            comic("done", isCompleted = true, isReading = true, lastReadDate = 100L),
            comic("reading", isReading = true, lastReadDate = 200L),
            comic("bookmarked", isBookmarked = true),
        )
        val state = LibraryUiState()

        val derived = pipeline.derive(state, comics, emptyList(), comics)

        assertEquals(3, derived.totalComicCount)
        assertEquals(1, derived.readingComicCount)
        assertEquals(1, derived.completedComicCount)
        assertEquals(1, derived.bookmarkedComicCount)
        assertEquals(listOf("reading"), derived.recentlyRead.map { it.id })
    }

    @Test
    fun folderSheetPathIsDerivedIndependently() {
        val comics = listOf(
            comic("c1", folderId = "x/y"),
            comic("c2", folderId = "x/z"),
        )
        val state = LibraryUiState(
            groupByMode = GroupByMode.FOLDER,
            folderSheetPath = "x",
        )

        val derived = pipeline.derive(state, comics, emptyList(), comics)

        assertEquals("x", derived.folderSheetPath)
        assertEquals(2, derived.folderSheetItems.size)
        assertEquals(2, derived.folderSheetBreadcrumbs.size)
    }

    @Test
    fun nonFolderGroupingClearsFolderPaths() {
        val comics = listOf(
            comic("c1", folderId = "a/b"),
            comic("c2"),
        )
        val state = LibraryUiState(groupByMode = GroupByMode.NONE, currentFolderPath = "a/b")

        val derived = pipeline.derive(state, comics, emptyList(), comics)

        assertNull(derived.currentFolderPath)
        assertNull(derived.folderSheetPath)
        assertEquals(2, derived.displayItems.size)
    }

    @Test
    fun recentlyReadIsLimitedToTen() {
        val comics = (1..12).map { comic("c$it", isReading = true, lastReadDate = it.toLong()) }
        val state = LibraryUiState()

        val derived = pipeline.derive(state, comics, emptyList(), comics)

        assertEquals(10, derived.recentlyRead.size)
        assertEquals("c12", derived.recentlyRead.first().id)
        assertEquals("c3", derived.recentlyRead.last().id)
    }
}
