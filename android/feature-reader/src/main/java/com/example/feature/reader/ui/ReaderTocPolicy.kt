package com.example.feature.reader.ui

import com.example.core.model.ReaderLocator
import com.example.core.model.ReaderRendererKey

internal fun shouldUseTextReaderChrome(
    rendererKey: ReaderRendererKey,
    hasCurrentHtmlContent: Boolean,
    isFormatTextReading: Boolean
): Boolean = when (rendererKey) {
    ReaderRendererKey.LEGACY_TEXT_WEB,
    ReaderRendererKey.HYBRID_EPUB_LEGACY_RENDER,
    ReaderRendererKey.PAGED_DOCUMENT -> true
    else -> hasCurrentHtmlContent || isFormatTextReading
}

internal fun shouldRenderReadiumEpubContent(
    rendererKey: ReaderRendererKey?,
    hasSessionAccess: Boolean
): Boolean = false

internal fun shouldEnableReadiumSearch(rendererKey: ReaderRendererKey?): Boolean = false

internal fun resolveReadiumShellTargetLocator(
    rendererKey: ReaderRendererKey?,
    sessionLocator: ReaderLocator?,
    currentPage: Int
): ReaderLocator? = null
