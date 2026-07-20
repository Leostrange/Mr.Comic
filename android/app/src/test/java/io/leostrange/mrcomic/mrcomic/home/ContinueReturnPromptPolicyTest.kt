package io.leostrange.mrcomic.home

import io.leostrange.mrcomic.core.domain.analytics.DailyReadingCalendarDay
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.ReaderCheckpoint
import io.leostrange.mrcomic.core.model.Comic
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Test

class ContinueReturnPromptPolicyTest {

    @Test
    fun resolveContinueReturnPrompt_returnsContinueReadingTargetForTwoToFourDayGap() {
        val prompt = resolveContinueReturnPrompt(
            goalState = DailyReadingGoalState(
                historyActivity = listOf(
                    DailyReadingCalendarDay(dayKey = "2026-03-20", pagesRead = 14)
                )
            ),
            continueReading = Comic(id = "comic-1", title = "Blue Period", readingProgress = 0.4f),
            checkpointTrail = emptyList(),
            currentDayKey = "2026-03-23"
        )

        assertNotNull(prompt)
        assertEquals(3, prompt?.daysAway)
        assertEquals("comic-1", prompt?.comicId)
        assertEquals(null, prompt?.page)
        assertEquals("Blue Period", prompt?.targetTitle)
    }

    @Test
    fun resolveContinueReturnPrompt_fallsBackToCheckpointWhenNoActiveContinueTargetExists() {
        val prompt = resolveContinueReturnPrompt(
            goalState = DailyReadingGoalState(
                recentActivity = listOf(
                    DailyReadingCalendarDay(dayKey = "2026-03-21", completedCheckpoints = 1)
                )
            ),
            continueReading = null,
            checkpointTrail = listOf(
                ReaderCheckpoint(
                    comicId = "comic-2",
                    comicTitle = "Monster",
                    chapterTitle = "Vol. 2",
                    page = 88
                )
            ),
            currentDayKey = "2026-03-23"
        )

        assertNotNull(prompt)
        assertEquals("comic-2", prompt?.comicId)
        assertEquals(88, prompt?.page)
        assertEquals(true, prompt?.usesCheckpoint)
    }

    @Test
    fun resolveContinueReturnPrompt_hidesOutsideTwoToFourDayWindow() {
        assertNull(
            resolveContinueReturnPrompt(
                goalState = DailyReadingGoalState(
                    historyActivity = listOf(
                        DailyReadingCalendarDay(dayKey = "2026-03-22", pagesRead = 12)
                    )
                ),
                continueReading = Comic(id = "comic-1", title = "Blue Period", readingProgress = 0.4f),
                checkpointTrail = emptyList(),
                currentDayKey = "2026-03-23"
            )
        )
        assertNull(
            resolveContinueReturnPrompt(
                goalState = DailyReadingGoalState(
                    historyActivity = listOf(
                        DailyReadingCalendarDay(dayKey = "2026-03-17", pagesRead = 12)
                    )
                ),
                continueReading = Comic(id = "comic-1", title = "Blue Period", readingProgress = 0.4f),
                checkpointTrail = emptyList(),
                currentDayKey = "2026-03-23"
            )
        )
    }

    @Test
    fun resolveContinueReturnSupportTone_prioritizesWeeklyDoneThenGraceThenStreak() {
        assertEquals(
            ContinueReturnSupportTone.WEEKLY_DONE,
            resolveContinueReturnSupportTone(
                DailyReadingGoalState(
                    enabled = true,
                    pagesReadThisWeek = 140,
                    weeklyTargetPages = 140,
                    streakEnabled = true,
                    currentStreak = 4,
                    graceEnabled = true,
                    graceDaysRemainingThisWeek = 0
                )
            )
        )
        assertEquals(
            ContinueReturnSupportTone.GRACE_SPENT,
            resolveContinueReturnSupportTone(
                DailyReadingGoalState(
                    enabled = true,
                    pagesReadThisWeek = 60,
                    weeklyTargetPages = 140,
                    streakEnabled = true,
                    currentStreak = 4,
                    graceEnabled = true,
                    graceDaysRemainingThisWeek = 0
                )
            )
        )
        assertEquals(
            ContinueReturnSupportTone.STREAK_LIVE,
            resolveContinueReturnSupportTone(
                DailyReadingGoalState(
                    enabled = true,
                    streakEnabled = true,
                    currentStreak = 2,
                    graceEnabled = true,
                    graceDaysRemainingThisWeek = 1
                )
            )
        )
    }
}
