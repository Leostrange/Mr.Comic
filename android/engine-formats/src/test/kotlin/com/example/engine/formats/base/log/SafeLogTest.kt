package com.example.engine.formats.base.log

import org.junit.Assert.assertTrue
import org.junit.Test

class SafeLogTest {

    @Test
    fun perfClockIsMonotonicAcrossSuccessiveReads() {
        val first = perfNowMs()
        val second = perfNowMs()

        assertTrue(second >= first)
    }
}
