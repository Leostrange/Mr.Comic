package io.leostrange.mrcomic.feature.library

import org.junit.Assert.assertEquals
import org.junit.Test

class LibraryStatusEmptyStateTextTest {

    @Test
    fun completedFilterEmptyStateExplainsThatNothingWasReadYet() {
        val copy = libraryStatusEmptyStateText(
            statusFilter = LibraryStatusFilter.COMPLETED,
            language = "ru"
        )

        assertEquals("Пока ничего не прочитано", copy.title)
        assertEquals("Показать все", copy.action)
    }

    @Test
    fun readingFilterEmptyStateReturnsToAllFiles() {
        val copy = libraryStatusEmptyStateText(
            statusFilter = LibraryStatusFilter.IN_PROGRESS,
            language = "en"
        )

        assertEquals("Nothing in progress", copy.title)
        assertEquals("Show all", copy.action)
    }

    @Test
    fun statusFilterBackClearsFileScopeBeforeFolderNavigation() {
        val action = resolveLibraryNavigateUpAction(
            showMrComicProgress = false,
            contentSection = LibraryContentSection.FILES,
            groupByMode = GroupByMode.FOLDER,
            currentFolderPath = "Books/Archive",
            statusFilter = LibraryStatusFilter.COMPLETED,
            formatFilter = LibraryFormatFilter.ALL
        )

        assertEquals(LibraryNavigateUpAction.SHOW_ALL_FILES, action)
    }

    @Test
    fun nestedFolderBackNavigatesUpWhenNoStatusFilterIsActive() {
        val action = resolveLibraryNavigateUpAction(
            showMrComicProgress = false,
            contentSection = LibraryContentSection.FILES,
            groupByMode = GroupByMode.FOLDER,
            currentFolderPath = "Books/Archive",
            statusFilter = LibraryStatusFilter.ALL,
            formatFilter = LibraryFormatFilter.ALL
        )

        assertEquals(LibraryNavigateUpAction.EXIT_FOLDER, action)
    }
}
