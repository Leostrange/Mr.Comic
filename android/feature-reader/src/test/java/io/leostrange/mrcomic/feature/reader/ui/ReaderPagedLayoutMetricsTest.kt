package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderPagedLayoutMetricsTest {
    @Test
    fun decodesAUsableWebViewPaginationResult() {
        val metrics = decodeReaderPagedLayoutMetrics(
            """{"handled":true,"pageIndex":2,"pageCount":6,"characterOffset":1200,"clipHeight":720,"usableHeight":640}"""
        )

        assertTrue(metrics?.isUsable() == true)
        assertTrue(metrics?.characterOffset == 1200)
    }

    @Test
    fun rejectsIncompleteOrTooSmallPaginationMetrics() {
        val metrics = decodeReaderPagedLayoutMetrics(
            """{"handled":true,"pageIndex":0,"pageCount":1,"clipHeight":200,"usableHeight":60}"""
        )

        assertFalse(metrics?.isUsable() == true)
    }

    @Test
    fun rejectsAStalePageIndexOutsideTheReportedPageCount() {
        val metrics = decodeReaderPagedLayoutMetrics(
            """{"handled":true,"pageIndex":6,"pageCount":2,"clipHeight":720,"usableHeight":640}"""
        )

        assertFalse(metrics?.isUsable() == true)
    }

    @Test
    fun malformedWebViewResultReturnsNull() {
        assertNull(decodeReaderPagedLayoutMetrics("not-json"))
    }
}
