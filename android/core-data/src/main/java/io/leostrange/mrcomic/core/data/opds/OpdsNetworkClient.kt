package io.leostrange.mrcomic.core.data.opds

import android.util.Log
import io.leostrange.mrcomic.core.model.OpdsFeed
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import java.io.File
import java.io.IOException
import java.util.concurrent.TimeUnit

/**
 * Network client for OPDS catalog operations.
 * Fetches Atom/XML feeds and downloads book files.
 */
class OpdsNetworkClient(
    private val client: OkHttpClient = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(60, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()
) {

    companion object {
        private const val TAG = "OpdsNetworkClient"
        private const val USER_AGENT = "MrComic/2.1 (Android; OPDS)"
    }

    /** Fetch and parse an OPDS feed from the given URL. */
    suspend fun fetchFeed(url: String): OpdsFeed = withContext(Dispatchers.IO) {
        Log.d(TAG, "Fetching OPDS feed: $url")
        val request = Request.Builder()
            .url(url)
            .header("Accept", "application/atom+xml, application/xml, text/xml, */*")
            .header("User-Agent", USER_AGENT)
            .get()
            .build()

        client.newCall(request).execute().use { response ->
            if (!response.isSuccessful) {
                throw IOException("OPDS feed request failed: ${response.code} ${response.message}")
            }
            val body = response.body ?: throw IOException("Empty response body")
            body.byteStream().use { stream ->
                OpdsFeedParser.parse(stream)
            }
        }
    }

    /** Download a book file from the given URL to the specified output file. */
    suspend fun downloadBook(
        url: String,
        outputFile: File,
        onProgress: ((bytesRead: Long, totalBytes: Long) -> Unit)? = null
    ): File = withContext(Dispatchers.IO) {
        Log.d(TAG, "Downloading book: $url -> ${outputFile.absolutePath}")
        val request = Request.Builder()
            .url(url)
            .header("User-Agent", USER_AGENT)
            .get()
            .build()

        client.newCall(request).execute().use { response ->
            if (!response.isSuccessful) {
                throw IOException("Download failed: ${response.code} ${response.message}")
            }
            val body = response.body ?: throw IOException("Empty response body")
            val totalBytes = body.contentLength()

            outputFile.parentFile?.mkdirs()
            body.byteStream().use { input ->
                outputFile.outputStream().use { output ->
                    val buffer = ByteArray(8192)
                    var bytesRead = 0L
                    var lastProgressReport = 0L
                    while (true) {
                        val read = input.read(buffer)
                        if (read == -1) break
                        output.write(buffer, 0, read)
                        bytesRead += read
                        // Report progress at most every 64KB
                        if (bytesRead - lastProgressReport >= 65536) {
                            onProgress?.invoke(bytesRead, totalBytes)
                            lastProgressReport = bytesRead
                        }
                    }
                    onProgress?.invoke(bytesRead, totalBytes)
                }
            }
        }
        Log.d(TAG, "Download complete: ${outputFile.length()} bytes")
        outputFile
    }
}
