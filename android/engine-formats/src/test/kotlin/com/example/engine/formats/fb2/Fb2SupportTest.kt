package com.example.engine.formats.fb2

import android.content.ContextWrapper
import org.jsoup.Jsoup
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.util.Locale

class Fb2SupportTest {

    @Test
    fun preprocessBytesNormalizesEntitiesAndEncodingDeclaration() {
        val reader = Fb2FormatReader(ContextWrapper(null), "/tmp/unused.fb2")
        val preprocess = Fb2FormatReader::class.java.getDeclaredMethod("preprocessBytes", ByteArray::class.java)
        preprocess.isAccessible = true

        val raw = """
            <?xml version="1.0" encoding="windows-1251"?>
            <FictionBook xmlns="http://www.gribuser.ru/xml/fictionbook/2.0">
              <body>
                <section>
                  <title><p>Глава 1</p></title>
                  <p>A&B &nbsp; text</p>
                </section>
              </body>
            </FictionBook>
        """.trimIndent().toByteArray(Charsets.UTF_8)

        val normalized = preprocess.invoke(reader, raw) as ByteArray
        val text = normalized.toString(Charsets.UTF_8)

        assertTrue(text.contains("encoding=\"UTF-8\""))
        assertTrue(text.contains("A&amp;B"))
        assertTrue(text.contains("\u00A0"))
    }

    @Test
    fun fb2ChunkingKeepsEveryTokenInOrder() {
        val tokens = (1..180).map { index -> String.format(Locale.US, "fb2Token%03d", index) }
        val paragraphs = tokens.chunked(14).joinToString("\n") { chunk ->
            "<p>${chunk.joinToString(" ")}</p>"
        }
        val chunks = Fb2FormatReader.splitRawHtmlIntoViewportChunks(paragraphs)

        assertTrue("FB2 should split long text into multiple viewport-safe chunks", chunks.size > 1)
        assertFalse("FB2 should not produce blank chunks", chunks.any { visibleText(it).isBlank() })
        assertTokensPresentAndOrdered(tokens, chunks.joinToString(" ") { visibleText(it) })
    }

    @Test
    fun fb2OversizedSingleParagraphStillKeepsEveryToken() {
        val tokens = (1..180).map { index -> String.format(Locale.US, "fb2Oversized%03d", index) }
        val paragraph = "<p>${tokens.joinToString(" ")}</p>"

        val chunks = Fb2FormatReader.splitRawHtmlIntoViewportChunks(paragraph)

        assertTrue("FB2 should split an oversized single paragraph", chunks.size > 1)
        assertFalse("FB2 oversized paragraph should not produce blank chunks", chunks.any { visibleText(it).isBlank() })
        assertTokensPresentAndOrdered(tokens, chunks.joinToString(" ") { visibleText(it) })
    }

    private fun visibleText(html: String): String {
        return Jsoup.parse(html)
            .text()
            .replace('\u00A0', ' ')
            .replace(Regex("\\s+"), " ")
            .trim()
    }

    private fun assertTokensPresentAndOrdered(tokens: List<String>, text: String) {
        var previousIndex = -1
        tokens.forEach { token ->
            val index = text.indexOf(token)
            assertTrue("FB2 dropped token $token", index >= 0)
            assertTrue("FB2 reordered token $token", index > previousIndex)
            previousIndex = index
        }
    }
}
