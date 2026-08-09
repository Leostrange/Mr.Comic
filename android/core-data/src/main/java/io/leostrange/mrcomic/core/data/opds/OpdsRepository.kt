package io.leostrange.mrcomic.core.data.opds

import android.content.Context
import android.util.Log
import io.leostrange.mrcomic.core.model.OpdsCatalogSource
import io.leostrange.mrcomic.core.model.OpdsEntry
import io.leostrange.mrcomic.core.model.OpdsFeed
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
        val url = buildOpdsSearchUrl(searchUrl, query)
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
        // Include the acquisition identity so equal titles cannot race on one file.
        val downloadIdentity = Integer.toHexString(acquisitionLink.href.hashCode())
        val fileName = "${safeName}-${downloadIdentity}.$extension"

        val downloadsDir = File(context.filesDir, DOWNLOADS_DIR).apply { mkdirs() }
        val outputFile = uniqueDownloadFile(downloadsDir, fileName)

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

    private fun uniqueDownloadFile(downloadsDir: File, fileName: String): File {
        val candidate = File(downloadsDir, fileName)
        if (!candidate.exists()) return candidate

        val baseName = fileName.substringBeforeLast('.', fileName)
        val extension = fileName.substringAfterLast('.', "")
        var index = 2
        while (true) {
            val suffix = " ($index)" + if (extension.isBlank()) "" else ".${extension}"
            val next = File(downloadsDir, baseName + suffix)
            if (!next.exists()) return next
            index++
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

/** Build a correctly encoded URL from an OPDS/OpenSearch query template. */
internal fun buildOpdsSearchUrl(searchUrl: String, query: String): String {
    val encoded = java.net.URLEncoder.encode(query, "UTF-8")
        .replace("+", "%20")

    return when {
        "{?searchTerms}" in searchUrl -> searchUrl.replace("{?searchTerms}", "?q=$encoded")
        "{searchTerms}" in searchUrl -> searchUrl.replace("{searchTerms}", encoded)
        else -> {
            val separator = when {
                searchUrl.endsWith("?") || searchUrl.endsWith("&") -> ""
                "?" in searchUrl -> "&"
                else -> "?"
            }
            "$searchUrl${separator}q=$encoded"
        }
    }
}
