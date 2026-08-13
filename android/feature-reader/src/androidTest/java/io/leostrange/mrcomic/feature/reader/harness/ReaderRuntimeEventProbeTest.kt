package io.leostrange.mrcomic.feature.reader.harness

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ReaderRuntimeEventProbeTest {

    @Test
    fun lateEventIsRecordedWithoutReplacingTheActiveGeneration() {
        var now = 100L
        val probe = ReaderRuntimeEventProbe { now++ }
        val first = probe.beginLoad("book-a/page")
        val second = probe.beginLoad("book-a/webtoon")

        probe.record(first, ReaderRuntimeEventType.PAGE_FINISHED, "late callback")
        probe.record(second, ReaderRuntimeEventType.PAGE_COMMITTED)

        assertEquals(second, probe.activeGeneration)
        assertEquals(
            listOf(ReaderRuntimeEventType.LOAD_REQUESTED, ReaderRuntimeEventType.PAGE_FINISHED),
            probe.eventsFor(first).map { it.type }
        )
        assertTrue(probe.trace().contains("$first|PAGE_FINISHED"))
    }

    @Test
    fun traceIsOrderedAndBoundsDiagnosticDetails() {
        val probe = ReaderRuntimeEventProbe { 10L }
        val generation = probe.beginLoad("book")
        probe.record(generation, ReaderRuntimeEventType.LOAD_FAILED, "x".repeat(500))

        val snapshot = probe.snapshot()
        assertEquals(listOf(1L, 2L), snapshot.map { it.sequence })
        assertEquals(240, snapshot.last().detail?.length)
    }

    @Test
    fun webViewLoadProducesLifecycleAndReadinessEvidence() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        val runner = WebViewTestRunner(context)
        try {
            runner.createWebView()
            val generation = runner.loadHtml(
                "<html><body><p id='ready'>Runtime evidence</p></body></html>"
            )

            val types = runner.eventProbe.eventsFor(generation).map { it.type }
            assertTrue(types.contains(ReaderRuntimeEventType.PAGE_STARTED))
            assertTrue(types.contains(ReaderRuntimeEventType.PAGE_FINISHED))
            assertTrue(types.contains(ReaderRuntimeEventType.CONTENT_READY))
            assertTrue(
                types.indexOf(ReaderRuntimeEventType.PAGE_FINISHED) <
                    types.indexOf(ReaderRuntimeEventType.CONTENT_READY)
            )
        } finally {
            runner.destroy()
        }
    }
}
