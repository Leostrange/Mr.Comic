package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
import org.junit.Assert.assertEquals
import org.junit.Test

class LibraryQuickActionsPolicyTest {

    @Test
    fun mrComicPrimaryQuickAction_defaultsToFilesForEmptyLibrary() {
        val action = mrComicPrimaryQuickAction(
            totalTitles = 0,
            bookmarkedTitles = 3,
            quotesCount = 5,
            goalState = DailyReadingGoalState()
        )

        assertEquals(MrComicQuickAction.FILES, action)
    }

    @Test
    fun mrComicPrimaryQuickAction_prefersBookmarksWhileDailyGoalIsOpen() {
        val action = mrComicPrimaryQuickAction(
            totalTitles = 8,
            bookmarkedTitles = 1,
            quotesCount = 4,
            goalState = DailyReadingGoalState(
                enabled = true,
                targetPages = 20,
                pagesReadToday = 7,
                pagesReadThisWeek = 7,
                weeklyTargetPages = 140
            )
        )

        assertEquals(MrComicQuickAction.BOOKMARKS, action)
    }

    @Test
    fun mrComicPrimaryQuickAction_prefersQuotesAfterWeeklyPlanIsClosed() {
        val action = mrComicPrimaryQuickAction(
            totalTitles = 8,
            bookmarkedTitles = 5,
            quotesCount = 1,
            goalState = DailyReadingGoalState(
                enabled = true,
                targetPages = 20,
                pagesReadToday = 20,
                pagesReadThisWeek = 140,
                weeklyTargetPages = 140
            )
        )

        assertEquals(MrComicQuickAction.QUOTES, action)
    }

    @Test
    fun mrComicPrimaryQuickAction_keepsLegacyPreferenceWithoutGoals() {
        val action = mrComicPrimaryQuickAction(
            totalTitles = 8,
            bookmarkedTitles = 2,
            quotesCount = 5,
            goalState = DailyReadingGoalState(enabled = false)
        )

        assertEquals(MrComicQuickAction.QUOTES, action)
    }
}
