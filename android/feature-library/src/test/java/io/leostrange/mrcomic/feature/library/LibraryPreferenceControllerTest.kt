package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.model.SortOrder
import io.leostrange.mrcomic.core.model.repository.CoverRepository
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import io.mockk.verify
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.test.TestScope
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class LibraryPreferenceControllerTest {

    private val preferences = mockk<UserPreferences>()
    private val libraryRepository = mockk<LibraryRepository>()
    private val quoteRepository = mockk<QuoteRepository>()
    private val coverRepository = mockk<CoverRepository>()
    private val dailyReadingGoalStore = mockk<DailyReadingGoalStore>()
    private val analyticsTracker = mockk<ReadingAnalyticsTracker>()

    private inner class Harness(scope: TestScope) {
        val uiState = MutableStateFlow(LibraryUiState())
        val searchQuery = MutableStateFlow("")
        var dataChanged = false

        val controller = LibraryPreferenceController(
            preferences = preferences,
            libraryRepository = libraryRepository,
            quoteRepository = quoteRepository,
            coverRepository = coverRepository,
            dailyReadingGoalStore = dailyReadingGoalStore,
            analyticsTracker = analyticsTracker,
            scope = scope,
            uiState = uiState,
            searchQuery = searchQuery,
            onDataChanged = { dataChanged = true },
            onRawData = { _, _ -> },
            onAllLibraryComics = {},
        )
    }

    private fun TestScope.harness() = Harness(this)

    @Test
    fun setSortOrderUpdatesStatePersistsAndReDerives() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val harness = harness()

        harness.controller.setSortOrder(SortOrder.TITLE_ASC)
        advanceUntilIdle()

        assertEquals(SortOrder.TITLE_ASC, harness.uiState.value.sortOrder)
        assertTrue(harness.dataChanged)
        coVerify(exactly = 1) { preferences.set(PreferencesKeys.LIBRARY_SORT_ORDER, SortOrder.TITLE_ASC.name) }
    }

    @Test
    fun setGroupByToNoneClearsFolderPath() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val harness = harness()
        harness.uiState.value = LibraryUiState(groupByMode = GroupByMode.FOLDER, currentFolderPath = "a/b")

        harness.controller.setGroupBy(GroupByMode.NONE)
        advanceUntilIdle()

        assertEquals(GroupByMode.NONE, harness.uiState.value.groupByMode)
        assertNull(harness.uiState.value.currentFolderPath)
        coVerify(exactly = 1) { preferences.set(PreferencesKeys.LIBRARY_GROUP_BY, GroupByMode.NONE.name) }
    }

    @Test
    fun dismissFolderSheetClearsSheetState() = runTest {
        val harness = harness()
        harness.uiState.value = LibraryUiState(
            folderSheetPath = "a/b",
            folderSheetItems = listOf(LibraryFolderItem("a/b", "b", null, 0, 0, 0L, null, 0L, 0f)),
            folderSheetBreadcrumbs = listOf(LibraryBreadcrumb("a", "a")),
        )

        harness.controller.dismissFolderSheet()

        assertNull(harness.uiState.value.folderSheetPath)
        assertTrue(harness.uiState.value.folderSheetItems.isEmpty())
        assertTrue(harness.uiState.value.folderSheetBreadcrumbs.isEmpty())
    }

    @Test
    fun showAllFilesResetsFiltersAndFolder() = runTest {
        val harness = harness()
        harness.uiState.value = LibraryUiState(
            contentSection = LibraryContentSection.QUOTES,
            statusFilter = LibraryStatusFilter.BOOKMARKED,
            formatFilter = LibraryFormatFilter.TEXT,
            currentFolderPath = "a/b",
        )

        harness.controller.showAllFiles()

        assertEquals(LibraryContentSection.FILES, harness.uiState.value.contentSection)
        assertEquals(LibraryStatusFilter.ALL, harness.uiState.value.statusFilter)
        assertEquals(LibraryFormatFilter.ALL, harness.uiState.value.formatFilter)
        assertNull(harness.uiState.value.currentFolderPath)
        assertTrue(harness.dataChanged)
    }

    @Test
    fun reportAchievementUnlockedTracksOncePerId() = runTest {
        every { analyticsTracker.track(any()) } returns Unit
        val harness = harness()

        harness.controller.reportAchievementUnlocked(achievementId = "a1", unlockedCount = 1, totalCount = 5)
        harness.controller.reportAchievementUnlocked(achievementId = "a1", unlockedCount = 2, totalCount = 5)

        verify(exactly = 1) {
            analyticsTracker.track(match<ReadingAnalyticsEvent> { it is ReadingAnalyticsEvent.AchievementUnlocked })
        }
    }

    @Test
    fun navigateUpFromFolderGoesToParent() = runTest {
        val harness = harness()
        harness.uiState.value = LibraryUiState(currentFolderPath = "a/b")

        harness.controller.navigateUpFromFolder()

        assertEquals("a", harness.uiState.value.currentFolderPath)
        assertTrue(harness.dataChanged)
    }

    @Test
    fun setTileSizeDpClampsToSupportedRange() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val harness = harness()

        harness.controller.setTileSizeDp(999)
        assertEquals(200, harness.uiState.value.tileSizeDp)

        harness.controller.setTileSizeDp(10)
        advanceUntilIdle()

        assertEquals(80, harness.uiState.value.tileSizeDp)
    }

    @Test
    fun searchUpdatesQueryAndState() = runTest {
        val harness = harness()

        harness.controller.search("Batman")

        assertEquals("Batman", harness.searchQuery.value)
        assertEquals("Batman", harness.uiState.value.searchQuery)
    }
}
