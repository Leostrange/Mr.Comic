package com.example.engine.formats.base

import android.graphics.Bitmap

/** One entry in the book's table of contents. */
data class TocEntry(val title: String, val pageIndex: Int)

interface FormatReader {
    /** Return total page count */
    suspend fun getPageCount(): Int

    /** Decode page at [index] (0-based) as Bitmap. Returns null if the page is HTML-based. */
    suspend fun getPage(index: Int): Bitmap?

    /**
     * Decode page at [index] using a discrete render-quality tier.
     * Tier `1` is the baseline viewport render. Higher tiers may return a more detailed bitmap.
     */
    suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = getPage(index)

    /**
     * Returns raw HTML for page [index] when this format renders text/HTML content.
     * Returns null for image pages (use [getPage] instead).
     */
    suspend fun getHtmlPage(index: Int): String? = null

    /**
     * Base URL for WebView when rendering [getHtmlPage] content, so relative image/CSS
     * paths resolve correctly. Typically a `file://` URL of the extraction directory.
     */
    fun htmlBaseUrl(): String? = null

    /** Metadata: title, series, etc. (optional) */
    suspend fun getMetadata(): Map<String, String> = emptyMap()

    /**
     * Returns the table of contents for text-based formats (EPUB, FB2).
     * Each entry contains a chapter title and the 0-based reader page index where it starts.
     * Returns an empty list for image-based formats or if the TOC is unavailable.
     */
    fun getTableOfContents(): List<TocEntry> = emptyList()

    /**
     * Returns the HTML content of a footnote/note identified by [anchorId],
     * or null if no such footnote exists. Used for the inline footnote popup.
     */
    fun getFootnoteText(anchorId: String): String? = null

    /** Release all resources */
    fun close()
}
