package com.example.engine.epub.readium

import com.example.core.model.ReaderLocator
import com.example.core.model.ReaderRendererKey
import com.example.engine.api.BookSession
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.FormatReaderWebResource
import com.example.engine.formats.base.LegacyFormatSessionAccess
import com.example.engine.formats.base.TocEntry
import android.graphics.Bitmap
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import kotlinx.coroutines.runBlocking
import org.junit.Test

class ReadiumEpubEnginePolicyTest {

    @Test
    fun resolveInitialSessionLocatorUsesReadiumPathWithoutTouchingLegacyFallback() {
        var legacyInvoked = false
        val requested = ReaderLocator(href = "OPS/ch1.xhtml", pageIndex = 7)
        val expected = ReaderLocator(href = "OPS/ch1.xhtml", pageIndex = 0)

        val actual = resolveInitialSessionLocator(
            hasReadiumPublication = true,
            requestedLocator = requested,
            readiumLocatorResolver = { expected }
        )

        assertEquals(expected, actual)
        assertFalse(legacyInvoked)
    }

    @Test
    fun resolveInitialSessionLocatorReturnsNullWhenReadiumCannotResolveRequestedLocator() {
        val requested = ReaderLocator(href = "OPS/ch1.xhtml", pageIndex = 7)

        val actual = resolveInitialSessionLocator(
            hasReadiumPublication = true,
            requestedLocator = requested,
            readiumLocatorResolver = { null }
        )

        assertNull(actual)
    }

    @Test
    fun resolveInitialSessionLocatorKeepsPageOnlyRequestedLocatorWhenReadiumReturnsNull() {
        val requested = ReaderLocator(pageIndex = 7, position = 7)

        val actual = resolveInitialSessionLocator(
            hasReadiumPublication = true,
            requestedLocator = requested,
            readiumLocatorResolver = { null }
        )

        assertEquals(requested, actual)
    }

    @Test
    fun resolveInitialSessionLocatorUsesRequestedLocatorWhenReadiumIsUnavailable() {
        val expected = ReaderLocator(href = "legacy.xhtml", pageIndex = 3)
        val actual = resolveInitialSessionLocator(
            hasReadiumPublication = false,
            requestedLocator = expected,
            readiumLocatorResolver = { null }
        )

        assertEquals(expected, actual)
    }

    @Test
    fun resolveInitialSessionLocatorReturnsNullWhenNothingIsAvailable() {
        val actual = resolveInitialSessionLocator(
            hasReadiumPublication = false,
            requestedLocator = null,
            readiumLocatorResolver = { null }
        )

        assertNull(actual)
    }

    @Test
    fun resolveInitialSessionLocatorDoesNotSynthesizeLocatorWhenReadiumHasNoTargetYet() {
        val actual = resolveInitialSessionLocator(
            hasReadiumPublication = true,
            requestedLocator = null,
            readiumLocatorResolver = { null }
        )

        assertNull(actual)
    }

    @Test
    fun readiumEpubSessionUsesHybridLegacyRendererByDefault() {
        assertEquals(ReaderRendererKey.HYBRID_EPUB_LEGACY_RENDER, readiumEpubSessionRendererKey())
    }

    @Test
    fun hybridEpubOpenUsesFallbackOpeningLocatorForFreshStarts() {
        val fallback = ReaderLocator(href = "OPS/titlepage.xhtml", pageIndex = 1, position = 1)

        val actual = resolveReadiumInitialSessionLocatorForOpen(
            resolvedRequestedLocator = null,
            fallbackOpeningLocator = fallback,
            rendererKey = ReaderRendererKey.HYBRID_EPUB_LEGACY_RENDER
        )

        assertEquals(fallback, actual)
    }

    @Test
    fun pureReadiumOpenCanStillUseFallbackOpeningLocator() {
        val fallback = ReaderLocator(href = "OPS/titlepage.xhtml", pageIndex = 1, position = 1)

        val actual = resolveReadiumInitialSessionLocatorForOpen(
            resolvedRequestedLocator = null,
            fallbackOpeningLocator = fallback,
            rendererKey = ReaderRendererKey.READIUM_EPUB
        )

        assertEquals(fallback, actual)
    }

    @Test
    fun hybridEpubOpenStillPrefersExplicitRequestedLocatorOverFreshStart() {
        val requested = ReaderLocator(href = "OPS/cover.xhtml", pageIndex = 0, position = 0)
        val fallback = ReaderLocator(href = "OPS/titlepage.xhtml", pageIndex = 1, position = 1)

        val actual = resolveReadiumInitialSessionLocatorForOpen(
            resolvedRequestedLocator = requested,
            fallbackOpeningLocator = fallback,
            rendererKey = ReaderRendererKey.HYBRID_EPUB_LEGACY_RENDER
        )

        assertEquals(requested, actual)
    }

    @Test
    fun readiumOpenIgnoresImageResourceRequestedLocatorWhenFallbackExists() {
        val requested = ReaderLocator(href = "OPS/images/cover.jpg", pageIndex = 0, position = 0)
        val fallback = ReaderLocator(href = "OPS/titlepage.xhtml", pageIndex = 1, position = 1)

        val actual = resolveReadiumInitialSessionLocatorForOpen(
            resolvedRequestedLocator = requested,
            fallbackOpeningLocator = fallback,
            rendererKey = ReaderRendererKey.READIUM_EPUB
        )

        assertEquals(fallback, actual)
    }

    @Test
    fun hybridEpubOpenSeedsFallbackLocatorForFreshStart() {
        val fallback = ReaderLocator(href = "OPS/titlepage.xhtml", pageIndex = 1, position = 1)

        val actual = resolveReadiumInitialSessionLocatorForOpen(
            resolvedRequestedLocator = null,
            fallbackOpeningLocator = fallback,
            rendererKey = ReaderRendererKey.HYBRID_EPUB_LEGACY_RENDER
        )

        assertEquals(fallback, actual)
    }

    @Test
    fun hybridEpubKeepsPreferenceSyncOnLegacyRenderPath() {
        assertTrue(shouldDelegatePreferencesToLegacy(ReaderRendererKey.HYBRID_EPUB_LEGACY_RENDER))
        assertFalse(shouldDelegatePreferencesToLegacy(ReaderRendererKey.READIUM_EPUB))
    }

    @Test
    fun resolveReadiumGoToLocatorKeepsPageOnlyRequestedLocatorWhenReadiumReturnsNull() {
        val current = ReaderLocator(pageIndex = 9, position = 9)

        val resolved = resolveReadiumGoToLocator(
            resolvedLocator = null,
            requestedLocator = current
        )

        assertEquals(current, resolved)
    }

    @Test
    fun resolveReadiumCurrentLocatorKeepsPageOnlyStateWhenReadiumPublicationExists() {
        val current = ReaderLocator(pageIndex = 12, position = 12)

        val resolved = resolveReadiumCurrentLocator(
            currentLocatorState = current,
            hasReadiumPublication = true,
            rendererKey = ReaderRendererKey.READIUM_EPUB
        )

        assertEquals(current, resolved)
    }

    @Test
    fun resolveReadiumOpenTotalPagesIncludesPageOnlyCurrentLocatorProgress() {
        val totalPages = resolveReadiumOpenTotalPages(
            readingOrderSize = 2,
            currentLocator = ReaderLocator(pageIndex = 12, position = 12),
            initialLocator = null,
            maxTocPage = null,
            requestedPage = 0
        )

        assertEquals(13, totalPages)
    }

    @Test
    fun hybridEpubCurrentLocatorKeepsPageOnlyStateForLegacyRender() {
        val current = ReaderLocator(pageIndex = 12, position = 12)

        val resolved = resolveReadiumCurrentLocator(
            currentLocatorState = current,
            hasReadiumPublication = true,
            rendererKey = ReaderRendererKey.HYBRID_EPUB_LEGACY_RENDER
        )

        assertEquals(current, resolved)
    }

    @Test
    fun resolveReadiumCurrentLocatorKeepsLocatorBackedStateWhenReadiumPublicationExists() {
        val current = ReaderLocator(
            href = "OPS/ch12.xhtml",
            fragment = "chapter-12",
            pageIndex = 12,
            position = 12
        )

        val resolved = resolveReadiumCurrentLocator(
            currentLocatorState = current,
            hasReadiumPublication = true
        )

        assertEquals(current, resolved)
    }

    @Test
    fun lazyLegacySessionHandleDoesNotLoadUntilRequested() = runBlocking {
        var loadCalls = 0
        val handle = LazyLegacySessionHandle {
            loadCalls += 1
            FakeLegacySession()
        }

        assertNull(handle.peek())
        assertEquals(0, loadCalls)
    }

    @Test
    fun lazyLegacySessionHandleLoadsOnlyOnceAndCachesSession() = runBlocking {
        var loadCalls = 0
        val handle = LazyLegacySessionHandle {
            loadCalls += 1
            FakeLegacySession()
        }

        val first = handle.getOrLoad()
        val second = handle.getOrLoad()

        assertEquals(1, loadCalls)
        assertTrue(first === second)
        assertTrue(handle.peek() === first)
    }

    private class FakeLegacySession : BookSession, LegacyFormatSessionAccess {
        override val sessionId: String = "legacy"
        override val bookId: String = "book"
        override val format = com.example.core.model.BookFormat.EPUB
        override val rendererKey: ReaderRendererKey = ReaderRendererKey.LEGACY_TEXT_WEB
        override val legacyReader: FormatReader = object : FormatReader {
            override suspend fun getPageCount(): Int = 0
            override suspend fun getPage(index: Int): Bitmap? = null
            override suspend fun getMetadata(): Map<String, String> = emptyMap()
            override fun getTableOfContents(): List<TocEntry> = emptyList()
            override fun htmlBaseUrl(): String = ""
            override suspend fun getHtmlPage(index: Int): String? = null
            override fun resolveHrefToPage(href: String): Int? = null
            override fun openHtmlAsset(path: String): FormatReaderWebResource? = null
            override fun close() = Unit
        }

        override suspend fun metadata() = com.example.core.model.BookMetadata(title = "legacy")

        override suspend fun tableOfContents() = emptyList<com.example.core.model.BookTocItem>()

        override suspend fun search(query: String) = emptyList<com.example.core.model.BookSearchHit>()

        override suspend fun currentLocator(): ReaderLocator? = null

        override suspend fun goTo(locator: ReaderLocator): ReaderLocator? = locator

        override suspend fun updatePreferences(preferences: com.example.core.model.ReaderPreferenceSnapshot) = Unit

        override suspend fun close() = Unit
    }
}
