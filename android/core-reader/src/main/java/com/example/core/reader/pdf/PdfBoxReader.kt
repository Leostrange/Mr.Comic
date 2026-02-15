package com.example.core.reader.pdf

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.tom_roush.pdfbox.pdmodel.PDDocument
import com.tom_roush.pdfbox.rendering.PDFRenderer
import com.tom_roush.pdfbox.android.PDFBoxResourceLoader
import java.io.InputStream

/**
 * Implementation of [PdfReader] using PdfBox-Android library.
 */
class PdfBoxReader(context: Context, uri: Uri) : PdfReader {

    private var document: PDDocument? = null
    private var renderer: PDFRenderer? = null
    private var pageCount: Int = 0

    init {
        PDFBoxResourceLoader.init(context)
        try {
            val inputStream: InputStream? = context.contentResolver.openInputStream(uri)
            if (inputStream != null) {
                document = PDDocument.load(inputStream)
                renderer = PDFRenderer(document)
                pageCount = document?.numberOfPages ?: 0
            } else {
                throw IllegalArgumentException("Cannot open input stream for URI: $uri")
            }
        } catch (e: Exception) {
            close()
            throw e
        }
    }

    override fun getPageCount(): Int {
        return pageCount
    }

    override fun renderPage(pageIndex: Int, width: Int, height: Int): Result<Bitmap> {
        return try {
            if (document == null || renderer == null) {
                return Result.failure(IllegalStateException("PDF document is not open"))
            }
            // Simple rendering implementation. 
            // In a real optimized reader, we might calculate correct scale based on width/height.
            // For now, scale = 1.0f (default resolution)
            val bitmap = renderer!!.renderImage(pageIndex)
            Result.success(bitmap)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    override fun close() {
        try {
            document?.close()
        } catch (e: Exception) {
            // Ignore
        }
        document = null
        renderer = null
    }
}
