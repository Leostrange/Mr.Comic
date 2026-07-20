package io.leostrange.mrcomic.engine.formats.epub

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class EpubFootnoteParserTest {

    @Test
    fun `extracts FB2EPUB notes from a shared notes page`() {
        val raw = """
            <?xml version="1.0" encoding="UTF-8"?>
            <html xmlns="http://www.w3.org/1999/xhtml">
            <body class="z">
            <div class="title"><p class="p">Примечания</p></div>
            <span id="id67"><div class="title1"><p class="p">1</p></div><p class="p1">Scott, <em>Seeing Like a State;</em> Скотт.</p></span>
            <span id="id66"><div class="title1"><p class="p">2</p></div><p class="p1">Second footnote text.</p></span>
            </body>
            </html>
        """.trimIndent()

        val items = EpubFootnoteParser.extractItems(raw)

        assertEquals(listOf("id67", "id66"), items.map { it.anchorId })
        assertEquals(listOf("1", "2"), items.map { it.number })
        assertTrue(items[0].text.startsWith("Scott, Seeing Like a State;"))
        assertEquals("Second footnote text.", items[1].text)
        assertTrue(EpubFootnoteParser.hasNotesTitle(raw))
    }

    @Test
    fun `keeps legacy FbAutId single-note pages working`() {
        val raw = """
            <html>
            <body>
            <h3 id="FbAutId_12">12</h3>
            <p>The footnote body stays available for popup rendering.</p>
            </body>
            </html>
        """.trimIndent()

        val items = EpubFootnoteParser.extractItems(raw)

        assertEquals(1, items.size)
        assertEquals("FbAutId_12", items[0].anchorId)
        assertEquals("12", items[0].number)
        assertEquals("The footnote body stays available for popup rendering.", items[0].text)
    }

    @Test
    fun `does not treat regular chapter anchors as footnotes`() {
        val raw = """
            <html>
            <body>
            <p id="intro">Это обычный абзац главы без сносок.</p>
            <p>А вот ссылка на примечание <a href="ch2.xhtml#id67">1</a>.</p>
            </body>
            </html>
        """.trimIndent()

        val items = EpubFootnoteParser.extractItems(raw)

        assertTrue(items.isEmpty())
        assertFalse(EpubFootnoteParser.hasNotesTitle(raw))
    }
}
