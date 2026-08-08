package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.BookTocItem
import io.leostrange.mrcomic.core.model.ReaderLocator
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.text.ReflowableTextFormatReader
import io.leostrange.mrcomic.engine.api.TextDocumentSection
import org.junit.Assert.assertEquals
import org.junit.Test

class TextBookSessionBridgeTest {

    @Test
    fun mapBookTocResolvesHrefThroughLegacyReader() {
        val reader = object : FormatReader {
            override suspend fun getPageCount(): Int = 3
            override suspend fun getPage(index: Int) = null
            override fun resolveHrefToPage(href: String): Int? =
                if (href.endsWith("chapter2.xhtml")) 1 else null
            override fun close() = Unit
        }
        val entries = kotlinx.coroutines.runBlocking {
            TextBookSessionBridge.mapBookTocToTocEntries(
            items = listOf(
                BookTocItem(
                    title = "Chapter 2",
                    locator = ReaderLocator(href = "OEBPS/chapter2.xhtml")
                )
            ),
            reader = reader
            )
        }
        assertEquals(1, entries.single().pageIndex)
        assertEquals("Chapter 2", entries.single().title)
    }

    /**
     * Regression (P1-6): for a reflowable reader the TOC must resolve to the SECTION index via href,
     * not to the locator's legacy global pageIndex (a different index space). A stray pageIndex must
     * not short-circuit and send the jump to the wrong chapter.
     */
    @Test
    fun reflowableTocResolvesHrefToSectionIndexNotLegacyPageIndex() {
        val sections = listOf(
            TextDocumentSection(index = 0, id = "OEBPS/cover.xhtml", html = ""),
            TextDocumentSection(index = 1, id = "OEBPS/chapter1.xhtml", html = ""),
            TextDocumentSection(index = 2, id = "OEBPS/chapter2.xhtml", html = "")
        )
        val reader = ReflowableTestReader(sections)
        val entries = kotlinx.coroutines.runBlocking {
            TextBookSessionBridge.mapBookTocToTocEntries(
                items = listOf(
                    BookTocItem(
                        title = "Chapter 2",
                        // Legacy pageIndex 99 is in a different (page) index space; href wins.
                        locator = ReaderLocator(href = "OEBPS/chapter2.xhtml", pageIndex = 99)
                    )
                ),
                reader = reader
            )
        }
        assertEquals(2, entries.single().pageIndex)
        assertEquals("Chapter 2", entries.single().title)
    }

    private class ReflowableTestReader(
        private val sections: List<TextDocumentSection>
    ) : FormatReader, ReflowableTextFormatReader {
        override suspend fun getPageCount(): Int = sections.size
        override suspend fun getPage(index: Int) = null
        override fun resolveHrefToPage(href: String): Int? = null
        override fun close() = Unit
        override suspend fun getTextDocumentSections(): List<TextDocumentSection> = sections
    }
}
