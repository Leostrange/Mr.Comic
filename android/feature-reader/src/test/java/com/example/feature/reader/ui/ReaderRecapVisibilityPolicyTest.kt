package com.example.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderRecapVisibilityPolicyTest {

    @Test
    fun shouldAutoDismissReaderMilestoneRecap_onlyWhenVisibleAndUnblocked() {
        assertTrue(
            shouldAutoDismissReaderMilestoneRecap(
                recapVisible = true,
                hasBlockingOverlay = false
            )
        )
        assertFalse(
            shouldAutoDismissReaderMilestoneRecap(
                recapVisible = true,
                hasBlockingOverlay = true
            )
        )
        assertFalse(
            shouldAutoDismissReaderMilestoneRecap(
                recapVisible = false,
                hasBlockingOverlay = false
            )
        )
    }
}
