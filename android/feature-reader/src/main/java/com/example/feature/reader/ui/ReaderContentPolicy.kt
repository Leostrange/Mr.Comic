package com.example.feature.reader.ui

import com.example.core.model.ComicFormat
import com.example.core.model.isHeavyReflowableFormat
import com.example.core.model.isTextReadingFormat

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
): Boolean =
    readerRendersHtmlContent ||
        !currentHtmlContent.isNullOrBlank() ||
        storedFormat?.isTextReadingFormat() == true

internal fun ReaderUiState.usesTextReaderContent(): Boolean =
    resolveReaderContentIsText(
        storedFormat = comic?.format,
        readerRendersHtmlContent = readerContentIsText,
        currentHtmlContent = currentHtmlContent
    )

internal fun shouldDeferTextPageCount(
    format: ComicFormat,
    contentIsText: Boolean
): Boolean =
    contentIsText &&
        format.isHeavyReflowableFormat() &&
        !format.isArchiveContainerFormat()

internal fun ComicFormat.isArchiveContainerFormat(): Boolean = when (this) {
    ComicFormat.ZIP,
    ComicFormat.RAR,
    ComicFormat.SEVENZ,
    ComicFormat.TAR -> true
    else -> false
}
