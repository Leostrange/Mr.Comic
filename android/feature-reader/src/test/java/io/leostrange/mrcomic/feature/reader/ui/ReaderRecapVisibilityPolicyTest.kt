package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.feature.reader.domain.session.ReaderClosedSessionMetrics
import io.leostrange.mrcomic.feature.reader.domain.session.shouldRecordReaderSessionMinutes
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
