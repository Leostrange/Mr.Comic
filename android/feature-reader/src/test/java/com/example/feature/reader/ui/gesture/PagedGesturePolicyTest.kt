package com.example.feature.reader.ui.gesture

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Characterization tests for [PagedGesturePolicy].
 *
 * Pins down the gesture classification thresholds currently embedded in
 * ReaderScreen's ReaderWebView.onTouchEvent so the logic can be extracted
 * without changing behaviour.
 */
class PagedGesturePolicyTest {

    // ── Edge tap zone ──────────────────────────────────────────────────────

    @Test
    fun isEdgeTap_leftEdge_returnsTrue() {
        assertTrue(PagedGesturePolicy.isEdgeTap(0.05f))
        assertTrue(PagedGesturePolicy.isEdgeTap(0.11f))
    }

    @Test
    fun isEdgeTap_rightEdge_returnsTrue() {
        assertTrue(PagedGesturePolicy.isEdgeTap(0.95f))
        assertTrue(PagedGesturePolicy.isEdgeTap(0.89f))
    }

    @Test
    fun isEdgeTap_center_returnsFalse() {
        assertFalse(PagedGesturePolicy.isEdgeTap(0.5f))
        assertFalse(PagedGesturePolicy.isEdgeTap(0.3f))
        assertFalse(PagedGesturePolicy.isEdgeTap(0.7f))
        assertFalse(PagedGesturePolicy.isEdgeTap(0.13f))
        assertFalse(PagedGesturePolicy.isEdgeTap(0.87f))
    }

    // ── Gesture move detection ─────────────────────────────────────────────

    @Test
    fun hasMoved_beyondThreshold_returnsTrue() {
        assertTrue(PagedGesturePolicy.hasMoved(15f, 0f))
        assertTrue(PagedGesturePolicy.hasMoved(0f, 15f))
    }

    @Test
    fun hasMoved_withinThreshold_returnsFalse() {
        assertFalse(PagedGesturePolicy.hasMoved(11f, 0f))
        assertFalse(PagedGesturePolicy.hasMoved(0f, 5f))
        assertFalse(PagedGesturePolicy.hasMoved(0f, 0f))
    }

    // ── Paged mode gesture classification ──────────────────────────────────

    @Test
    fun classifyPagedGesture_verticalSwipe_resolved() {
        // Large vertical movement, no active selection, not on link
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 0f, dy = 50f,
            elapsed = 200L,
            xPercent = 0.5f,
            isEdgeTap = false,
            hasMoved = true,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.RESOLVED, result)
    }

    @Test
    fun classifyPagedGesture_horizontalSwipeFast_tapRightByPriority() {
        // Fast horizontal swipe (abs(dx) > 64, elapsed < 900) matches the
        // fast-swipe rule before the general RESOLVED rule → TAP_RIGHT
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 100f, dy = 10f,
            elapsed = 500L,
            xPercent = 0.5f,
            isEdgeTap = false,
            hasMoved = true,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.TAP_RIGHT, result)
    }

    @Test
    fun classifyPagedGesture_activeSelection_passThrough() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 100f, dy = 50f,
            elapsed = 200L,
            xPercent = 0.5f,
            isEdgeTap = false,
            hasMoved = true,
            hasActiveSelection = true,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.PASS_THROUGH, result)
    }

    @Test
    fun classifyPagedGesture_touchOnLink_passThrough() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 0f, dy = 0f,
            elapsed = 100L,
            xPercent = 0.5f,
            isEdgeTap = false,
            hasMoved = false,
            hasActiveSelection = false,
            touchStartedOnLink = true
        )
        assertEquals(PagedGestureAction.PASS_THROUGH, result)
    }

    @Test
    fun classifyPagedGesture_edgeTap_tapLeft() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 5f, dy = 5f,
            elapsed = 200L,
            xPercent = 0.1f,
            isEdgeTap = true,
            hasMoved = false,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.TAP_LEFT, result)
    }

    @Test
    fun classifyPagedGesture_edgeTap_tapRight() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 5f, dy = 5f,
            elapsed = 200L,
            xPercent = 0.9f,
            isEdgeTap = true,
            hasMoved = false,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.TAP_RIGHT, result)
    }

    @Test
    fun classifyPagedGesture_edgeTapTooSlow_passThrough() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 5f, dy = 5f,
            elapsed = 700L, // > 600ms threshold
            xPercent = 0.1f,
            isEdgeTap = true,
            hasMoved = false,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.PASS_THROUGH, result)
    }

    @Test
    fun classifyPagedGesture_edgeTapMovedTooMuch_passThrough() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 40f, dy = 5f, // |dx| > 32
            elapsed = 200L,
            xPercent = 0.1f,
            isEdgeTap = true,
            hasMoved = false,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.PASS_THROUGH, result)
    }

    @Test
    fun classifyPagedGesture_horizontalSwipeFast_tapLeft() {
        // Fast swipe left → previous page (tap left)
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = -80f, dy = 10f,
            elapsed = 500L, // < 900ms
            xPercent = 0.5f,
            isEdgeTap = false,
            hasMoved = true,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.TAP_LEFT, result)
    }

    @Test
    fun classifyPagedGesture_horizontalSwipeFast_tapRight() {
        // Fast swipe right → next page (tap right)
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 80f, dy = 10f,
            elapsed = 500L,
            xPercent = 0.5f,
            isEdgeTap = false,
            hasMoved = true,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.TAP_RIGHT, result)
    }

    @Test
    fun classifyPagedGesture_centerTap_passThrough() {
        // Quick tap in center → chrome toggle, not a page turn
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 2f, dy = 2f,
            elapsed = 100L,
            xPercent = 0.5f,
            isEdgeTap = false,
            hasMoved = false,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.PASS_THROUGH, result)
    }

    @Test
    fun classifyPagedGesture_nearEdgeTap_tapRight() {
        // Tap near right edge (0.84 < xPercent < 0.88, not isEdgeTap but still triggers)
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 2f, dy = 2f,
            elapsed = 200L,
            xPercent = 0.85f,
            isEdgeTap = false, // not in 0.88+ zone
            hasMoved = false,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.TAP_RIGHT, result)
    }

    // ── Selection suppression during MOVE ──────────────────────────────────

    @Test
    fun shouldSuppressSelectionOnMove_movedNoActiveSelection_returnsTrue() {
        assertTrue(
            PagedGesturePolicy.shouldSuppressSelectionOnMove(
                hasMoved = true,
                hasActiveSelection = false
            )
        )
    }

    @Test
    fun shouldSuppressSelectionOnMove_activeSelection_returnsFalse() {
        assertFalse(
            PagedGesturePolicy.shouldSuppressSelectionOnMove(
                hasMoved = true,
                hasActiveSelection = true
            )
        )
    }

    @Test
    fun shouldSuppressSelectionOnMove_notMoved_returnsFalse() {
        assertFalse(
            PagedGesturePolicy.shouldSuppressSelectionOnMove(
                hasMoved = false,
                hasActiveSelection = false
            )
        )
    }

    // ── MOVE intercept (should we consume the MOVE event?) ─────────────────

    @Test
    fun shouldInterceptMove_verticalSwipe_returnsTrue() {
        assertTrue(
            PagedGesturePolicy.shouldInterceptMove(
                dx = 5f, dy = 20f,
                hasActiveSelection = false
            )
        )
    }

    @Test
    fun shouldInterceptMove_horizontalSwipe_returnsTrue() {
        assertTrue(
            PagedGesturePolicy.shouldInterceptMove(
                dx = 60f, dy = 10f,
                hasActiveSelection = false
            )
        )
    }

    @Test
    fun shouldInterceptMove_activeSelection_returnsFalse() {
        assertFalse(
            PagedGesturePolicy.shouldInterceptMove(
                dx = 60f, dy = 20f,
                hasActiveSelection = true
            )
        )
    }

    @Test
    fun shouldInterceptMove_smallMovement_returnsFalse() {
        assertFalse(
            PagedGesturePolicy.shouldInterceptMove(
                dx = 5f, dy = 5f,
                hasActiveSelection = false
            )
        )
    }
}
