package io.leostrange.mrcomic.feature.reader.ui.gesture

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

    // ── BUG-T4 regression: footnote link at screen edge ────────────────────

    /**
     * When the user taps a footnote link at the left edge (xPercent=0.05),
     * the gesture policy must return PASS_THROUGH so the WebView can handle
     * the link click, not turn the page.
     */
    @Test
    fun classifyPagedGesture_tapOnFootnoteAtLeftEdge_passThrough() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 2f, dy = 1f,
            elapsed = 150L,
            xPercent = 0.05f,
            isEdgeTap = true,
            hasMoved = false,
            hasActiveSelection = false,
            touchStartedOnLink = true
        )
        assertEquals(PagedGestureAction.PASS_THROUGH, result)
    }

    /**
     * When the user taps a footnote link at the right edge (xPercent=0.95),
     * the gesture policy must return PASS_THROUGH so the WebView can handle
     * the link click, not turn the page.
     */
    @Test
    fun classifyPagedGesture_tapOnFootnoteAtRightEdge_passThrough() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 2f, dy = 1f,
            elapsed = 150L,
            xPercent = 0.95f,
            isEdgeTap = true,
            hasMoved = false,
            hasActiveSelection = false,
            touchStartedOnLink = true
        )
        assertEquals(PagedGestureAction.PASS_THROUGH, result)
    }

    /**
     * When a tap at the left edge is NOT on a link, it should still be
     * classified as TAP_LEFT (page turn) — this is the normal edge-tap
     * behavior that must not be broken.
     */
    @Test
    fun classifyPagedGesture_edgeTapNotOnLink_tapLeft() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 2f, dy = 1f,
            elapsed = 150L,
            xPercent = 0.05f,
            isEdgeTap = true,
            hasMoved = false,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.TAP_LEFT, result)
    }

    /**
     * Edge tap on a link in the center zone should still pass through
     * (the link click should be handled by WebView).
     */
    @Test
    fun classifyPagedGesture_linkInCenter_passThrough() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 2f, dy = 1f,
            elapsed = 150L,
            xPercent = 0.5f,
            isEdgeTap = false,
            hasMoved = false,
            hasActiveSelection = false,
            touchStartedOnLink = true
        )
        assertEquals(PagedGestureAction.PASS_THROUGH, result)
    }

    // ── BUG-T5 regression: accidental selection during swipe ───────────────

    /**
     * When the finger has moved and there's no active selection, selection
     * should always be suppressed — even when the user has held for >500ms
     * before moving.
     */
    @Test
    fun shouldSuppressSelectionOnMove_movedEvenWithLongHold_returnsTrue() {
        assertTrue(
            PagedGesturePolicy.shouldSuppressSelectionOnMove(
                hasMoved = true,
                hasActiveSelection = false
            )
        )
    }

    /**
     * A slow vertical swipe (small dx, moderate dy) should be classified
     * as RESOLVED (consumed as page gesture), preventing any selection.
     */
    @Test
    fun classifyPagedGesture_slowVerticalSwipe_resolved() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 3f, dy = 35f,
            elapsed = 600L,
            xPercent = 0.5f,
            isEdgeTap = false,
            hasMoved = true,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.RESOLVED, result)
    }

    /**
     * When the user is dragging a selection handle (hasActiveSelection=true),
     * even a large vertical swipe should pass through so the WebView handles
     * the selection extension.
     */
    @Test
    fun classifyPagedGesture_verticalSwipeWithActiveSelection_passThrough() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 3f, dy = 50f,
            elapsed = 400L,
            xPercent = 0.5f,
            isEdgeTap = false,
            hasMoved = true,
            hasActiveSelection = true,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.PASS_THROUGH, result)
    }

    /**
     * A horizontal swipe with small vertical component should still be
     * classified as a page turn (TAP_LEFT), not pass through.
     */
    @Test
    fun classifyPagedGesture_horizontalSwipeWithSmallVertical_tapLeft() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = -70f, dy = 15f,
            elapsed = 400L,
            xPercent = 0.5f,
            isEdgeTap = false,
            hasMoved = true,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.TAP_LEFT, result)
    }

    /**
     * A tap near the left edge that hasn't moved and isn't on a link should
     * be TAP_LEFT (normal page-turn edge tap).
     */
    @Test
    fun classifyPagedGesture_nearLeftEdgeTap_tapLeft() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 1f, dy = 1f,
            elapsed = 100L,
            xPercent = 0.10f,
            isEdgeTap = true,
            hasMoved = false,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.TAP_LEFT, result)
    }

    /**
     * A tap near the right edge that hasn't moved and isn't on a link should
     * be TAP_RIGHT (normal page-turn edge tap).
     */
    @Test
    fun classifyPagedGesture_nearRightEdgeTap_tapRight() {
        val result = PagedGesturePolicy.classifyPagedGesture(
            dx = 1f, dy = 1f,
            elapsed = 100L,
            xPercent = 0.90f,
            isEdgeTap = true,
            hasMoved = false,
            hasActiveSelection = false,
            touchStartedOnLink = false
        )
        assertEquals(PagedGestureAction.TAP_RIGHT, result)
    }
}
