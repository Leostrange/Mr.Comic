package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderTtsPolicyTest {

    @Test
    fun `extractReaderTtsText strips html and keeps readable text`() {
        val html = """
            <html><body>
            <h1>Chapter One</h1>
            <p>Hello <b>world</b>.</p>
            <script>ignored()</script>
            <p>Next line</p>
            </body></html>
        """.trimIndent()

        assertEquals("Chapter One\nHello world.\nNext line", extractReaderTtsText(html))
    }

    @Test
    fun `buildReaderTtsChunks splits long paragraphs into calm chunks`() {
        val html = "<p>" + List(40) { "word$it" }.joinToString(" ") + "</p>"

        val chunks = buildReaderTtsChunks(html, maxChars = 40)

        assertTrue(chunks.size > 1)
        assertTrue(chunks.all { it.length <= 40 })
    }

    @Test
    fun `buildReaderTtsChunks returns empty for blank text`() {
        assertTrue(buildReaderTtsChunks("<p>   </p>").isEmpty())
    }
}
