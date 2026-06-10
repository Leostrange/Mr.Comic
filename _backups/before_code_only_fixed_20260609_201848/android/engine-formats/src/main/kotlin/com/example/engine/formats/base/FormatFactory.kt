package com.example.engine.formats.base

import android.content.Context
import com.example.core.data.db.EpubManifestCacheDao
import com.example.core.model.ComicFormat
import com.example.core.data.db.EpubStructureCacheDao
import com.example.engine.formats.archive.ArchiveDelegatingFormatReader
import com.example.engine.formats.djvu.DjvuFormatReader
import com.example.engine.formats.djvu.DjvuBackend
import com.example.engine.formats.epub.EpubFormatReader
import com.example.engine.formats.fb2.Fb2FormatReader
import com.example.engine.formats.folder.FolderFormatReader
import com.example.engine.formats.pdf.PdfFormatReader
import com.example.engine.formats.rar.RarFormatReader
import com.example.engine.formats.sevenz.SevenZFormatReader
import com.example.engine.formats.tar.TarFormatReader
import com.example.engine.formats.text.TextFormatReader
import com.example.engine.formats.zip.ZipFormatReader
import dagger.hilt.android.qualifiers.ApplicationContext
import com.example.core.model.isTextReadingFormat
import java.net.URLDecoder
import java.util.Locale
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
            ComicFormat.EPUB                 -> EpubFormatReader(context, path, epubStructureCacheDao, epubManifestCacheDao)
            ComicFormat.FB2                  -> Fb2FormatReader(context, path)
            ComicFormat.TXT,
            ComicFormat.HTML,
            ComicFormat.MARKDOWN,
            ComicFormat.RTF,
            ComicFormat.MOBI,
            ComicFormat.AZW3,
            ComicFormat.DOCX,
            ComicFormat.ODT                  -> TextFormatReader(context, path, format)
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
            epubStructureCacheDao = epubStructureCacheDao,
            epubManifestCacheDao = epubManifestCacheDao
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
