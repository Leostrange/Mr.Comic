package io.leostrange.mrcomic.feature.reader.ui

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * ARC-11 slice 3: reader session lifecycle state machine.
 *
 * Reading a book is a four-phase process — Idle, Opening, Ready, Closing —
 * with strict transitions:
 *
 * ```
 *                beginOpen                  markReady
 *      ┌─── Idle ─────────► Opening ─────────────► Ready ───┐
 *      │                                                  │
 *      │                       beginClose               │
 *      └────────────── Idle ◄──── Closing ◄──────────────┘
 *                                     markClosed
 * ```
 *
 * The coordinator does **not** own the heavy lifting itself: opening a
 * format reader and warming up the orchestrator are still performed by
 * [ReaderBookSessionManager] / [TextReaderOrchestrator]. What this object
 * gives them is a single monotonic ledger so the ViewModel cannot enter a
 * half-open or double-closed state.
 *
 * Keeping the contract to enum transitions means every branch is reachable
 * from a unit test without Robolectric, without a real [BookSession] and
 * without bringing in the engine API surface.
 */
enum class ReaderSessionPhase { Idle, Opening, Ready, Closing }

internal class ReaderSessionCoordinator {

    private val _phase = MutableStateFlow(ReaderSessionPhase.Idle)

    /** Live phase stream. Consumers (UI, diagnostics) observe transitions here. */
    val phase: StateFlow<ReaderSessionPhase> = _phase.asStateFlow()

    /**
     * Move Idle → Opening. Returns true if the transition was applied; false
     * if another open / close is already in flight. Call [markReady] after the
     * format reader and orchestrator have finished bootstrapping.
     */
    fun beginOpen(): Boolean = transition(
        from = ReaderSessionPhase.Idle,
        to = ReaderSessionPhase.Opening
    )

    /**
     * Open the no-op path: mark the session as Ready without actually doing
     * any work. Useful for image-only books or test fixtures that want to
     * occupy the Ready slot without tearing the orchestrator down.
     */
    fun markReadyAfterBeginOpen() {
        require(_phase.value == ReaderSessionPhase.Opening) {
            "markReadyAfterBeginOpen only valid in Opening, was ${_phase.value}"
        }
        _phase.value = ReaderSessionPhase.Ready
    }

    /**
     * Move Ready → Closing. No-op when the phase is anything else; callers
     * that want to close from Opening (an in-flight open that needs to be
     * aborted) should call [markReadyAfterBeginOpen] first and then
     * [beginClose]. Returns true if the transition was applied.
     */
    fun beginClose(): Boolean = transition(
        from = ReaderSessionPhase.Ready,
        to = ReaderSessionPhase.Closing
    )

    /**
     * Complete the Closing phase. Resets the ledger back to Idle so a new
     * open can begin. Must be the last call on the [beginClose] path.
     */
    fun markClosed() {
        require(_phase.value == ReaderSessionPhase.Closing) {
            "markClosed only valid in Closing, was ${_phase.value}"
        }
        _phase.value = ReaderSessionPhase.Idle
    }

    /**
     * Force the ledger back to Idle, regardless of the current phase. Use
     * when a tear-down path lost state (e.g. coroutine cancellation or a
     * fatal error) and the next open needs a clean slot.
     */
    fun reset() {
        _phase.value = ReaderSessionPhase.Idle
    }

    private inline fun transition(from: ReaderSessionPhase, to: ReaderSessionPhase): Boolean {
        if (_phase.value != from) return false
        _phase.value = to
        return true
    }
}
