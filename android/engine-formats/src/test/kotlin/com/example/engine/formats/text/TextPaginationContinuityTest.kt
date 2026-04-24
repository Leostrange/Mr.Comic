package com.example.engine.formats.text

import android.content.ContextWrapper
import com.example.core.model.ComicFormat
import kotlinx.coroutines.runBlocking
import org.jsoup.Jsoup
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import java.util.Locale

class TextPaginationContinuityTest {

    @Test
    fun txtHtmlAndMarkdownPaginationKeepsEveryTokenInOrder() = runBlocking {
        val tokens = (1..220).map { index -> String.format(Locale.US, "readerToken%03d", index) }
        val cases = listOf(
            TextCase(
                format = ComicFormat.TXT,
                extension = "txt",
                content = tokens.chunked(18).joinToString("\n\n") { it.joinToString(" ") }
            ),
            TextCase(
                format = ComicFormat.HTML,
                extension = "html",
                content = "<!DOCTYPE html><html><body>" +
                    tokens.chunked(16).joinToString("") { chunk ->
                        "<p>${chunk.joinToString(" ")}</p>"
                    } +
                    "</body></html>"
            ),
            TextCase(
                format = ComicFormat.MARKDOWN,
                extension = "md",
                content = "# Continuity\n\n" +
                    tokens.chunked(18).joinToString("\n\n") { chunk ->
                        chunk.joinToString(" ")
                    }
            )
        )

        cases.forEach { testCase ->
            val file = File.createTempFile("mrcomic-continuity-", ".${testCase.extension}")
            try {
                file.writeText(testCase.content, Charsets.UTF_8)
                val reader = TextFormatReader(ContextWrapper(null), file.absolutePath, testCase.format)
                try {
                    val pageCount = reader.getPageCount()
                    assertTrue("${testCase.format} should paginate into multiple viewport-safe pages", pageCount > 1)

                    val pages = (0 until pageCount).mapNotNull { reader.getHtmlPage(it) }
                    assertFalse("${testCase.format} should not produce blank engine pages", pages.any { visibleText(it).isBlank() })

                    val joinedText = pages.joinToString(" ") { visibleText(it) }
                    assertTokensPresentAndOrdered(testCase.format.name, tokens, joinedText)
                } finally {
                    reader.close()
                }
            } finally {
                file.delete()
            }
        }
    }

    @Test
    fun oversizedParagraphsKeepTokensWholeAcrossPages() = runBlocking {
        val tokens = (1..260).map { index -> String.format(Locale.US, "oversizedToken%03d", index) }
        val longParagraph = tokens.joinToString(" ")
        val cases = listOf(
            TextCase(
                format = ComicFormat.TXT,
                extension = "txt",
                content = longParagraph
            ),
            TextCase(
                format = ComicFormat.HTML,
                extension = "html",
                content = "<!DOCTYPE html><html><body><p>$longParagraph</p></body></html>"
            ),
            TextCase(
                format = ComicFormat.MARKDOWN,
                extension = "md",
                content = "# Oversized\n\n$longParagraph"
            )
        )

        cases.forEach { testCase ->
            val file = File.createTempFile("mrcomic-oversized-", ".${testCase.extension}")
            try {
                file.writeText(testCase.content, Charsets.UTF_8)
                val reader = TextFormatReader(ContextWrapper(null), file.absolutePath, testCase.format)
                try {
                    val pageCount = reader.getPageCount()
                    assertTrue("${testCase.format} should paginate oversized paragraphs", pageCount > 1)

                    val pages = (0 until pageCount).mapNotNull { reader.getHtmlPage(it) }
                    val joinedText = pages.joinToString(" ") { visibleText(it) }
                    assertTokensPresentAndOrdered("${testCase.format} oversized", tokens, joinedText)
                } finally {
                    reader.close()
                }
            } finally {
                file.delete()
            }
        }
    }

    @Test
    fun mediumParagraphsSplitBeforeViewportTailGetsClipped() = runBlocking {
        val tokens = (1..60).map { index -> String.format(Locale.US, "m%02d", index) }
        val mediumParagraph = tokens.joinToString(" ")
        val cases = listOf(
            TextCase(
                format = ComicFormat.TXT,
                extension = "txt",
                content = mediumParagraph
            ),
            TextCase(
                format = ComicFormat.HTML,
                extension = "html",
                content = "<!DOCTYPE html><html><body><p>$mediumParagraph</p></body></html>"
            ),
            TextCase(
                format = ComicFormat.MARKDOWN,
                extension = "md",
                content = mediumParagraph
            )
        )

        cases.forEach { testCase ->
            val file = File.createTempFile("mrcomic-medium-", ".${testCase.extension}")
            try {
                file.writeText(testCase.content, Charsets.UTF_8)
                val reader = TextFormatReader(ContextWrapper(null), file.absolutePath, testCase.format)
                try {
                    val pageCount = reader.getPageCount()
                    assertTrue("${testCase.format} should split medium viewport-risk paragraphs", pageCount > 1)

                    val pages = (0 until pageCount).mapNotNull { reader.getHtmlPage(it) }
                    val joinedText = pages.joinToString(" ") { visibleText(it) }
                    assertTokensPresentAndOrdered("${testCase.format} medium", tokens, joinedText)
                } finally {
                    reader.close()
                }
            } finally {
                file.delete()
            }
        }
    }

    private data class TextCase(
        val format: ComicFormat,
        val extension: String,
        val content: String
    )

    private fun visibleText(html: String): String {
        return Jsoup.parse(html)
            .text()
            .replace('\u00A0', ' ')
            .replace(Regex("\\s+"), " ")
            .trim()
    }

    private fun assertTokensPresentAndOrdered(label: String, tokens: List<String>, text: String) {
        var previousIndex = -1
        tokens.forEach { token ->
            val index = text.indexOf(token)
            assertTrue("$label dropped token $token", index >= 0)
            assertTrue("$label reordered token $token", index > previousIndex)
            previousIndex = index
        }
    }
}
