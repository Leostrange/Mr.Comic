package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.model.Comic

internal fun SettingsUiState.withDailyReadingGoal(
    goalState: DailyReadingGoalState
): SettingsUiState = copy(
    dailyReadingGoalEnabled = goalState.enabled,
    dailyReadingGoalTargetPages = goalState.targetPages,
    dailyReadingGoalProgressPages = goalState.pagesReadToday,
    dailyReadingWeekProgressPages = goalState.pagesReadThisWeek,
    dailyReadingWeekTargetPages = goalState.weeklyTargetPages,
    dailyReadingWeekCompletedDays = goalState.completedDaysThisWeek,
    dailyReadingRecentActiveDays = goalState.recentActivity.count { it.pagesRead > 0 },
    dailyReadingRecentGoalDays = goalState.recentActivity.count { it.goalCompleted },
    dailyReadingStreakEnabled = goalState.streakEnabled,
    dailyReadingGraceEnabled = goalState.graceEnabled,
    dailyReadingCurrentStreak = goalState.currentStreak,
    dailyReadingBestStreak = goalState.bestStreak,
    dailyReadingGraceDaysRemainingThisWeek = goalState.graceDaysRemainingThisWeek
)

internal fun SettingsUiState.withLibraryStats(
    comics: List<Comic>
): SettingsUiState = copy(
    totalComics = comics.size,
    completedComics = comics.count { it.isCompleted },
    bookmarkedComics = comics.count { it.isBookmarked },
    rawAuthors = comics.map { it.author },
    rawGenres = comics.map { it.genre }
)
