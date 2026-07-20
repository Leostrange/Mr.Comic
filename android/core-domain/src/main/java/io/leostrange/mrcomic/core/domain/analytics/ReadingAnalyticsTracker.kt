package io.leostrange.mrcomic.core.domain.analytics

interface ReadingAnalyticsTracker {
    fun track(event: ReadingAnalyticsEvent)
}

sealed interface ReadingAnalyticsEvent {
    data class ReaderOpened(
        val comicId: String,
        val format: String,
        val totalPages: Int,
        val startPage: Int,
        val readingMode: String,
        val startedAtMillis: Long,
        val resumedFromProgress: Boolean
    ) : ReadingAnalyticsEvent

    data class ReaderClosed(
        val comicId: String,
        val format: String,
        val totalPages: Int,
        val endPage: Int,
        val readingMode: String,
        val startedAtMillis: Long,
        val durationMs: Long,
        val completed: Boolean,
        val manualPageTurns: Int,
        val chapterTransitions: Int
    ) : ReadingAnalyticsEvent

    data class ProgressPersisted(
        val comicId: String,
        val page: Int,
        val totalPages: Int
    ) : ReadingAnalyticsEvent

    data class XpAwarded(
        val comicId: String,
        val amount: Int,
        val reason: String
    ) : ReadingAnalyticsEvent

    data class GoalSet(
        val enabled: Boolean,
        val targetPages: Int,
        val streakEnabled: Boolean,
        val graceEnabled: Boolean,
        val source: String
    ) : ReadingAnalyticsEvent

    data class GoalCompleted(
        val comicId: String,
        val targetPages: Int,
        val pagesReadToday: Int,
        val weeklyTargetPages: Int,
        val pagesReadThisWeek: Int,
        val completedDaysThisWeek: Int,
        val currentStreak: Int,
        val dailyCompleted: Boolean,
        val weeklyCompleted: Boolean
    ) : ReadingAnalyticsEvent

    data class StageUp(
        val stage: String,
        val xp: Int,
        val totalTitles: Int,
        val completedTitles: Int
    ) : ReadingAnalyticsEvent

    data class MetricsSnapshot(
        val surface: String,
        val activeMinutesLast7Days: Int,
        val naturalUnitsLast7Days: Int,
        val warQualified: Boolean,
        val warMinutesThreshold: Int,
        val warNaturalUnitThreshold: Int,
        val completedTitles: Int,
        val totalTitles: Int,
        val completionRate: Float,
        val returnPromptEligible: Boolean,
        val mascotOptedOut: Boolean,
        val questPromptsOptedOut: Boolean,
        val noveltyWindowActive: Boolean,
        val noveltySources: String,
        val noveltyDaysRemaining: Int
    ) : ReadingAnalyticsEvent

    data class TitleCompleted(
        val comicId: String,
        val totalPages: Int
    ) : ReadingAnalyticsEvent

    data class ChapterReached(
        val comicId: String,
        val page: Int,
        val chapterTitle: String
    ) : ReadingAnalyticsEvent

    data class BookmarkToggled(
        val comicId: String,
        val page: Int,
        val bookmarked: Boolean
    ) : ReadingAnalyticsEvent

    data class QuoteSaved(
        val comicId: String,
        val page: Int,
        val inserted: Boolean
    ) : ReadingAnalyticsEvent

    data class AchievementUnlocked(
        val achievementId: String,
        val unlockedCount: Int,
        val totalCount: Int
    ) : ReadingAnalyticsEvent

    data class QuestSwitched(
        val previousAchievementId: String,
        val nextAchievementId: String,
        val action: String?
    ) : ReadingAnalyticsEvent

    data class QuestCompleted(
        val achievementId: String,
        val nextAchievementId: String?,
        val action: String?
    ) : ReadingAnalyticsEvent
}
