package io.leostrange.mrcomic.feature.reader.ui

import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.first
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test

/**
 * ARC-11 slice 3 — state-machine coverage for [ReaderSessionCoordinator].
 *
 * The coordinator is a pure ledger; no Android, coroutine scope, or
 * engine dependencies. Every legal and illegal transition is checked so a
 * future integration node cannot accidentally take the session through a
 * forbidden path.
 */
@OptIn(ExperimentalCoroutinesApi::class)
class ReaderSessionCoordinatorTest {

    @Test
    fun initialPhase_isIdle() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()
        assertEquals(ReaderSessionPhase.Idle, coordinator.phase.value)
    }

    // ── Open path ──────────────────────────────────────────────────────────

    @Test
    fun beginOpenFromIdle_transitionsToOpening() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()

        assertTrue(coordinator.beginOpen())
        assertEquals(ReaderSessionPhase.Opening, coordinator.phase.value)
    }

    @Test
    fun beginOpenWhileOpening_isRejected() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()
        coordinator.beginOpen()

        assertFalse(coordinator.beginOpen())
        assertEquals(ReaderSessionPhase.Opening, coordinator.phase.value)
    }

    @Test
    fun beginOpenWhileReady_isRejected() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()
        coordinator.beginOpen()
        coordinator.markReadyAfterBeginOpen()

        assertFalse(coordinator.beginOpen())
        assertEquals(ReaderSessionPhase.Ready, coordinator.phase.value)
    }

    @Test
    fun beginOpenWhileClosing_isRejected() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()
        coordinator.beginOpen()
        coordinator.markReadyAfterBeginOpen()
        coordinator.beginClose()

        assertFalse(coordinator.beginOpen())
        assertEquals(ReaderSessionPhase.Closing, coordinator.phase.value)
    }

    @Test
    fun markReadyAfterBeginOpen_fromOpening_transitionsToReady() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()
        coordinator.beginOpen()

        coordinator.markReadyAfterBeginOpen()

        assertEquals(ReaderSessionPhase.Ready, coordinator.phase.value)
    }

    @Test
    fun markReadyFromIdle_throws() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()

        try {
            coordinator.markReadyAfterBeginOpen()
            fail("Expected IllegalArgumentException from Idle")
        } catch (expected: IllegalArgumentException) {
            assertTrue(
                "message should mention current phase",
                expected.message!!.contains("Idle")
            )
        }
        assertEquals(ReaderSessionPhase.Idle, coordinator.phase.value)
    }

    @Test
    fun markReadyFromClosing_throws() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()
        coordinator.beginOpen()
        coordinator.markReadyAfterBeginOpen()
        coordinator.beginClose()

        try {
            coordinator.markReadyAfterBeginOpen()
            fail("Expected IllegalArgumentException from Closing")
        } catch (expected: IllegalArgumentException) {
            assertTrue(expected.message!!.contains("Closing"))
        }
        assertEquals(ReaderSessionPhase.Closing, coordinator.phase.value)
    }

    // ── Close path ─────────────────────────────────────────────────────────

    @Test
    fun beginCloseFromReady_transitionsToClosing() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()
        coordinator.beginOpen()
        coordinator.markReadyAfterBeginOpen()

        assertTrue(coordinator.beginClose())
        assertEquals(ReaderSessionPhase.Closing, coordinator.phase.value)
    }

    @Test
    fun beginCloseFromIdle_isRejected() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()
        assertFalse(coordinator.beginClose())
        assertEquals(ReaderSessionPhase.Idle, coordinator.phase.value)
    }

    @Test
    fun beginCloseFromOpening_isRejected() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()
        coordinator.beginOpen()

        assertFalse(coordinator.beginClose())
        assertEquals(ReaderSessionPhase.Opening, coordinator.phase.value)
    }

    @Test
    fun markClosedFromClosing_transitionsToIdle() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()
        coordinator.beginOpen()
        coordinator.markReadyAfterBeginOpen()
        coordinator.beginClose()

        coordinator.markClosed()

        assertEquals(ReaderSessionPhase.Idle, coordinator.phase.value)
    }

    @Test
    fun markClosedFromIdle_throws() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()
        try {
            coordinator.markClosed()
            fail("Expected IllegalArgumentException from Idle")
        } catch (expected: IllegalArgumentException) {
            assertTrue(expected.message!!.contains("Closing"))
        }
        assertEquals(ReaderSessionPhase.Idle, coordinator.phase.value)
    }

    // ── Recovery path ──────────────────────────────────────────────────────

    @Test
    fun resetFromAnyPhase_returnsToIdle() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()
        coordinator.beginOpen()
        coordinator.markReadyAfterBeginOpen()
        coordinator.beginClose()

        coordinator.reset()

        assertEquals(ReaderSessionPhase.Idle, coordinator.phase.value)
        // And the next cycle starts cleanly.
        assertTrue(coordinator.beginOpen())
        assertEquals(ReaderSessionPhase.Opening, coordinator.phase.value)
    }

    @Test
    fun phaseIsObservable_replayingWholeHistory() = runBlockingProbe {
        val coordinator = ReaderSessionCoordinator()
        coordinator.beginOpen()
        coordinator.markReadyAfterBeginOpen()
        coordinator.beginClose()
        coordinator.markClosed()

        // Both the live value and the first emission on the StateFlow agree,
        // even after a full round-trip. Catches accidental off-by-one resets.
        assertEquals(ReaderSessionPhase.Idle, coordinator.phase.value)
        assertEquals(ReaderSessionPhase.Idle, coordinator.phase.first())
    }

    // ─────────────────────────────────────────────────────────────────────
    // runBlockingProbe: trampoline coroutine helper so every test returns a
    // Unit synchronously. The coordinator is fully synchronous; the helper
    // keeps the test bodies short.
    private fun runBlockingProbe(block: suspend ProbeScope.() -> Unit) {
        kotlinx.coroutines.runBlocking { block(ProbeScope) }
    }

    private object ProbeScope : kotlinx.coroutines.CoroutineScope {
        override val coroutineContext = kotlinx.coroutines.Dispatchers.Unconfined
    }
}
