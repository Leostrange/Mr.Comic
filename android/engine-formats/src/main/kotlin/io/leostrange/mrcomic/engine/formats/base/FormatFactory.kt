package io.leostrange.mrcomic.engine.formats.base

import android.content.Context
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.engine.api.EpubCacheStore
import io.leostrange.mrcomic.engine.formats.archive.ArchiveDelegatingFormatReader
import io.leostrange.mrcomic.engine.formats.djvu.DjvuFormatReader
import io.leostrange.mrcomic.engine.formats.djvu.DjvuBackend
import io.leostrange.mrcomic.engine.formats.epub.EpubFormatReader
import io.leostrange.mrcomic.engine.formats.fb2.Fb2FormatReader
import io.leostrange.mrcomic.engine.formats.folder.FolderFormatReader
import io.leostrange.mrcomic.engine.formats.pdf.PdfFormatReader
import io.leostrange.mrcomic.engine.formats.text.TextFormatReader
import dagger.hilt.android.qualifiers.ApplicationContext
import io.leostrange.mrcomic.core.model.isTextReadingFormat
import java.net.URLDecoder
import java.util.Locale
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class FormatFactory @Inject constructor(
    @ApplicationContext private val context: Context,
    private val bitmapAllocator: BitmapAllocator,
    private val djvuBackend: DjvuBackend
) {
    var epubStructureCache: EpubCacheStore? = null
    var epubManifestCache: EpubCacheStore? = null
    private val deviceProfile by lazy { context.resolveRenderDeviceProfile() }

    fun createReader(path: String, format: ComicFormat): FormatReader? {
        val archiveContainerFormat = archiveContainerFormatFromPath(path)
        if (archiveContainerFormat != null && format.isTextReadingFormat()) {
            return archiveDelegatingReader(path, archiveContainerFormat)
        }
        return when (format) {
            ComicFormat.CBZ, ComicFormat.ZIP,
            ComicFormat.CBR, ComicFormat.RAR,
            ComicFormat.SEVENZ,
            ComicFormat.TAR                  -> archiveDelegatingReader(path, format)
            ComicFormat.PDF                  -> PdfFormatReader(context, path, deviceProfile, bitmapAllocator)
            ComicFormat.EPUB                 -> EpubFormatReader(context, path, epubStructureCache, epubManifestCache)
            ComicFormat.FB2                  -> Fb2FormatReader(context, path)
            ComicFormat.TXT,
            ComicFormat.HTML,
            ComicFormat.MARKDOWN,
            ComicFormat.RTF,
            ComicFormat.MOBI,
            ComicFormat.AZW3,
            ComicFormat.DOCX,
            ComicFormat.ODT,
            ComicFormat.CHM                  -> TextFormatReader(context, path, format)
            ComicFormat.DJVU                 -> DjvuFormatReader(context, path, djvuBackend)
            ComicFormat.FOLDER               -> FolderFormatReader(context, path, deviceProfile, bitmapAllocator)
            else -> null
        }
    }

    private fun archiveDelegatingReader(path: String, archiveFormat: ComicFormat): FormatReader =
        ArchiveDelegatingFormatReader(
            context = context,
            path = path,
            archiveFormat = archiveFormat,
            deviceProfile = deviceProfile,
            bitmapAllocator = bitmapAllocator,
            epubStructureCache = epubStructureCache,
            epubManifestCache = epubManifestCache
        )
}

internal fun archiveContainerFormatFromPath(path: String): ComicFormat? {
    val normalized = runCatching { URLDecoder.decode(path, Charsets.UTF_8.name()) }
        .getOrDefault(path)
        .substringBefore('?')
        .substringBefore('#')
        .lowercase(Locale.US)
    val extension = normalized.substringAfterLast('/', normalized)
        .substringAfterLast('\\')
        .substringAfterLast('.', missingDelimiterValue = "")
    return when (extension) {
        "cbz" -> ComicFormat.CBZ
        "zip" -> ComicFormat.ZIP
        "cbr" -> ComicFormat.CBR
        "rar" -> ComicFormat.RAR
        "cb7", "7z" -> ComicFormat.SEVENZ
        "cbt", "tar" -> ComicFormat.TAR
        else -> null
    }
}
