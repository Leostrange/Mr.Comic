package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.domain.analytics.DailyReadingCalendarDay
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.feature.library.components.AchievementId
import io.leostrange.mrcomic.feature.library.components.AchievementQuestFeedbackTone
import io.leostrange.mrcomic.feature.library.components.AchievementQuestTransition
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class LibraryQuestFeedbackPolicyTest {

    @Test
    fun mrComicShowQuestFeedback_defersFeedbackWhileSearchIsActive() {
        assertEquals(
            false,
            mrComicShowQuestFeedback(
                searchActive = true,
                hasQuestFeedback = true
            )
        )
        assertEquals(
            true,
            mrComicShowQuestFeedback(
                searchActive = false,
                hasQuestFeedback = true
            )
        )
    }

    @Test
    fun mrComicQuestFeedbackAction_hidesActionWhileSearchIsActive() {
        val action = mrComicQuestFeedbackAction(
            searchActive = true,
            feedback = testQuestFeedback(),
            hintAction = MrComicDiscoveryAction.OPEN_RECENT
        )

        assertNull(action)
    }

    @Test
    fun mrComicQuestFeedbackAction_hidesDuplicateRecentActionWhenRecentCardAlreadyExists() {
        val action = mrComicQuestFeedbackAction(
            searchActive = false,
            feedback = testQuestFeedback(),
            hintAction = MrComicDiscoveryAction.OPEN_RECENT
        )

        assertNull(action)
    }

    @Test
    fun mrComicQuestFeedbackAction_keepsFilesActionWhenSearchIsInactive() {
        val action = mrComicQuestFeedbackAction(
            searchActive = false,
            feedback = testQuestFeedback(),
            hintAction = MrComicDiscoveryAction.OPEN_FILES
        )

        assertEquals(MrComicDiscoveryAction.OPEN_FILES, action)
    }

    @Test
    fun mrComicQuestFeedbackAction_keepsSeriesActionWhenSearchIsInactive() {
        val action = mrComicQuestFeedbackAction(
            searchActive = false,
            feedback = testQuestFeedback(),
            hintAction = MrComicDiscoveryAction.OPEN_SERIES
        )

        assertEquals(MrComicDiscoveryAction.OPEN_SERIES, action)
    }

    @Test
    fun mrComicQuestFeedbackAction_hidesActionWhenThereIsNoNextQuest() {
        val action = mrComicQuestFeedbackAction(
            searchActive = false,
            feedback = testQuestFeedback(nextAchievementId = null),
            hintAction = MrComicDiscoveryAction.OPEN_FILES
        )

        assertNull(action)
    }

    @Test
    fun mrComicUseCompactStagePreview_turnsOnOnlyForTripleStack() {
        val compact = mrComicUseCompactStagePreview(
            searchActive = true,
            hasStagePreview = true,
            hasQuestFeedback = true
        )

        assertEquals(true, compact)
    }

    @Test
    fun mrComicUseCompactStagePreview_staysOffWithoutSearchOrFeedback() {
        assertEquals(
            false,
            mrComicUseCompactStagePreview(
                searchActive = false,
                hasStagePreview = true,
                hasQuestFeedback = true
            )
        )
        assertEquals(
            false,
            mrComicUseCompactStagePreview(
                searchActive = true,
                hasStagePreview = true,
                hasQuestFeedback = false
            )
        )
    }

    @Test
    fun mrComicUseCompactSupportCards_turnsOnForAnyTransientTopState() {
        assertEquals(
            true,
            mrComicUseCompactSupportCards(
                searchActive = true,
                hasStagePreview = false,
                hasQuestFeedback = false
            )
        )
        assertEquals(
            true,
            mrComicUseCompactSupportCards(
                searchActive = false,
                hasStagePreview = true,
                hasQuestFeedback = false
            )
        )
        assertEquals(
            true,
            mrComicUseCompactSupportCards(
                searchActive = false,
                hasStagePreview = false,
                hasQuestFeedback = true
            )
        )
    }

    @Test
    fun mrComicUseCompactSupportCards_staysOffForCalmHubState() {
        assertEquals(
            false,
            mrComicUseCompactSupportCards(
                searchActive = false,
                hasStagePreview = false,
                hasQuestFeedback = false
            )
        )
    }

    @Test
    fun mrComicShowSearchContextCard_onlyShowsWhenSearchIsAlone() {
        assertEquals(
            true,
            mrComicShowSearchContextCard(
                searchActive = true,
                hasStagePreview = false,
                hasQuestFeedback = false
            )
        )
        assertEquals(
            false,
            mrComicShowSearchContextCard(
                searchActive = true,
                hasStagePreview = true,
                hasQuestFeedback = false
            )
        )
        assertEquals(
            false,
            mrComicShowSearchContextCard(
                searchActive = true,
                hasStagePreview = false,
                hasQuestFeedback = true
            )
        )
    }

    @Test
    fun mrComicShowReadingCalendarCard_hidesForTransientTopStateAndSearch() {
        val goalState = DailyReadingGoalState(
            enabled = true,
            recentActivity = listOf(
                DailyReadingCalendarDay(dayKey = "2026-03-23", pagesRead = 12)
            )
        )

        assertEquals(
            false,
            mrComicShowReadingCalendarCard(
                searchActive = true,
                goalState = goalState,
                hasStagePreview = false,
                hasQuestFeedback = false
            )
        )
        assertEquals(
            false,
            mrComicShowReadingCalendarCard(
                searchActive = false,
                goalState = goalState,
                hasStagePreview = true,
                hasQuestFeedback = false
            )
        )
        assertEquals(
            false,
            mrComicShowReadingCalendarCard(
                searchActive = false,
                goalState = goalState,
                hasStagePreview = false,
                hasQuestFeedback = true
            )
        )
    }

    @Test
    fun mrComicShowReadingCalendarCard_staysVisibleForCalmGoalState() {
        val visible = mrComicShowReadingCalendarCard(
            searchActive = false,
            goalState = DailyReadingGoalState(
                enabled = true,
                recentActivity = listOf(
                    DailyReadingCalendarDay(dayKey = "2026-03-23", pagesRead = 12)
                )
            ),
            hasStagePreview = false,
            hasQuestFeedback = false
        )

        assertEquals(true, visible)
    }

    @Test
    fun buildQuestTransitionAnalyticsEvents_reportsCompletionAndSwitch() {
        val events = buildQuestTransitionAnalyticsEvents(
            previousAchievementId = AchievementId.FIRST_COMPLETE.name,
            nextAchievementId = AchievementId.MARATHON.name,
            previousCompleted = true,
            actionName = MrComicDiscoveryAction.OPEN_SERIES.name
        )

        assertEquals(2, events.size)
        assertTrue(events[0] is ReadingAnalyticsEvent.QuestCompleted)
        assertTrue(events[1] is ReadingAnalyticsEvent.QuestSwitched)
    }

    @Test
    fun buildQuestTransitionAnalyticsEvents_skipsSwitchWhenQuestDoesNotChange() {
        val events = buildQuestTransitionAnalyticsEvents(
            previousAchievementId = AchievementId.READER.name,
            nextAchievementId = AchievementId.READER.name,
            previousCompleted = false,
            actionName = MrComicDiscoveryAction.OPEN_FILES.name
        )

        assertEquals(emptyList<ReadingAnalyticsEvent>(), events)
    }

    @Test
    fun shouldTrackMascotStageUp_onlyTracksForwardMovement() {
        assertTrue(shouldTrackMascotStageUp(MascotStage.CHILD, MascotStage.TEEN))
        assertEquals(false, shouldTrackMascotStageUp(MascotStage.TEEN, MascotStage.TEEN))
        assertEquals(false, shouldTrackMascotStageUp(null, MascotStage.CHILD))
    }

    private fun testQuestFeedback(
        nextAchievementId: AchievementId? = AchievementId.READER
    ) = AchievementQuestTransition(
        tone = AchievementQuestFeedbackTone.COMPLETED,
        previousAchievementId = AchievementId.FIRST_COMPLETE,
        previousTitle = "First Complete",
        nextAchievementId = nextAchievementId,
        nextTitle = nextAchievementId?.name,
        previousCompleted = true
    )
}
