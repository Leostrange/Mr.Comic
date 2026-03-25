package com.example.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderScreenTimeoutModeTest {

    @Test
    fun fromStoredFallsBackToSystem() {
        assertEquals(ReaderScreenTimeoutMode.SYSTEM, ReaderScreenTimeoutMode.fromStored("missing"))
    }

    @Test
    fun neverModeKeepsScreenAwake() {
        assertTrue(ReaderScreenTimeoutMode.NEVER.keepsScreenAwake)
        assertEquals(600_000L, ReaderScreenTimeoutMode.MINUTE_10.timeoutMillis)
    }
}
