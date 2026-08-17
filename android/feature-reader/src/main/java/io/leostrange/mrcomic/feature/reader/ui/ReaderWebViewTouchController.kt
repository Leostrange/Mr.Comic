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
    private val onFreeScrollGestureFinished: () -> Unit
) {
    private var touchStartX: Float = 0f
    private var touchStartY: Float = 0f
    private var touchStartTimeMs: Long = 0L
    private var nativePagedEdgeTapXPercent: Float? = null
    private var nativePagedGestureMoved: Boolean = false
    var pagedDragSuppressesSelection: Boolean = false
        private set
    @Volatile var nativeTapConsumed: Boolean = false
        private set
    @Volatile var touchStartedOnLink: Boolean = false
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
                touchStartX = event.x
                touchStartY = event.y
                touchStartTimeMs = SystemClock.uptimeMillis()
                nativePagedGestureMoved = false
                pagedDragSuppressesSelection = false
                val xPercent = if (viewWidth > 0) (event.x / viewWidth).coerceIn(0f, 1f) else 0.5f
                val isEdgeTap = PagedGesturePolicy.isEdgeTap(xPercent)
                nativePagedEdgeTapXPercent = xPercent.takeIf { isEdgeTap }
                if (nativePagedEdgeTapXPercent != null && !touchStartedOnLink) {
                    return true
                }
                nativePagedEdgeTapXPercent = null
                superOnTouchEvent(event)
                return true
            }
            MotionEvent.ACTION_MOVE -> {
                val dx = event.x - touchStartX
                val dy = event.y - touchStartY
                val moved = PagedGesturePolicy.hasMoved(dx, dy)
                if (moved) {
                    nativePagedGestureMoved = true
                    nativePagedEdgeTapXPercent = null
                    if (PagedGesturePolicy.shouldSuppressSelectionOnMove(moved, !hasActiveSelection)) {
                        suppressPagedDragSelection()
                    }
                    suppressNextClick()
                }
                if (PagedGesturePolicy.shouldInterceptMove(dx, dy, hasActiveSelection)) {
                    return true
                }
            }
            MotionEvent.ACTION_UP -> {
                val dx = event.x - touchStartX
                val dy = event.y - touchStartY
                val elapsed = SystemClock.uptimeMillis() - touchStartTimeMs
                val xPercent = if (viewWidth > 0) (event.x / viewWidth).coerceIn(0f, 1f) else 0.5f
                val isEdgeTap = nativePagedEdgeTapXPercent != null

                val gesture = PagedGesturePolicy.classifyPagedGesture(
                    dx = dx,
                    dy = dy,
                    elapsed = elapsed,
                    xPercent = nativePagedEdgeTapXPercent ?: xPercent,
                    isEdgeTap = isEdgeTap,
                    hasMoved = nativePagedGestureMoved,
                    hasActiveSelection = hasActiveSelection,
                    touchStartedOnLink = touchStartedOnLink
                )

                when (gesture) {
                    PagedGestureAction.PASS_THROUGH -> {
                        touchStartedOnLink = false
                        nativePagedEdgeTapXPercent = null
                        restorePagedDragSelection()
                    }
                    PagedGestureAction.RESOLVED -> {
                        suppressNextClick()
                        nativePagedGestureMoved = false
                        nativePagedEdgeTapXPercent = null
                        restorePagedDragSelection()
                        return true
                    }
                    PagedGestureAction.TAP_LEFT -> {
                        clearSelection()
                        restorePagedDragSelection()
                        suppressNextClick()
                        nativeTapConsumed = true
                        nativePagedGestureMoved = false
                        nativePagedEdgeTapXPercent = null
                        onNativePagedTap(0.1f)
                        return true
                    }
                    PagedGestureAction.TAP_RIGHT -> {
                        clearSelection()
                        restorePagedDragSelection()
                        suppressNextClick()
                        nativeTapConsumed = true
                        nativePagedGestureMoved = false
                        nativePagedEdgeTapXPercent = null
                        onNativePagedTap(0.9f)
                        return true
                    }
                }
            }
            MotionEvent.ACTION_CANCEL -> {
                nativePagedEdgeTapXPercent = null
                nativePagedGestureMoved = false
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

    private fun suppressPagedDragSelection() {
        if (pagedDragSuppressesSelection) return
        pagedDragSuppressesSelection = true
        clearSelection()
        setSelectionEnabled(false)
    }

    private fun restorePagedDragSelection() {
        if (!pagedDragSuppressesSelection) return
        pagedDragSuppressesSelection = false
        setSelectionEnabled(true)
    }
}
