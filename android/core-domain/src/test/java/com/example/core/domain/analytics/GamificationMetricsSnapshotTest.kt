package com.example.core.domain.analytics

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class GamificationMetricsSnapshotTest {

    @Test
    fun resolveMetricsActivityWindow_mergesDuplicateDaysAndKeepsLatestSeven() {
        val goalState = DailyReadingGoalState(
            historyActivity = listOf(
                DailyReadingCalendarDay(dayKey = "2026-03-20", minutesRead = 8, completedCheckpoints = 1),
                DailyReadingCalendarDay(dayKey = "2026-03-19", minutesRead = 7, completedCheckpoints = 0),
                DailyReadingCalendarDay(dayKey = "2026-03-18", minutesRead = 6, completedCheckpoints = 0),
                DailyReadingCalendarDay(dayKey = "2026-03-17", minutesRead = 5, completedCheckpoints = 0),
                DailyReadingCalendarDay(dayKey = "2026-03-16", minutesRead = 4, completedCheckpoints = 0),
                DailyReadingCalendarDay(dayKey = "2026-03-15", minutesRead = 3, completedCheckpoints = 0),
                DailyReadingCalendarDay(dayKey = "2026-03-14", minutesRead = 2, completedCheckpoints = 0)
            ),
            recentActivity = listOf(
                DailyReadingCalendarDay(dayKey = "2026-03-20", minutesRead = 12, completedCheckpoints = 1),
                DailyReadingCalendarDay(dayKey = "2026-03-21", minutesRead = 10, completedCheckpoints = 1),
                DailyReadingCalendarDay(dayKey = "2026-03-22", minutesRead = 9, completedCheckpoints = 0)
            )
        )

        val window = resolveMetricsActivityWindow(goalState)

        assertEquals(7, window.size)
        assertEquals("2026-03-22", window.first().dayKey)
        assertEquals(20, window.first { it.dayKey == "2026-03-20" }.minutesRead)
        assertEquals(2, window.first { it.dayKey == "2026-03-20" }.completedCheckpoints)
    }

    @Test
    fun resolveGamificationMetricsSnapshot_reportsWarCompletionReturnAndOptOutSignals() {
        val nowMillis = 10L * 24L * 60L * 60L * 1000L
        val snapshot = resolveGamificationMetricsSnapshot(
            goalState = DailyReadingGoalState(
                enabled = true,
                historyActivity = listOf(
                    DailyReadingCalendarDay(dayKey = "2026-03-21", minutesRead = 15, completedCheckpoints = 1),
                    DailyReadingCalendarDay(dayKey = "2026-03-22", minutesRead = 10, completedCheckpoints = 1)
                )
            ),
            totalTitles = 10,
            completedTitles = 4,
            returnPromptEligible = true,
            mascotEnabled = false,
            questPromptsEnabled = true,
            mascotEnabledAtMillis = 0L,
            questPromptsEnabledAtMillis = nowMillis - (2L * 24L * 60L * 60L * 1000L),
            dailyGoalEnabledAtMillis = nowMillis - (1L * 24L * 60L * 60L * 1000L),
            nowMillis = nowMillis
        )

        assertEquals(25, snapshot.activeMinutesLast7Days)
        assertEquals(2, snapshot.naturalUnitsLast7Days)
        assertTrue(snapshot.warQualified)
        assertEquals(0.4f, snapshot.completionRate)
        assertTrue(snapshot.returnPromptEligible)
        assertTrue(snapshot.mascotOptedOut)
        assertFalse(snapshot.questPromptsOptedOut)
        assertTrue(snapshot.noveltyWindowActive)
        assertEquals("quest_prompts,daily_goal", snapshot.noveltySources)
        assertEquals(6, snapshot.noveltyDaysRemaining)
    }

    @Test
    fun resolveGamificationNoveltyState_ignoresDisabledAndExpiredSources() {
        val nowMillis = 10L * 24L * 60L * 60L * 1000L

        val noveltyState = resolveGamificationNoveltyState(
            nowMillis = nowMillis,
            mascotEnabled = true,
            mascotEnabledAtMillis = nowMillis - (8L * 24L * 60L * 60L * 1000L),
            questPromptsEnabled = false,
            questPromptsEnabledAtMillis = nowMillis - (1L * 24L * 60L * 60L * 1000L),
            goalEnabled = true,
            goalEnabledAtMillis = 0L
        )

        assertFalse(noveltyState.noveltyWindowActive)
        assertEquals("none", noveltyState.noveltySources)
        assertEquals(0, noveltyState.noveltyDaysRemaining)
    }
}
