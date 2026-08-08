package io.leostrange.mrcomic.core.domain.analytics

import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.model.Comic
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class MrComicMascotStateTest {

    @Test
    fun `returns standby when library is empty`() {
        val state = resolveMrComicMascotState(
            context = MrComicMascotContext.HOME,
            progress = MascotProgressState(),
            totalTitles = 0,
            completedTitles = 0
        )

        assertEquals(MrComicMascotMood.STANDBY, state.mood)
        assertFalse(state.hasLibraryContent)
    }

    @Test
    fun `returns locked in when recent title is actively being read`() {
        val state = resolveMrComicMascotState(
            context = MrComicMascotContext.LIBRARY,
            progress = MascotProgressState(stage = MascotStage.TEEN),
            totalTitles = 4,
            completedTitles = 1,
            recentComic = Comic(title = "Test", readingProgress = 0.42f)
        )

        assertEquals(MrComicMascotMood.LOCKED_IN, state.mood)
        assertTrue(state.hasActiveRead)
        assertEquals(MascotStage.TEEN, state.stage)
    }

    @Test
    fun `returns rhythm locked when weekly rhythm is established`() {
        val state = resolveMrComicMascotState(
            context = MrComicMascotContext.HOME,
            progress = MascotProgressState(),
            totalTitles = 5,
            completedTitles = 2,
            goalState = DailyReadingGoalState(
                enabled = true,
                streakEnabled = true,
                currentStreak = 4
            )
        )

        assertEquals(MrComicMascotMood.RHYTHM_LOCKED, state.mood)
        assertTrue(state.hasLockedRhythm)
    }

    @Test
    fun `returns showcase when achievement shelf is already weighted`() {
        val state = resolveMrComicMascotState(
            context = MrComicMascotContext.LIBRARY,
            progress = MascotProgressState(),
            totalTitles = 6,
            completedTitles = 2,
            unlockedCount = 4,
            totalCount = 6
        )

        assertEquals(MrComicMascotMood.SHOWCASE, state.mood)
        assertTrue(state.hasAchievementShelf)
    }

    @Test
    fun `returns archivist when bookmark or quote trail is strong`() {
        val state = resolveMrComicMascotState(
            context = MrComicMascotContext.LIBRARY,
            progress = MascotProgressState(),
            totalTitles = 6,
            completedTitles = 1,
            bookmarkedTitles = 2
        )

        assertEquals(MrComicMascotMood.ARCHIVIST, state.mood)
        assertTrue(state.hasArchiveTrail)
    }

    @Test
    fun `context becomes level up when stage preview is pending`() {
        val state = resolveMrComicMascotState(
            context = MrComicMascotContext.HOME,
            progress = MascotProgressState(stage = MascotStage.TEEN),
            totalTitles = 2,
            completedTitles = 0,
            acknowledgedStageName = MascotStage.CHILD.name
        )

        assertEquals(MrComicMascotContext.LEVEL_UP, state.context)
    }

    @Test
    fun `context becomes return on home surface without active read`() {
        val state = resolveMrComicMascotState(
            context = MrComicMascotContext.HOME,
            progress = MascotProgressState(),
            totalTitles = 3,
            completedTitles = 1
        )

        assertEquals(MrComicMascotContext.RETURN, state.context)
    }

    @Test
    fun `context does not become level up when preview is disabled`() {
        val state = resolveMrComicMascotState(
            context = MrComicMascotContext.PROGRESS,
            progress = MascotProgressState(stage = MascotStage.TEEN),
            totalTitles = 4,
            completedTitles = 1,
            acknowledgedStageName = MascotStage.CHILD.name,
            previewEnabled = false
        )

        assertEquals(MrComicMascotContext.PROGRESS, state.context)
    }

    @Test
    fun `context becomes idle when library is empty even outside home`() {
        val state = resolveMrComicMascotState(
            context = MrComicMascotContext.PROGRESS,
            progress = MascotProgressState(stage = MascotStage.YOUNG),
            totalTitles = 0,
            completedTitles = 0,
            acknowledgedStageName = MascotStage.YOUNG.name
        )

        assertEquals(MrComicMascotContext.IDLE, state.context)
        assertFalse(state.hasLibraryContent)
    }
}
