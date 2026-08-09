package io.leostrange.mrcomic.core.data.opds

import io.leostrange.mrcomic.core.model.OpdsEntry
import io.leostrange.mrcomic.core.model.OpdsLink
import java.nio.charset.StandardCharsets
import okhttp3.OkHttpClient
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [35])
class OpdsNetworkIntegrationTest {

    private lateinit var server: MockWebServer
    private lateinit var baseUrl: String
    private lateinit var repository: OpdsRepository

    @Before
    fun setUp() {
        server = MockWebServer()
        server.start()
        baseUrl = server.url("/").toString().removeSuffix("/")
        repository = OpdsRepository(
            context = RuntimeEnvironment.getApplication(),
            networkClient = OpdsNetworkClient(OkHttpClient())
        )
        repository.cleanupDownloads()
    }

    @After
    fun tearDown() {
        repository.cleanupDownloads()
        server.shutdown()
    }

    @Test
    fun browseSearchAndDownloadWorkAgainstLocalOpdsServer() = kotlinx.coroutines.test.runTest {
        server.enqueue(atomResponse(catalogFeed()))
        val catalog = repository.browse("$baseUrl/catalog")
        assertEquals("Local OPDS Catalog", catalog.title)
        assertTrue(catalog.searchLink!!.contains("{searchTerms}"))
        server.takeRequest()

        server.enqueue(atomResponse(searchFeed()))
        val searchResult = repository.search(catalog.searchLink!!, "hello world & peace")
        val searchRequest = server.takeRequest()
        assertEquals("request=${searchRequest.requestUrl}", "/search", searchRequest.requestUrl!!.encodedPath)
        assertEquals("request=${searchRequest.requestUrl}", "hello world & peace", searchRequest.requestUrl!!.queryParameter("q"))
        assertTrue(searchRequest.requestUrl!!.encodedQuery!!.contains("%26"))
        assertFalse(searchRequest.requestUrl!!.encodedQuery!!.contains(" "))

        assertEquals("Search results", searchResult.title)
        val book = searchResult.entries.single()
        assertTrue(book.isBook)
        assertEquals("Integration Book", book.title)

        server.enqueue(
            MockResponse()
                .setHeader("Content-Type", "application/epub+zip")
                .setBody("integration-book-content")
        )
        val downloadedFile = repository.downloadBook(book)
        server.takeRequest()
        assertEquals("integration-book-content", downloadedFile.readText())
        assertTrue(downloadedFile.exists())
    }

    @Test
    fun downloadRetriesTransientServerFailureAndCleansTemporaryFile() = kotlinx.coroutines.test.runTest {
        val book = OpdsEntry(
            title = "Flaky Book",
            links = listOf(
                OpdsLink(
                    href = "$baseUrl/flaky-book",
                    rel = "http://opds-spec.org/acquisition/open-access",
                    type = "application/epub+zip"
                )
            )
        )
        server.enqueue(MockResponse().setResponseCode(503).setBody("temporary failure"))
        server.enqueue(
            MockResponse()
                .setHeader("Content-Type", "application/epub+zip")
                .setBody("recovered-book-content")
        )

        val downloadedFile = repository.downloadBook(book)

        assertEquals("/flaky-book", server.takeRequest().path)
        assertEquals("/flaky-book", server.takeRequest().path)
        assertEquals("recovered-book-content", downloadedFile.readText())
        assertTrue(repository.getDownloadsDir().listFiles().orEmpty().none { it.name.endsWith(".part") })
    }

    private fun catalogFeed(): String = """
        <?xml version="1.0" encoding="UTF-8"?>
        <feed xmlns="http://www.w3.org/2005/Atom">
          <title>Local OPDS Catalog</title>
          <link rel="search" type="application/atom+xml" href="$baseUrl/search?q={searchTerms}" />
        </feed>
    """.trimIndent()

    private fun searchFeed(): String = """
        <?xml version="1.0" encoding="UTF-8"?>
        <feed xmlns="http://www.w3.org/2005/Atom">
          <title>Search results</title>
          <entry>
            <title>Integration Book</title>
            <link rel="http://opds-spec.org/acquisition/open-access" type="application/epub+zip" href="$baseUrl/book" />
          </entry>
        </feed>
    """.trimIndent()

    private fun atomResponse(body: String) = MockResponse()
        .setHeader("Content-Type", "application/atom+xml")
        .setBody(body)
}
