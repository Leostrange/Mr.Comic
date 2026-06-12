package com.example.feature.reader.ui

import com.example.core.model.BookTocItem
import com.example.core.model.ReaderLocator
import com.example.engine.formats.base.FormatReader
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
}
