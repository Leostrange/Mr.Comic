package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.util.Log
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.platform.LocalContext
import io.leostrange.mrcomic.feature.reader.ui.gesture.ReaderHtmlHelpers
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File

private const val MAX_INLINE_HTML_SOURCE_LENGTH = 6_000_000

internal sealed interface ReaderHtmlPageSource {
    val loadToken: String

    data class FileUrl(
        val url: String,
        val fallbackBaseUrl: String,
        val fallbackHtml: String
    ) : ReaderHtmlPageSource {
        override val loadToken: String = "file:$url"
    }

    data class Inline(val baseUrl: String, val html: String) : ReaderHtmlPageSource {
        override val loadToken: String = "inline:${html.hashCode()}"
    }
}

internal fun readerAssetDocumentBaseUrl(documentPath: String): String =
    "${HTML_READER_BASE_URL}content/${documentPath.trimStart('/')}"

private fun readerHtmlCacheFile(context: Context, themedHtml: String): File {
    val cacheDir = File(context.cacheDir, "reader_html_pages").apply { mkdirs() }
    val fileName = "page_${Integer.toHexString(themedHtml.hashCode())}.html"
    return File(cacheDir, fileName)
}

private suspend fun buildReaderHtmlPageSource(
    context: Context,
    html: String,
    bg: String,
    fg: String,
    resolvedBaseUrl: String
): ReaderHtmlPageSource {
    val themedHtml = withContext(Dispatchers.Default) {
        ReaderHtmlHelpers.buildThemedHtmlDocument(html, bg, fg)
    }
    return withContext(Dispatchers.IO) {
        if (themedHtml.length <= MAX_INLINE_HTML_SOURCE_LENGTH) {
            ReaderHtmlPageSource.Inline(resolvedBaseUrl, themedHtml)
        } else {
            runCatching {
                val tmpFile = readerHtmlCacheFile(context, themedHtml)
                tmpFile.writeText(themedHtml, Charsets.UTF_8)
                ReaderHtmlPageSource.FileUrl(
                    url = "file://${tmpFile.absolutePath}",
                    fallbackBaseUrl = resolvedBaseUrl,
                    fallbackHtml = themedHtml
                )
            }.getOrElse { error ->
                Log.w(HTML_READER_TAG, "Failed to cache reader HTML page, falling back to inline load", error)
                ReaderHtmlPageSource.Inline(resolvedBaseUrl, themedHtml)
            }
        }
    }
}

internal fun readerHtmlPageSourceReloadKey(
    html: String,
    resolvedBaseUrl: String,
    cacheDirPath: String
): String = listOf(
    html.length,
    html.hashCode(),
    resolvedBaseUrl,
    cacheDirPath
).joinToString(separator = "|")

@Composable
internal fun rememberReaderHtmlPageSource(
    controller: ReaderWebViewLoadController,
    html: String,
    bg: String,
    fg: String,
    resolvedBaseUrl: String
): ReaderHtmlPageSource? {
    val context = LocalContext.current
    val cacheDirPath = context.cacheDir.absolutePath
    val reloadKey = remember(html, resolvedBaseUrl, cacheDirPath) {
        readerHtmlPageSourceReloadKey(html, resolvedBaseUrl, cacheDirPath)
    }
    var pageSource by remember { mutableStateOf<ReaderHtmlPageSource?>(null) }
    LaunchedEffect(reloadKey) {
        if (!controller.shouldRebuildSource(reloadKey)) return@LaunchedEffect
        val source = buildReaderHtmlPageSource(context, html, bg, fg, resolvedBaseUrl)
        controller.markLoadRequested(source.loadToken, reloadKey)
        pageSource = source
    }
    return pageSource
}

internal fun buildThemedHtmlDocument(html: String, bg: String, fg: String): String =
    ReaderHtmlHelpers.buildThemedHtmlDocument(html, bg, fg)

internal fun injectBodyInsetCss(
    html: String,
    topPx: Int,
    bottomPx: Int,
    horizontalPx: Int = 0,
    maxWidthPx: Int = 0,
    isRtl: Boolean = false
): String = ReaderHtmlHelpers.injectBodyInsetCss(html, topPx, bottomPx, horizontalPx, maxWidthPx, isRtl)
