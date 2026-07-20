package com.example.feature.reader.ui.gesture

import kotlin.math.abs

/**
 * Pure gesture classification for paged reader mode.
 *
 * Extracts the threshold logic from ReaderScreen's ReaderWebView.onTouchEvent
 * so it can be tested without Android dependencies. The WebView remains
 * responsible for touch event dispatch, selection clearing, and haptic feedback;
 * this class only decides *what kind of gesture* the user made.
 */
object PagedGesturePolicy {

    // ── Edge tap zone ──────────────────────────────────────────────────────

    /** Edge zone width: 12% from each side. */
    private const val EDGE_ZONE = 0.12f

    fun isEdgeTap(xPercent: Float): Boolean =
        xPercent < EDGE_ZONE || xPercent > (1f - EDGE_ZONE)

    // ── Move detection ─────────────────────────────────────────────────────

    /** Minimum displacement (px) to consider the touch as "moved". */
    private const val MOVE_THRESHOLD = 12f

    fun hasMoved(dx: Float, dy: Float): Boolean =
        abs(dx) > MOVE_THRESHOLD || abs(dy) > MOVE_THRESHOLD

    // ── Selection suppression ──────────────────────────────────────────────

    /**
     * During ACTION_MOVE: should we suppress text selection?
     * Yes if the finger moved and there's no active selection handle drag.
     */
    fun shouldSuppressSelectionOnMove(
        hasMoved: Boolean,
        hasActiveSelection: Boolean
    ): Boolean = hasMoved && !hasActiveSelection

    // ── MOVE intercept ─────────────────────────────────────────────────────

    /**
     * During ACTION_MOVE: should the WebView consume this event
     * (preventing the system from interpreting it as a scroll/selection)?
     *
     * Vertical swipes use a lower threshold (8px) than horizontal (48px)
     * to prefer vertical page turns over accidental horizontal swipes.
     */
    fun shouldInterceptMove(
        dx: Float,
        dy: Float,
        hasActiveSelection: Boolean
    ): Boolean {
        if (hasActiveSelection) return false
        if (abs(dy) > 8f && abs(dy) > abs(dx) * 1.15f) return true
        if (abs(dx) > 48f && abs(dx) > abs(dy) * 1.35f) return true
        return false
    }

    // ── Gesture classification (ACTION_UP) ─────────────────────────────────

    /**
     * Classifies the completed gesture into an action.
     *
     * Priority order:
     * 1. Active selection → PASS_THROUGH (let WebView handle)
     * 2. Touch on link → PASS_THROUGH (let WebView handle click)
     * 3. Vertical swipe while moved → RESOLVED (swipe consumed)
     * 4. Bare vertical swipe → RESOLVED
     * 5. Edge tap (quick, small movement) → TAP_LEFT / TAP_RIGHT
     * 6. Fast horizontal swipe → TAP_LEFT / TAP_RIGHT
     * 7. Near-edge quick tap → TAP_LEFT / TAP_RIGHT
     * 8. Otherwise → PASS_THROUGH (center tap → chrome toggle)
     */
    fun classifyPagedGesture(
        dx: Float,
        dy: Float,
        elapsed: Long,
        xPercent: Float,
        isEdgeTap: Boolean,
        hasMoved: Boolean,
        hasActiveSelection: Boolean,
        touchStartedOnLink: Boolean
    ): PagedGestureAction {
        // Active selection handle drag — let WebView handle
        if (hasActiveSelection) return PagedGestureAction.PASS_THROUGH

        // Touch started on a clickable link — let WebView handle click
        if (touchStartedOnLink) return PagedGestureAction.PASS_THROUGH

        // Vertical swipe while finger moved — consume
        if (hasMoved && abs(dy) > 24f && abs(dy) >= abs(dx)) {
            return PagedGestureAction.RESOLVED
        }

        // Bare vertical swipe — consume
        if (abs(dy) > 32f && abs(dy) > abs(dx) * 1.15f) {
            return PagedGestureAction.RESOLVED
        }

        // Edge tap: quick, small movement
        if (isEdgeTap && elapsed <= 600L && abs(dx) < 32f && abs(dy) < 32f) {
            return if (xPercent < 0.5f) PagedGestureAction.TAP_LEFT
            else PagedGestureAction.TAP_RIGHT
        }

        // Fast horizontal swipe → page turn
        if (elapsed < 900L && abs(dx) > 64f && abs(dx) > abs(dy) * 1.35f) {
            return if (dx < 0f) PagedGestureAction.TAP_LEFT
            else PagedGestureAction.TAP_RIGHT
        }

        // Near-edge quick tap (center tap zone but close to edge)
        if (elapsed <= 320L && abs(dx) < 18f && abs(dy) < 18f &&
            (xPercent < 0.16f || xPercent > 0.84f)
        ) {
            return if (xPercent < 0.5f) PagedGestureAction.TAP_LEFT
            else PagedGestureAction.TAP_RIGHT
        }

        // Center tap or unrecognized — chrome toggle
        return PagedGestureAction.PASS_THROUGH
    }
}

/**
 * Result of gesture classification in paged mode.
 */
enum class PagedGestureAction {
    /** Tap on left side or swipe left → previous page. */
    TAP_LEFT,
    /** Tap on right side or swipe right → next page. */
    TAP_RIGHT,
    /** Vertical or horizontal swipe consumed, no page turn. */
    RESOLVED,
    /** Let the WebView handle (center tap, link click, selection drag). */
    PASS_THROUGH
}
