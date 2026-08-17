package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.engine.api.FormatReader
import io.mockk.mockk
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * WEB-02: a stitched-document build/publish failure (e.g. malformed RTF HTML that
 * breaks the builder regexes) must be routed to onBuildFailed instead of crashing
 * the reader coroutine back to the library.
 */
@OptIn(ExperimentalCoroutinesApi::class)
class TextWebtoonSessionControllerTest {

    private val reader = mockk<FormatReader>(relaxed = true)
    private val page = CachedHtmlPage(
        html = "<html><body><p>Page</p></body></html>",
        assetBasePath = null
    )

    @Test
    fun buildFailureSurfacesErrorInsteadOfCrashing() = runTest {
        var failed = false
        val published = mutableListOf<Int>()
        val controller = TextWebtoonSessionController(
            scope = this,
            builder = WebtoonDocumentBuilder {
                throw IllegalStateException("RTF stitched document build failed")
            },
            batchSize = 1
        )

        controller.ensureLoaded(
            reader = reader,
            comicId = "c1",
            totalPages = 5,
            readerRendersHtmlContent = true,
            existingHtml = null,
            existingPageCount = 0,
            isSessionActive = { true },
            loadPage = { _, _ -> page },
            publish = { _, count -> published += count },
            onBuildFailed = { failed = true }
        )
        advanceUntilIdle()

        assertTrue("onBuildFailed must fire when the document build throws", failed)
        assertEquals("no successful preview may be published after a build failure", 0, published.size)
    }

    @Test
    fun publishFailureSurfacesErrorInsteadOfCrashing() = runTest {
        var failed = false
        val controller = TextWebtoonSessionController(
            scope = this,
            builder = WebtoonDocumentBuilder { pages ->
                TextWebtoonCachedDocument(html = "doc-${pages.size}", assetBasePath = null)
            },
            batchSize = 1
        )

        controller.ensureLoaded(
            reader = reader,
            comicId = "c1",
            totalPages = 3,
            readerRendersHtmlContent = true,
            existingHtml = null,
            existingPageCount = 0,
            isSessionActive = { true },
            loadPage = { _, _ -> page },
            publish = { _, _ -> throw IllegalStateException("publish consumer crashed") },
            onBuildFailed = { failed = true }
        )
        advanceUntilIdle()

        assertTrue("onBuildFailed must fire when publish throws", failed)
    }

    @Test
    fun successfulBuildPublishesPreviewThenFinalDocument() = runTest {
        val published = mutableListOf<Int>()
        val controller = TextWebtoonSessionController(
            scope = this,
            builder = WebtoonDocumentBuilder { pages ->
                TextWebtoonCachedDocument(html = "doc-${pages.size}", assetBasePath = null)
            },
            batchSize = 2
        )

        controller.ensureLoaded(
            reader = reader,
            comicId = "c1",
            totalPages = 3,
            readerRendersHtmlContent = true,
            existingHtml = null,
            existingPageCount = 0,
            isSessionActive = { true },
            loadPage = { _, _ -> page },
            publish = { _, count -> published += count },
            onBuildFailed = { error("must not fail") }
        )
        advanceUntilIdle()

        // batchSize=2 → preview after 2 loaded pages, final after all 3 pages.
        assertEquals(listOf(2, 3), published)
    }

    @Test
    fun skipsWhenExistingDocumentAlreadyCoversAllPages() = runTest {
        var failed = false
        val published = mutableListOf<Int>()
        val controller = TextWebtoonSessionController(
            scope = this,
            builder = WebtoonDocumentBuilder { pages ->
                TextWebtoonCachedDocument(html = "doc-${pages.size}", assetBasePath = null)
            },
            batchSize = 1
        )

        controller.ensureLoaded(
            reader = reader,
            comicId = "c1",
            totalPages = 3,
            readerRendersHtmlContent = true,
            existingHtml = "<html><body>already loaded</body></html>",
            existingPageCount = 3,
            isSessionActive = { true },
            loadPage = { _, _ -> page },
            publish = { _, count -> published += count },
            onBuildFailed = { failed = true }
        )
        advanceUntilIdle()

        assertEquals("no rebuild or publish when the existing document is complete", 0, published.size)
        assertEquals(false, failed)
    }
}
