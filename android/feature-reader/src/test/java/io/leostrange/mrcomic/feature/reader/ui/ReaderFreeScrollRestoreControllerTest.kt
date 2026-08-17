package io.leostrange.mrcomic.feature.reader.ui

import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class ReaderFreeScrollRestoreControllerTest {

    @Test
    fun primeRestoreTarget_inWebtoonMode_setsPendingAndLatest() {
        val target = ReaderWebViewRestoreTarget(characterOffset = 250, progression = 0.35)
        val controller = ReaderFreeScrollRestoreController(
            postDelayed = { _, _ -> },
            removeCallbacks = { _ -> },
            evaluateJavascript = { _, _ -> },
            onPositionChanged = { }
        )

        controller.primeRestoreTarget(target, isPagedMode = false)

        assertEquals(250, controller.pendingRestoreTarget?.characterOffset)
        assertEquals(0.35, controller.pendingRestoreTarget?.progression ?: 0.0, 0.001)
        assertEquals(controller.pendingRestoreTarget, controller.latestRestoreTarget)
    }

    @Test
    fun primeRestoreTarget_inPagedMode_isNoOp() {
        val target = ReaderWebViewRestoreTarget(characterOffset = 250, progression = 0.35)
        val controller = ReaderFreeScrollRestoreController(
            postDelayed = { _, _ -> },
            removeCallbacks = { _ -> },
            evaluateJavascript = { _, _ -> },
            onPositionChanged = { }
        )

        controller.primeRestoreTarget(target, isPagedMode = true)

        assertNull(controller.pendingRestoreTarget)
    }

    @Test
    fun executeCapture_decodesAndEmitsPosition() {
        var emittedTarget: ReaderWebViewRestoreTarget? = null
        val controller = ReaderFreeScrollRestoreController(
            postDelayed = { runnable, _ -> runnable.run() },
            removeCallbacks = { _ -> },
            evaluateJavascript = { _, callback ->
                callback?.invoke(JSONObject.quote("""{"characterOffset":512,"progression":0.75}"""))
            },
            onPositionChanged = { emittedTarget = it }
        )

        controller.executeCapture(0.75)

        assertEquals(512, emittedTarget?.characterOffset)
        assertEquals(0.75, emittedTarget?.progression ?: 0.0, 0.001)
        assertEquals(emittedTarget, controller.latestRestoreTarget)
    }

    @Test
    fun markRestoreCompleted_clearsPendingTarget() {
        val target = ReaderWebViewRestoreTarget(characterOffset = 100, progression = 0.1)
        val controller = ReaderFreeScrollRestoreController(
            postDelayed = { _, _ -> },
            removeCallbacks = { _ -> },
            evaluateJavascript = { _, _ -> },
            onPositionChanged = { }
        )

        controller.primeRestoreTarget(target, isPagedMode = false)
        assertEquals(target, controller.pendingRestoreTarget)

        controller.markRestoreCompleted()
        assertNull(controller.pendingRestoreTarget)
        assertEquals(target, controller.latestRestoreTarget)
    }
}
