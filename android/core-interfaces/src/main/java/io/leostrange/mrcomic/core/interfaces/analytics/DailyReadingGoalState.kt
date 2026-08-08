package io.leostrange.mrcomic.core.interfaces.analytics

const val DEFAULT_DAILY_READING_GOAL_PAGES = 20
const val MIN_DAILY_READING_GOAL_PAGES = 5
const val MAX_DAILY_READING_GOAL_PAGES = 200

data class DailyReadingCalendarDay(
    val dayKey: String,
    val pagesRead: Int = 0,
    val goalCompleted: Boolean = false,
    val minutesRead: Int = 0,
    val completedCheckpoints: Int = 0,
    val xpEarned: Int = 0
)

data class DailyReadingGoalState(
    val enabled: Boolean = false,
    val targetPages: Int = DEFAULT_DAILY_READING_GOAL_PAGES,
    val pagesReadToday: Int = 0,
    val pagesReadThisWeek: Int = 0,
    val weeklyTargetPages: Int = DEFAULT_DAILY_READING_GOAL_PAGES * 7,
    val completedDaysThisWeek: Int = 0,
    val streakEnabled: Boolean = false,
    val graceEnabled: Boolean = true,
    val currentStreak: Int = 0,
    val bestStreak: Int = 0,
    val graceDaysRemainingThisWeek: Int = 1,
    val historyActivity: List<DailyReadingCalendarDay> = emptyList(),
    val recentActivity: List<DailyReadingCalendarDay> = emptyList()
) {
    val remainingPages: Int
        get() = (targetPages - pagesReadToday).coerceAtLeast(0)

    val isCompleted: Boolean
        get() = enabled && pagesReadToday >= targetPages

    val remainingPagesThisWeek: Int
        get() = (weeklyTargetPages - pagesReadThisWeek).coerceAtLeast(0)

    val isWeeklyPlanCompleted: Boolean
        get() = enabled && pagesReadThisWeek >= weeklyTargetPages
}
