package com.example.engine.formats.text

import android.content.ContextWrapper
import com.example.core.model.ComicFormat
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

class TextHyphenationTest {

    /**
     * Scanned / OCR'd books keep printed line-break hyphenation and have narrow columns,
     * so they fall into the "preserve line breaks" layout path. The reader must still rejoin
     * words split across printed lines instead of showing the hyphen mid-word.
     */
    @Test
    fun txtReaderRejoinsPrintedHyphenationInShortLineBlocks() = runBlocking {
        val sample = File.createTempFile("mrcomic-hyphenation", ".txt")
        sample.writeText(
            """
            Это были таинствен-
            ные существа, давно высох-
            шие на солнце, наша нацио-
            нальная гордость и слава.
            """.trimIndent()
        )

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.TXT)
        try {
            val html = reader.getHtmlPage(0).orEmpty()

            assertTrue("Expected rejoined word 'таинственные'", html.contains("таинственные"))
            assertTrue("Expected rejoined word 'высохшие'", html.contains("высохшие"))
            assertTrue("Expected rejoined word 'национальная'", html.contains("национальная"))
            assertFalse("Hyphenated fragment should not remain", html.contains("таинствен-"))
            assertFalse("Hyphenated fragment should not remain", html.contains("высох-"))
            assertFalse("Hyphenated fragment should not remain", html.contains("нацио-"))
        } finally {
            reader.close()
            sample.delete()
        }
    }

    /**
     * Soft hyphens (U+00AD) are invisible layout hints in the source and must never be
     * rendered, even when the surrounding block keeps its line breaks.
     */
    @Test
    fun txtReaderStripsSoftHyphensInShortLineBlocks() = runBlocking {
        val sample = File.createTempFile("mrcomic-soft-hyphen", ".txt")
        sample.writeText(
            "Корот\u00ADкая стро\u00ADка\n" +
                "Втора\u00ADя строка\n" +
                "Третья корот\u00ADкая",
        )

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.TXT)
        try {
            val html = reader.getHtmlPage(0).orEmpty()
            assertFalse("Soft hyphen must not be rendered", html.contains('\u00AD'))
            assertTrue(html.contains("Короткая"))
            assertTrue(html.contains("строка"))
        } finally {
            reader.close()
            sample.delete()
        }
    }

    /**
     * Genuine em-dash dialogue markers and bullet dashes must not be swallowed by the
     * de-hyphenation pass.
     */
    @Test
    fun txtReaderKeepsDialogueDashesIntact() = runBlocking {
        val sample = File.createTempFile("mrcomic-dialogue", ".txt")
        sample.writeText(
            """
            — Привет, как дела?
            — Хорошо, спасибо.
            — Рад слышать это.
            """.trimIndent()
        )

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.TXT)
        try {
            val html = reader.getHtmlPage(0).orEmpty()
            assertTrue("Dialogue dash should be preserved", html.contains("— Привет"))
            assertTrue(html.contains("— Хорошо"))
        } finally {
            reader.close()
            sample.delete()
        }
    }
}
