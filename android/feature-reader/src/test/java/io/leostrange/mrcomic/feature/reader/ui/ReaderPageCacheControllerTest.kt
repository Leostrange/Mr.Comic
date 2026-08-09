package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.engine.api.FormatReader
import io.leostrange.mrcomic.engine.api.TocEntry
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.test.TestScope
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class ReaderPageCacheControllerTest {

    private val uiState = MutableStateFlow(ReaderUiState())
    private val webtoonCache = MutableStateFlow<Map<Int, String>>(emptyMap())

    private fun TestScope.createController(
        formatReader: () -> FormatReader? = { null },
        orchestrator: TextReaderOrchestrator = mockk(relaxed = true),
    ) = ReaderPageCacheController(
        scope = this,
        _uiState = uiState,
        textReaderOrchestrator = orchestrator,
        _webtoonHtmlCache = webtoonCache,
        navigationController = mockk(relaxed = true),
        progressController = mockk(relaxed = true),
        formatReader = formatReader,
        activeBookSession = { null },
    )

    @Test
    fun loadTocClearsTocWhenNoReader() = runTest {
        uiState.value = ReaderUiState(tableOfContents = listOf(TocEntry("T", 0)))
        val controller = createController()

        controller.loadToc(force = false)
        advanceUntilIdle()

        assertEquals(emptyList<Any>(), uiState.value.tableOfContents)
    }

    @Test
    fun loadTocSkipsWhenAlreadyLoadedAndNotForced() = runTest {
        val reader = mockk<FormatReader>(relaxed = true)
        val orchestrator = mockk<TextReaderOrchestrator>(relaxed = true)
        uiState.value = ReaderUiState(tableOfContents = listOf(TocEntry("T", 0)))
        val controller = createController(formatReader = { reader }, orchestrator = orchestrator)

        controller.loadToc(force = false)
        advanceUntilIdle()

        coVerify(exactly = 0) { orchestrator.resolveTableOfContents(any(), any()) }
    }

    @Test
    fun prewarmHtmlPagesAroundReturnsEarlyWithoutReader() = runTest {
        val orchestrator = mockk<TextReaderOrchestrator>(relaxed = true)
        val controller = createController(formatReader = { null }, orchestrator = orchestrator)

        controller.prewarmHtmlPagesAround(3, 0L)
        advanceUntilIdle()

        coVerify(exactly = 0) { orchestrator.prewarmHtmlPagesAround(any(), any(), any(), any(), any(), any(), any(), any(), any(), any()) }
    }

    @Test
    fun prewarmHtmlPagesAroundReturnsEarlyWithoutComic() = runTest {
        val reader = mockk<FormatReader>(relaxed = true)
        val orchestrator = mockk<TextReaderOrchestrator>(relaxed = true)
        uiState.value = ReaderUiState(comic = null)
        val controller = createController(formatReader = { reader }, orchestrator = orchestrator)

        controller.prewarmHtmlPagesAround(3, 0L)
        advanceUntilIdle()

        coVerify(exactly = 0) { orchestrator.prewarmHtmlPagesAround(any(), any(), any(), any(), any(), any(), any(), any(), any(), any()) }
    }

    @Test
    fun refreshAdjacentHtmlPagesCopiesCachedNeighborsIntoState() = runTest {
        val reader = mockk<FormatReader>(relaxed = true)
        val orchestrator = mockk<TextReaderOrchestrator>(relaxed = true)
        every { orchestrator.controller.cachedHtmlPage(0) } returns CachedHtmlPage(html = "prev", assetBasePath = "a/")
        every { orchestrator.controller.cachedHtmlPage(2) } returns CachedHtmlPage(html = "next", assetBasePath = "b/")
        uiState.value = ReaderUiState(
            comic = Comic(id = "c1", format = ComicFormat.EPUB),
            currentPage = 1,
            currentHtmlContent = "cur",
        )
        val controller = createController(formatReader = { reader }, orchestrator = orchestrator)

        controller.refreshAdjacentHtmlPages(1)

        assertEquals("prev", uiState.value.previousHtmlContent)
        assertEquals("a/", uiState.value.previousHtmlAssetBasePath)
        assertEquals("next", uiState.value.nextHtmlContent)
        assertEquals("b/", uiState.value.nextHtmlAssetBasePath)
    }

    @Test
    fun clearHtmlPageCacheResetsWebtoonState() = runTest {
        val orchestrator = mockk<TextReaderOrchestrator>(relaxed = true)
        every { orchestrator.resetSessionAndCaches(any()) } answers { firstArg<() -> Unit>().invoke() }
        val controller = createController(orchestrator = orchestrator)
        uiState.value = ReaderUiState(textWebtoonHtmlContent = "x", textWebtoonHtmlPageCount = 3)
        webtoonCache.value = mapOf(1 to "h")

        controller.clearHtmlPageCache()

        assertEquals(emptyMap<Int, String>(), webtoonCache.value)
        assertNull(uiState.value.textWebtoonHtmlContent)
        assertEquals(0, uiState.value.textWebtoonHtmlPageCount)
    }
}
