package com.example.engine.epub.readium

import android.graphics.Bitmap
import com.example.core.model.BookFormat
import com.example.core.model.BookMetadata
import com.example.core.model.BookSearchHit
import com.example.core.model.BookTocItem
import com.example.core.model.ReaderLocator
import com.example.core.model.ReaderPreferenceSnapshot
import com.example.core.model.ReaderRendererKey
import com.example.engine.api.BookSession
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.LegacyFormatSessionAccess
import java.io.File
import java.util.concurrent.atomic.AtomicBoolean
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlinx.coroutines.runBlocking

class LegacyFallbackEpubBookSessionTest {

    @Test
    fun legacyFallbackSessionDelegatesStateAndCleansUpCacheFileOnClose() {
        val cleanupFile = File.createTempFile("readium-legacy-fallback", ".epub").apply {
            writeText("cached")
            deleteOnExit()
        }
        val onCloseId = arrayOf<String?>(null)
        val metadata = BookMetadata(
            title = "Legacy title",
            authors = listOf("Legacy author"),
            language = "en",
            description = "legacy fallback",
            coverPath = "cover.jpg"
        )
        val toc = listOf(
            BookTocItem(
                title = "Chapter 1",
                locator = ReaderLocator(pageIndex = 1, position = 1)
            )
        )
        val searchHits = listOf(
            BookSearchHit(
                locator = ReaderLocator(pageIndex = 2, position = 2),
                before = "before",
                match = "match",
                after = "after"
            )
        )
        val current = ReaderLocator(pageIndex = 3, position = 3)
        val goToTarget = ReaderLocator(href = "OPS/ch1.xhtml", fragment = "chapter-1")
        val delegate = FakeLegacySession(
            metadata = metadata,
            toc = toc,
            searchHits = searchHits,
            currentLocator = current,
            goToResult = goToTarget
        )

        val session = LegacyFallbackEpubBookSession(
            bookId = "book-id",
            legacySession = delegate,
            cleanupFile = cleanupFile,
            onClose = { onCloseId[0] = it }
        )

        assertEquals(BookFormat.EPUB, session.format)
        assertEquals(ReaderRendererKey.LEGACY_TEXT_WEB, session.rendererKey)
        assertEquals(metadata, runBlocking { session.metadata() })
        assertEquals(toc, runBlocking { session.tableOfContents() })
        assertEquals(searchHits, runBlocking { session.search("query") })
        assertEquals(current, runBlocking { session.currentLocator() })
        assertEquals(goToTarget, runBlocking { session.goTo(goToTarget) })

        runBlocking { session.updatePreferences(ReaderPreferenceSnapshot()) }
        runBlocking { session.close() }

        assertTrue(delegate.closed.get())
        assertFalse(cleanupFile.exists())
        assertEquals(session.sessionId, onCloseId[0])
    }

    private class FakeLegacySession(
        private val metadata: BookMetadata,
        private val toc: List<BookTocItem>,
        private val searchHits: List<BookSearchHit>,
        private val currentLocator: ReaderLocator?,
        private val goToResult: ReaderLocator?
    ) : BookSession, LegacyFormatSessionAccess {

        private val closeInvoked = AtomicBoolean(false)
        val closed: AtomicBoolean get() = closeInvoked

        override val sessionId: String = "legacy-session-id"
        override val bookId: String = "book-id"
        override val format: BookFormat = BookFormat.EPUB
        override val rendererKey: ReaderRendererKey = ReaderRendererKey.LEGACY_TEXT_WEB
        override val legacyReader: FormatReader = object : FormatReader {
            override suspend fun getPageCount(): Int = 1
            override suspend fun getPage(index: Int): Bitmap? = null
            override suspend fun getMetadata(): Map<String, String> = emptyMap()
            override fun close() = Unit
        }

        override suspend fun metadata(): BookMetadata = metadata
        override suspend fun tableOfContents(): List<BookTocItem> = toc
        override suspend fun search(query: String): List<BookSearchHit> = searchHits
        override suspend fun currentLocator(): ReaderLocator? = currentLocator
        override suspend fun goTo(locator: ReaderLocator): ReaderLocator? = goToResult
        override suspend fun updatePreferences(preferences: ReaderPreferenceSnapshot) = Unit
        override suspend fun close() {
            closeInvoked.set(true)
        }
    }
}
