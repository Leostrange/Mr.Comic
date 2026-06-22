package com.example.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class InjectBodyInsetCssTest {

    @Test
    fun injectsTopAndBottomPadding() {
        val html = "<html><head></head><body><p>Hello</p></body></html>"
        val result = injectBodyInsetCss(html, topPx = 16, bottomPx = 24)
        assertTrue(result.contains("padding-top:16px"))
        assertTrue(result.contains("padding-bottom:24px"))
        assertTrue(result.contains("__mrcomic_body_inset"))
    }

    @Test
    fun injectsHorizontalPadding() {
        val html = "<html><head></head><body><p>Hello</p></body></html>"
        val result = injectBodyInsetCss(html, topPx = 0, bottomPx = 0, horizontalPx = 20)
        assertTrue(result.contains("padding-left:20px"))
        assertTrue(result.contains("padding-right:20px"))
    }

    @Test
    fun injectsMaxWidth() {
        val html = "<html><head></head><body><p>Hello</p></body></html>"
        val result = injectBodyInsetCss(html, topPx = 0, bottomPx = 0, maxWidthPx = 720)
        assertTrue(result.contains("max-width:720px"))
        assertTrue(result.contains("margin-left:auto"))
        assertTrue(result.contains("margin-right:auto"))
    }

    @Test
    fun noHorizontalPaddingWhenZero() {
        val html = "<html><head></head><body><p>Hello</p></body></html>"
        val result = injectBodyInsetCss(html, topPx = 8, bottomPx = 8, horizontalPx = 0)
        assertFalse(result.contains("padding-left"))
        assertFalse(result.contains("padding-right"))
    }

    @Test
    fun noMaxWidthWhenZero() {
        val html = "<html><head></head><body><p>Hello</p></body></html>"
        val result = injectBodyInsetCss(html, topPx = 0, bottomPx = 0, maxWidthPx = 0)
        assertFalse(result.contains("max-width"))
        assertFalse(result.contains("margin-left:auto"))
    }

    @Test
    fun injectsBeforeHeadClose() {
        val html = "<html><head><title>Test</title></head><body><p>Hello</p></body></html>"
        val result = injectBodyInsetCss(html, topPx = 10, bottomPx = 10)
        val styleIndex = result.indexOf("__mrcomic_body_inset")
        val headCloseIndex = result.indexOf("</head>")
        assertTrue("Style should be before </head>", styleIndex < headCloseIndex)
    }

    @Test
    fun handlesUpperCaseHead() {
        val html = "<html><HEAD></HEAD><body><p>Hello</p></body></html>"
        val result = injectBodyInsetCss(html, topPx = 5, bottomPx = 5)
        assertTrue(result.contains("__mrcomic_body_inset"))
    }

    @Test
    fun handlesMissingHeadTag() {
        val html = "<html><body><p>Hello</p></body></html>"
        val result = injectBodyInsetCss(html, topPx = 5, bottomPx = 5)
        assertTrue(result.contains("__mrcomic_body_inset"))
        assertTrue(result.contains("padding-top:5px"))
    }

    @Test
    fun combinesAllInsetTypes() {
        val html = "<html><head></head><body></body></html>"
        val result = injectBodyInsetCss(
            html, topPx = 16, bottomPx = 24, horizontalPx = 20, maxWidthPx = 720
        )
        assertTrue(result.contains("padding-top:16px"))
        assertTrue(result.contains("padding-bottom:24px"))
        assertTrue(result.contains("padding-left:20px"))
        assertTrue(result.contains("padding-right:20px"))
        assertTrue(result.contains("max-width:720px"))
    }
}
