package io.leostrange.mrcomic.feature.reader.ui

import android.os.SystemClock
import android.view.MotionEvent
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ReaderWebViewTouchControllerTest {

    @Test
    fun consumeNativeTapIfPresent_returnsTrueOnlyOnce() {
        val controller = ReaderWebViewTouchController(
            onNativePagedTap = { },
            onVerticalBoundaryNavigation = { },
            suppressNextClick = { },
            clearSelection = { },
            setSelectionEnabled = { },
            onFreeScrollGestureFinished = { }
        )

        assertFalse(controller.consumeNativeTapIfPresent())
        assertFalse(controller.consumeNativeTapIfPresent())
    }

    @Test
    fun actionDownKeepsLongPressSelectionAvailableUntilGestureActuallyMoves() {
        val selectionEnabled = mutableListOf<Boolean>()
        val userSelectNone = mutableListOf<Boolean>()
        val controller = controller(
            setSelectionEnabled = selectionEnabled::add,
            setUserSelectNone = userSelectNone::add
        )

        controller.handlePagedTouchEvent(
            event = event(MotionEvent.ACTION_DOWN, x = 500f, y = 800f),
            viewWidth = 1_000,
            hasActiveSelection = false,
            superOnTouchEvent = { true }
        )

        assertFalse(controller.pagedDragSuppressesSelection)
        assertTrue(selectionEnabled.isEmpty())
        assertTrue(userSelectNone.isEmpty())
    }

    @Test
    fun pageSwipeSuppressesSelectionOnlyAfterMovementThreshold() {
        val selectionEnabled = mutableListOf<Boolean>()
        val userSelectNone = mutableListOf<Boolean>()
        var clearCount = 0
        val controller = controller(
            clearSelection = { clearCount++ },
            setSelectionEnabled = selectionEnabled::add,
            setUserSelectNone = userSelectNone::add
        )

        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_DOWN, 500f, 800f), 1_000, false) { true }
        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_MOVE, 530f, 800f), 1_000, false) { true }

        assertTrue(controller.pagedDragSuppressesSelection)
        assertTrue(clearCount > 0)
        assertTrue(selectionEnabled.contains(false))
        assertTrue(userSelectNone.contains(true))
    }

    @Test
    fun existingSelectionHandleDragIsNeverDisabled() {
        val selectionEnabled = mutableListOf<Boolean>()
        val controller = controller(setSelectionEnabled = selectionEnabled::add)

        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_DOWN, 500f, 800f), 1_000, true) { true }
        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_MOVE, 540f, 800f), 1_000, true) { true }

        assertFalse(controller.pagedDragSuppressesSelection)
        assertTrue(selectionEnabled.isEmpty())
    }

    @Test
    fun edgeTapPassesThroughToDomSoFootnoteWinsOverPageTurnZone() {
        val nativeTaps = mutableListOf<Float>()
        var superCalls = 0
        val controller = controller(onNativePagedTap = nativeTaps::add)

        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_DOWN, 20f, 800f), 1_000, false) {
            superCalls++
            true
        }
        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_UP, 20f, 800f), 1_000, false) {
            superCalls++
            true
        }

        assertTrue(nativeTaps.isEmpty())
        assertTrue(superCalls >= 2)
    }

    @Test
    fun nativeSwipeSendsChromiumExactlyOneCancelSoNoGhostLongPressSelects() {
        val webViewActions = mutableListOf<Int>()
        val controller = controller(touchSlopPx = 21f)
        val toWebView: (MotionEvent) -> Boolean = { webViewActions += it.actionMasked; true }

        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_DOWN, 900f, 800f), 1_000, false, toWebView)
        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_MOVE, 830f, 802f), 1_000, false, toWebView)
        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_MOVE, 700f, 804f), 1_000, false, toWebView)
        val consumed = controller.handlePagedTouchEvent(event(MotionEvent.ACTION_UP, 600f, 806f), 1_000, false, toWebView)

        assertTrue(consumed)
        assertEquals(listOf(MotionEvent.ACTION_DOWN, MotionEvent.ACTION_CANCEL), webViewActions)
    }

    @Test
    fun slowInterceptedDragNeverSendsChromiumAnUpAfterItsCancel() {
        val webViewActions = mutableListOf<Int>()
        val controller = controller(touchSlopPx = 21f)
        val toWebView: (MotionEvent) -> Boolean = { webViewActions += it.actionMasked; true }

        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_DOWN, 900f, 800f), 1_000, false, toWebView)
        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_MOVE, 830f, 802f), 1_000, false, toWebView)
        SystemClock.sleep(1_000) // too slow for a page-turn swipe
        val consumed = controller.handlePagedTouchEvent(event(MotionEvent.ACTION_UP, 820f, 802f), 1_000, false, toWebView)

        assertTrue(consumed)
        assertEquals(listOf(MotionEvent.ACTION_DOWN, MotionEvent.ACTION_CANCEL), webViewActions)
        assertTrue("selection stays suppressed until the next touch down", controller.pagedDragSuppressesSelection)
    }

    @Test
    fun dragSuppressionOutlivesTheGestureUntilTheNextTouchDown() {
        val selectionEnabled = mutableListOf<Boolean>()
        val controller = controller(setSelectionEnabled = selectionEnabled::add, touchSlopPx = 21f)

        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_DOWN, 900f, 800f), 1_000, false) { true }
        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_MOVE, 700f, 800f), 1_000, false) { true }
        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_UP, 600f, 800f), 1_000, false) { true }
        assertTrue(controller.pagedDragSuppressesSelection)

        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_DOWN, 500f, 800f), 1_000, false) { true }
        assertFalse(controller.pagedDragSuppressesSelection)
        assertEquals(listOf(false, true), selectionEnabled)
    }

    @Test
    fun jitterBelowTouchSlopIsStillATapForTheDom() {
        val nativeTaps = mutableListOf<Float>()
        val webViewActions = mutableListOf<Int>()
        val controller = controller(onNativePagedTap = nativeTaps::add, touchSlopPx = 21f)
        val toWebView: (MotionEvent) -> Boolean = { webViewActions += it.actionMasked; true }

        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_DOWN, 960f, 800f), 1_000, false, toWebView)
        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_MOVE, 975f, 810f), 1_000, false, toWebView)
        controller.handlePagedTouchEvent(event(MotionEvent.ACTION_UP, 975f, 810f), 1_000, false, toWebView)

        assertTrue(nativeTaps.isEmpty())
        assertFalse(controller.pagedDragSuppressesSelection)
        assertEquals(listOf(MotionEvent.ACTION_DOWN, MotionEvent.ACTION_MOVE, MotionEvent.ACTION_UP), webViewActions)
    }

    private fun controller(
        onNativePagedTap: (Float) -> Unit = {},
        clearSelection: () -> Unit = {},
        setSelectionEnabled: (Boolean) -> Unit = {},
        setUserSelectNone: (Boolean) -> Unit = {},
        touchSlopPx: Float = 12f
    ) = ReaderWebViewTouchController(
        onNativePagedTap = onNativePagedTap,
        onVerticalBoundaryNavigation = {},
        suppressNextClick = {},
        clearSelection = clearSelection,
        setSelectionEnabled = setSelectionEnabled,
        onFreeScrollGestureFinished = {},
        setUserSelectNone = setUserSelectNone,
        touchSlopPx = touchSlopPx
    )

    private fun event(action: Int, x: Float, y: Float): MotionEvent =
        MotionEvent.obtain(0L, 0L, action, x, y, 0)
}
