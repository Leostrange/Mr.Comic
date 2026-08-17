package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderHardwareKeyEffectTest {

    @Test
    fun throttlerAllowsFirstTurnAndThrottlesSubsequentRapidTurns() {
        var currentTime = 1000L
        val throttler = ReaderHardwarePageTurnThrottler(
            throttleIntervalMs = 280L,
            clock = { currentTime }
        )

        // First turn is allowed
        assertTrue(throttler.shouldProcessTurn())

        // Turn after 100ms should be throttled
        currentTime = 1100L
        assertFalse(throttler.shouldProcessTurn())

        // Turn after 279ms from start (179ms from last check) is throttled
        currentTime = 1279L
        assertFalse(throttler.shouldProcessTurn())

        // Turn after 280ms (at 1280L) is allowed
        currentTime = 1280L
        assertTrue(throttler.shouldProcessTurn())

        // Immediate turn after that is throttled
        currentTime = 1281L
        assertFalse(throttler.shouldProcessTurn())
    }

    @Test
    fun throttlerResetAllowsImmediateTurn() {
        var currentTime = 1000L
        val throttler = ReaderHardwarePageTurnThrottler(
            throttleIntervalMs = 280L,
            clock = { currentTime }
        )

        assertTrue(throttler.shouldProcessTurn())
        currentTime = 1050L
        assertFalse(throttler.shouldProcessTurn())

        throttler.reset()
        assertTrue(throttler.shouldProcessTurn())
    }

    @Test
    fun dispatchHardwarePageTurnDelegatesToPagedColumnInTextPageMode() {
        var pagedStepReceived: Int? = null
        var prevPageCalled = false
        var nextPageCalled = false

        dispatchHardwarePageTurn(
            step = 1,
            readerContainerKind = ReaderContainerKind.TEXT_PAGE,
            pagedColumnTurn = { pagedStepReceived = it },
            onPrevPage = { prevPageCalled = true },
            onNextPage = { nextPageCalled = true },
        )

        assertEquals(1, pagedStepReceived)
        assertFalse(prevPageCalled)
        assertFalse(nextPageCalled)
    }

    @Test
    fun dispatchHardwarePageTurnDelegatesToNextPageWhenPositiveStepInRasterMode() {
        var pagedStepReceived: Int? = null
        var prevPageCalled = false
        var nextPageCalled = false

        dispatchHardwarePageTurn(
            step = 1,
            readerContainerKind = ReaderContainerKind.RASTER_PAGE,
            pagedColumnTurn = { pagedStepReceived = it },
            onPrevPage = { prevPageCalled = true },
            onNextPage = { nextPageCalled = true },
        )

        assertEquals(null, pagedStepReceived)
        assertFalse(prevPageCalled)
        assertTrue(nextPageCalled)
    }

    @Test
    fun dispatchHardwarePageTurnDelegatesToPrevPageWhenNegativeStepInRasterMode() {
        var pagedStepReceived: Int? = null
        var prevPageCalled = false
        var nextPageCalled = false

        dispatchHardwarePageTurn(
            step = -1,
            readerContainerKind = ReaderContainerKind.RASTER_PAGE,
            pagedColumnTurn = { pagedStepReceived = it },
            onPrevPage = { prevPageCalled = true },
            onNextPage = { nextPageCalled = true },
        )

        assertEquals(null, pagedStepReceived)
        assertTrue(prevPageCalled)
        assertFalse(nextPageCalled)
    }

    @Test
    fun dispatchHardwarePageTurnFallsBackToPageNavigationWhenPagedColumnIsNullInTextPageMode() {
        var prevPageCalled = false
        var nextPageCalled = false

        dispatchHardwarePageTurn(
            step = -1,
            readerContainerKind = ReaderContainerKind.TEXT_PAGE,
            pagedColumnTurn = null,
            onPrevPage = { prevPageCalled = true },
            onNextPage = { nextPageCalled = true },
        )

        assertTrue(prevPageCalled)
        assertFalse(nextPageCalled)
    }
}
