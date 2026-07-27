package io.leostrange.mrcomic.feature.reader.ui

/**
 * Strategy for building an HTML document for TEXT_WEBTOON mode.
 *
 * Extracted from the lambda parameter of TextWebtoonSessionController.ensureLoaded()
 * so the controller can be tested without a real ViewModel.
 */
internal fun interface WebtoonDocumentBuilder {
    fun build(pages: List<CachedHtmlPage>): TextWebtoonCachedDocument

    /**
     * Append new pages to an existing HTML document without full rebuild.
     * Default falls back to [build] (rebuilds from scratch).
     */
    fun appendPages(
        existingHtml: String,
        newPages: List<CachedHtmlPage>,
        startIndex: Int
    ): TextWebtoonCachedDocument = build(newPages)
}
