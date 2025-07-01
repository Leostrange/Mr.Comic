package com.example.mrcomic.ui.reader

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.pdf.PdfRenderer
import android.net.Uri
import android.os.ParcelFileDescriptor
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import me.zhanghai.android.libarchive.Archive
import java.io.File
import java.io.FileOutputStream
import java.io.InputStream

/**
 * Интерфейс для извлечения страниц из различных форматов комиксов.
 */
interface PageExtractor : AutoCloseable {
    suspend fun getPageCount(): Int
    suspend fun getPage(pageIndex: Int): Bitmap
}

/**
 * Извлекает страницы из PDF файлов.
 */
class PdfPageExtractor(
    private val context: Context,
    private val uri: Uri
) : PageExtractor {
    private val parcelFileDescriptor: ParcelFileDescriptor =
        context.contentResolver.openFileDescriptor(uri, "r")!!
    private val pdfRenderer: PdfRenderer = PdfRenderer(parcelFileDescriptor)

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        pdfRenderer.pageCount
    }

    override suspend fun getPage(pageIndex: Int): Bitmap = withContext(Dispatchers.IO) {
        require(pageIndex in 0 until pdfRenderer.pageCount) { "Invalid page index" }
        val page = pdfRenderer.openPage(pageIndex)
        val bitmap = Bitmap.createBitmap(page.width, page.height, Bitmap.Config.ARGB_8888)
        page.render(bitmap, null, null, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
        page.close()
        return@withContext bitmap
    }

    override fun close() {
        pdfRenderer.close()
        parcelFileDescriptor.close()
    }
}

/**
 * Извлекает страницы из архивных файлов (CBZ, CBR).
 */
class ArchivePageExtractor(
    private val context: Context,
    private val uri: Uri
) : PageExtractor {
    private val imageEntries = mutableListOf<String>()
    private val pfd: ParcelFileDescriptor = context.contentResolver.openFileDescriptor(uri, "r")!!

    init {
        val archive = Archive.open(pfd.fileDescriptor)
        while (true) {
            val entry = archive.readNextEntry() ?: break
            if (!entry.isDirectory) {
                val entryName = entry.pathname!!
                if (isImageFile(entryName)) {
                    imageEntries.add(entryName)
                }
            }
        }
        archive.close()
        imageEntries.sort()
    }

    override suspend fun getPageCount(): Int {
        return imageEntries.size
    }

    override suspend fun getPage(pageIndex: Int): Bitmap = withContext(Dispatchers.IO) {
        require(pageIndex in 0 until imageEntries.size) { "Invalid page index" }
        val entryName = imageEntries[pageIndex]
        var bitmap: Bitmap? = null
        val archive = Archive.open(pfd.fileDescriptor)
        while (true) {
            val entry = archive.readNextEntry() ?: break
            if (entry.pathname == entryName) {
                bitmap = BitmapFactory.decodeStream(archive.readDataStream())
                break
            }
        }
        archive.close()
        return@withContext bitmap ?: throw IllegalStateException("Could not decode bitmap for entry: $entryName")
    }

    override fun close() {
        pfd.close()
    }

    private fun isImageFile(fileName: String): Boolean {
        val lowercased = fileName.lowercase()
        return lowercased.endsWith(".jpg") || lowercased.endsWith(".jpeg") ||
                lowercased.endsWith(".png") || lowercased.endsWith(".gif") ||
                lowercased.endsWith(".webp") || lowercased.endsWith(".bmp")
    }
} 