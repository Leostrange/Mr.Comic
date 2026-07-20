package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.domain.analytics.MascotProgressState
import io.leostrange.mrcomic.core.domain.analytics.MascotStageArchive
import io.leostrange.mrcomic.core.domain.analytics.MascotStageArchiveEntry
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.MascotStageTimeline
import io.leostrange.mrcomic.core.domain.analytics.MascotStageTimelineEntry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class MrComicProgressCopyTest {

    @Test
    fun sharedStageLabel_usesStableStageNumbering() {
        assertEquals("Stage 1 · Child", mrComicSharedStageLabel("en", MascotStage.CHILD))
        assertEquals("Stage 4 · Adult", mrComicSharedStageLabel("en", MascotStage.ADULT))
        assertEquals("Этап 2 · Подросток", mrComicSharedStageLabel("ru", MascotStage.TEEN))
    }

    @Test
    fun sharedStageShortLabel_usesCompactVariantForArchiveStrip() {
        assertEquals("Child", mrComicSharedStageShortLabel("en", MascotStage.CHILD))
        assertEquals("Юность", mrComicSharedStageShortLabel("ru", MascotStage.YOUNG))
    }

    @Test
    fun sharedStageHint_keepsRemainingXpAndTrackedPagesTogether() {
        val progress = MascotProgressState(
            stage = MascotStage.TEEN,
            xp = 245,
            nextStageXp = 700,
            stageProgress = 0.33f,
            approxPagesRead = 245
        )

        val hint = mrComicSharedStageHint("en", progress)

        assertTrue(hint.contains("455 XP"))
        assertTrue(hint.contains("245"))
    }

    @Test
    fun sharedStageHint_reportsFinalStageConsistently() {
        val progress = MascotProgressState(
            stage = MascotStage.ADULT,
            xp = 1800,
            nextStageXp = null,
            stageProgress = 1f,
            approxPagesRead = 1800
        )

        assertEquals(
            "Final stage reached · tracked pages: 1800",
            mrComicSharedStageHint("en", progress)
        )
    }

    @Test
    fun sharedStageRunway_usesNextStageNumberWhenNotMaxed() {
        val runway = mrComicSharedStageRunway(
            language = "en",
            timeline = MascotStageTimeline(
                currentXp = 270,
                currentStage = MascotStage.TEEN,
                stageStartXp = 200,
                nextStageXp = 700,
                xpToNextStage = 430,
                isMaxStage = false,
                entries = listOf(
                    MascotStageTimelineEntry(MascotStage.CHILD, 0, isCompleted = true, isCurrent = false, isUpcoming = false),
                    MascotStageTimelineEntry(MascotStage.TEEN, 200, isCompleted = false, isCurrent = true, isUpcoming = false),
                    MascotStageTimelineEntry(MascotStage.YOUNG, 700, isCompleted = false, isCurrent = false, isUpcoming = true),
                    MascotStageTimelineEntry(MascotStage.ADULT, 1600, isCompleted = false, isCurrent = false, isUpcoming = true)
                )
            )
        )

        assertEquals("430 XP to Stage 3", runway)
    }

    @Test
    fun sharedStageRunway_reportsFinalStageAsStableSnapshot() {
        val runway = mrComicSharedStageRunway(
            language = "en",
            timeline = MascotStageTimeline(
                currentXp = 1860,
                currentStage = MascotStage.ADULT,
                stageStartXp = 1600,
                nextStageXp = null,
                xpToNextStage = null,
                isMaxStage = true,
                entries = emptyList()
            )
        )

        assertEquals("Final stage locked in · 1860 XP total", runway)
    }

    @Test
    fun sharedStageArchiveSummary_reportsReachedAndHighestStage() {
        val summary = mrComicSharedStageArchiveSummary(
            language = "en",
            archive = MascotStageArchive(
                currentStage = MascotStage.TEEN,
                highestReachedStage = MascotStage.YOUNG,
                entries = listOf(
                    MascotStageArchiveEntry(MascotStage.CHILD, 0, isCurrent = false, isHighestReached = false),
                    MascotStageArchiveEntry(MascotStage.TEEN, 200, isCurrent = true, isHighestReached = false),
                    MascotStageArchiveEntry(MascotStage.YOUNG, 700, isCurrent = false, isHighestReached = true)
                )
            )
        )

        assertEquals("Reached 3 / 4 stages · highest Stage 3", summary)
    }

    @Test
    fun sharedStageArchiveStatus_distinguishesCurrentAndHighestReached() {
        assertEquals(
            "Current",
            mrComicSharedStageArchiveStatus(
                language = "en",
                entry = MascotStageArchiveEntry(
                    stage = MascotStage.TEEN,
                    unlockXp = 200,
                    isCurrent = true,
                    isHighestReached = false
                )
            )
        )
        assertEquals(
            "Highest reached",
            mrComicSharedStageArchiveStatus(
                language = "en",
                entry = MascotStageArchiveEntry(
                    stage = MascotStage.YOUNG,
                    unlockXp = 700,
                    isCurrent = false,
                    isHighestReached = true
                )
            )
        )
    }

    @Test
    fun progressRecentEmptyText_prioritizesEmptyLibraryBeforeSearchSlice() {
        assertEquals(
            "No titles in the library yet. Add a file or folder to start Mr.Comic progress.",
            mrComicProgressRecentEmptyText(
                language = "en",
                genericEmpty = "No recent reading trail yet.",
                totalTitles = 0,
                searchActive = true
            )
        )
    }

    @Test
    fun progressRecentEmptyText_usesSearchSpecificCopyForSearchSlice() {
        assertEquals(
            "No recent reading trail inside the current search results.",
            mrComicProgressRecentEmptyText(
                language = "en",
                genericEmpty = "No recent reading trail yet.",
                totalTitles = 12,
                searchActive = true
            )
        )
    }

    @Test
    fun progressRecentEmptyText_fallsBackToGenericEmptyCopy() {
        assertEquals(
            "No recent reading trail yet.",
            mrComicProgressRecentEmptyText(
                language = "en",
                genericEmpty = "No recent reading trail yet.",
                totalTitles = 12,
                searchActive = false
            )
        )
    }
}
