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
    private var pageCount: Int = 0

    override suspend fun open(uri: Uri): Int {
        return withContext(Dispatchers.IO) {
            try {
                // Clean up any existing resources
                close()
                
                pdfiumCore = PdfiumCore(context)
                parcelFileDescriptor = context.contentResolver.openFileDescriptor(uri, "r")
                    ?: throw IllegalStateException("Cannot open file descriptor for URI")
                
                pdfDocument = pdfiumCore?.newDocument(parcelFileDescriptor)
                    ?: throw IllegalStateException("Cannot create PDF document")
                
                pageCount = pdfiumCore?.getPageCount(pdfDocument) ?: 0
                
                if (pageCount <= 0) {
                    throw IllegalStateException("PDF файл не содержит страниц")
                }
                
                android.util.Log.d("PdfReader", "Successfully opened PDF with $pageCount pages")
                pageCount
            } catch (e: Exception) {
                // Clean up on error
                close()
                throw when (e) {
                    is IllegalStateException -> e
                    else -> IllegalStateException("Ошибка при открытии PDF файла: ${e.message}", e)
                }
            }
        }
    }

    override fun getPageCount(): Int = pageCount

    override fun renderPage(pageIndex: Int): Bitmap? {
        val core = pdfiumCore ?: return null
        val doc = pdfDocument ?: return null

        if (pageIndex < 0 || pageIndex >= pageCount) {
            android.util.Log.w("PdfReader", "Invalid page index: $pageIndex (total pages: $pageCount)")
            return null
        }

        return runCatching {
            core.openPage(doc, pageIndex)

            // Get page dimensions
            val width = core.getPageWidthPoint(doc, pageIndex)
            val height = core.getPageHeightPoint(doc, pageIndex)

            if (width <= 0 || height <= 0) {
                android.util.Log.w("PdfReader", "Invalid page dimensions: ${width}x${height}")
                core.closePage(doc, pageIndex)
                return null
            }

            // Scale down large pages to prevent memory issues
            val maxDimension = 2048
            val scale = if (width > maxDimension || height > maxDimension) {
                minOf(maxDimension.toFloat() / width, maxDimension.toFloat() / height)
            } else {
                1f
            }

            val scaledWidth = (width * scale).toInt()
            val scaledHeight = (height * scale).toInt()

            // Create a bitmap and render the page
            val bitmap = Bitmap.createBitmap(scaledWidth, scaledHeight, Bitmap.Config.ARGB_8888)
            core.renderPageBitmap(bitmap, doc, pageIndex, 0, 0, scaledWidth, scaledHeight)

            // Important: close the page
            core.closePage(doc, pageIndex)

            android.util.Log.d("PdfReader", "Successfully rendered page $pageIndex (${scaledWidth}x${scaledHeight})")
            bitmap
        }.getOrElse { e ->
            android.util.Log.e("PdfReader", "Failed to render page $pageIndex: ${e.message}", e)
            // Ensure page is closed even on error
            try {
                core.closePage(doc, pageIndex)
            } catch (closeException: Exception) {
                // Ignore close errors
            }
            null
        }
    }

    override fun close() {
        try {
            pdfiumCore?.closeDocument(pdfDocument)
        } catch (e: Exception) {
            android.util.Log.w("PdfReader", "Error closing PDF document: ${e.message}")
        }
        
        try {
            parcelFileDescriptor?.close()
        } catch (e: Exception) {
            android.util.Log.w("PdfReader", "Error closing file descriptor: ${e.message}")
        }
        
        pdfiumCore = null
        pdfDocument = null
        parcelFileDescriptor = null
        pageCount = 0
    }
}