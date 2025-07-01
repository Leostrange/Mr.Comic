package com.mrcomic.reader

import android.content.Context
import android.graphics.Bitmap
import android.graphics.pdf.PdfRenderer
import android.net.Uri
import android.os.ParcelFileDescriptor
import java.io.File
import java.io.IOException

class PdfPageExtractor(private val context: Context) {

    private var pdfRenderer: PdfRenderer? = null
    private var parcelFileDescriptor: ParcelFileDescriptor? = null

    fun openPdf(uri: Uri): Int {
        try {
            parcelFileDescriptor = context.contentResolver.openFileDescriptor(uri, "r")
            if (parcelFileDescriptor != null) {
                pdfRenderer = PdfRenderer(parcelFileDescriptor!!)
                return pdfRenderer!!.pageCount
            }
        } catch (e: IOException) {
            e.printStackTrace()
        }
        return 0
    }

    fun getPage(pageIndex: Int): Bitmap? {
        if (pdfRenderer == null || pageIndex < 0 || pageIndex >= pdfRenderer!!.pageCount) {
            return null
        }
        val page = pdfRenderer!!.openPage(pageIndex)
        val bitmap = Bitmap.createBitmap(page.width, page.height, Bitmap.Config.ARGB_8888)
        page.render(bitmap, null, null, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
        page.close()
        return bitmap
    }

    fun closePdf() {
        try {
            pdfRenderer?.close()
            parcelFileDescriptor?.close()
        } catch (e: IOException) {
            e.printStackTrace()
        }
        pdfRenderer = null
        parcelFileDescriptor = null
    }
}


