package com.example.mrcomic.home

import com.example.core.domain.analytics.DailyReadingCalendarDay
import com.example.core.domain.analytics.DailyReadingGoalState
import com.example.core.domain.analytics.MascotStage
import com.example.core.domain.analytics.ReaderCheckpoint
import com.example.core.model.Comic
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ContinueSurfaceDensityPolicyTest {

    @Test
    fun shouldShowContinueCheckpointChip_hidesWhenReturnPromptIsVisible() {
        assertFalse(
            shouldShowContinueCheckpointChip(
                hasReturnPrompt = true,
                checkpointTrail = listOf(ReaderCheckpoint(comicId = "1", comicTitle = "Title", chapterTitle = "Ch", page = 1)),
                mascotRecapEnabled = true,
                hasLibraryContent = true
            )
        )
    }

    @Test
    fun shouldShowContinueWeeklyPlanChip_hidesDuringReturnPrompt() {
        assertFalse(
            shouldShowContinueWeeklyPlanChip(
                goalState = DailyReadingGoalState(
                    enabled = true,
                    pagesReadThisWeek = 34,
                    completedDaysThisWeek = 2
                ),
                hasReturnPrompt = true,
                hasLibraryContent = true
            )
        )
    }

    @Test
    fun shouldShowContinueReadingCalendarStrip_hidesForReturnPromptAndStagePreview() {
        val goalState = DailyReadingGoalState(
            enabled = true,
            recentActivity = listOf(DailyReadingCalendarDay(dayKey = "2026-03-23", pagesRead = 10))
        )

        assertFalse(
            shouldShowContinueReadingCalendarStrip(
                goalState = goalState,
                hasReturnPrompt = true,
                hasStagePreview = false,
                hasLibraryContent = true
            )
        )
        assertFalse(
            shouldShowContinueReadingCalendarStrip(
                goalState = goalState,
                hasReturnPrompt = false,
                hasStagePreview = true,
                hasLibraryContent = true
            )
        )
    }

    @Test
    fun shouldShowContinueStagePreview_keepsStagePreviewOffWhileReturnCardOwnsTheTop() {
        assertFalse(
            shouldShowContinueStagePreview(
                hasLibraryContent = true,
                hasReturnPrompt = true,
                stagePreview = MascotStage.YOUNG
            )
        )
        assertTrue(
            shouldShowContinueStagePreview(
                hasLibraryContent = true,
                hasReturnPrompt = false,
                stagePreview = MascotStage.YOUNG
            )
        )
    }

    @Test
    fun shouldShowContinueReturnCard_hidesDuplicateRouteForCurrentContinueTitle() {
        assertFalse(
            shouldShowContinueReturnCard(
                continueReading = comic("same"),
                returnPrompt = ContinueReturnPrompt(
                    daysAway = 3,
                    comicId = "same",
                    page = null,
                    targetTitle = "Same",
                    usesCheckpoint = false
                )
            )
        )
        assertTrue(
            shouldShowContinueReturnCard(
                continueReading = comic("current"),
                returnPrompt = ContinueReturnPrompt(
                    daysAway = 3,
                    comicId = "other",
                    page = 12,
                    targetTitle = "Other",
                    usesCheckpoint = true
                )
            )
        )
    }

    @Test
    fun dedupeContinueCheckpointTrail_dropsCurrentContinueTitleFromCheckpointStrip() {
        val visible = dedupeContinueCheckpointTrail(
            checkpointTrail = listOf(
                ReaderCheckpoint(comicId = "current", comicTitle = "Current", chapterTitle = "Ch", page = 5),
                ReaderCheckpoint(comicId = "other", comicTitle = "Other", chapterTitle = "Ch", page = 9)
            ),
            continueReading = comic("current")
        )

        assertEquals(listOf("other"), visible.map { it.comicId })
    }

    private fun comic(id: String) = Comic(
        id = id,
        title = id,
        path = id
    )
}
