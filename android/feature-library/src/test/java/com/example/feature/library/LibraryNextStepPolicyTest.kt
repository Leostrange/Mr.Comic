package com.example.feature.library

import com.example.core.domain.analytics.DailyReadingGoalState
import org.junit.Assert.assertEquals
import org.junit.Test

class LibraryNextStepPolicyTest {

    @Test
    fun mrComicNextStepRoute_prefersRecentWhenAvailable() {
        val route = mrComicNextStepRoute(
            hasRecent = true,
            totalTitles = 8,
            bookmarkedTitles = 2,
            quotesCount = 4,
            goalState = DailyReadingGoalState(
                enabled = true,
                targetPages = 20,
                pagesReadToday = 6,
                pagesReadThisWeek = 20,
                weeklyTargetPages = 140
            )
        )

        assertEquals(MrComicNextStepRoute.RECENT, route)
    }

    @Test
    fun mrComicNextStepRoute_prefersBookmarksForOpenGoalWithoutRecent() {
        val route = mrComicNextStepRoute(
            hasRecent = false,
            totalTitles = 8,
            bookmarkedTitles = 1,
            quotesCount = 4,
            goalState = DailyReadingGoalState(
                enabled = true,
                targetPages = 20,
                pagesReadToday = 6,
                pagesReadThisWeek = 20,
                weeklyTargetPages = 140
            )
        )

        assertEquals(MrComicNextStepRoute.BOOKMARKS, route)
    }

    @Test
    fun mrComicNextStepRoute_prefersQuotesAfterWeeklyPlanWithoutRecent() {
        val route = mrComicNextStepRoute(
            hasRecent = false,
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

        assertEquals(MrComicNextStepRoute.QUOTES, route)
    }

    @Test
    fun mrComicNextStepRoute_fallsBackToFilesWhenNoLiveRoutesExist() {
        val route = mrComicNextStepRoute(
            hasRecent = false,
            totalTitles = 8,
            bookmarkedTitles = 0,
            quotesCount = 0,
            goalState = DailyReadingGoalState(
                enabled = true,
                targetPages = 20,
                pagesReadToday = 0,
                pagesReadThisWeek = 0,
                weeklyTargetPages = 140
            )
        )

        assertEquals(MrComicNextStepRoute.FILES, route)
    }
}
