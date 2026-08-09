package io.leostrange.mrcomic.feature.library.opds

import io.leostrange.mrcomic.core.data.opds.OpdsRepository
import io.leostrange.mrcomic.core.model.OpdsCatalogSource
import io.leostrange.mrcomic.core.model.OpdsEntry
import io.leostrange.mrcomic.core.model.OpdsFeed
import io.leostrange.mrcomic.core.model.OpdsLink
import io.mockk.coEvery
import io.mockk.every
import io.mockk.mockk
import java.io.File
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@OptIn(ExperimentalCoroutinesApi::class)
@RunWith(RobolectricTestRunner::class)
class OpdsCatalogViewModelTest {

    private val repository = mockk<OpdsRepository>()
    private val mainDispatcher = StandardTestDispatcher()

    @Before
    fun setUp() {
        Dispatchers.setMain(mainDispatcher)
        every { repository.defaultCatalogs } returns emptyList()
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun concurrentDownloadsQueueBothResultsAndKeepProgressIndependent() = runTest {
        val firstEntry = bookEntry("same title", "https://example.test/one.epub")
        val secondEntry = bookEntry("same title", "https://example.test/two.epub")
        val firstFile = File("one.epub")
        val secondFile = File("two.epub")
        coEvery { repository.downloadBook(any(), any()) } answers {
            when (firstArg<OpdsEntry>().acquisitionLink?.href) {
                firstEntry.acquisitionLink?.href -> firstFile
                else -> secondFile
            }
        }
        val viewModel = OpdsCatalogViewModel(repository)

        viewModel.downloadBook(firstEntry)
        viewModel.downloadBook(secondEntry)
        advanceUntilIdle()

        assertEquals(listOf(firstFile, secondFile), viewModel.uiState.value.downloadedBooks)
        assertTrue(viewModel.uiState.value.downloadProgress.isEmpty())
    }

    @Test
    fun retryReloadsFailedCatalog() = runTest {
        val source = OpdsCatalogSource("Test", "https://example.test/catalog")
        val feed = feed("Recovered")
        coEvery { repository.browse(source.url) } throws RuntimeException("offline") andThen feed
        val viewModel = OpdsCatalogViewModel(repository)

        viewModel.openCatalog(source)
        advanceUntilIdle()
        assertTrue(viewModel.uiState.value.error!!.contains("offline"))

        viewModel.retry()
        advanceUntilIdle()

        assertEquals(feed, viewModel.uiState.value.currentFeed)
        assertNull(viewModel.uiState.value.error)
        assertFalse(viewModel.uiState.value.isLoading)
    }

    @Test
    fun navigatingToNewFeedCancelsStaleRequest() = runTest {
        val firstSource = OpdsCatalogSource("First", "https://example.test/first")
        val secondSource = OpdsCatalogSource("Second", "https://example.test/second")
        val firstResponse = CompletableDeferred<OpdsFeed>()
        val secondResponse = CompletableDeferred<OpdsFeed>()
        coEvery { repository.browse(firstSource.url) } coAnswers { firstResponse.await() }
        coEvery { repository.browse(secondSource.url) } coAnswers { secondResponse.await() }
        val viewModel = OpdsCatalogViewModel(repository)

        viewModel.openCatalog(firstSource)
        advanceUntilIdle()
        viewModel.navigateTo(secondSource.url)
        secondResponse.complete(feed("Second feed"))
        firstResponse.complete(feed("Stale first feed"))
        advanceUntilIdle()

        assertEquals("Second feed", viewModel.uiState.value.currentFeed?.title)
    }

    private fun bookEntry(title: String, href: String) = OpdsEntry(
        title = title,
        links = listOf(
            OpdsLink(
                href = href,
                rel = "http://opds-spec.org/acquisition/open-access",
                type = "application/epub+zip"
            )
        )
    )

    private fun feed(title: String) = OpdsFeed(
        title = title,
        entries = emptyList(),
        links = emptyList()
    )
}
