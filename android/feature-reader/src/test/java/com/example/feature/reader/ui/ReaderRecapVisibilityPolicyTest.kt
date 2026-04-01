package com.example.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderRecapVisibilityPolicyTest {

    @Test
    fun shouldRecordReaderSessionMinutes_tracksOnlyRealReadingSignals() {
        assertTrue(
            shouldRecordReaderSessionMinutes(
                ReaderClosedSessionMetrics(
                    endPage = 24,
                    completed = false,
                    manualPageTurns = 3,
                    chapterTransitions = 0
                )
            )
        )
        assertFalse(
            shouldRecordReaderSessionMinutes(
                ReaderClosedSessionMetrics(
                    endPage = 24,
                    completed = false,
                    manualPageTurns = 0,
                    chapterTransitions = 0
                )
            )
        )
    }
}
