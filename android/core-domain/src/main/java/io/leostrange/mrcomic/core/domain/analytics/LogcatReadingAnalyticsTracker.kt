package io.leostrange.mrcomic.core.domain.analytics

import android.util.Log
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class LogcatReadingAnalyticsTracker @Inject constructor() : ReadingAnalyticsTracker {

    override fun track(event: ReadingAnalyticsEvent) {
        val payload = when (event) {
            is ReadingAnalyticsEvent.ReaderOpened ->
                "reader_opened comicId=${event.comicId} format=${event.format} totalPages=${event.totalPages} startPage=${event.startPage} mode=${event.readingMode} startedAt=${event.startedAtMillis} resumed=${event.resumedFromProgress}"

            is ReadingAnalyticsEvent.ReaderClosed ->
                "reader_closed comicId=${event.comicId} format=${event.format} totalPages=${event.totalPages} endPage=${event.endPage} mode=${event.readingMode} startedAt=${event.startedAtMillis} durationMs=${event.durationMs} completed=${event.completed} manualPageTurns=${event.manualPageTurns} chapterTransitions=${event.chapterTransitions}"

            is ReadingAnalyticsEvent.ProgressPersisted ->
                "progress_persisted comicId=${event.comicId} page=${event.page} totalPages=${event.totalPages}"

            is ReadingAnalyticsEvent.XpAwarded ->
                "xp_awarded comicId=${event.comicId} amount=${event.amount} reason=${event.reason}"

            is ReadingAnalyticsEvent.GoalSet ->
                "goal_set enabled=${event.enabled} targetPages=${event.targetPages} streakEnabled=${event.streakEnabled} graceEnabled=${event.graceEnabled} source=${event.source}"

            is ReadingAnalyticsEvent.GoalCompleted ->
                "goal_completed comicId=${event.comicId} targetPages=${event.targetPages} pagesReadToday=${event.pagesReadToday} weeklyTargetPages=${event.weeklyTargetPages} pagesReadThisWeek=${event.pagesReadThisWeek} completedDaysThisWeek=${event.completedDaysThisWeek} currentStreak=${event.currentStreak} dailyCompleted=${event.dailyCompleted} weeklyCompleted=${event.weeklyCompleted}"

            is ReadingAnalyticsEvent.StageUp ->
                "stage_up stage=${event.stage} xp=${event.xp} totalTitles=${event.totalTitles} completedTitles=${event.completedTitles}"

            is ReadingAnalyticsEvent.MetricsSnapshot ->
                "metrics_snapshot surface=${event.surface} activeMinutesLast7Days=${event.activeMinutesLast7Days} naturalUnitsLast7Days=${event.naturalUnitsLast7Days} warQualified=${event.warQualified} warMinutesThreshold=${event.warMinutesThreshold} warNaturalUnitThreshold=${event.warNaturalUnitThreshold} completedTitles=${event.completedTitles} totalTitles=${event.totalTitles} completionRate=${event.completionRate} returnPromptEligible=${event.returnPromptEligible} mascotOptedOut=${event.mascotOptedOut} questPromptsOptedOut=${event.questPromptsOptedOut} noveltyWindowActive=${event.noveltyWindowActive} noveltySources=${event.noveltySources} noveltyDaysRemaining=${event.noveltyDaysRemaining}"

            is ReadingAnalyticsEvent.TitleCompleted ->
                "title_completed comicId=${event.comicId} totalPages=${event.totalPages}"

            is ReadingAnalyticsEvent.ChapterReached ->
                "chapter_reached comicId=${event.comicId} page=${event.page} chapter=${event.chapterTitle}"

            is ReadingAnalyticsEvent.BookmarkToggled ->
                "bookmark_toggled comicId=${event.comicId} page=${event.page} bookmarked=${event.bookmarked}"

            is ReadingAnalyticsEvent.QuoteSaved ->
                "quote_saved comicId=${event.comicId} page=${event.page} inserted=${event.inserted}"

            is ReadingAnalyticsEvent.AchievementUnlocked ->
                "achievement_unlocked achievementId=${event.achievementId} unlockedCount=${event.unlockedCount} totalCount=${event.totalCount}"

            is ReadingAnalyticsEvent.QuestSwitched ->
                "quest_switched previousAchievementId=${event.previousAchievementId} nextAchievementId=${event.nextAchievementId} action=${event.action}"

            is ReadingAnalyticsEvent.QuestCompleted ->
                "quest_completed achievementId=${event.achievementId} nextAchievementId=${event.nextAchievementId} action=${event.action}"
        }
        Log.d("ReadingAnalytics", payload)
    }
}
