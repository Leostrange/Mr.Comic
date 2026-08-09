package io.leostrange.mrcomic.feature.library.opds

import android.util.Log
import io.leostrange.mrcomic.core.data.opds.OpdsRepository
import io.leostrange.mrcomic.core.model.OpdsCatalogSource
import io.leostrange.mrcomic.core.model.OpdsEntry
import io.leostrange.mrcomic.core.model.OpdsFeed
import io.leostrange.mrcomic.core.model.OpdsLink
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import io.mockk.mockkStatic
import io.mockk.unmockkStatic
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import java.io.File

@OptIn(ExperimentalCoroutinesApi::class)
class OpdsCatalogControllerTest {

    private val opdsRepository = mockk<OpdsRepository>(relaxed = true)

    @Before
    fun setUp() {
        mockkStatic(Log::class)
        every { Log.e(any(), any()) } returns 0
        every { Log.e(any(), any(), any()) } returns 0
        every { Log.d(any(), any()) } returns 0
        every { Log.d(any(), any(), any()) } returns 0
    }

    @After
    fun tearDown() {
        unmockkStatic(Log::class)
    }

    private fun createController(
        scope: CoroutineScope,
        uiState: MutableStateFlow<OpdsCatalogUiState>,
    ) = OpdsCatalogController(
        opdsRepository = opdsRepository,
        scope = scope,
        uiState = uiState,
    )

    private fun feed(
        title: String = "Feed",
        entries: List<OpdsEntry> = emptyList(),
        nextLink: String? = null,
        searchLink: String? = null,
    ) = OpdsFeed(title = title, entries = entries, links = emptyList(), nextLink = nextLink, searchLink = searchLink)

    private fun acquisitionEntry(title: String = "Book", href: String = "https://example.com/book.epub") =
        OpdsEntry(title = title, links = listOf(OpdsLink(href = href, rel = "http://opds-spec.org/acquisition")))

    @Test
    fun catalogsSeededFromRepositoryDefaults() = runTest {
        val source = OpdsCatalogSource(name = "Gutenberg", url = "https://gutenberg.org/opds")
        every { opdsRepository.defaultCatalogs } returns listOf(source)
        val uiState = MutableStateFlow(OpdsCatalogUiState())

        createController(scope = this, uiState = uiState)

        assertEquals(listOf(source), uiState.value.catalogs)
    }

    @Test
    fun openCatalogLoadsFeedAndHidesPicker() = runTest {
        val source = OpdsCatalogSource(name = "Gutenberg", url = "https://gutenberg.org/opds")
        val uiState = MutableStateFlow(OpdsCatalogUiState())
        coEvery { opdsRepository.browse(source.url) } returns feed(title = "Gutenberg")
        val controller = createController(scope = this, uiState = uiState)

        controller.openCatalog(source)
        advanceUntilIdle()

        coVerify(exactly = 1) { opdsRepository.browse(source.url) }
        assertFalse(uiState.value.showCatalogPicker)
        assertEquals(listOf(source.url), uiState.value.feedStack)
        assertEquals("Gutenberg", uiState.value.currentFeed?.title)
        assertFalse(uiState.value.isLoading)
    }

    @Test
    fun navigateToAppendsUrlToStackAndLoadsFeed() = runTest {
        val uiState = MutableStateFlow(OpdsCatalogUiState(feedStack = listOf("https://example.com/root")))
        coEvery { opdsRepository.browse("https://example.com/sub") } returns feed(title = "Sub")
        val controller = createController(scope = this, uiState = uiState)

        controller.navigateTo("https://example.com/sub")
        advanceUntilIdle()

        coVerify(exactly = 1) { opdsRepository.browse("https://example.com/sub") }
        assertEquals(listOf("https://example.com/root", "https://example.com/sub"), uiState.value.feedStack)
        assertEquals("Sub", uiState.value.currentFeed?.title)
    }

    @Test
    fun goBackPopsStackAndReloadsPreviousFeed() = runTest {
        val uiState = MutableStateFlow(
            OpdsCatalogUiState(
                feedStack = listOf("https://example.com/a", "https://example.com/b", "https://example.com/c"),
                showCatalogPicker = false,
            )
        )
        coEvery { opdsRepository.browse("https://example.com/b") } returns feed(title = "B")
        val controller = createController(scope = this, uiState = uiState)

        controller.goBack()
        advanceUntilIdle()

        coVerify(exactly = 1) { opdsRepository.browse("https://example.com/b") }
        assertEquals(listOf("https://example.com/a", "https://example.com/b"), uiState.value.feedStack)
        assertEquals("B", uiState.value.currentFeed?.title)
        assertFalse(uiState.value.showCatalogPicker)
    }

    @Test
    fun goBackAtRootReturnsToCatalogPicker() = runTest {
        val uiState = MutableStateFlow(OpdsCatalogUiState(feedStack = listOf("https://example.com/a")))
        val controller = createController(scope = this, uiState = uiState)

        controller.goBack()
        advanceUntilIdle()

        coVerify(exactly = 0) { opdsRepository.browse(any()) }
        assertTrue(uiState.value.showCatalogPicker)
        assertNull(uiState.value.currentFeed)
        assertEquals(emptyList<String>(), uiState.value.feedStack)
    }

    @Test
    fun loadNextPageNavigatesToCurrentFeedNextLink() = runTest {
        val uiState = MutableStateFlow(
            OpdsCatalogUiState(
                feedStack = listOf("https://example.com/page1"),
                currentFeed = feed(nextLink = "https://example.com/page2"),
            )
        )
        coEvery { opdsRepository.browse("https://example.com/page2") } returns feed(title = "Page 2")
        val controller = createController(scope = this, uiState = uiState)

        controller.loadNextPage()
        advanceUntilIdle()

        coVerify(exactly = 1) { opdsRepository.browse("https://example.com/page2") }
        assertEquals(listOf("https://example.com/page1", "https://example.com/page2"), uiState.value.feedStack)
    }

    @Test
    fun loadNextPageWithoutNextLinkIsNoOp() = runTest {
        val uiState = MutableStateFlow(
            OpdsCatalogUiState(feedStack = listOf("https://example.com/a"), currentFeed = feed())
        )
        val controller = createController(scope = this, uiState = uiState)

        controller.loadNextPage()
        advanceUntilIdle()

        coVerify(exactly = 0) { opdsRepository.browse(any()) }
        assertEquals(listOf("https://example.com/a"), uiState.value.feedStack)
    }

    @Test
    fun searchUpdatesFeedAndSearchState() = runTest {
        val uiState = MutableStateFlow(
            OpdsCatalogUiState(currentFeed = feed(searchLink = "https://example.com/search?q={searchTerms}"))
        )
        coEvery { opdsRepository.search(any(), "harry") } returns feed(title = "Results")
        val controller = createController(scope = this, uiState = uiState)

        controller.search("harry")
        advanceUntilIdle()

        coVerify(exactly = 1) { opdsRepository.search("https://example.com/search?q={searchTerms}", "harry") }
        assertTrue(uiState.value.isSearchMode)
        assertEquals("harry", uiState.value.searchQuery)
        assertEquals("Results", uiState.value.currentFeed?.title)
        assertFalse(uiState.value.isLoading)
    }

    @Test
    fun searchWithoutSearchLinkIsNoOp() = runTest {
        val uiState = MutableStateFlow(OpdsCatalogUiState(currentFeed = feed()))
        val controller = createController(scope = this, uiState = uiState)

        controller.search("harry")
        advanceUntilIdle()

        coVerify(exactly = 0) { opdsRepository.search(any(), any()) }
        assertFalse(uiState.value.isSearchMode)
    }

    @Test
    fun searchFailureSetsError() = runTest {
        val uiState = MutableStateFlow(
            OpdsCatalogUiState(currentFeed = feed(searchLink = "https://example.com/search?q={searchTerms}"))
        )
        coEvery { opdsRepository.search(any(), any()) } throws RuntimeException("network down")
        val controller = createController(scope = this, uiState = uiState)

        controller.search("harry")
        advanceUntilIdle()

        assertFalse(uiState.value.isLoading)
        assertEquals("network down", uiState.value.error)
    }

    @Test
    fun exitSearchClearsModeAndReloadsLastFeed() = runTest {
        val uiState = MutableStateFlow(
            OpdsCatalogUiState(
                feedStack = listOf("https://example.com/a"),
                isSearchMode = true,
                searchQuery = "harry",
            )
        )
        coEvery { opdsRepository.browse("https://example.com/a") } returns feed(title = "A")
        val controller = createController(scope = this, uiState = uiState)

        controller.exitSearch()
        advanceUntilIdle()

        coVerify(exactly = 1) { opdsRepository.browse("https://example.com/a") }
        assertFalse(uiState.value.isSearchMode)
        assertEquals("", uiState.value.searchQuery)
        assertEquals("A", uiState.value.currentFeed?.title)
    }

    @Test
    fun downloadBookTracksProgressAndClearsOnSuccess() = runTest {
        val entry = acquisitionEntry()
        val file = File("/tmp/book.epub")
        val uiState = MutableStateFlow(OpdsCatalogUiState())
        coEvery { opdsRepository.downloadBook(eq(entry), any()) } answers {
            secondArg<(Long, Long) -> Unit>().invoke(50, 100)
            file
        }
        val controller = createController(scope = this, uiState = uiState)

        controller.downloadBook(entry)
        advanceUntilIdle()

        assertEquals(listOf(file), uiState.value.downloadedBooks)
        assertFalse(uiState.value.downloadProgress.containsKey(entry.acquisitionLink?.href))
        assertNull(uiState.value.error)
    }

    @Test
    fun downloadBookFailureSetsErrorAndClearsProgress() = runTest {
        val entry = acquisitionEntry(title = "Broken", href = "https://example.com/broken.epub")
        val uiState = MutableStateFlow(OpdsCatalogUiState())
        coEvery { opdsRepository.downloadBook(eq(entry), any()) } throws RuntimeException("no space")
        val controller = createController(scope = this, uiState = uiState)

        controller.downloadBook(entry)
        advanceUntilIdle()

        assertTrue(uiState.value.downloadedBooks.isEmpty())
        assertEquals("Download failed: no space", uiState.value.error)
        assertFalse(uiState.value.downloadProgress.containsKey("https://example.com/broken.epub"))
    }

    @Test
    fun loadFeedFailureSetsError() = runTest {
        val source = OpdsCatalogSource(name = "Gutenberg", url = "https://gutenberg.org/opds")
        val uiState = MutableStateFlow(OpdsCatalogUiState())
        coEvery { opdsRepository.browse(source.url) } throws RuntimeException("timeout")
        val controller = createController(scope = this, uiState = uiState)

        controller.openCatalog(source)
        advanceUntilIdle()

        assertFalse(uiState.value.isLoading)
        assertEquals("timeout", uiState.value.error)
        assertNull(uiState.value.currentFeed)
    }
}
