package com.example.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderWebViewGesturePolicyTest {

    @Test
    fun delegatesClearVerticalDragToParent() {
        assertTrue(
            shouldDelegateReaderVerticalDragToParent(
                horizontalDistancePx = 12f,
                verticalDistancePx = 42f,
                touchSlopPx = 8
            )
        )
    }

    @Test
    fun keepsTapAndSmallMoveInsideWebView() {
        assertFalse(
            shouldDelegateReaderVerticalDragToParent(
                horizontalDistancePx = 1f,
                verticalDistancePx = 5f,
                touchSlopPx = 8
            )
        )
    }

    @Test
    fun keepsMostlyHorizontalGestureInsideWebView() {
        assertFalse(
            shouldDelegateReaderVerticalDragToParent(
                horizontalDistancePx = 36f,
                verticalDistancePx = 18f,
                touchSlopPx = 8
            )
        )
    }
}
