package io.leostrange.mrcomic.feature.reader.ui

import kotlinx.coroutines.flow.MutableStateFlow
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderAutoScrollRuntimeControllerTest {

    @Test
    fun enablingNewSession_clearsStalePauseReasons() {
        val state = MutableStateFlow(
            ReaderUiState(
                autoScrollEnabled = false,
                autoScrollPauseReasons = setOf(ReaderAutoScrollPauseReason.TOUCH_GESTURE),
            ),
        )
        val controller = ReaderAutoScrollRuntimeController(state)

        controller.toggle()

        assertTrue(state.value.autoScrollEnabled)
        assertTrue(state.value.autoScrollPauseReasons.isEmpty())
    }

    @Test
    fun resumeOneReason_keepsPauseWhileAnotherReasonIsActive() {
        val state = MutableStateFlow(ReaderUiState(autoScrollEnabled = true))
        val controller = ReaderAutoScrollRuntimeController(state)

        controller.pause(ReaderAutoScrollPauseReason.TOUCH_GESTURE)
        controller.pause(ReaderAutoScrollPauseReason.TEXT_SELECTION_ACTION_MODE)
        assertTrue(state.value.isAutoScrollTemporarilyPaused)

        controller.resume(ReaderAutoScrollPauseReason.TOUCH_GESTURE)
        assertTrue(state.value.isAutoScrollTemporarilyPaused)

        controller.resume(ReaderAutoScrollPauseReason.TEXT_SELECTION_ACTION_MODE)
        assertFalse(state.value.isAutoScrollTemporarilyPaused)
    }

    @Test
    fun pause_doesNotChangeReaderPositionOrSelectedSpeed() {
        val state = MutableStateFlow(
            ReaderUiState(
                currentPage = 15,
                sectionCurrentPage = 3,
                sectionCharacterOffset = 812,
                autoScrollSpeed = 137f,
                autoScrollEnabled = true,
            ),
        )
        val controller = ReaderAutoScrollRuntimeController(state)

        controller.pause(ReaderAutoScrollPauseReason.IMAGE_ZOOM)

        assertEquals(15, state.value.currentPage)
        assertEquals(3, state.value.sectionCurrentPage)
        assertEquals(812, state.value.sectionCharacterOffset)
        assertEquals(137f, state.value.autoScrollSpeed, 0f)
        assertTrue(state.value.autoScrollEnabled)
    }

    @Test
    fun stopClearsSessionState_butDoesNotRepresentAPreferencesDelete() {
        val state = MutableStateFlow(
            ReaderUiState(
                autoScrollSpeed = 137f,
                autoScrollEnabled = true,
                autoScrollCountdownProgress = 0.7f,
                autoScrollPauseReasons = setOf(ReaderAutoScrollPauseReason.BOTTOM_SHEET),
            ),
        )
        val controller = ReaderAutoScrollRuntimeController(state)

        controller.stop()

        assertFalse(state.value.autoScrollEnabled)
        assertEquals(0f, state.value.autoScrollCountdownProgress, 0f)
        assertTrue(state.value.autoScrollPauseReasons.isEmpty())
        assertEquals(137f, state.value.autoScrollSpeed, 0f)
    }

    @Test
    fun eachPauseReason_roundTripsToPausedAndBack() {
        for (reason in ReaderAutoScrollPauseReason.entries) {
            val state = MutableStateFlow(ReaderUiState(autoScrollEnabled = true))
            val controller = ReaderAutoScrollRuntimeController(state)

            controller.pause(reason)
            assertTrue("pause($reason) should set the temporary pause", state.value.isAutoScrollTemporarilyPaused)
            assertTrue("pause($reason) must not stop the session", state.value.autoScrollEnabled)

            controller.resume(reason)
            assertFalse("resume($reason) should clear the temporary pause", state.value.isAutoScrollTemporarilyPaused)
        }
    }

    @Test
    fun resumingEveryReason_clearsTheWholePause() {
        val state = MutableStateFlow(ReaderUiState(autoScrollEnabled = true))
        val controller = ReaderAutoScrollRuntimeController(state)

        ReaderAutoScrollPauseReason.entries.forEach { controller.pause(it) }
        assertTrue(state.value.isAutoScrollTemporarilyPaused)
        assertEquals(ReaderAutoScrollPauseReason.entries.toSet(), state.value.autoScrollPauseReasons)

        ReaderAutoScrollPauseReason.entries.forEach { controller.resume(it) }
        assertFalse(state.value.isAutoScrollTemporarilyPaused)
        assertTrue(state.value.autoScrollPauseReasons.isEmpty())
    }

    @Test
    fun resumeWithoutPause_isANoOp() {
        val state = MutableStateFlow(ReaderUiState(autoScrollEnabled = true))
        val controller = ReaderAutoScrollRuntimeController(state)

        controller.resume(ReaderAutoScrollPauseReason.BOTTOM_SHEET)

        assertFalse(state.value.isAutoScrollTemporarilyPaused)
        assertTrue(state.value.autoScrollPauseReasons.isEmpty())
    }
}
