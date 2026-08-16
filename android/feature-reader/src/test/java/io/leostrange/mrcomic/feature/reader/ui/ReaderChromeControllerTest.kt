package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderChromeState
import kotlinx.coroutines.flow.MutableStateFlow
import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderChromeControllerTest {
    @Test
    fun centerTapHidingChrome_releasesCompletedTouchPause() {
        val state = MutableStateFlow(
            ReaderUiState(
                chromeState = ReaderChromeState.EXPANDED,
                autoScrollEnabled = true,
                autoScrollPauseReasons = setOf(
                    ReaderAutoScrollPauseReason.TOUCH_GESTURE,
                    ReaderAutoScrollPauseReason.APP_IN_BACKGROUND,
                ),
            ),
        )

        ReaderChromeController(state).onCenterTap()

        assertEquals(ReaderChromeState.HIDDEN, state.value.chromeState)
        assertEquals(
            setOf(ReaderAutoScrollPauseReason.APP_IN_BACKGROUND),
            state.value.autoScrollPauseReasons,
        )
    }
}
