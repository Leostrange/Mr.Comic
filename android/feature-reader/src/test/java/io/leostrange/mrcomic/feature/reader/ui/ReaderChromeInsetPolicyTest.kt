package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderChromeInsetPolicyTest {

    @Test
    fun visibleAutoHideChromeStillReservesMeasuredSpace() {
        assertEquals(
            164,
            visibleChromeContentReservePx(
                chromeIsVisible = true,
                stableReservePx = 120,
                measuredReservePx = 164
            )
        )
    }

    @Test
    fun hiddenChromeDoesNotReserveStaleSpace() {
        assertEquals(
            0,
            visibleChromeContentReservePx(
                chromeIsVisible = false,
                stableReservePx = 164,
                measuredReservePx = 164
            )
        )
    }

}
