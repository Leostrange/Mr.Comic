package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent

/**
 * Pure analytics and progress calculation functions.
 *
 * Extracted from ReaderViewModel to isolate the progress tracking
 * logic from the ViewModel lifecycle and state management.
 */

internal const val TITLE_COMPLETE_BONUS_XP = 60

internal fun positiveProgressDelta(
    previousPersistedPage: Int?,
    newPage: Int
): Int {
    if (previousPersistedPage == null) return 0
    return (newPage - previousPersistedPage).coerceAtLeast(0)
}

internal fun navigationProgressDelta(
    previousPersistedPage: Int?,
    newPage: Int,
    countsTowardReadingProgress: Boolean
): Int {
    if (!countsTowardReadingProgress) return 0
    return positiveProgressDelta(previousPersistedPage = previousPersistedPage, newPage = newPage)
}

internal fun countsAsManualPageTurn(
    progressSource: ReaderNavigationProgressSource
): Boolean = progressSource == ReaderNavigationProgressSource.READING

internal data class TitleCompletionPolicy(
    val shouldComplete: Boolean,
    val recapPagesDelta: Int,
    val recapXpAwarded: Int,
    val bonusXpAwarded: Int
)

internal fun resolveGoalCompletedAnalyticsEvent(
    comicId: String,
    previousState: DailyReadingGoalState,
    currentState: DailyReadingGoalState
): ReadingAnalyticsEvent.GoalCompleted? {
    val dailyCompleted = currentState.enabled && !previousState.isCompleted && currentState.isCompleted
    val weeklyCompleted = currentState.enabled &&
        !previousState.isWeeklyPlanCompleted &&
        currentState.isWeeklyPlanCompleted
    if (!dailyCompleted && !weeklyCompleted) return null
    return ReadingAnalyticsEvent.GoalCompleted(
        comicId = comicId,
        targetPages = currentState.targetPages,
        pagesReadToday = currentState.pagesReadToday,
        weeklyTargetPages = currentState.weeklyTargetPages,
        pagesReadThisWeek = currentState.pagesReadThisWeek,
        completedDaysThisWeek = currentState.completedDaysThisWeek,
        currentStreak = currentState.currentStreak,
        dailyCompleted = dailyCompleted,
        weeklyCompleted = weeklyCompleted
    )
}

internal fun shouldAutoCompleteTitle(
    reachedLastPage: Boolean,
    currentComicIdMatches: Boolean,
    alreadyCompleted: Boolean,
    countsTowardReadingProgress: Boolean,
    sessionManualPageTurns: Int
): Boolean = ReaderProgressPolicy.shouldComplete(
    reachedLastPage = reachedLastPage,
    currentComicIdMatches = currentComicIdMatches,
    alreadyCompleted = alreadyCompleted,
    countsTowardReadingProgress = countsTowardReadingProgress,
    sessionManualPageTurns = sessionManualPageTurns
)

internal fun resolveTitleCompletionPolicy(
    reachedLastPage: Boolean,
    currentComicIdMatches: Boolean,
    alreadyCompleted: Boolean,
    countsTowardReadingProgress: Boolean,
    sessionManualPageTurns: Int,
    goalProgressDelta: Int
): TitleCompletionPolicy {
    val shouldComplete = shouldAutoCompleteTitle(
        reachedLastPage = reachedLastPage,
        currentComicIdMatches = currentComicIdMatches,
        alreadyCompleted = alreadyCompleted,
        countsTowardReadingProgress = countsTowardReadingProgress,
        sessionManualPageTurns = sessionManualPageTurns
    )
    if (!shouldComplete) {
        return TitleCompletionPolicy(
            shouldComplete = false,
            recapPagesDelta = 0,
            recapXpAwarded = 0,
            bonusXpAwarded = 0
        )
    }
    val safePagesDelta = goalProgressDelta.coerceAtLeast(0)
    return TitleCompletionPolicy(
        shouldComplete = true,
        recapPagesDelta = safePagesDelta,
        recapXpAwarded = safePagesDelta + TITLE_COMPLETE_BONUS_XP,
        bonusXpAwarded = TITLE_COMPLETE_BONUS_XP
    )
}

internal fun shouldEmitChapterProgressRecap(
    page: Int,
    totalPages: Int
): Boolean = totalPages <= 0 || page < totalPages - 1

internal fun DailyReadingGoalState.projectReaderProgressRecap(
    additionalPages: Int
): DailyReadingGoalState {
    val safeAdditionalPages = additionalPages.coerceAtLeast(0)
    if (!enabled || safeAdditionalPages == 0) return this
    return copy(
        pagesReadToday = pagesReadToday + safeAdditionalPages,
        pagesReadThisWeek = pagesReadThisWeek + safeAdditionalPages
    )
}
