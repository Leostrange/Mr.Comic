package com.example.engine.formats.base

import android.graphics.Bitmap
import com.example.core.model.ComicFormat

/** One entry in the book's table of contents. */
data class TocEntry(
    val title: String,
    val pageIndex: Int,
    val anchorId: String? = null,
    val sectionIndex: Int = -1,
    val charOffset: Int = -1
)

/** Binary web resource used by HTML-based readers through WebViewAssetLoader. */
data class FormatReaderWebResource(
    val mimeType: String,
    val bytes: ByteArray,
    val encoding: String? = null
)

interface FormatReader {
    /**
     * True when the reader's primary payload is HTML/text.
     *
     * This is intentionally separate from the outer file extension: an archive
     * may contain either comic pages or one text book, and the reader UI must
     * route those cases to different containers.
     */
    fun rendersHtmlContent(): Boolean = false

    /**
     * The effective content format after containers or delegates are resolved.
     * For example, a ZIP archive with one DOCX should report DOCX here while
     * keeping the outer reader format as ZIP.
     */
    fun resolvedContentFormat(): ComicFormat? = null

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

    /**
     * Optional current document path for WebViewAssetLoader-backed HTML content.
     * When non-null, the reader can resolve relative CSS/image/font resources lazily.
     */
    fun htmlAssetBasePath(index: Int): String? = null

    /**
     * Resolves a lazily-served HTML resource (CSS, image, font, etc.) for WebViewAssetLoader.
     * [path] is a normalized relative path inside the document container.
     */
    fun openHtmlAsset(path: String): FormatReaderWebResource? = null

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

    /**
     * Resolves an internal href (e.g. `chapter2.xhtml` or `chapter2.xhtml#anchor`) to
     * the 0-based reader page index that displays that content.
     * Returns null when the href cannot be resolved (non-EPUB formats, unknown href).
     */
    fun resolveHrefToPage(href: String): Int? = null

    /** Release all resources */
    fun close()
}
