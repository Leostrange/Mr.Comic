package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderTtsSyncEffectTest {

    @Test
    fun shouldRestartTtsWhenTargetPageMatchesAndHtmlIsNotBlank() {
        assertTrue(
            shouldRestartTtsFromBeginning(
                pendingTtsRestartTargetPage = 3,
                currentPage = 3,
                currentHtmlContent = "<p>Hello</p>"
            )
        )
    }

    @Test
    fun shouldNotRestartTtsWhenTargetPageDiffers() {
        assertFalse(
            shouldRestartTtsFromBeginning(
                pendingTtsRestartTargetPage = 2,
                currentPage = 3,
                currentHtmlContent = "<p>Hello</p>"
            )
        )
    }

    @Test
    fun shouldNotRestartTtsWhenTargetPageIsNull() {
        assertFalse(
            shouldRestartTtsFromBeginning(
                pendingTtsRestartTargetPage = null,
                currentPage = 3,
                currentHtmlContent = "<p>Hello</p>"
            )
        )
    }

    @Test
    fun shouldNotRestartTtsWhenHtmlIsBlank() {
        assertFalse(
            shouldRestartTtsFromBeginning(
                pendingTtsRestartTargetPage = 3,
                currentPage = 3,
                currentHtmlContent = "   "
            )
        )
    }

    @Test
    fun shouldNotRestartTtsWhenHtmlIsNull() {
        assertFalse(
            shouldRestartTtsFromBeginning(
                pendingTtsRestartTargetPage = 3,
                currentPage = 3,
                currentHtmlContent = null
            )
        )
    }
}
