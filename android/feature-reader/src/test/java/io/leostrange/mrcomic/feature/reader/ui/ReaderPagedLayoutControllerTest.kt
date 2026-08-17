package io.leostrange.mrcomic.feature.reader.ui

import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderPagedLayoutControllerTest {

    @Test
    fun applyPagedLayout_whenNotPagedMode_setsReadyImmediately() {
        var alphaValue = 0f
        val controller = ReaderPagedLayoutController(
            evaluateJavascript = { _, _ -> },
            postDelayed = { _, _ -> },
            removeCallbacks = { _ -> },
            post = { it.run() },
            getViewportWidthCss = { 360 },
            getViewportHeightCss = { 640 },
            onAlphaChanged = { alphaValue = it },
            onPageMetricsChanged = { _, _, _ -> }
        )

        controller.applyPagedLayout(isPagedMode = false, runtimeGeneration = 0L)

        assertTrue(controller.pagedLayoutReady)
        assertEquals(1f, alphaValue, 0.001f)
    }

    @Test
    fun applyPagedLayout_withValidMetrics_updatesStateAndAlpha() {
        var alphaValue = 0f
        var receivedPageCount = 0
        var receivedPageIndex = 0
        var receivedOffset = 0

        val validMetricsJson = JSONObject().apply {
            put("handled", true)
            put("pageIndex", 1)
            put("pageCount", 5)
            put("characterOffset", 420)
            put("clipHeight", 640)
            put("usableHeight", 600)
        }.toString()

        val controller = ReaderPagedLayoutController(
            evaluateJavascript = { _, callback ->
                callback?.invoke(JSONObject.quote(validMetricsJson))
            },
            postDelayed = { runnable, _ -> runnable.run() },
            removeCallbacks = { _ -> },
            post = { it.run() },
            getViewportWidthCss = { 360 },
            getViewportHeightCss = { 640 },
            onAlphaChanged = { alphaValue = it },
            onPageMetricsChanged = { count, index, offset ->
                receivedPageCount = count
                receivedPageIndex = index
                receivedOffset = offset
            }
        )

        controller.applyPagedLayout(isPagedMode = true, runtimeGeneration = 0L)

        assertTrue(controller.pagedLayoutReady)
        assertEquals(1f, alphaValue, 0.001f)
        assertEquals(5, receivedPageCount)
        assertEquals(1, receivedPageIndex)
        assertEquals(420, receivedOffset)
    }

    @Test
    fun revealPagedContentFallback_setsReadyAndAlpha() {
        var alphaValue = 0f
        val controller = ReaderPagedLayoutController(
            evaluateJavascript = { _, _ -> },
            postDelayed = { _, _ -> },
            removeCallbacks = { _ -> },
            post = { it.run() },
            getViewportWidthCss = { 360 },
            getViewportHeightCss = { 640 },
            onAlphaChanged = { alphaValue = it },
            onPageMetricsChanged = { _, _, _ -> }
        )

        controller.resetForNewLoad(isPagedMode = true)
        assertFalse(controller.pagedLayoutReady)

        controller.revealPagedContentFallback("fallback test")

        assertTrue(controller.pagedLayoutReady)
        assertEquals(1f, alphaValue, 0.001f)
    }

    @Test
    fun turnPagedColumn_whenBoundaryHit_invokesBoundaryCallback() {
        var boundaryInvoked = false
        val unhandledMetricsJson = JSONObject().apply {
            put("handled", false)
            put("pageIndex", 0)
            put("pageCount", 1)
            put("characterOffset", 0)
            put("clipHeight", 640)
            put("usableHeight", 600)
        }.toString()

        val controller = ReaderPagedLayoutController(
            evaluateJavascript = { _, callback ->
                callback?.invoke(JSONObject.quote(unhandledMetricsJson))
            },
            postDelayed = { _, _ -> },
            removeCallbacks = { _ -> },
            post = { it.run() },
            getViewportWidthCss = { 360 },
            getViewportHeightCss = { 640 },
            onAlphaChanged = { _ -> },
            onPageMetricsChanged = { _, _, _ -> }
        )

        controller.turnPagedColumn(
            isPagedMode = true,
            delta = 1,
            runtimeGeneration = 0L,
            onBoundary = { boundaryInvoked = true }
        )

        assertTrue(boundaryInvoked)
        assertEquals(0, controller.pendingPagedLayoutTarget)
    }
}
