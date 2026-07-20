package com.example.core.data.opds

import android.content.Context
import android.util.Log
import com.example.core.model.Comic
import com.example.core.model.OpdsCatalogSource
import com.example.core.model.OpdsEntry
import com.example.core.model.OpdsFeed
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Repository for OPDS catalog browsing and book downloading.
 * Manages catalog sources, feed navigation, and book import.
 */
@Singleton
class OpdsRepository @Inject constructor(
    @ApplicationContext private val context: Context,
    private val networkClient: OpdsNetworkClient
) {

    companion object {
        private const val TAG = "OpdsRepository"
        private val DOWNLOADS_DIR = "opds_downloads"
    }

    /** Pre-configured OPDS catalog sources. */
    val defaultCatalogs = listOf(
        OpdsCatalogSource(
            name = "Project Gutenberg",
            url = "https://www.gutenberg.org/ebooks.opds/",
            description = "Free eBooks (public domain)",
            isSearchable = true
        ),
        OpdsCatalogSource(
            name = "Feedbooks",
            url = "https://catalog.feedbooks.com/catalog/public_domain",
            description = "Public domain books"
        ),
        OpdsCatalogSource(
            name = "ManyBooks",
            url = "https://manybooks.net/opds",
            description = "Free eBooks collection"
        )
    )

    /** Fetch an OPDS feed from the given URL. */
    suspend fun browse(url: String): OpdsFeed = withContext(Dispatchers.IO) {
        Log.d(TAG, "Browsing: $url")
        networkClient.fetchFeed(url)
    }

    /** Search within an OPDS catalog. */
    suspend fun search(searchUrl: String, query: String): OpdsFeed = withContext(Dispatchers.IO) {
        // OPDS search uses OpenSearch URL template: replace {searchTerms} or {?searchTerms}
        val encoded = java.net.URLEncoder.encode(query, "UTF-8")
            .replace("+", "%20") // URLEncoder uses + for spaces; OPDS expects %20
        val url = searchUrl
            .replace("{searchTerms}", encoded)
            .replace("{?searchTerms}", "?q=$encoded")
        Log.d(TAG, "Searching: $url")
        networkClient.fetchFeed(url)
    }

    /** Download a book from an OPDS entry to local storage. */
    suspend fun downloadBook(
        entry: OpdsEntry,
        onProgress: ((Long, Long) -> Unit)? = null
    ): File = withContext(Dispatchers.IO) {
        val acquisitionLink = entry.acquisitionLink
            ?: throw IllegalArgumentException("Entry has no acquisition link: ${entry.title}")

        val extension = guessExtension(acquisitionLink.type, acquisitionLink.href)
        val safeName = entry.title.replace(Regex("[^a-zA-Z0-9а-яА-ЯёЁ\\-_. ]"), "_")
            .take(80)
            .ifBlank { "book" }
        val fileName = "${safeName}.$extension"

        val downloadsDir = File(context.filesDir, DOWNLOADS_DIR).apply { mkdirs() }
        val outputFile = File(downloadsDir, fileName)

        Log.d(TAG, "Downloading '${entry.title}' from ${acquisitionLink.href}")
        networkClient.downloadBook(acquisitionLink.href, outputFile, onProgress)
    }

    /** Get the local downloads directory. */
    fun getDownloadsDir(): File = File(context.filesDir, DOWNLOADS_DIR).apply { mkdirs() }

    /** Clean up downloaded files. */
    fun cleanupDownloads() {
        val dir = File(context.filesDir, DOWNLOADS_DIR)
        if (dir.exists()) {
            dir.listFiles()?.forEach { it.delete() }
        }
    }

    private fun guessExtension(mimeType: String?, href: String): String {
        // Try MIME type first
        val fromMime = when (mimeType) {
            "application/epub+zip" -> "epub"
            "application/x-mobipocket-ebook" -> "mobi"
            "application/pdf" -> "pdf"
            "application/x-fictionbook+xml" -> "fb2"
            "application/rtf", "text/rtf" -> "rtf"
            "text/plain" -> "txt"
            "text/html" -> "html"
            "application/zip" -> "zip"
            else -> null
        }
        if (fromMime != null) return fromMime

        // Try URL extension
        val urlPath = href.substringBefore("?").substringBefore("#")
        val lastDot = urlPath.lastIndexOf('.')
        if (lastDot >= 0) {
            val ext = urlPath.substring(lastDot + 1).lowercase()
            if (ext.length in 2..5) return ext
        }

        return "epub" // default fallback
    }
}
