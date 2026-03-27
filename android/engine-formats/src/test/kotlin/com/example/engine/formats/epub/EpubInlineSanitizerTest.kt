package com.example.engine.formats.epub

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class EpubInlineSanitizerTest {

    @Test
    fun sanitizeInlineEpubCss_removesEmbeddedFontFaces() {
        val css = """
            body { color: #111; }
            @font-face {
              font-family: 'Times New Roman';
              src: url(fonts/sample.otf);
            }
            .title { font-weight: bold; }
        """.trimIndent()

        val sanitized = sanitizeInlineEpubCss(css)

        assertFalse(sanitized.contains("@font-face"))
        assertTrue(sanitized.contains("body { color: #111; }"))
        assertTrue(sanitized.contains(".title { font-weight: bold; }"))
    }

    @Test
    fun simplifySingleImageSvgContent_replacesSimpleSvgWrapperWithImage() {
        val html = """
            <html><body class="cover">
            <svg xmlns="http://www.w3.org/2000/svg" class="cover-svg" viewBox="0 0 400 660">
            <image height="660" xlink:href="data:image/jpeg;base64,abc" width="400" xmlns:xlink="http://www.w3.org/1999/xlink"/>
            </svg>
            </body></html>
        """.trimIndent()

        val simplified = simplifySingleImageSvgContent(html)

        assertFalse(simplified.contains("<svg", ignoreCase = true))
        assertTrue(simplified.contains("""<img src="data:image/jpeg;base64,abc""""))
        assertTrue(simplified.contains("epub-inline-cover"))
    }
}
