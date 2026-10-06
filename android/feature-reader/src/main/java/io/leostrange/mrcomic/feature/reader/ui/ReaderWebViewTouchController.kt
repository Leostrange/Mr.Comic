package io.leostrange.mrcomic.feature.reader.ui

import android.os.SystemClock
import android.view.MotionEvent
import io.leostrange.mrcomic.feature.reader.ui.gesture.PagedGestureAction
import io.leostrange.mrcomic.feature.reader.ui.gesture.PagedGesturePolicy
import kotlin.math.abs

/**
 * Handles touch gestures, page edge taps, swipe boundary navigation, and selection suppression.
 *
 * Extracted from [ReaderWebView] (R1.3) to isolate touch event processing.
 */
internal class ReaderWebViewTouchController(
    private val onNativePagedTap: (Float) -> Unit,
    private val onVerticalBoundaryNavigation: (Int) -> Unit,
    private val suppressNextClick: () -> Unit,
    private val clearSelection: () -> Unit,
    private val setSelectionEnabled: (Boolean) -> Unit,
    private val onFreeScrollGestureFinished: () -> Unit,
    private val setUserSelectNone: ((Boolean) -> Unit)? = null,
    /** Platform `scaledTouchSlop`; movement below it is still a tap. */
    private val touchSlopPx: Float = 12f
) {
    private var touchStartX: Float = 0f
    private var touchStartY: Float = 0f
    private var touchStartTimeMs: Long = 0L
    private var nativePagedGestureMoved: Boolean = false
    private var selectionWasActiveAtDown: Boolean = false
    var pagedDragSuppressesSelection: Boolean = false
        private set
    @Volatile var nativeTapConsumed: Boolean = false
        private set
    @Volatile var touchStartedOnLink: Boolean = false
    private var webViewGestureCancelled: Boolean = false
    private var touchStartedAtTopBoundary: Boolean = false
    private var touchStartedAtBottomBoundary: Boolean = false

    fun consumeNativeTapIfPresent(): Boolean {
        if (nativeTapConsumed) {
            nativeTapConsumed = false
            return true
        }
        return false
    }

    fun handlePagedTouchEvent(
        event: MotionEvent,
        viewWidth: Int,
        hasActiveSelection: Boolean,
        superOnTouchEvent: (MotionEvent) -> Boolean
    ): Boolean {
        when (event.actionMasked) {
            MotionEvent.ACTION_DOWN -> {
                // Selection stays suppressed after a drag until the next gesture begins.
                restorePagedDragSelection()
                touchStartX = event.x
                touchStartY = event.y
                touchStartTimeMs = SystemClock.uptimeMillis()
                nativePagedGestureMoved = false
                selectionWasActiveAtDown = hasActiveSelection
                touchStartedOnLink = false
                webViewGestureCancelled = false
            }
            MotionEvent.ACTION_MOVE -> {
                val dx = event.x - touchStartX
                val dy = event.y - touchStartY
                val moved = PagedGesturePolicy.hasMoved(dx, dy, touchSlopPx)
                if (moved) {
                    nativePagedGestureMoved = true
                    if (!selectionWasActiveAtDown) suppressPagedDragSelection()
                    suppressNextClick()
                }
                if (PagedGesturePolicy.shouldInterceptMove(dx, dy, selectionWasActiveAtDown, touchSlopPx)) {
                    cancelWebViewGesture(event, superOnTouchEvent)
                    return true
                }
            }
            MotionEvent.ACTION_UP -> {
                val dx = event.x - touchStartX
                val dy = event.y - touchStartY
                val elapsed = SystemClock.uptimeMillis() - touchStartTimeMs
                val xPercent = if (viewWidth > 0) (event.x / viewWidth).coerceIn(0f, 1f) else 0.5f
                // Every stationary tap goes through WebView/DOM first. The JS handler
                // resolves links and footnotes at the exact tap point before routing an
                // ordinary tap to page navigation. Native interception is only needed
                // for real swipes after the movement threshold.
                if (!nativePagedGestureMoved && !PagedGesturePolicy.hasMoved(dx, dy, touchSlopPx)) {
                    touchStartedOnLink = false
                    selectionWasActiveAtDown = false
                    restorePagedDragSelection()
                    return superOnTouchEvent(event)
                }

                val gesture = PagedGesturePolicy.classifyPagedGesture(
                    dx = dx,
                    dy = dy,
                    elapsed = elapsed,
                    xPercent = xPercent,
                    isEdgeTap = false,
                    hasMoved = nativePagedGestureMoved,
                    hasActiveSelection = selectionWasActiveAtDown,
                    touchStartedOnLink = touchStartedOnLink
                )

                when (gesture) {
                    PagedGestureAction.PASS_THROUGH -> {
                        touchStartedOnLink = false
                        selectionWasActiveAtDown = false
                        // Chromium already saw this gesture end with the CANCEL sent at interception.
                        if (webViewGestureCancelled) return true
                    }
                    PagedGestureAction.RESOLVED -> {
                        suppressNextClick()
                        nativePagedGestureMoved = false
                        selectionWasActiveAtDown = false
                        cancelWebViewGesture(event, superOnTouchEvent)
                        return true
                    }
                    PagedGestureAction.TAP_LEFT -> {
                        clearSelection()
                        cancelWebViewGesture(event, superOnTouchEvent)
                        suppressNextClick()
                        nativeTapConsumed = true
                        nativePagedGestureMoved = false
                        selectionWasActiveAtDown = false
                        onNativePagedTap(0.1f)
                        return true
                    }
                    PagedGestureAction.TAP_RIGHT -> {
                        clearSelection()
                        cancelWebViewGesture(event, superOnTouchEvent)
                        suppressNextClick()
                        nativeTapConsumed = true
                        nativePagedGestureMoved = false
                        selectionWasActiveAtDown = false
                        onNativePagedTap(0.9f)
                        return true
                    }
                }
            }
            MotionEvent.ACTION_CANCEL -> {
                nativePagedGestureMoved = false
                selectionWasActiveAtDown = false
                touchStartedOnLink = false
                restorePagedDragSelection()
            }
        }
        return superOnTouchEvent(event)
    }

    fun handleWebtoonTouchEvent(
        event: MotionEvent,
        canScrollVertically: (Int) -> Boolean,
        superOnTouchEvent: (MotionEvent) -> Boolean
    ): Boolean {
        when (event.actionMasked) {
            MotionEvent.ACTION_DOWN -> {
                touchStartX = event.x
                touchStartY = event.y
                touchStartTimeMs = SystemClock.uptimeMillis()
                touchStartedAtTopBoundary = !canScrollVertically(-1)
                touchStartedAtBottomBoundary = !canScrollVertically(1)
            }
            MotionEvent.ACTION_MOVE -> {
                val dx = event.x - touchStartX
                val dy = event.y - touchStartY
                if (abs(dx) > 18f || abs(dy) > 18f) {
                    suppressNextClick()
                }
            }
            MotionEvent.ACTION_UP -> {
                val dx = event.x - touchStartX
                val dy = event.y - touchStartY
                val pageStep = readerTextWebtoonBoundaryNavigationStep(
                    startedAtTopBoundary = touchStartedAtTopBoundary,
                    startedAtBottomBoundary = touchStartedAtBottomBoundary,
                    dragDeltaY = dy,
                    dragDeltaX = dx
                )
                touchStartedAtTopBoundary = false
                touchStartedAtBottomBoundary = false
                if (pageStep != null) {
                    suppressNextClick()
                    onVerticalBoundaryNavigation(pageStep)
                    return true
                }
                onFreeScrollGestureFinished()
            }
            MotionEvent.ACTION_CANCEL -> {
                touchStartedAtTopBoundary = false
                touchStartedAtBottomBoundary = false
            }
        }
        return superOnTouchEvent(event)
    }

    /**
     * BUG-PAGED-01: once native code owns a gesture, Chromium must see it end. Without a CANCEL
     * its long-press timer fires after the page turn and selects a word on the new page.
     */
    private fun cancelWebViewGesture(event: MotionEvent, superOnTouchEvent: (MotionEvent) -> Boolean) {
        if (webViewGestureCancelled) return
        webViewGestureCancelled = true
        val cancel = MotionEvent.obtain(event).apply { action = MotionEvent.ACTION_CANCEL }
        try {
            superOnTouchEvent(cancel)
        } finally {
            cancel.recycle()
        }
    }

    private fun suppressPagedDragSelection() {
        if (pagedDragSuppressesSelection) return
        pagedDragSuppressesSelection = true
        clearSelection()
        setSelectionEnabled(false)
        setUserSelectNone?.invoke(true)
    }

    private fun restorePagedDragSelection() {
        if (!pagedDragSuppressesSelection) return
        pagedDragSuppressesSelection = false
        setSelectionEnabled(true)
        setUserSelectNone?.invoke(false)
    }
}
