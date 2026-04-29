package com.example.engine.formats.base

import android.content.Context
import com.example.core.data.db.EpubManifestCacheDao
import com.example.core.model.ComicFormat
import com.example.core.data.db.EpubStructureCacheDao
import com.example.engine.formats.base.DocumentKind.CONTAINER
import com.example.engine.formats.base.DocumentKind.FIXED_PAGE
import com.example.engine.formats.base.DocumentKind.REFLOWABLE
import com.example.engine.formats.djvu.DjvuFormatReader
import com.example.engine.formats.djvu.DjvuBackend
import com.example.engine.formats.epub.EpubFormatReader
import com.example.engine.formats.fb2.Fb2FormatReader
import com.example.engine.formats.folder.FolderFormatReader
import com.example.engine.formats.pdf.PdfFormatReader
import com.example.engine.formats.rar.RarFormatReader
import com.example.engine.formats.sevenz.SevenZFormatReader
import com.example.engine.formats.tar.TarFormatReader
import com.example.engine.formats.text.HtmlFormatReader
import com.example.engine.formats.text.MarkdownFormatReader
import com.example.engine.formats.text.MobiFormatReader
import com.example.engine.formats.text.DocxFormatReader
import com.example.engine.formats.text.OdtFormatReader
import com.example.engine.formats.text.PlainTextFormatReader
import com.example.engine.formats.text.RtfFormatReader
import com.example.engine.formats.text.TextFormatReader
import com.example.engine.formats.zip.ZipFormatReader
import dagger.hilt.android.qualifiers.ApplicationContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class FormatFactory @Inject constructor(
    @ApplicationContext private val context: Context,
    private val bitmapAllocator: BitmapAllocator,
    private val djvuBackend: DjvuBackend,
    private val epubStructureCacheDao: EpubStructureCacheDao,
    private val epubManifestCacheDao: EpubManifestCacheDao
) {
    private val deviceProfile by lazy { context.resolveRenderDeviceProfile() }

    private val engines: List<DocumentEngine> by lazy {
        listOf(
            FormatReaderDocumentEngine(
                name = "archive-container",
                kind = CONTAINER,
                supportedFormats = setOf(
                    ComicFormat.CBZ,
                    ComicFormat.ZIP,
                    ComicFormat.CBR,
                    ComicFormat.RAR,
                    ComicFormat.SEVENZ,
                    ComicFormat.TAR
                )
            ) { request ->
                when (request.format) {
                    ComicFormat.CBZ, ComicFormat.ZIP -> ZipFormatReader(
                        context,
                        request.path,
                        deviceProfile,
                        bitmapAllocator,
                        epubStructureCacheDao,
                        epubManifestCacheDao
                    )
                    ComicFormat.CBR, ComicFormat.RAR -> RarFormatReader(
                        context,
                        request.path,
                        deviceProfile,
                        bitmapAllocator,
                        epubStructureCacheDao,
                        epubManifestCacheDao
                    )
                    ComicFormat.SEVENZ -> SevenZFormatReader(
                        context,
                        request.path,
                        deviceProfile,
                        bitmapAllocator,
                        epubStructureCacheDao,
                        epubManifestCacheDao
                    )
                    ComicFormat.TAR -> TarFormatReader(
                        context,
                        request.path,
                        deviceProfile,
                        bitmapAllocator,
                        epubStructureCacheDao,
                        epubManifestCacheDao
                    )
                    else -> null
                }
            },
            FormatReaderDocumentEngine(
                name = "fixed-page",
                kind = FIXED_PAGE,
                supportedFormats = setOf(ComicFormat.PDF, ComicFormat.DJVU, ComicFormat.FOLDER)
            ) { request ->
                when (request.format) {
                    ComicFormat.PDF -> PdfFormatReader(context, request.path, deviceProfile, bitmapAllocator)
                    ComicFormat.DJVU -> DjvuFormatReader(context, request.path, djvuBackend)
                    ComicFormat.FOLDER -> FolderFormatReader(context, request.path, deviceProfile, bitmapAllocator)
                    else -> null
                }
            },
            FormatReaderDocumentEngine(
                name = "epub-publication",
                kind = REFLOWABLE,
                supportedFormats = setOf(ComicFormat.EPUB)
            ) { request ->
                EpubFormatReader(context, request.path, epubStructureCacheDao, epubManifestCacheDao)
            },
            FormatReaderDocumentEngine(
                name = "fb2-publication",
                kind = REFLOWABLE,
                supportedFormats = setOf(ComicFormat.FB2)
            ) { request ->
                Fb2FormatReader(context, request.path)
            },
            FormatReaderDocumentEngine(
                name = "mobi-publication",
                kind = REFLOWABLE,
                supportedFormats = setOf(ComicFormat.MOBI, ComicFormat.AZW3)
            ) { request ->
                MobiFormatReader(context, request.path, request.format)
            },
            FormatReaderDocumentEngine(
                name = "basic-reflowable-publication",
                kind = REFLOWABLE,
                supportedFormats = setOf(
                    ComicFormat.TXT,
                    ComicFormat.HTML,
                    ComicFormat.MARKDOWN
                )
            ) { request ->
                when (request.format) {
                    ComicFormat.TXT -> PlainTextFormatReader(context, request.path)
                    ComicFormat.HTML -> HtmlFormatReader(context, request.path)
                    ComicFormat.MARKDOWN -> MarkdownFormatReader(context, request.path)
                    else -> null
                }
            },
            FormatReaderDocumentEngine(
                name = "text-publication",
                kind = REFLOWABLE,
                supportedFormats = setOf(
                    ComicFormat.RTF,
                    ComicFormat.DOCX,
                    ComicFormat.ODT
                )
            ) { request ->
                when (request.format) {
                    ComicFormat.RTF -> RtfFormatReader(context, request.path)
                    ComicFormat.DOCX -> DocxFormatReader(context, request.path)
                    ComicFormat.ODT -> OdtFormatReader(context, request.path)
                    else -> TextFormatReader(context, request.path, request.format)
                }
            }
        )
    }

    fun createReader(path: String, format: ComicFormat): FormatReader? {
        return openSession(path, format)?.let(::DocumentSessionFormatReader)
    }

    fun openSession(path: String, format: ComicFormat): DocumentSession? {
        val request = DocumentOpenRequest(path = path, format = format)
        return engines.firstOrNull { it.supports(format) }?.open(request)
    }
}
