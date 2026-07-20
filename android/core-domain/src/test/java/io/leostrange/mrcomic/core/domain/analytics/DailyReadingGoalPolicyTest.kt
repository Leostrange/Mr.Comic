package io.leostrange.mrcomic.core.domain.analytics

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.util.TimeZone

class DailyReadingGoalPolicyTest {

    @Test
    fun normalizeDailyReadingGoalTarget_clampsToSupportedRange() {
        assertEquals(MIN_DAILY_READING_GOAL_PAGES, normalizeDailyReadingGoalTarget(1))
        assertEquals(DEFAULT_DAILY_READING_GOAL_PAGES, normalizeDailyReadingGoalTarget(DEFAULT_DAILY_READING_GOAL_PAGES))
        assertEquals(MAX_DAILY_READING_GOAL_PAGES, normalizeDailyReadingGoalTarget(999))
    }

    @Test
    fun resolveDailyReadingGoalProgress_resetsWhenStoredDayIsStale() {
        val progress = resolveDailyReadingGoalProgress(
            currentDayKey = "2026-03-21",
            storedDayKey = "2026-03-20",
            storedProgressPages = 18
        )

        assertEquals(0, progress)
    }

    @Test
    fun resolveDailyReadingGoalProgress_keepsTodayProgressAndDropsNegativeValues() {
        assertEquals(
            18,
            resolveDailyReadingGoalProgress(
                currentDayKey = "2026-03-21",
                storedDayKey = "2026-03-21",
                storedProgressPages = 18
            )
        )
        assertEquals(
            0,
            resolveDailyReadingGoalProgress(
                currentDayKey = "2026-03-21",
                storedDayKey = "2026-03-21",
                storedProgressPages = -5
            )
        )
    }

    @Test
    fun currentDailyGoalDayKey_usesProvidedTimeZone() {
        val utcPlusSeven = TimeZone.getTimeZone("GMT+07:00")
        val utcMinusFive = TimeZone.getTimeZone("GMT-05:00")
        val nowMillis = 1_742_577_000_000L

        assertEquals("2025-03-22", currentDailyGoalDayKey(nowMillis, utcPlusSeven))
        assertEquals("2025-03-21", currentDailyGoalDayKey(nowMillis, utcMinusFive))
    }

    @Test
    fun currentDailyGoalWeekKey_usesIsoWeekRules() {
        val tz = TimeZone.getTimeZone("UTC")
        val dec31 = 1_735_603_200_000L
        val jan2 = 1_735_776_000_000L

        assertEquals("2025-W01", currentDailyGoalWeekKey(dec31, tz))
        assertEquals("2025-W01", currentDailyGoalWeekKey(jan2, tz))
    }

    @Test
    fun currentDailyGoalWeekKey_returnsNullForInvalidDayKey() {
        assertNull(currentDailyGoalWeekKey("not-a-day", TimeZone.getTimeZone("UTC")))
    }

    @Test
    fun daysBetweenDailyGoalDayKeys_countsWholeDayDistance() {
        assertEquals(
            2,
            daysBetweenDailyGoalDayKeys(
                fromDayKey = "2026-03-19",
                toDayKey = "2026-03-21",
                timeZone = TimeZone.getTimeZone("UTC")
            )
        )
    }

    @Test
    fun resolveDailyReadingGoalCompletion_advancesConsecutiveStreak() {
        val completion = resolveDailyReadingGoalCompletion(
            currentDayKey = "2026-03-21",
            lastCompletedDayKey = "2026-03-20",
            storedCurrentStreak = 4,
            graceEnabled = true,
            storedGraceUsedWeekKey = null,
            currentWeekKey = "2026-W12",
            timeZone = TimeZone.getTimeZone("UTC")
        )

        assertEquals(5, completion.currentStreak)
        assertEquals("2026-03-21", completion.lastCompletedDayKey)
        assertEquals(null, completion.graceUsedWeekKey)
    }

    @Test
    fun resolveDailyReadingGoalCompletion_usesGraceForSingleMissedDay() {
        val completion = resolveDailyReadingGoalCompletion(
            currentDayKey = "2026-03-21",
            lastCompletedDayKey = "2026-03-19",
            storedCurrentStreak = 4,
            graceEnabled = true,
            storedGraceUsedWeekKey = null,
            currentWeekKey = "2026-W12",
            timeZone = TimeZone.getTimeZone("UTC")
        )

        assertEquals(5, completion.currentStreak)
        assertEquals("2026-W12", completion.graceUsedWeekKey)
    }

    @Test
    fun resolveDailyReadingGoalCompletion_resetsAfterGraceAlreadyUsed() {
        val completion = resolveDailyReadingGoalCompletion(
            currentDayKey = "2026-03-21",
            lastCompletedDayKey = "2026-03-19",
            storedCurrentStreak = 4,
            graceEnabled = true,
            storedGraceUsedWeekKey = "2026-W12",
            currentWeekKey = "2026-W12",
            timeZone = TimeZone.getTimeZone("UTC")
        )

        assertEquals(1, completion.currentStreak)
        assertEquals("2026-W12", completion.graceUsedWeekKey)
    }

    @Test
    fun resolveDailyReadingGoalCompletion_resetsWhenGraceDisabled() {
        val completion = resolveDailyReadingGoalCompletion(
            currentDayKey = "2026-03-21",
            lastCompletedDayKey = "2026-03-19",
            storedCurrentStreak = 4,
            graceEnabled = false,
            storedGraceUsedWeekKey = null,
            currentWeekKey = "2026-W12",
            timeZone = TimeZone.getTimeZone("UTC")
        )

        assertEquals(1, completion.currentStreak)
    }

    @Test
    fun resolveDailyReadingGoalCompletion_resetsAfterLongGap() {
        val completion = resolveDailyReadingGoalCompletion(
            currentDayKey = "2026-03-21",
            lastCompletedDayKey = "2026-03-17",
            storedCurrentStreak = 4,
            graceEnabled = true,
            storedGraceUsedWeekKey = null,
            currentWeekKey = "2026-W12",
            timeZone = TimeZone.getTimeZone("UTC")
        )

        assertEquals(1, completion.currentStreak)
        assertEquals("2026-03-21", completion.lastCompletedDayKey)
    }

    @Test
    fun resolveDailyReadingGoalCompletion_resetsWhenLastCompletedDayKeyIsInvalid() {
        val completion = resolveDailyReadingGoalCompletion(
            currentDayKey = "2026-03-21",
            lastCompletedDayKey = "broken-day",
            storedCurrentStreak = 4,
            graceEnabled = true,
            storedGraceUsedWeekKey = "2026-W11",
            currentWeekKey = "2026-W12",
            timeZone = TimeZone.getTimeZone("UTC")
        )

        assertEquals(1, completion.currentStreak)
        assertEquals("2026-03-21", completion.lastCompletedDayKey)
        assertEquals("2026-W11", completion.graceUsedWeekKey)
    }

    @Test
    fun resolveVisibleDailyReadingStreak_keepsStreakAliveForGraceWindow() {
        val visible = resolveVisibleDailyReadingStreak(
            currentDayKey = "2026-03-21",
            storedCurrentStreak = 7,
            lastCompletedDayKey = "2026-03-19",
            graceEnabled = true,
            storedGraceUsedWeekKey = null,
            timeZone = TimeZone.getTimeZone("UTC")
        )

        assertEquals(7, visible)
    }

    @Test
    fun resolveVisibleDailyReadingStreak_hidesExpiredStreak() {
        val visible = resolveVisibleDailyReadingStreak(
            currentDayKey = "2026-03-21",
            storedCurrentStreak = 7,
            lastCompletedDayKey = "2026-03-18",
            graceEnabled = true,
            storedGraceUsedWeekKey = null,
            timeZone = TimeZone.getTimeZone("UTC")
        )

        assertEquals(0, visible)
    }

    @Test
    fun resolveVisibleDailyReadingStreak_hidesWhenLastCompletedDayKeyIsInvalid() {
        val visible = resolveVisibleDailyReadingStreak(
            currentDayKey = "2026-03-21",
            storedCurrentStreak = 7,
            lastCompletedDayKey = "broken-day",
            graceEnabled = true,
            storedGraceUsedWeekKey = null,
            timeZone = TimeZone.getTimeZone("UTC")
        )

        assertEquals(0, visible)
    }

    @Test
    fun resolveVisibleDailyReadingStreak_hidesGraceWindowWhenAlreadyUsedForMissedWeek() {
        val visible = resolveVisibleDailyReadingStreak(
            currentDayKey = "2026-03-21",
            storedCurrentStreak = 7,
            lastCompletedDayKey = "2026-03-19",
            graceEnabled = true,
            storedGraceUsedWeekKey = "2026-W12",
            timeZone = TimeZone.getTimeZone("UTC")
        )

        assertEquals(0, visible)
    }

    @Test
    fun resolveGraceDaysRemainingThisWeek_reportsAvailability() {
        assertEquals(
            1,
            resolveGraceDaysRemainingThisWeek(
                streakEnabled = true,
                graceEnabled = true,
                currentWeekKey = "2026-W12",
                storedGraceUsedWeekKey = null
            )
        )
        assertEquals(
            0,
            resolveGraceDaysRemainingThisWeek(
                streakEnabled = true,
                graceEnabled = true,
                currentWeekKey = "2026-W12",
                storedGraceUsedWeekKey = "2026-W12"
            )
        )
    }

    @Test
    fun resolveWeeklyReadingGoalProgress_resetsWhenStoredWeekIsStale() {
        assertEquals(
            0,
            resolveWeeklyReadingGoalProgress(
                currentWeekKey = "2026-W12",
                storedWeekKey = "2026-W11",
                storedProgressPages = 84
            )
        )
        assertEquals(
            84,
            resolveWeeklyReadingGoalProgress(
                currentWeekKey = "2026-W12",
                storedWeekKey = "2026-W12",
                storedProgressPages = 84
            )
        )
    }

    @Test
    fun resolveWeeklyCompletedDayKeys_keepsOnlyCurrentWeekEntries() {
        assertEquals(
            listOf("2026-03-17", "2026-03-18"),
            resolveWeeklyCompletedDayKeys(
                currentWeekKey = "2026-W12",
                storedWeekKey = "2026-W12",
                storedDayKeys = "2026-03-18, 2026-03-17,2026-03-18"
            )
        )
        assertTrue(
            resolveWeeklyCompletedDayKeys(
                currentWeekKey = "2026-W12",
                storedWeekKey = "2026-W11",
                storedDayKeys = "2026-03-10"
            ).isEmpty()
        )
    }

    @Test
    fun serializeWeeklyCompletedDayKeys_sortsAndDeduplicatesDayKeys() {
        assertEquals(
            "2026-03-17,2026-03-18",
            serializeWeeklyCompletedDayKeys(
                listOf("2026-03-18", "2026-03-17", "2026-03-18")
            )
        )
    }

    @Test
    fun parseDailyReadingHistory_readsStableCalendarEntries() {
        assertEquals(
            listOf(
                DailyReadingCalendarDay("2026-03-17", 12, false),
                DailyReadingCalendarDay("2026-03-18", 20, true)
            ),
            parseDailyReadingHistory("2026-03-18:20:1;2026-03-17:12:0")
        )
    }

    @Test
    fun parseDailyReadingHistory_readsExtendedCalendarEntriesWithMinutesAndCheckpoints() {
        assertEquals(
            listOf(
                DailyReadingCalendarDay("2026-03-17", 12, false, 9, 1, 12),
                DailyReadingCalendarDay("2026-03-18", 20, true, 18, 2, 80)
            ),
            parseDailyReadingHistory("2026-03-18:20:1:18:2:80;2026-03-17:12:0:9:1:12")
        )
    }

    @Test
    fun upsertDailyReadingHistory_replacesCurrentDayAndKeepsRecentWindow() {
        val updated = upsertDailyReadingHistory(
            history = listOf(
                DailyReadingCalendarDay("2026-03-17", 12, false),
                DailyReadingCalendarDay("2026-03-18", 20, true, 11, 1)
            ),
            currentDayKey = "2026-03-18",
            pagesReadToday = 24,
            targetPages = 20
        )

        assertEquals(
            listOf(
                DailyReadingCalendarDay("2026-03-17", 12, false),
                DailyReadingCalendarDay("2026-03-18", 24, true, 11, 1)
            ),
            updated
        )
    }

    @Test
    fun upsertDailyReadingHistory_preservesPreviousGoalFlagWhenGoalTrackingIsDisabled() {
        val updated = upsertDailyReadingHistory(
            history = listOf(
                DailyReadingCalendarDay("2026-03-18", 20, true, 11, 1)
            ),
            currentDayKey = "2026-03-18",
            pagesReadToday = 26,
            targetPages = 30,
            goalTrackingEnabled = false
        )

        assertEquals(
            listOf(DailyReadingCalendarDay("2026-03-18", 26, true, 11, 1)),
            updated
        )
    }

    @Test
    fun updateDailyReadingHistoryMetrics_mergesMinutesAndCheckpointsIntoExistingDay() {
        val updated = updateDailyReadingHistoryMetrics(
            history = listOf(
                DailyReadingCalendarDay("2026-03-18", 20, true, 11, 1, 24)
            ),
            currentDayKey = "2026-03-18",
            minutesDelta = 6,
            completedCheckpointsDelta = 2,
            xpDelta = 14
        )

        assertEquals(
            listOf(DailyReadingCalendarDay("2026-03-18", 20, true, 17, 3, 38)),
            updated
        )
    }

    @Test
    fun resolveRecentReadingCalendar_buildsSevenDayWindowWithGaps() {
        val recent = resolveRecentReadingCalendar(
            currentDayKey = "2026-03-21",
            storedHistory = "2026-03-18:20:1;2026-03-20:8:0",
            timeZone = TimeZone.getTimeZone("UTC")
        )

        assertEquals(7, recent.size)
        assertEquals("2026-03-15", recent.first().dayKey)
        assertEquals("2026-03-21", recent.last().dayKey)
        assertEquals(20, recent.first { it.dayKey == "2026-03-18" }.pagesRead)
        assertTrue(recent.first { it.dayKey == "2026-03-18" }.goalCompleted)
        assertEquals(0, recent.first { it.dayKey == "2026-03-19" }.pagesRead)
    }

    @Test
    fun resolveHistoryReadingCalendar_expandsFromFirstKnownDayToToday() {
        val history = resolveHistoryReadingCalendar(
            currentDayKey = "2026-03-21",
            storedHistory = "2026-03-18:20:1:18:2:80;2026-03-20:8:0:4:0:8",
            timeZone = TimeZone.getTimeZone("UTC")
        )

        assertEquals(4, history.size)
        assertEquals("2026-03-18", history.first().dayKey)
        assertEquals("2026-03-21", history.last().dayKey)
        assertEquals(18, history.first().minutesRead)
        assertEquals(2, history.first().completedCheckpoints)
        assertEquals(80, history.first().xpEarned)
        assertEquals(0, history.first { it.dayKey == "2026-03-19" }.pagesRead)
    }

    @Test
    fun dailyReadingGoalState_reportsCompletionAndRemainingPages() {
        val inProgress = DailyReadingGoalState(
            enabled = true,
            targetPages = 20,
            pagesReadToday = 12,
            pagesReadThisWeek = 68,
            weeklyTargetPages = 140,
            completedDaysThisWeek = 3,
            recentActivity = listOf(DailyReadingCalendarDay("2026-03-21", 12, false))
        )
        val completed = DailyReadingGoalState(
            enabled = true,
            targetPages = 20,
            pagesReadToday = 24,
            pagesReadThisWeek = 148,
            weeklyTargetPages = 140,
            completedDaysThisWeek = 7,
            recentActivity = listOf(DailyReadingCalendarDay("2026-03-21", 24, true))
        )

        assertEquals(8, inProgress.remainingPages)
        assertFalse(inProgress.isCompleted)
        assertEquals(72, inProgress.remainingPagesThisWeek)
        assertFalse(inProgress.isWeeklyPlanCompleted)
        assertEquals(0, completed.remainingPages)
        assertTrue(completed.isCompleted)
        assertEquals(0, completed.remainingPagesThisWeek)
        assertTrue(completed.isWeeklyPlanCompleted)
    }
}
