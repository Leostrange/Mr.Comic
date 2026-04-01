package com.example.engine.formats.epub

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class EpubCssSanitizationTest {

    @Test
    fun assetBackedCssKeepsResolvableRelativeFontFace() {
        val css = """
            @font-face {
              font-family: "Book";
              src: url('../fonts/book.woff2') format('woff2');
            }
            body { font-family: "Book", serif; }
        """.trimIndent()

        val sanitized = sanitizeAssetBackedEpubCss(
            css = css,
            cssEntryPath = "OPS/styles/main.css",
            assetExists = { it == "OPS/fonts/book.woff2" }
        )

        assertTrue(sanitized.contains("@font-face"))
        assertTrue(sanitized.contains("../fonts/book.woff2"))
    }

    @Test
    fun assetBackedCssStripsBrokenAndUnsafeFontFaceSources() {
        val css = """
            @font-face {
              font-family: "Broken";
              src: url('file:///android_asset/fonts/broken.ttf') format('truetype'),
                   url('../fonts/missing.woff2') format('woff2');
            }
            @font-face {
              font-family: "Unsafe";
              src: url('javascript:alert(1)') format('truetype');
            }
            body { font-family: "Broken", serif; }
        """.trimIndent()

        val sanitized = sanitizeAssetBackedEpubCss(
            css = css,
            cssEntryPath = "OPS/styles/main.css",
            assetExists = { false }
        )

        assertFalse(sanitized.contains("@font-face"))
        assertFalse(sanitized.contains("file:///android_asset/fonts/broken.ttf"))
        assertFalse(sanitized.contains("../fonts/missing.woff2"))
        assertFalse(sanitized.contains("javascript:alert(1)"))
    }
}
