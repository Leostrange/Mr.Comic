package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.MascotStageArchive
import io.leostrange.mrcomic.core.domain.analytics.MascotStageArchiveEntry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class MrComicProgressUiPolicyTest {

    @Test
    fun mrComicProgressRecentEmptyText_prioritizesEmptyLibraryState() {
        val text = mrComicProgressRecentEmptyText(
            language = "en",
            genericEmpty = "No recent reading trail yet.",
            totalTitles = 0,
            searchActive = true
        )

        assertEquals(
            "No titles in the library yet. Add a file or folder to start Mr.Comic progress.",
            text
        )
    }

    @Test
    fun mrComicProgressRecentEmptyText_usesSearchScopedMessageWhenLibraryIsNotEmpty() {
        val text = mrComicProgressRecentEmptyText(
            language = "en",
            genericEmpty = "No recent reading trail yet.",
            totalTitles = 6,
            searchActive = true
        )

        assertEquals("No recent reading trail inside the current search results.", text)
    }

    @Test
    fun mrComicRhythmPills_hideStreakAndGraceWhenGoalsAreOff() {
        val goalState = DailyReadingGoalState(
            enabled = false,
            streakEnabled = true,
            graceEnabled = true,
            currentStreak = 4
        )

        assertFalse(shouldShowMrComicRhythmStreak(goalState))
        assertFalse(shouldShowMrComicRhythmGrace(goalState))
    }

    @Test
    fun mrComicRhythmPills_hideZeroStateStreakAndGraceWhenNoRhythmExistsYet() {
        val goalState = DailyReadingGoalState(
            enabled = true,
            streakEnabled = true,
            graceEnabled = true,
            currentStreak = 0
        )

        assertFalse(shouldShowMrComicRhythmStreak(goalState))
        assertFalse(shouldShowMrComicRhythmGrace(goalState))
    }

    @Test
    fun mrComicRhythmPills_showStreakAndGraceOnlyForLiveStreak() {
        val goalState = DailyReadingGoalState(
            enabled = true,
            streakEnabled = true,
            graceEnabled = true,
            currentStreak = 3
        )

        assertTrue(shouldShowMrComicRhythmStreak(goalState))
        assertTrue(shouldShowMrComicRhythmGrace(goalState))
    }

    @Test
    fun mrComicStreakGraceCard_hidesPillsWhenStreakLayerIsOff() {
        val goalState = DailyReadingGoalState(
            enabled = true,
            streakEnabled = false,
            graceEnabled = true,
            currentStreak = 4
        )

        assertFalse(shouldShowMrComicStreakGracePills(goalState))
    }

    @Test
    fun mrComicStreakGraceCard_showsPillsWhenGoalAndStreakLayerAreEnabled() {
        val goalState = DailyReadingGoalState(
            enabled = true,
            streakEnabled = true,
            graceEnabled = true,
            currentStreak = 1
        )

        assertTrue(shouldShowMrComicStreakGracePills(goalState))
    }

    @Test
    fun mrComicProgressHistoryDays_prefersRecentWindowForLast7AndFallsBackToHistory() {
        val history = (1..12).map { index ->
            io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay(
                dayKey = "2026-03-${index.toString().padStart(2, '0')}",
                pagesRead = index
            )
        }
        val recent = history.takeLast(7)
        val goalState = DailyReadingGoalState(
            historyActivity = history,
            recentActivity = recent
        )

        val last7 = mrComicProgressHistoryDays(goalState, MrComicProgressHistoryRange.LAST_7)
        val all = mrComicProgressHistoryDays(goalState, MrComicProgressHistoryRange.ALL)

        assertEquals(recent, last7)
        assertEquals(history, all)
    }

    @Test
    fun summarizeMrComicProgressHistory_countsPagesMinutesCheckpointsAndActiveDays() {
        val summary = summarizeMrComicProgressHistory(
            listOf(
                io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay(
                    dayKey = "2026-03-20",
                    pagesRead = 12,
                    xpEarned = 72,
                    minutesRead = 8,
                    completedCheckpoints = 1
                ),
                io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay(
                    dayKey = "2026-03-21",
                    pagesRead = 0,
                    minutesRead = 14,
                    completedCheckpoints = 0
                ),
                io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay(
                    dayKey = "2026-03-22",
                    pagesRead = 0,
                    minutesRead = 0,
                    completedCheckpoints = 0
                )
            )
        )

        assertEquals(12, summary.pagesRead)
        assertEquals(72, summary.xpEarned)
        assertEquals(22, summary.minutesRead)
        assertEquals(1, summary.completedCheckpoints)
        assertEquals(2, summary.activeDays)
        assertTrue(hasMrComicMeaningfulHistory(summary))
    }

    @Test
    fun mrComicProgressStreakDays_keepsWeeklySliceSeparateFromRawHistory() {
        val recent = (1..7).map { index ->
            io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay(
                dayKey = "2026-03-${index.toString().padStart(2, '0')}",
                goalCompleted = index >= 5
            )
        }
        val goalState = DailyReadingGoalState(recentActivity = recent)

        assertEquals(recent, mrComicProgressStreakDays(goalState))
    }

    @Test
    fun isMrComicGraceSpentThisWeek_requiresLiveGoalAndSpentGraceSlot() {
        assertTrue(
            isMrComicGraceSpentThisWeek(
                DailyReadingGoalState(
                    enabled = true,
                    streakEnabled = true,
                    graceEnabled = true,
                    graceDaysRemainingThisWeek = 0
                )
            )
        )
        assertFalse(
            isMrComicGraceSpentThisWeek(
                DailyReadingGoalState(
                    enabled = true,
                    streakEnabled = true,
                    graceEnabled = true,
                    graceDaysRemainingThisWeek = 1
                )
            )
        )
        assertFalse(
            isMrComicGraceSpentThisWeek(
                DailyReadingGoalState(
                    enabled = true,
                    streakEnabled = true,
                    graceEnabled = false,
                    graceDaysRemainingThisWeek = 0
                )
            )
        )
    }

    @Test
    fun resolveMrComicProgressBestWeek_prefersCalendarWeekWithMorePages() {
        val bestWeek = resolveMrComicProgressBestWeek(
            historyActivity = listOf(
                DailyReadingCalendarDay(dayKey = "2026-03-02", pagesRead = 14),
                DailyReadingCalendarDay(dayKey = "2026-03-04", pagesRead = 28),
                DailyReadingCalendarDay(dayKey = "2026-03-09", pagesRead = 25),
                DailyReadingCalendarDay(dayKey = "2026-03-10", pagesRead = 30)
            ),
            recentActivity = emptyList()
        )

        assertEquals("2026-W11", bestWeek?.weekKey)
        assertEquals(55, bestWeek?.pagesRead)
        assertEquals(2, bestWeek?.activeDays)
    }

    @Test
    fun resolveMrComicProgressBestWeek_breaksPageTiesByActiveDays() {
        val bestWeek = resolveMrComicProgressBestWeek(
            historyActivity = listOf(
                DailyReadingCalendarDay(dayKey = "2026-03-02", pagesRead = 18),
                DailyReadingCalendarDay(dayKey = "2026-03-03", pagesRead = 17),
                DailyReadingCalendarDay(dayKey = "2026-03-09", pagesRead = 35)
            ),
            recentActivity = emptyList()
        )

        assertEquals("2026-W10", bestWeek?.weekKey)
        assertEquals(35, bestWeek?.pagesRead)
        assertEquals(2, bestWeek?.activeDays)
    }

    @Test
    fun resolveMrComicProgressBestWeek_fallsBackToRecentActivityWhenHistoryIsEmpty() {
        val bestWeek = resolveMrComicProgressBestWeek(
            historyActivity = emptyList(),
            recentActivity = listOf(
                DailyReadingCalendarDay(dayKey = "2026-03-17", pagesRead = 6),
                DailyReadingCalendarDay(dayKey = "2026-03-18", pagesRead = 5),
                DailyReadingCalendarDay(dayKey = "2026-03-20", minutesRead = 12, completedCheckpoints = 1)
            )
        )

        assertEquals("2026-W12", bestWeek?.weekKey)
        assertEquals(11, bestWeek?.pagesRead)
        assertEquals(3, bestWeek?.activeDays)
    }

    @Test
    fun resolveMrComicProgressBestWeek_returnsNullWhenNoActivityExists() {
        val bestWeek = resolveMrComicProgressBestWeek(
            historyActivity = listOf(
                DailyReadingCalendarDay(dayKey = "2026-03-17"),
                DailyReadingCalendarDay(dayKey = "2026-03-18")
            ),
            recentActivity = emptyList()
        )

        assertNull(bestWeek)
        assertFalse(
            shouldShowMrComicProgressHighlights(
                completedTitles = 0,
                bestStreak = 0,
                bestWeek = bestWeek
            )
        )
    }

    @Test
    fun shouldShowMrComicProgressStageArchive_requiresMoreThanOneReachedStage() {
        assertFalse(
            shouldShowMrComicProgressStageArchive(
                MascotStageArchive(
                    currentStage = MascotStage.CHILD,
                    highestReachedStage = MascotStage.CHILD,
                    entries = listOf(
                        MascotStageArchiveEntry(
                            stage = MascotStage.CHILD,
                            unlockXp = 0,
                            isCurrent = true,
                            isHighestReached = true
                        )
                    )
                )
            )
        )
        assertTrue(
            shouldShowMrComicProgressStageArchive(
                MascotStageArchive(
                    currentStage = MascotStage.TEEN,
                    highestReachedStage = MascotStage.TEEN,
                    entries = listOf(
                        MascotStageArchiveEntry(
                            stage = MascotStage.CHILD,
                            unlockXp = 0,
                            isCurrent = false,
                            isHighestReached = false
                        ),
                        MascotStageArchiveEntry(
                            stage = MascotStage.TEEN,
                            unlockXp = 200,
                            isCurrent = true,
                            isHighestReached = true
                        )
                    )
                )
            )
        )
    }
}
