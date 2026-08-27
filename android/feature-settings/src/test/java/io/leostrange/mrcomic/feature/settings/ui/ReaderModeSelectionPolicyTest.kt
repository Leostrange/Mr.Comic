package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.model.ReadingMode
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderModeSelectionPolicyTest {

    @Test
    fun repeatedPagesSelectionDoesNotChangeLtrOrRtl() {
        assertFalse(shouldApplyPagedReadingMode(ReadingMode.PAGE_LTR))
        assertFalse(shouldApplyPagedReadingMode(ReadingMode.PAGE_RTL))
    }

    @Test
    fun pagesSelectionCanLeaveWebtoonMode() {
        assertTrue(shouldApplyPagedReadingMode(ReadingMode.WEBTOON))
    }
}
