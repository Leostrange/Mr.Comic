package com.example.engine.formats.base

import android.content.Context
import com.example.core.model.ComicFormat
import com.example.engine.formats.djvu.DjvuFormatReader
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
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class FormatFactory @Inject constructor(
    @ApplicationContext private val context: Context,
    private val bitmapAllocator: BitmapAllocator
) {
    private val deviceProfile by lazy { context.resolveRenderDeviceProfile() }

    fun createReader(path: String, format: ComicFormat): FormatReader? {
        return when (format) {
            ComicFormat.CBZ, ComicFormat.ZIP -> ZipFormatReader(context, path, deviceProfile, bitmapAllocator)
            ComicFormat.CBR, ComicFormat.RAR -> RarFormatReader(context, path, deviceProfile, bitmapAllocator)
            ComicFormat.PDF                  -> PdfFormatReader(context, path, deviceProfile, bitmapAllocator)
            ComicFormat.EPUB                 -> EpubFormatReader(context, path)
            ComicFormat.SEVENZ               -> SevenZFormatReader(context, path, deviceProfile, bitmapAllocator)
            ComicFormat.TAR                  -> TarFormatReader(context, path, deviceProfile, bitmapAllocator)
            ComicFormat.FB2                  -> Fb2FormatReader(context, path)
            ComicFormat.TXT,
            ComicFormat.HTML,
            ComicFormat.MARKDOWN,
            ComicFormat.RTF,
            ComicFormat.MOBI,
            ComicFormat.AZW3,
            ComicFormat.DOCX,
            ComicFormat.ODT                  -> TextFormatReader(context, path, format)
            ComicFormat.DJVU                 -> DjvuFormatReader(context, path)
            ComicFormat.FOLDER               -> FolderFormatReader(context, path, deviceProfile, bitmapAllocator)
            else -> null
        }
    }
}
