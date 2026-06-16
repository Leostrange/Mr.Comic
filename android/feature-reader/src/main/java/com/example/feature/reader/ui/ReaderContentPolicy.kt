package com.example.feature.reader.ui

import com.example.core.model.ComicFormat
import com.example.core.model.ReadingMode
import com.example.core.model.isGraphicReaderFormat
import com.example.core.model.isTextReadingFormat

enum class ReaderContainerKind {
    TEXT_PAGE,
    TEXT_WEBTOON,
    RASTER_PAGE,
    RASTER_WEBTOON
}

fun resolveReaderContainerKind(
    format: ComicFormat?,
    readingMode: ReadingMode,
    readerRendersHtmlContent: Boolean
): ReaderContainerKind {
    val resolvedFormat = format ?: ComicFormat.UNKNOWN
    val isTextRoute = when {
        resolvedFormat.isTextReadingFormat() -> true
        readerRendersHtmlContent && resolvedFormat.isGraphicReaderFormat() -> false
        readerRendersHtmlContent -> true
        else -> false
    }
    return when {
        isTextRoute && readingMode == ReadingMode.WEBTOON -> ReaderContainerKind.TEXT_WEBTOON
        isTextRoute -> ReaderContainerKind.TEXT_PAGE
        readingMode == ReadingMode.WEBTOON -> ReaderContainerKind.RASTER_WEBTOON
        else -> ReaderContainerKind.RASTER_PAGE
    }
}

fun ReaderContainerKind.isTextContainer(): Boolean =
    this == ReaderContainerKind.TEXT_PAGE || this == ReaderContainerKind.TEXT_WEBTOON

fun ReaderContainerKind.isRasterContainer(): Boolean =
    this == ReaderContainerKind.RASTER_PAGE || this == ReaderContainerKind.RASTER_WEBTOON

/**
 * EPUB/Readium books use spine HTML rendered in WebView with JS viewport pagination (Moon+ model).
 * Kotlin char-split pagination breaks cover pages, TOC mapping, and footnotes.
 */
fun shouldUseKotlinTextPagePagination(
    containerKind: ReaderContainerKind,
    format: ComicFormat?
): Boolean {
    if (containerKind != ReaderContainerKind.TEXT_PAGE) return false
    // EPUB uses WebView JS pagination. Unknown/null format on HTML routes must not
    // char-split — mis-tagged EPUBs otherwise get 300+ display pages and a blank UI.
    if (format == null || format == ComicFormat.EPUB || format == ComicFormat.UNKNOWN) return false
    return format.isTextReadingFormat()
}

/**
 * Moon+ PAGE mode: inline HTML chapter links (Gutenberg Contents table, pginternal)
 * should navigate to the target chapter. Only block bare spine jumps without anchors.
 */
fun shouldBlockInlineHtmlChapterNavigation(
    containerKind: ReaderContainerKind,
    readingMode: ReadingMode,
    hrefFilePart: String,
    currentAssetBasePath: String?
): Boolean {
    if (containerKind != ReaderContainerKind.TEXT_PAGE) return false
    if (!readerModeAllowsHorizontalPageTurn(readingMode)) return false
    val normalizedFilePart = hrefFilePart.trim().trimStart('/').substringBefore('#')
    if (normalizedFilePart.isBlank() || !normalizedFilePart.contains('.')) return false
    when (normalizedFilePart.substringAfterLast('.', "").lowercase()) {
        "html", "htm", "xhtml" -> Unit
        else -> return false
    }
    val targetName = normalizedFilePart.substringAfterLast('/')
    val currentName = currentAssetBasePath
        ?.substringAfterLast('/')
        ?.substringBefore('#')
        .orEmpty()
    if (currentName.isNotBlank() && targetName.equals(currentName, ignoreCase = true)) {
        return false
    }
    val hasFragment = hrefFilePart.contains('#')
    if (hasFragment) return false
    return true
}

private val READER_ASSET_HOST = "appassets.androidplatform.net"
private const val READER_ASSET_CONTENT_PREFIX = "/reader/content/"

/**
 * Blocks WebView main-frame jumps between spine XHTML files during PAGE reading.
 * Without this, Gutenberg Contents links load chapter HTML directly in the WebView
 * while [ReaderViewModel] page index stays on Contents — the XII jump users report.
 */
fun shouldBlockReaderAssetSpineNavigation(
    pagedModeScrollLock: Boolean,
    currentUrl: String?,
    targetUri: android.net.Uri
): Boolean = shouldBlockReaderAssetSpineNavigation(
    pagedModeScrollLock = pagedModeScrollLock,
    currentUrl = currentUrl,
    targetUrl = targetUri.toString()
)

fun shouldBlockReaderAssetSpineNavigation(
    pagedModeScrollLock: Boolean,
    currentUrl: String?,
    targetUrl: String
): Boolean {
    if (!pagedModeScrollLock) return false
    val targetPath = extractReaderAssetRelativePath(targetUrl) ?: return false
    val currentPath = extractReaderAssetRelativePath(currentUrl) ?: return false
    val currentFile = currentPath.substringAfterLast('/')
    val targetFile = targetPath.substringBefore('#').substringAfterLast('/')
    return !targetFile.equals(currentFile, ignoreCase = true)
}

private fun extractReaderAssetRelativePath(url: String?): String? {
    if (url.isNullOrBlank()) return null
    if (!url.contains(READER_ASSET_HOST, ignoreCase = true)) return null
    val contentIndex = url.indexOf(READER_ASSET_CONTENT_PREFIX, ignoreCase = true)
    if (contentIndex < 0) return null
    return url.substring(contentIndex + READER_ASSET_CONTENT_PREFIX.length)
        .substringBefore('#')
        .trim()
        .trimStart('/')
        .takeIf { it.isNotBlank() }
}
