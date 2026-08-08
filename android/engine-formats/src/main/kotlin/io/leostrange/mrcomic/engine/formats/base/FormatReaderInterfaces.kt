package io.leostrange.mrcomic.engine.formats.base

import android.graphics.Bitmap
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.engine.api.TocEntry
import io.leostrange.mrcomic.engine.api.FormatReaderWebResource

/**
 * Base contract shared by all format readers.
 *
 * Contains page count, metadata, TOC, and lifecycle — applicable to both
 * raster-page and text-content readers.
 */
interface BaseFormatReader {
    /** Returns the total number of pages in the book. */
    suspend fun getPageCount(): Int

    /** Returns book metadata (title, author, etc.) as key-value pairs. */
    suspend fun getMetadata(): Map<String, String>

    /**
     * Returns the table of contents.
     * Each entry maps a chapter title to its 0-based page index.
     * Returns an empty list if the format has no TOC.
     */
    fun getTableOfContents(): List<TocEntry>

    /** Releases all resources held by this reader. Must be called exactly once. */
    fun close()
}

/**
 * Reader that produces raster bitmaps (CBZ, CBR, PDF, DJVU, image folders).
 *
 * Not all readers need [getPage] at high render quality — the default
 * implementation delegates to the single-argument overload.
 */
interface RasterPageReader : BaseFormatReader {
    /**
     * Decodes page at [index] (0-based) as a [Bitmap].
     * Returns null if the page cannot be rendered as a bitmap.
     */
    suspend fun getPage(index: Int): Bitmap?

    /**
     * Decodes page at [index] using a discrete render-quality tier.
     * Tier 1 is the baseline viewport render. Higher tiers may return
     * a more detailed bitmap (e.g., for pinch-to-zoom).
     */
    suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = getPage(index)
}

/**
 * Reader that produces HTML/text content (EPUB, FB2, TXT, HTML, DOCX, MOBI).
 *
 * The UI renders [getHtmlPage] output inside a WebView. Asset resolution
 * through [openHtmlAsset] enables lazy loading of CSS, images, and fonts.
 */
interface TextContentReader : BaseFormatReader {
    /**
     * Returns raw HTML for page [index].
     * Returns null for image-based pages (use [RasterPageReader.getPage] instead).
     */
    suspend fun getHtmlPage(index: Int): String?

    /**
     * Base URL for WebView when rendering [getHtmlPage] content, so relative
     * image/CSS paths resolve correctly. Typically a `file://` URL.
     */
    fun htmlBaseUrl(): String?

    /**
     * Optional document path for WebViewAssetLoader-backed HTML content.
     * When non-null, the reader can resolve relative CSS/image/font resources.
     */
    fun htmlAssetBasePath(index: Int): String?

    /**
     * Resolves a lazily-served HTML resource (CSS, image, font) for
     * WebViewAssetLoader. [path] is a normalized relative path.
     */
    fun openHtmlAsset(path: String): FormatReaderWebResource?

    /**
     * Returns the HTML content of a footnote identified by [anchorId],
     * or null if no such footnote exists. Used for inline footnote popups.
     */
    fun getFootnoteText(anchorId: String): String?

    /**
     * Resolves an internal href (e.g., `chapter2.xhtml#anchor`) to
     * the 0-based reader page index, or null if unresolvable.
     */
    fun resolveHrefToPage(href: String): Int?

    /**
     * True when the reader's primary payload is HTML/text.
     * The UI uses this to choose between raster and WebView containers.
     */
    fun rendersHtmlContent(): Boolean

    /**
     * The effective content format after containers or delegates are resolved.
     * For example, a ZIP archive containing one DOCX reports DOCX here.
     */
    fun resolvedContentFormat(): ComicFormat?
}
