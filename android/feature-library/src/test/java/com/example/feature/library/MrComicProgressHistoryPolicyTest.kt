package com.example.feature.library

import com.example.core.domain.analytics.DailyReadingCalendarDay
import com.example.core.domain.analytics.DailyReadingGoalState
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class MrComicProgressHistoryPolicyTest {

    @Test
    fun historyRange_last7_prefersRecentActivityWindow() {
        val recent = (1..7).map { day ->
            historyDay(day = day, pages = day)
        }
        val history = (1..12).map { day ->
            historyDay(day = day, pages = day * 10)
        }

        val selected = mrComicProgressHistoryDays(
            goalState = DailyReadingGoalState(
                historyActivity = history,
                recentActivity = recent
            ),
            range = MrComicProgressHistoryRange.LAST_7
        )

        assertEquals(recent, selected)
    }

    @Test
    fun historyRange_last30_usesTrailingHistoryWindow() {
        val history = (1..40).map { day ->
            historyDay(day = day, pages = day)
        }

        val selected = mrComicProgressHistoryDays(
            goalState = DailyReadingGoalState(historyActivity = history),
            range = MrComicProgressHistoryRange.LAST_30
        )

        assertEquals(history.takeLast(30), selected)
    }

    @Test
    fun historyRange_all_keepsFullHistoryWindow() {
        val history = (1..18).map { day ->
            historyDay(day = day, pages = day)
        }

        val selected = mrComicProgressHistoryDays(
            goalState = DailyReadingGoalState(historyActivity = history),
            range = MrComicProgressHistoryRange.ALL
        )

        assertEquals(history, selected)
    }

    @Test
    fun historySummary_countsPagesMinutesCheckpointsAndActiveDays() {
        val summary = summarizeMrComicProgressHistory(
            listOf(
                historyDay(day = 1, pages = 12, xp = 72, minutes = 8, checkpoints = 0),
                historyDay(day = 2, pages = 0, minutes = 14, checkpoints = 0),
                historyDay(day = 3, pages = 0, minutes = 0, checkpoints = 2),
                historyDay(day = 4, pages = 0, minutes = 0, checkpoints = 0)
            )
        )

        assertEquals(12, summary.pagesRead)
        assertEquals(72, summary.xpEarned)
        assertEquals(22, summary.minutesRead)
        assertEquals(2, summary.completedCheckpoints)
        assertEquals(3, summary.activeDays)
    }

    @Test
    fun meaningfulHistory_isFalseForFullyEmptySummary() {
        assertFalse(
            hasMrComicMeaningfulHistory(
                MrComicProgressHistorySummary(
                    pagesRead = 0,
                    xpEarned = 0,
                    minutesRead = 0,
                    completedCheckpoints = 0,
                    activeDays = 0
                )
            )
        )
        assertTrue(
            hasMrComicMeaningfulHistory(
                MrComicProgressHistorySummary(
                    pagesRead = 0,
                    xpEarned = 0,
                    minutesRead = 5,
                    completedCheckpoints = 0,
                    activeDays = 1
                )
            )
        )
    }

    private fun historyDay(
        day: Int,
        pages: Int = 0,
        xp: Int = 0,
        minutes: Int = 0,
        checkpoints: Int = 0
    ): DailyReadingCalendarDay = DailyReadingCalendarDay(
        dayKey = "2026-03-${day.toString().padStart(2, '0')}",
        pagesRead = pages,
        goalCompleted = pages >= 20,
        minutesRead = minutes,
        completedCheckpoints = checkpoints,
        xpEarned = xp
    )
}
