package io.leostrange.mrcomic.core.model

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderTtsSleepTimerModeTest {

    @Test
    fun `fromStored falls back to off`() {
        assertEquals(ReaderTtsSleepTimerMode.OFF, ReaderTtsSleepTimerMode.fromStored("???"))
    }

    @Test
    fun `entries keep minute mapping`() {
        assertEquals(30, ReaderTtsSleepTimerMode.MINUTES_30.minutes)
        assertEquals(null, ReaderTtsSleepTimerMode.OFF.minutes)
    }
}
