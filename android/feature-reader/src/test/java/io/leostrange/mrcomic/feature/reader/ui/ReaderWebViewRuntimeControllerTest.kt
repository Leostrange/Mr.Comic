package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderWebViewRuntimeControllerTest {

    private val metrics = ReaderWebViewLayoutMetrics(pageCount = 7, pageIndex = 2, characterOffset = 120)
    private val target = ReaderWebViewRestoreTarget(sectionIndex = 3, characterOffset = 80)

    @Test
    fun requestCommitAndLayoutWithoutTargetPublishesReady() {
        val controller = ReaderWebViewLoadController()

        assertEquals(
            listOf(ReaderWebViewRuntimeEffect.LoadDocument(1L, 1, fallback = false)),
            controller.dispatch(ReaderWebViewRuntimeEvent.LoadRequested("book/page", 1L))
        )
        assertTrue(controller.dispatch(ReaderWebViewRuntimeEvent.DocumentCommitted(1L)).isEmpty())
        assertEquals(
            listOf(ReaderWebViewRuntimeEffect.PublishReady(1L, metrics)),
            controller.dispatch(ReaderWebViewRuntimeEvent.LayoutReady(1L, metrics))
        )
        assertEquals(ReaderWebViewRuntimePhase.READY, controller.runtimeState.phase)
    }

    @Test
    fun layoutBeforeCommitWaitsAndThenRestores() {
        val controller = ReaderWebViewLoadController()
        controller.dispatch(ReaderWebViewRuntimeEvent.LoadRequested("book/page", 4L, target))

        assertTrue(controller.dispatch(ReaderWebViewRuntimeEvent.LayoutReady(4L, metrics)).isEmpty())
        assertEquals(
            listOf(ReaderWebViewRuntimeEffect.Restore(4L, target)),
            controller.dispatch(ReaderWebViewRuntimeEvent.DocumentCommitted(4L))
        )
        assertEquals(ReaderWebViewRuntimePhase.RESTORING, controller.runtimeState.phase)
    }

    @Test
    fun restoreIsIssuedOnceAndAcknowledgementPublishesActualMetrics() {
        val controller = ReaderWebViewLoadController()
        controller.dispatch(ReaderWebViewRuntimeEvent.LoadRequested("book/page", 2L, target))
        controller.dispatch(ReaderWebViewRuntimeEvent.DocumentCommitted(2L))
        controller.dispatch(ReaderWebViewRuntimeEvent.LayoutReady(2L, metrics))

        assertTrue(controller.dispatch(ReaderWebViewRuntimeEvent.LayoutReady(2L, metrics)).isEmpty())
        assertEquals(
            listOf(ReaderWebViewRuntimeEffect.PublishReady(2L, metrics)),
            controller.dispatch(ReaderWebViewRuntimeEvent.RestoreAcknowledged(2L))
        )
        assertTrue(controller.dispatch(ReaderWebViewRuntimeEvent.RestoreAcknowledged(2L)).isEmpty())
    }

    @Test
    fun staleGenerationEventsNeverMutateTheActiveLoad() {
        val controller = ReaderWebViewLoadController()
        controller.dispatch(ReaderWebViewRuntimeEvent.LoadRequested("book/a", 10L))
        controller.dispatch(ReaderWebViewRuntimeEvent.LoadRequested("book/b", 11L))
        val before = controller.runtimeState

        assertTrue(controller.dispatch(ReaderWebViewRuntimeEvent.DocumentCommitted(10L)).isEmpty())
        assertTrue(controller.dispatch(ReaderWebViewRuntimeEvent.LayoutReady(10L, metrics)).isEmpty())
        assertTrue(controller.dispatch(ReaderWebViewRuntimeEvent.LoadFailed(10L, "late")).isEmpty())
        assertEquals(before, controller.runtimeState)
    }

    @Test
    fun firstFailureRequestsOneFallbackAndSecondFailureIsTerminal() {
        val controller = ReaderWebViewLoadController()
        controller.dispatch(ReaderWebViewRuntimeEvent.LoadRequested("book/page", 8L))

        assertEquals(
            listOf(ReaderWebViewRuntimeEffect.LoadDocument(8L, 2, fallback = true)),
            controller.dispatch(ReaderWebViewRuntimeEvent.ContentBlank(8L))
        )
        assertEquals(
            listOf(ReaderWebViewRuntimeEffect.ShowTerminalError(8L, "fallback blank")),
            controller.dispatch(ReaderWebViewRuntimeEvent.ContentBlank(8L))
        )
        assertEquals(ReaderWebViewRuntimePhase.TERMINAL_ERROR, controller.runtimeState.phase)
    }

    @Test
    fun repeatedRequestForSameGenerationIsIdempotent() {
        val controller = ReaderWebViewLoadController()
        controller.dispatch(ReaderWebViewRuntimeEvent.LoadRequested("book/page", 3L, target))
        val before = controller.runtimeState

        assertTrue(
            controller.dispatch(ReaderWebViewRuntimeEvent.LoadRequested("book/page", 3L, target)).isEmpty()
        )
        assertEquals(before, controller.runtimeState)
    }

    @Test
    fun disposeCancelsActiveWorkAndIgnoresCallbacks() {
        val controller = ReaderWebViewLoadController()
        controller.dispatch(ReaderWebViewRuntimeEvent.LoadRequested("book/page", 5L, target))
        controller.dispatch(ReaderWebViewRuntimeEvent.Disposed)

        assertEquals(ReaderWebViewRuntimePhase.DISPOSED, controller.runtimeState.phase)
        assertTrue(controller.dispatch(ReaderWebViewRuntimeEvent.DocumentCommitted(5L)).isEmpty())
        assertTrue(controller.dispatch(ReaderWebViewRuntimeEvent.LayoutReady(5L, metrics)).isEmpty())
        assertEquals(ReaderWebViewRuntimePhase.DISPOSED, controller.runtimeState.phase)
    }

    @Test
    fun clearReturnsDisposedControllerToFreshIdleState() {
        val controller = ReaderWebViewLoadController()
        controller.dispatch(ReaderWebViewRuntimeEvent.LoadRequested("book/page", 6L))
        controller.dispatch(ReaderWebViewRuntimeEvent.Disposed)

        controller.clear()

        assertEquals(ReaderWebViewRuntimeState(), controller.runtimeState)
    }
}
