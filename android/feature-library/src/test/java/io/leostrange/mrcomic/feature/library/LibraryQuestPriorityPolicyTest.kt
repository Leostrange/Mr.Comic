package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.feature.library.components.AchievementId
import io.leostrange.mrcomic.feature.library.components.LibraryAchievement
import org.junit.Assert.assertEquals
import org.junit.Test

class LibraryQuestPriorityPolicyTest {

    @Test
    fun mrComicQuestPriorityReason_prefersLiveRouteWhileDailyGoalIsOpen() {
        val reason = mrComicQuestPriorityReason(
            achievement = testAchievement(AchievementId.FIRST_COMPLETE),
            hintAction = MrComicDiscoveryAction.OPEN_RECENT,
            goalState = DailyReadingGoalState(
                enabled = true,
                targetPages = 20,
                pagesReadToday = 8,
                pagesReadThisWeek = 8,
                weeklyTargetPages = 140
            ),
            hasRecent = true
        )

        assertEquals(MrComicQuestPriorityReason.LIVE_ROUTE, reason)
    }

    @Test
    fun mrComicQuestPriorityReason_prefersWeeklyPushAfterDailyGoalIsDone() {
        val reason = mrComicQuestPriorityReason(
            achievement = testAchievement(AchievementId.READER),
            hintAction = MrComicDiscoveryAction.OPEN_FILES,
            goalState = DailyReadingGoalState(
                enabled = true,
                targetPages = 20,
                pagesReadToday = 20,
                pagesReadThisWeek = 32,
                weeklyTargetPages = 140
            ),
            hasRecent = false
        )

        assertEquals(MrComicQuestPriorityReason.WEEKLY_PUSH, reason)
    }

    @Test
    fun mrComicQuestPriorityReason_prefersWeeklyRelaxedWhenWeekIsClosed() {
        val reason = mrComicQuestPriorityReason(
            achievement = testAchievement(AchievementId.BOOKMARKER),
            hintAction = MrComicDiscoveryAction.OPEN_RECENT,
            goalState = DailyReadingGoalState(
                enabled = true,
                targetPages = 20,
                pagesReadToday = 20,
                pagesReadThisWeek = 140,
                weeklyTargetPages = 140,
                streakEnabled = true,
                currentStreak = 4
            ),
            hasRecent = true
        )

        assertEquals(MrComicQuestPriorityReason.WEEKLY_RELAXED, reason)
    }

    @Test
    fun mrComicQuestPriorityReason_fallsBackToShelfBuildForShelfAchievements() {
        val reason = mrComicQuestPriorityReason(
            achievement = testAchievement(AchievementId.COLLECTOR),
            hintAction = MrComicDiscoveryAction.OPEN_FILES,
            goalState = DailyReadingGoalState(enabled = false),
            hasRecent = false
        )

        assertEquals(MrComicQuestPriorityReason.SHELF_BUILD, reason)
    }

    private fun testAchievement(id: AchievementId) = LibraryAchievement(
        id = id,
        title = id.name,
        description = "desc",
        emoji = "*",
        isUnlocked = false,
        progressCurrent = 1,
        progressTarget = 3
    )
}
