package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Test

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
}
