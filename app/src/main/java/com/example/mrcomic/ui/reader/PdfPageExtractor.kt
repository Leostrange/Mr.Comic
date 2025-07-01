package com.example.mrcomic.ui.reader

import android.content.Context
import android.graphics.Bitmap
import android.graphics.pdf.PdfRenderer
import android.net.Uri
import android.os.ParcelFileDescriptor
import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.FileDescriptor

class PdfPageExtractor(private val context: Context, private val uri: Uri) : PageExtractor {

    private var pdfRenderer: PdfRenderer? = null
    private var parcelFileDescriptor: ParcelFileDescriptor? = null

    init {
        try {
            parcelFileDescriptor = context.contentResolver.openFileDescriptor(uri, "r")
            if (parcelFileDescriptor != null) {
                pdfRenderer = PdfRenderer(parcelFileDescriptor!!)
            } else {
                Log.e(TAG, "Failed to open ParcelFileDescriptor for URI: $uri")
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error initializing PdfPageExtractor for URI: $uri", e)
        }
    }

    override fun getPageCount(): Int {
        return pdfRenderer?.pageCount ?: 0
    }

    override suspend fun getPage(pageIndex: Int): Bitmap? = withContext(Dispatchers.IO) {
        if (pdfRenderer == null) {
            Log.e(TAG, "PdfRenderer is null, cannot get page.")
            return@withContext null
        }
        if (pageIndex < 0 || pageIndex >= getPageCount()) {
            Log.w(TAG, "Page index $pageIndex out of bounds (0..${getPageCount() - 1})")
            return@withContext null
        }

        var page: PdfRenderer.Page? = null
        var bitmap: Bitmap? = null
        try {
            page = pdfRenderer!!.openPage(pageIndex)
            // Calculate optimal width and height based on screen size or a reasonable default
            // For now, let's use a fixed size or page's original size for simplicity
            // A more robust solution would involve getting screen dimensions.
            val width = page.width
            val height = page.height

            // Create a mutable bitmap for rendering
            bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            page.render(bitmap, null, null, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
            Log.d(TAG, "Successfully rendered PDF page $pageIndex ($width x $height)")
        } catch (e: Exception) {
            Log.e(TAG, "Exception rendering PDF page $pageIndex", e)
        } finally {
            page?.close()
        }
        return@withContext bitmap
    }

    override fun close() {
        try {
            pdfRenderer?.close()
            parcelFileDescriptor?.close()
        } catch (e: Exception) {
            Log.e(TAG, "Error closing PdfPageExtractor", e)
        }
    }

    companion object {
        private const val TAG = "PdfPageExtractor"
    }
}

