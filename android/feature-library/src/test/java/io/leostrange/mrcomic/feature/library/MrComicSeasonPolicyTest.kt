package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale

class MrComicSeasonPolicyTest {

    @Test
    fun resolveMrComicSeasonSnapshot_prioritizesCollectionThenSeriesThenFiles() {
        val collectionRoute = resolveMrComicSeasonSnapshot(
            goalState = DailyReadingGoalState(),
            preferredCollectionQuery = "mystery",
            preferredSeriesName = "Saga"
        )
        val seriesRoute = resolveMrComicSeasonSnapshot(
            goalState = DailyReadingGoalState(),
            preferredCollectionQuery = null,
            preferredSeriesName = "Saga"
        )
        val filesRoute = resolveMrComicSeasonSnapshot(
            goalState = DailyReadingGoalState(),
            preferredCollectionQuery = null,
            preferredSeriesName = null
        )

        assertEquals(MrComicSeasonRoute.COLLECTION, collectionRoute.route)
        assertEquals(MrComicSeasonRoute.SERIES, seriesRoute.route)
        assertEquals(MrComicSeasonRoute.FILES, filesRoute.route)
    }

    @Test
    fun resolveMrComicSeasonWindow_keepsOnlyLastTwentyEightDaysAndMergesDuplicates() {
        val nowMillis = 30L * 24L * 60L * 60L * 1000L
        val oldDay = seasonDayKey(nowMillis, -40)
        val insideDay = seasonDayKey(nowMillis, -15)
        val duplicateDay = seasonDayKey(nowMillis, -1)
        val today = seasonDayKey(nowMillis, 0)
        val goalState = DailyReadingGoalState(
            historyActivity = listOf(
                DailyReadingCalendarDay(dayKey = oldDay, pagesRead = 99),
                DailyReadingCalendarDay(dayKey = insideDay, pagesRead = 12, minutesRead = 10),
                DailyReadingCalendarDay(dayKey = duplicateDay, pagesRead = 5, completedCheckpoints = 1)
            ),
            recentActivity = listOf(
                DailyReadingCalendarDay(dayKey = duplicateDay, minutesRead = 15, completedCheckpoints = 1),
                DailyReadingCalendarDay(dayKey = today, pagesRead = 8, minutesRead = 20)
            )
        )

        val seasonWindow = resolveMrComicSeasonWindow(
            goalState = goalState,
            nowMillis = nowMillis,
            windowDays = 28
        )

        assertFalse(seasonWindow.any { it.dayKey == oldDay })
        assertEquals(3, seasonWindow.size)
        assertEquals(15, seasonWindow.first { it.dayKey == duplicateDay }.minutesRead)
        assertEquals(2, seasonWindow.first { it.dayKey == duplicateDay }.completedCheckpoints)
    }

    @Test
    fun resolveMrComicSeasonSnapshot_buildsQuietFourWeekProgress() {
        val nowMillis = 30L * 24L * 60L * 60L * 1000L
        val snapshot = resolveMrComicSeasonSnapshot(
            goalState = DailyReadingGoalState(
                historyActivity = listOf(
                    DailyReadingCalendarDay(dayKey = "1970-01-27", pagesRead = 12, minutesRead = 35),
                    DailyReadingCalendarDay(dayKey = "1970-01-28", pagesRead = 10, minutesRead = 30, completedCheckpoints = 1),
                    DailyReadingCalendarDay(dayKey = "1970-01-29", pagesRead = 8, minutesRead = 25, completedCheckpoints = 1),
                    DailyReadingCalendarDay(dayKey = "1970-01-30", pagesRead = 6, minutesRead = 10)
                )
            ),
            preferredCollectionQuery = "mystery",
            preferredSeriesName = null,
            nowMillis = nowMillis
        )

        assertEquals(4, snapshot.activeDays)
        assertEquals(2, snapshot.checkpoints)
        assertEquals(100, snapshot.minutesRead)
        assertEquals(3, snapshot.completedSteps)
        assertEquals(1f, snapshot.progressFraction)
    }

    @Test
    fun shouldShowMrComicSeasonAction_hidesSeasonRouteDuringSearch() {
        assertTrue(shouldShowMrComicSeasonAction(searchActive = false))
        assertFalse(shouldShowMrComicSeasonAction(searchActive = true))
    }
}

private fun seasonDayKey(nowMillis: Long, dayOffset: Int): String {
    val calendar = Calendar.getInstance().apply {
        timeInMillis = nowMillis
        add(Calendar.DAY_OF_YEAR, dayOffset)
    }
    return SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Date(calendar.timeInMillis))
}
