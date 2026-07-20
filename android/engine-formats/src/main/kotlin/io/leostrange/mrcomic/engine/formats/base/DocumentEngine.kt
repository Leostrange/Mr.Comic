package io.leostrange.mrcomic.engine.formats.base

import android.graphics.Bitmap
import io.leostrange.mrcomic.core.model.ComicFormat

enum class DocumentKind {
    REFLOWABLE,
    FIXED_PAGE,
    CONTAINER
}

data class DocumentOpenRequest(
    val path: String,
    val format: ComicFormat
)

interface DocumentEngine {
    val name: String
    val kind: DocumentKind
    val supportedFormats: Set<ComicFormat>

    fun supports(format: ComicFormat): Boolean = format in supportedFormats

    fun open(request: DocumentOpenRequest): DocumentSession?
}

interface DocumentSession {
    val kind: DocumentKind
    val format: ComicFormat

    fun rendersHtmlContent(): Boolean = false

    suspend fun getPageCount(): Int
    suspend fun renderPage(index: Int, quality: Int = 1): Bitmap?
    suspend fun getHtmlPage(index: Int): String? = null
    fun htmlBaseUrl(): String? = null
    fun htmlAssetBasePath(index: Int): String? = null
    fun openHtmlAsset(path: String): FormatReaderWebResource? = null
    suspend fun getMetadata(): Map<String, String> = emptyMap()
    fun getTableOfContents(): List<TocEntry> = emptyList()
    fun getFootnoteText(anchorId: String): String? = null
    fun resolveHrefToPage(href: String): Int? = null
    fun close()
}

class FormatReaderDocumentEngine(
    override val name: String,
    override val kind: DocumentKind,
    override val supportedFormats: Set<ComicFormat>,
    private val readerFactory: (DocumentOpenRequest) -> FormatReader?
) : DocumentEngine {
    override fun open(request: DocumentOpenRequest): DocumentSession? {
        val reader = readerFactory(request) ?: return null
        return FormatReaderDocumentSession(
            kind = kind,
            format = request.format,
            reader = reader
        )
    }
}

class FormatReaderDocumentSession(
    override val kind: DocumentKind,
    override val format: ComicFormat,
    private val reader: FormatReader
) : DocumentSession {
    override fun rendersHtmlContent(): Boolean =
        reader.rendersHtmlContent()

    override suspend fun getPageCount(): Int = reader.getPageCount()

    override suspend fun renderPage(index: Int, quality: Int): Bitmap? =
        reader.getPage(index, quality)

    override suspend fun getHtmlPage(index: Int): String? =
        reader.getHtmlPage(index)

    override fun htmlBaseUrl(): String? =
        reader.htmlBaseUrl()

    override fun htmlAssetBasePath(index: Int): String? =
        reader.htmlAssetBasePath(index)

    override fun openHtmlAsset(path: String): FormatReaderWebResource? =
        reader.openHtmlAsset(path)

    override suspend fun getMetadata(): Map<String, String> =
        reader.getMetadata()

    override fun getTableOfContents(): List<TocEntry> =
        reader.getTableOfContents()

    override fun getFootnoteText(anchorId: String): String? =
        reader.getFootnoteText(anchorId)

    override fun resolveHrefToPage(href: String): Int? =
        reader.resolveHrefToPage(href)

    override fun close() {
        reader.close()
    }
}

class DocumentSessionFormatReader(
    private val session: DocumentSession
) : FormatReader {
    override fun rendersHtmlContent(): Boolean =
        session.rendersHtmlContent()

    override suspend fun getPageCount(): Int =
        session.getPageCount()

    override suspend fun getPage(index: Int): Bitmap? =
        session.renderPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? =
        session.renderPage(index, renderQuality)

    override suspend fun getHtmlPage(index: Int): String? =
        session.getHtmlPage(index)

    override fun htmlBaseUrl(): String? =
        session.htmlBaseUrl()

    override fun htmlAssetBasePath(index: Int): String? =
        session.htmlAssetBasePath(index)

    override fun openHtmlAsset(path: String): FormatReaderWebResource? =
        session.openHtmlAsset(path)

    override suspend fun getMetadata(): Map<String, String> =
        session.getMetadata()

    override fun getTableOfContents(): List<TocEntry> =
        session.getTableOfContents()

    override fun getFootnoteText(anchorId: String): String? =
        session.getFootnoteText(anchorId)

    override fun resolveHrefToPage(href: String): Int? =
        session.resolveHrefToPage(href)

    override fun close() {
        session.close()
    }
}
