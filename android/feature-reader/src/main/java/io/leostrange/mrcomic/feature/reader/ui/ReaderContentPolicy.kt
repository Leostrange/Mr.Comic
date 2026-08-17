package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.isArchiveFormat
import io.leostrange.mrcomic.core.model.isGraphicReaderFormat
import io.leostrange.mrcomic.core.model.isTextReadingFormat

enum class ReaderContainerKind {
    TEXT_PAGE,
    TEXT_WEBTOON,
    RASTER_PAGE,
    RASTER_WEBTOON,
    READIUM_EPUB
}

fun resolveReaderContainerKind(
    format: ComicFormat?,
    readingMode: ReadingMode,
    readerRendersHtmlContent: Boolean
): ReaderContainerKind {
    val resolvedFormat = format ?: ComicFormat.UNKNOWN
    val isTextRoute = when {
        // Text formats always go to TEXT containers — no exceptions.
        resolvedFormat.isTextReadingFormat() -> true
        // Graphic formats NEVER go to TEXT, even if they produce HTML fallbacks.
        resolvedFormat.isGraphicReaderFormat() -> false
        // Archive containers route by their inner content: if the archive delegates
        // to a text reader (e.g. ZIP containing EPUB), use TEXT; otherwise RASTER.
        resolvedFormat.isArchiveFormat() -> readerRendersHtmlContent
        // Fallback for UNKNOWN: trust the reader's HTML flag, but only if the
        // format is not a known graphic format (already handled above).
        else -> readerRendersHtmlContent
    }
    return when {
        isTextRoute && readingMode == ReadingMode.WEBTOON -> ReaderContainerKind.TEXT_WEBTOON
        isTextRoute -> ReaderContainerKind.TEXT_PAGE
        readingMode == ReadingMode.WEBTOON -> ReaderContainerKind.RASTER_WEBTOON
        else -> ReaderContainerKind.RASTER_PAGE
    }
}

fun ReaderContainerKind.isTextContainer(): Boolean =
    this == ReaderContainerKind.TEXT_PAGE ||
        this == ReaderContainerKind.TEXT_WEBTOON ||
        this == ReaderContainerKind.READIUM_EPUB

fun ReaderContainerKind.isReadiumContainer(): Boolean =
    this == ReaderContainerKind.READIUM_EPUB

fun ReaderContainerKind.isRasterContainer(): Boolean =
    this == ReaderContainerKind.RASTER_PAGE || this == ReaderContainerKind.RASTER_WEBTOON

/**
 * All text formats now use WebView JS viewport pagination (the same pixel-precise
 * TreeWalker + getClientRects() algorithm that EPUB uses). The old Kotlin char-count
 * heuristic (LayoutUnitTextPaginator) is retired because it produced inaccurate page
 * boundaries — the 0.56f avg-char-width and 0.75f fill-factor model broke on variable-
 * width fonts, images, tables, and CJK text.
 *
 * Returning false routes every TEXT_PAGE format through the WebView paged layout, which
 * measures actual rendered line rects for exact page breaks.
 */
fun shouldUseKotlinTextPagePagination(
    containerKind: ReaderContainerKind,
    format: ComicFormat?
): Boolean = false

fun shouldDeferReaderPageCount(
    @Suppress("UNUSED_PARAMETER") readerRendersHtmlContent: Boolean,
    @Suppress("UNUSED_PARAMETER") contentFormat: ComicFormat?
): Boolean {
    // Always defer page count resolution to avoid blocking the UI.
    // For EPUB/heavy reflowable: Readium parsing is expensive.
    // For raster (CBZ/CBR/PDF/DjVu): archive scanning + file copy for
    //   content:// URIs can take 10+ seconds on large files.
    // The deferred page count job resolves the real count in the background
    // once the first page is already visible.
    return true
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
