package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderHtmlSourceLoadPolicyTest {
    @Test
    fun sameSource_reloadIsRequiredWhenReaderModeChanges() {
        assertTrue(
            readerHtmlSourceRequiresLoad(
                activeToken = "chapter-4",
                activePagedMode = false,
                requestedToken = "chapter-4",
                requestedPagedMode = true,
            )
        )
    }

    @Test
    fun sameSource_reloadIsSkippedWhenReaderModeIsUnchanged() {
        assertFalse(
            readerHtmlSourceRequiresLoad(
                activeToken = "chapter-4",
                activePagedMode = true,
                requestedToken = "chapter-4",
                requestedPagedMode = true,
            )
        )
    }
}
