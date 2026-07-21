package io.leostrange.mrcomic.engine.formats.base

import android.graphics.Bitmap
import io.leostrange.mrcomic.core.model.ComicFormat

/**
 * Base contract shared by all format readers.
 *
 * Contains page count, metadata, TOC, and lifecycle — applicable to both
 * raster-page and text-content readers.
 */
interface BaseFormatReader {
    suspend fun getPageCount(): Int
    suspend fun getMetadata(): Map<String, String>
    fun getTableOfContents(): List<TocEntry>
    fun close()
}

/**
 * Reader that produces raster bitmaps (CBZ, CBR, PDF, DJVU, image folders).
 *
 * Not all readers need [getPage] at high render quality — the default
 * implementation delegates to the single-argument overload.
 */
interface RasterPageReader : BaseFormatReader {
    suspend fun getPage(index: Int): Bitmap?
    suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = getPage(index)
}

/**
 * Reader that produces HTML/text content (EPUB, FB2, TXT, HTML, DOCX, MOBI).
 *
 * The UI renders [getHtmlPage] output inside a WebView. Asset resolution
 * through [openHtmlAsset] enables lazy loading of CSS, images, and fonts.
 */
interface TextContentReader : BaseFormatReader {
    suspend fun getHtmlPage(index: Int): String?
    fun htmlBaseUrl(): String?
    fun htmlAssetBasePath(index: Int): String?
    fun openHtmlAsset(path: String): FormatReaderWebResource?
    fun getFootnoteText(anchorId: String): String?
    fun resolveHrefToPage(href: String): Int?
    fun rendersHtmlContent(): Boolean
    fun resolvedContentFormat(): ComicFormat?
}
