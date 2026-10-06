package io.leostrange.mrcomic.engine.formats.text

import android.content.ContextWrapper
import io.leostrange.mrcomic.core.model.ComicFormat
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Test
import java.io.File

class HtmlTocAnchorsTest {

    @Test
    fun repeatedHeadingTitlesKeepDistinctTargetsAndIdTargetsStayOutOfTheToc() = runBlocking {
        val body = "Lorem ipsum dolor sit amet. ".repeat(40)
        val sample = File.createTempFile("mrcomic-toc", ".html")
        sample.writeText(
            """
            <html><body>
            <h2>Chapter</h2><p>$body</p><p id="fn1">Footnote target</p>
            <h2>Chapter</h2><p>$body</p>
            <h2>Epilogue</h2><p>$body</p>
            </body></html>
            """.trimIndent()
        )
        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val toc = reader.getTableOfContents()
            assertEquals(listOf("Chapter", "Chapter", "Epilogue"), toc.map { it.title })
            assertEquals(3, toc.mapNotNull { it.anchorId }.toSet().size)
            // Every TOC anchor must exist exactly once in the rendered sections.
            val html = reader.getTextDocumentSections().joinToString("") { it.html }
            toc.forEach { entry -> assertEquals(1, Regex("id=\"${entry.anchorId}\"").findAll(html).count()) }
        } finally {
            reader.close()
            sample.delete()
        }
    }
}
