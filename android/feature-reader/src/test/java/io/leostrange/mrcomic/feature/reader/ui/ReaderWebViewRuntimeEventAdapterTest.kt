package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class ReaderWebViewRuntimeEventAdapterTest {

    @Test
    fun `non blank free scroll probe makes layout ready`() {
        val event = ReaderWebViewEvent.ContentMeasured(
            generation = 4,
            metrics = ReaderWebViewContentMetrics(20, 20, 0, 1, 640)
        )

        assertEquals(
            ReaderWebViewRuntimeEvent.LayoutReady(
                generation = 4,
                metrics = ReaderWebViewLayoutMetrics(1, 0, 0)
            ),
            event.toRuntimeEvent(pagedMode = false)
        )
    }

    @Test
    fun `paged probe waits for real layout metrics`() {
        val event = ReaderWebViewEvent.ContentMeasured(
            generation = 4,
            metrics = ReaderWebViewContentMetrics(20, 20, 0, 1, 640)
        )

        assertNull(event.toRuntimeEvent(pagedMode = true))
    }

    @Test
    fun `blank probe requests runtime recovery`() {
        val event = ReaderWebViewEvent.ContentMeasured(
            generation = 7,
            metrics = ReaderWebViewContentMetrics(0, 0, 0, 0, 0)
        )

        assertEquals(
            ReaderWebViewRuntimeEvent.ContentBlank(7),
            event.toRuntimeEvent(pagedMode = false)
        )
    }
}
