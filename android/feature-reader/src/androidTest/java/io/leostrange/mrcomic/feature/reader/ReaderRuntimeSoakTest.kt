package io.leostrange.mrcomic.feature.reader

import androidx.test.filters.LargeTest
import androidx.test.platform.app.InstrumentationRegistry
import io.leostrange.mrcomic.feature.reader.harness.ReaderRuntimeEventProbe
import io.leostrange.mrcomic.feature.reader.harness.WebViewTestRunner
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/** Release-tier lifecycle smoke. Longer duration baselines remain a manual release gate. */
@LargeTest
class ReaderRuntimeSoakTest {
    @Test
    fun thirtyOpenTurnCloseCyclesHaveOneReadyAndOneDisposePerGeneration() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        val combinedReadyTimes = mutableListOf<Long>()

        repeat(OPEN_CLOSE_CYCLES) { cycle ->
            val probe = ReaderRuntimeEventProbe()
            val runner = WebViewTestRunner(context, probe)
            try {
                runner.createWebView()
                runner.loadHtml(documentHtml(cycle))
                repeat(TURNS_PER_CYCLE) {
                    runner.executeJs("window.scrollBy(0, 120); 'ok'")
                }
            } finally {
                runner.destroy()
            }

            val summary = probe.summary()
            assertEquals("cycle=$cycle generation count", 1, summary.generationCount)
            assertEquals("cycle=$cycle ready count", 1, summary.readyGenerationCount)
            assertEquals("cycle=$cycle dispose count", 1, summary.disposedGenerationCount)
            assertEquals("cycle=$cycle failed count", 0, summary.failedGenerationCount)
            combinedReadyTimes += summary.timeToReadyMillis
        }

        assertEquals(OPEN_CLOSE_CYCLES, combinedReadyTimes.size)
        assertTrue("Every time-to-ready sample must be positive", combinedReadyTimes.all { it > 0L })
    }

    private fun documentHtml(cycle: Int): String = """
        <!doctype html>
        <html><head><meta charset="utf-8"></head><body>
        <h1>Reader lifecycle cycle $cycle</h1>
        <p>${"Stable runtime content. ".repeat(200)}</p>
        </body></html>
    """.trimIndent()

    private companion object {
        const val OPEN_CLOSE_CYCLES = 30
        const val TURNS_PER_CYCLE = 10
    }
}
