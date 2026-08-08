package io.leostrange.mrcomic.engine.formats.base

import android.graphics.Bitmap
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.engine.api.TocEntry
import io.leostrange.mrcomic.engine.api.FormatReaderWebResource

interface FormatReader : BaseFormatReader, RasterPageReader, TextContentReader {
    override fun rendersHtmlContent(): Boolean = false
    override fun resolvedContentFormat(): ComicFormat? = null
    override suspend fun getPageCount(): Int
    override suspend fun getPage(index: Int): Bitmap?
    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = getPage(index)
    override suspend fun getHtmlPage(index: Int): String? = null
    override fun htmlBaseUrl(): String? = null
    override fun htmlAssetBasePath(index: Int): String? = null
    override fun openHtmlAsset(path: String): FormatReaderWebResource? = null
    override suspend fun getMetadata(): Map<String, String> = emptyMap()
    override fun getTableOfContents(): List<TocEntry> = emptyList()
    override fun getFootnoteText(anchorId: String): String? = null
    override fun resolveHrefToPage(href: String): Int? = null
    override fun close()
}
