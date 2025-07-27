package com.example.feature.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import android.os.ParcelFileDescriptor
import com.example.feature.reader.domain.BookReader
import com.shockwave.pdfium.PdfDocument
import com.shockwave.pdfium.PdfiumCore
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File

/**
 * A [BookReader] implementation for reading PDF files using Pdfium-Android.
 *
 * @param context The Android context, required for initializing PdfiumCore.
 */
class PdfReader(
    private val context: Context
) : BookReader {

    private var pdfiumCore: PdfiumCore? = null
    private var pdfDocument: PdfDocument? = null
    private var parcelFileDescriptor: ParcelFileDescriptor? = null

    override suspend fun open(uri: Uri): Int {
        return withContext(Dispatchers.IO) {
            runCatching {
                pdfiumCore = PdfiumCore(context)
                parcelFileDescriptor = context.contentResolver.openFileDescriptor(uri, "r")
                pdfDocument = pdfiumCore?.newDocument(parcelFileDescriptor)
                pdfiumCore?.getPageCount(pdfDocument) ?: 0
            }.getOrDefault(0)
        }
    }

    override fun renderPage(pageIndex: Int): Bitmap? {
        val core = pdfiumCore ?: return null
        val doc = pdfDocument ?: return null

        return runCatching {
            core.openPage(doc, pageIndex)

            // Get page dimensions
            val width = core.getPageWidthPoint(doc, pageIndex)
            val height = core.getPageHeightPoint(doc, pageIndex)

            // Create a bitmap and render the page
            val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            core.renderPageBitmap(bitmap, doc, pageIndex, 0, 0, width, height)

            // Important: close the page
            core.closePage(doc, pageIndex)

            bitmap
        }.getOrNull()
    }

    override fun close() {
        pdfiumCore?.closeDocument(pdfDocument)
        pdfiumCore = null
        pdfDocument = null
        parcelFileDescriptor?.close()
        parcelFileDescriptor = null
    }
}