package com.example.feature.reader.ui

import com.example.core.model.ComicFormat
import com.example.core.model.ReadingMode
import com.example.core.model.isTextReadingFormat

internal enum class ReaderContainerKind {
    TEXT_PAGE,
    TEXT_WEBTOON,
    RASTER_PAGE,
    RASTER_WEBTOON
}

/**
 * Resolves the actual reader surface type.
 *
 * [readerRendersHtmlContent] is an explicit reader contract and intentionally wins before
 * [currentHtmlContent] exists: archive containers can open either as image archives or as a
 * single delegated text book, and the UI must pick the correct chrome before the first page loads.
 */
internal fun resolveReaderContentIsText(
    storedFormat: ComicFormat?,
    readerRendersHtmlContent: Boolean,
    currentHtmlContent: String? = null
): Boolean {
    if (storedFormat == ComicFormat.DJVU) return false
    if (storedFormat != null && storedFormat.isStrictRasterReadingFormat()) {
        // For strict raster formats, only archive formats can be treated as text (if classified as such).
        // Non-archive raster formats (PDF, DJVU, etc.) are never treated as text.
        if (storedFormat.isArchiveContainerFormat()) {
            return readerRendersHtmlContent
        } else {
            return false
        }
    }

    return readerRendersHtmlContent ||
        storedFormat?.isTextReadingFormat() == true
}


internal fun ReaderUiState.usesTextReaderContent(): Boolean =
    resolveReaderContentIsText(
        storedFormat = comic?.format,
        readerRendersHtmlContent = currentHtmlContent != null,
        currentHtmlContent = currentHtmlContent
    )

internal fun resolveReaderContainerKind(
    storedFormat: ComicFormat?,
    readerRendersHtmlContent: Boolean,
    currentHtmlContent: String?,
    readingMode: ReadingMode
): ReaderContainerKind {
    val isText = resolveReaderContentIsText(
        storedFormat = storedFormat,
        readerRendersHtmlContent = readerRendersHtmlContent,
        currentHtmlContent = currentHtmlContent
    )
    return when {
        isText && readingMode == ReadingMode.WEBTOON -> ReaderContainerKind.TEXT_WEBTOON
        isText -> ReaderContainerKind.TEXT_PAGE
        readingMode == ReadingMode.WEBTOON -> ReaderContainerKind.RASTER_WEBTOON
        else -> ReaderContainerKind.RASTER_PAGE
    }
}

internal fun shouldDeferTextPageCount(
    format: ComicFormat,
    contentIsText: Boolean
): Boolean {
    if (!contentIsText || format.isArchiveContainerFormat()) return false
    return when (format) {
        ComicFormat.EPUB,
        ComicFormat.MOBI,
        ComicFormat.AZW3,
        ComicFormat.RTF,
        ComicFormat.DOCX,
        ComicFormat.ODT -> true
        else -> false
    }
}

internal fun ComicFormat.isArchiveContainerFormat(): Boolean = when (this) {
    ComicFormat.CBZ,
    ComicFormat.CBR,
    ComicFormat.ZIP,
    ComicFormat.RAR,
    ComicFormat.SEVENZ,
    ComicFormat.TAR -> true
    else -> false
}

private fun ComicFormat.isStrictRasterReadingFormat(): Boolean = when (this) {
    ComicFormat.CBZ,
    ComicFormat.CBR,
    ComicFormat.PDF,
    ComicFormat.DJVU,
    ComicFormat.FOLDER -> true
    else -> false
}
