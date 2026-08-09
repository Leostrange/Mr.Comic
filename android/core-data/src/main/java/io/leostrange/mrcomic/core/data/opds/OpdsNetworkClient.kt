package io.leostrange.mrcomic.core.data.opds

import android.util.Log
import io.leostrange.mrcomic.core.model.OpdsFeed
import java.io.File
import java.io.IOException
import java.util.concurrent.TimeUnit
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request

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
        private const val MAX_DOWNLOAD_ATTEMPTS = 3
        private const val DOWNLOAD_RETRY_DELAY_MILLIS = 500L
    }

    /** Fetch an OPDS feed from the given URL. */
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
        outputFile.parentFile?.mkdirs()
        val tempFile = File(outputFile.parentFile, ".${outputFile.name}.part")
        var lastError: IOException? = null

        repeat(MAX_DOWNLOAD_ATTEMPTS) { attempt ->
            try {
                downloadOnce(url, tempFile, onProgress)
                if (outputFile.exists()) outputFile.delete()
                if (!tempFile.renameTo(outputFile)) {
                    tempFile.copyTo(outputFile, overwrite = true)
                    tempFile.delete()
                }
                Log.d(TAG, "Download complete: ${outputFile.length()} bytes")
                return@withContext outputFile
            } catch (error: IOException) {
                tempFile.delete()
                lastError = error
                val hasAttemptsLeft = attempt + 1 < MAX_DOWNLOAD_ATTEMPTS
                if (!hasAttemptsLeft || error is OpdsHttpException && !error.retryable) {
                    throw error
                }
                Log.w(TAG, "Download attempt ${attempt + 1} failed; retrying", error)
                delay(DOWNLOAD_RETRY_DELAY_MILLIS * (attempt + 1))
            }
        }

        throw lastError ?: IOException("Download failed without an error")
    }

    private fun downloadOnce(
        url: String,
        outputFile: File,
        onProgress: ((bytesRead: Long, totalBytes: Long) -> Unit)?
    ) {
        Log.d(TAG, "Downloading book: $url -> ${outputFile.absolutePath}")
        val request = Request.Builder()
            .url(url)
            .header("User-Agent", USER_AGENT)
            .get()
            .build()

        client.newCall(request).execute().use { response ->
            if (!response.isSuccessful) {
                throw OpdsHttpException(
                    code = response.code,
                    message = "Download failed: ${response.code} ${response.message}",
                    retryable = response.code == 408 || response.code == 429 || response.code >= 500
                )
            }
            val body = response.body ?: throw IOException("Empty response body")
            val totalBytes = body.contentLength()
            onProgress?.invoke(0L, totalBytes)

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
                        // Report progress at most every 64KB.
                        if (bytesRead - lastProgressReport >= 65536) {
                            onProgress?.invoke(bytesRead, totalBytes)
                            lastProgressReport = bytesRead
                        }
                    }
                    onProgress?.invoke(bytesRead, totalBytes)
                }
            }
        }
    }

    private class OpdsHttpException(
        val code: Int,
        message: String,
        val retryable: Boolean
    ) : IOException(message)
}
