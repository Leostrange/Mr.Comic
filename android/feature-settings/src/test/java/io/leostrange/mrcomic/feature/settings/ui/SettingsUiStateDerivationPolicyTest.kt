package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.model.Comic
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class SettingsUiStateDerivationPolicyTest {

    @Test
    fun `daily reading goal projection preserves all goal metrics`() {
        val state = SettingsUiState().withDailyReadingGoal(
            DailyReadingGoalState(
                enabled = true,
                targetPages = 30,
                pagesReadToday = 12,
                pagesReadThisWeek = 87,
                weeklyTargetPages = 210,
                completedDaysThisWeek = 3,
                streakEnabled = true,
                graceEnabled = false,
                currentStreak = 5,
                bestStreak = 11,
                graceDaysRemainingThisWeek = 0,
                recentActivity = listOf(
                    DailyReadingCalendarDay(dayKey = "2026-08-09", pagesRead = 12, goalCompleted = false),
                    DailyReadingCalendarDay(dayKey = "2026-08-10", pagesRead = 0, goalCompleted = false),
                    DailyReadingCalendarDay(dayKey = "2026-08-11", pagesRead = 30, goalCompleted = true)
                )
            )
        )

        assertTrue(state.dailyReadingGoalEnabled)
        assertEquals(30, state.dailyReadingGoalTargetPages)
        assertEquals(12, state.dailyReadingGoalProgressPages)
        assertEquals(87, state.dailyReadingWeekProgressPages)
        assertEquals(210, state.dailyReadingWeekTargetPages)
        assertEquals(3, state.dailyReadingWeekCompletedDays)
        assertEquals(2, state.dailyReadingRecentActiveDays)
        assertEquals(1, state.dailyReadingRecentGoalDays)
        assertTrue(state.dailyReadingStreakEnabled)
        assertFalse(state.dailyReadingGraceEnabled)
        assertEquals(5, state.dailyReadingCurrentStreak)
        assertEquals(11, state.dailyReadingBestStreak)
        assertEquals(0, state.dailyReadingGraceDaysRemainingThisWeek)
    }

    @Test
    fun `library stats projection retains raw metadata including nulls`() {
        val state = SettingsUiState().withLibraryStats(
            listOf(
                Comic(author = "Author A", genre = "Fantasy", isCompleted = true),
                Comic(author = null, genre = "Drama", isBookmarked = true),
                Comic(author = "Author B", genre = null, isCompleted = true, isBookmarked = true)
            )
        )

        assertEquals(3, state.totalComics)
        assertEquals(2, state.completedComics)
        assertEquals(2, state.bookmarkedComics)
        assertEquals(listOf("Author A", null, "Author B"), state.rawAuthors)
        assertEquals(listOf("Fantasy", "Drama", null), state.rawGenres)
    }
}
