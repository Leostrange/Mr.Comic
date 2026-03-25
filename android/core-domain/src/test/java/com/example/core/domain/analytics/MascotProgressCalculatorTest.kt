package com.example.core.domain.analytics

import com.example.core.model.Comic
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class MascotProgressCalculatorTest {

    @Test
    fun calculateMascotProgress_usesApproximatePagesAndCompletedTitles() {
        val progress = calculateMascotProgress(
            listOf(
                Comic(id = "unread", title = "Unread", pageCount = 100),
                Comic(
                    id = "active",
                    title = "Active",
                    pageCount = 50,
                    currentPage = 9,
                    readingProgress = 0.2f,
                    lastReadDate = 100L
                ),
                Comic(
                    id = "done",
                    title = "Done",
                    pageCount = 200,
                    currentPage = 199,
                    readingProgress = 1f,
                    isCompleted = true,
                    lastReadDate = 200L
                )
            )
        )

        assertEquals(210, progress.approxPagesRead)
        assertEquals(1, progress.completedTitles)
        assertEquals(270, progress.xp)
        assertEquals(MascotStage.TEEN, progress.stage)
        assertEquals(200, progress.stageStartXp)
        assertEquals(700, progress.nextStageXp)
        assertTrue(progress.stageProgress > 0.1f)
    }

    @Test
    fun calculateMascotProgress_capsAdultStage() {
        val progress = calculateMascotProgress(
            listOf(
                Comic(
                    id = "epic",
                    title = "Epic",
                    pageCount = 1800,
                    currentPage = 1799,
                    readingProgress = 1f,
                    isCompleted = true,
                    lastReadDate = 300L
                )
            )
        )

        assertEquals(MascotStage.ADULT, progress.stage)
        assertEquals(1860, progress.xp)
        assertEquals(1f, progress.stageProgress)
        assertNull(progress.nextStageXp)
    }

    @Test
    fun resolveMascotStageTimeline_marksTeenBandAndRemainingXp() {
        val timeline = resolveMascotStageTimeline(
            MascotProgressState(
                xp = 270,
                stage = MascotStage.TEEN,
                stageStartXp = 200,
                nextStageXp = 700,
                stageProgress = 0.14f
            )
        )

        assertEquals(MascotStage.TEEN, timeline.currentStage)
        assertEquals(430, timeline.xpToNextStage)
        assertTrue(timeline.entries.first { it.stage == MascotStage.CHILD }.isCompleted)
        assertTrue(timeline.entries.first { it.stage == MascotStage.TEEN }.isCurrent)
        assertTrue(timeline.entries.first { it.stage == MascotStage.YOUNG }.isUpcoming)
    }

    @Test
    fun resolveMascotStageTimeline_handlesFinalStageWithoutFutureTarget() {
        val timeline = resolveMascotStageTimeline(
            MascotProgressState(
                xp = 1860,
                stage = MascotStage.ADULT,
                stageStartXp = 1600,
                nextStageXp = null,
                stageProgress = 1f
            )
        )

        assertTrue(timeline.isMaxStage)
        assertNull(timeline.xpToNextStage)
        assertTrue(timeline.entries.first { it.stage == MascotStage.ADULT }.isCurrent)
        assertTrue(timeline.entries.first { it.stage == MascotStage.YOUNG }.isCompleted)
    }

    @Test
    fun resolveMascotStageArchive_keepsHighestReachedStageFromAcknowledgedPreview() {
        val archive = resolveMascotStageArchive(
            progress = MascotProgressState(
                xp = 250,
                stage = MascotStage.TEEN,
                stageStartXp = 200,
                nextStageXp = 700,
                stageProgress = 0.1f
            ),
            acknowledgedStageName = MascotStage.YOUNG.name
        )

        assertEquals(MascotStage.YOUNG, archive.highestReachedStage)
        assertEquals(3, archive.entries.size)
        assertTrue(archive.entries.first { it.stage == MascotStage.TEEN }.isCurrent)
        assertTrue(archive.entries.first { it.stage == MascotStage.YOUNG }.isHighestReached)
    }

    @Test
    fun resolveMascotStageArchive_usesCurrentStageWhenNoHigherAcknowledgedStageExists() {
        val archive = resolveMascotStageArchive(
            progress = MascotProgressState(
                xp = 80,
                stage = MascotStage.CHILD,
                stageStartXp = 0,
                nextStageXp = 200,
                stageProgress = 0.4f
            ),
            acknowledgedStageName = null
        )

        assertEquals(MascotStage.CHILD, archive.highestReachedStage)
        assertEquals(1, archive.entries.size)
        assertTrue(archive.entries.first().isCurrent)
        assertTrue(archive.entries.first().isHighestReached)
    }

    @Test
    fun resolveMascotStagePreview_returnsCurrentStageWhenAcknowledgedStageIsLower() {
        val preview = resolveMascotStagePreview(
            currentStage = MascotStage.YOUNG,
            acknowledgedStageName = MascotStage.TEEN.name
        )

        assertEquals(MascotStage.YOUNG, preview)
    }

    @Test
    fun resolveMascotStagePreview_hidesPreviewWhenDisabledOrAlreadyAcknowledged() {
        val disabledPreview = resolveMascotStagePreview(
            currentStage = MascotStage.ADULT,
            acknowledgedStageName = MascotStage.YOUNG.name,
            enabled = false
        )
        val acknowledgedPreview = resolveMascotStagePreview(
            currentStage = MascotStage.TEEN,
            acknowledgedStageName = MascotStage.TEEN.name
        )

        assertNull(disabledPreview)
        assertNull(acknowledgedPreview)
    }
}
