package io.leostrange.mrcomic.feature.reader.ui.gesture

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Characterization tests for [ReaderHtmlHelpers].
 */
class ReaderHtmlHelpersTest {

    // ── injectBodyInsetCss ─────────────────────────────────────────────────

    @Test
    fun injectBodyInsetCss_insertsBeforeHeadClose() {
        val html = "<html><head><title>Test</title></head><body>Content</body></html>"
        val result = ReaderHtmlHelpers.injectBodyInsetCss(html, topPx = 24, bottomPx = 48)

        assertTrue(result.contains("<style id='__mrcomic_body_inset'>"))
        assertTrue(result.contains("padding-top:24px!important"))
        assertTrue(result.contains("padding-bottom:48px!important"))
        // Style is before </head>
        assertTrue(result.indexOf("__mrcomic_body_inset") < result.indexOf("</head>"))
    }

    @Test
    fun injectBodyInsetCss_noHeadTag_prependsStyle() {
        val html = "<body>Content</body>"
        val result = ReaderHtmlHelpers.injectBodyInsetCss(html, topPx = 10, bottomPx = 20)

        assertTrue(result.startsWith("<style"))
        assertTrue(result.contains("padding-top:10px!important"))
    }

    @Test
    fun injectBodyInsetCss_withHorizontalPadding() {
        val html = "<html><head></head><body></body></html>"
        val result = ReaderHtmlHelpers.injectBodyInsetCss(html, 10, 20, horizontalPx = 16)

        assertTrue(result.contains("padding-left:16px!important"))
        assertTrue(result.contains("padding-right:16px!important"))
    }

    @Test
    fun injectBodyInsetCss_withRtl() {
        val html = "<html><head></head><body></body></html>"
        val result = ReaderHtmlHelpers.injectBodyInsetCss(html, 10, 20, isRtl = true)

        assertTrue(result.contains("direction:rtl!important"))
        assertTrue(result.contains("text-align:right!important"))
    }

    @Test
    fun injectBodyInsetCss_uppercaseHeadTag() {
        val html = "<html><HEAD></HEAD><body></body></html>"
        val result = ReaderHtmlHelpers.injectBodyInsetCss(html, 10, 20)

        assertTrue(result.contains("<style id='__mrcomic_body_inset'>"))
    }

    // ── decodePagedLayoutMetrics ───────────────────────────────────────────

    @Test
    fun decodePagedLayoutMetrics_validJson() {
        val raw = """{"handled":true,"pageIndex":5,"pageCount":20,"characterOffset":1234,"clipHeight":800,"usableHeight":700}"""
        val metrics = ReaderHtmlHelpers.decodePagedLayoutMetrics(raw)

        assertNotNull(metrics)
        assertEquals(true, metrics!!.handled)
        assertEquals(5, metrics.pageIndex)
        assertEquals(20, metrics.pageCount)
        assertEquals(1234, metrics.characterOffset)
        assertEquals(800, metrics.clipHeight)
        assertEquals(700, metrics.usableHeight)
    }

    @Test
    fun decodePagedLayoutMetrics_clampsNegativeValues() {
        val raw = """{"pageIndex":-1,"pageCount":0,"clipHeight":-5,"usableHeight":-10}"""
        val metrics = ReaderHtmlHelpers.decodePagedLayoutMetrics(raw)

        assertNotNull(metrics)
        assertEquals(0, metrics!!.pageIndex)
        assertEquals(1, metrics.pageCount) // minimum 1
        assertEquals(0, metrics.clipHeight)
        assertEquals(0, metrics.usableHeight)
    }

    @Test
    fun decodePagedLayoutMetrics_nullReturnsNull() {
        assertNull(ReaderHtmlHelpers.decodePagedLayoutMetrics(null))
    }

    @Test
    fun decodePagedLayoutMetrics_invalidJsonReturnsNull() {
        assertNull(ReaderHtmlHelpers.decodePagedLayoutMetrics("not json"))
    }

    @Test
    fun decodePagedLayoutMetrics_clampsNegativeCharacterOffset() {
        val metrics = ReaderHtmlHelpers.decodePagedLayoutMetrics("""{"characterOffset":-10}""")

        assertNotNull(metrics)
        assertEquals(0, metrics!!.characterOffset)
    }

    @Test
    fun decodePagedLayoutMetrics_defaultsWhenFieldsMissing() {
        val raw = """{}"""
        val metrics = ReaderHtmlHelpers.decodePagedLayoutMetrics(raw)

        assertNotNull(metrics)
        assertEquals(false, metrics!!.handled)
        assertEquals(0, metrics.pageIndex)
        assertEquals(1, metrics.pageCount)
    }
}
