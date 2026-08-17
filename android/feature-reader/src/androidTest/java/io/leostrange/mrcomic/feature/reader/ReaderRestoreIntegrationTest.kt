package io.leostrange.mrcomic.feature.reader

import androidx.test.ext.junit.runners.AndroidJUnit4
import io.leostrange.mrcomic.feature.reader.ui.ReaderPagedLayoutMetrics
import io.leostrange.mrcomic.feature.reader.ui.ReaderWebViewEvent
import io.leostrange.mrcomic.feature.reader.ui.ReaderWebViewLoadController
import io.leostrange.mrcomic.feature.reader.ui.ReaderWebViewRestoreTarget
import io.leostrange.mrcomic.feature.reader.ui.ReaderWebViewRuntimeEffect
import io.leostrange.mrcomic.feature.reader.ui.ReaderWebViewRuntimeEvent
import io.leostrange.mrcomic.feature.reader.ui.ReaderWebViewRuntimePhase
import io.leostrange.mrcomic.feature.reader.ui.toRuntimeEvent
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ReaderRestoreIntegrationTest {

    @Test
    fun lateCallbacksCannotRestoreTheReplacedDocument() {
        val controller = ReaderWebViewLoadController()
        val target = ReaderWebViewRestoreTarget(characterOffset = 240)
        controller.dispatch(ReaderWebViewRuntimeEvent.LoadRequested("book-a", 1, target))
        controller.dispatch(ReaderWebViewRuntimeEvent.LoadRequested("book-b", 2, target))

        assertTrue(
            controller.dispatch(ReaderWebViewRuntimeEvent.DocumentCommitted(1)).isEmpty()
        )
        assertTrue(
            controller.dispatch(layoutEvent(generation = 1)).isEmpty()
        )

        controller.dispatch(ReaderWebViewEvent.Committed(2).toRuntimeEvent(true)!!)
        val effects = controller.dispatch(
            ReaderWebViewEvent.LayoutReady(2, pagedMetrics()).toRuntimeEvent(true)!!
        )

        assertEquals(listOf(ReaderWebViewRuntimeEffect.Restore(2, target)), effects)
        assertTrue(controller.dispatch(layoutEvent(generation = 2)).isEmpty())
        controller.dispatch(ReaderWebViewRuntimeEvent.RestoreAcknowledged(2))
        assertEquals(ReaderWebViewRuntimePhase.READY, controller.runtimeState.phase)
    }

    private fun layoutEvent(generation: Long): ReaderWebViewRuntimeEvent.LayoutReady =
        ReaderWebViewRuntimeEvent.LayoutReady(
            generation,
            io.leostrange.mrcomic.feature.reader.ui.ReaderWebViewLayoutMetrics(3, 1, 240)
        )

    private fun pagedMetrics(): ReaderPagedLayoutMetrics = ReaderPagedLayoutMetrics(
        handled = true,
        pageIndex = 1,
        pageCount = 3,
        characterOffset = 240,
        clipHeight = 640,
        usableHeight = 600
    )
}
