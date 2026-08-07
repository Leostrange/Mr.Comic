package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent

/** Standalone analytics helpers extracted from LibraryViewModel. */

internal fun shouldTrackMascotStageUp(
    previousStage: MascotStage?,
    currentStage: MascotStage
): Boolean = previousStage != null && currentStage.ordinal > previousStage.ordinal

internal fun buildQuestTransitionAnalyticsEvents(
    previousAchievementId: String,
    nextAchievementId: String?,
    previousCompleted: Boolean,
    actionName: String?
): List<ReadingAnalyticsEvent> {
    val events = mutableListOf<ReadingAnalyticsEvent>()
    if (previousCompleted) {
        events += ReadingAnalyticsEvent.QuestCompleted(
            achievementId = previousAchievementId,
            nextAchievementId = nextAchievementId,
            action = actionName
        )
    }
    if (!nextAchievementId.isNullOrBlank() && nextAchievementId != previousAchievementId) {
        events += ReadingAnalyticsEvent.QuestSwitched(
            previousAchievementId = previousAchievementId,
            nextAchievementId = nextAchievementId,
            action = actionName
        )
    }
    return events
}
