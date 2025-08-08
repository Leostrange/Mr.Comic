package com.example.core.reader.pdf

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import com.tom_roush.pdfbox.pdmodel.PDDocument
import com.tom_roush.pdfbox.rendering.PDFRenderer
import com.tom_roush.pdfbox.rendering.ImageType
import java.io.IOException
import java.io.InputStream

/**
 * Fallback реализация PDF ридера с использованием PDFBox (Android)
 * Используется когда Pdfium недоступен или не работает
 */
class PdfBoxReader : PdfReader {
    
    private var pdfDocument: PDDocument? = null
    private var pdfRenderer: PDFRenderer? = null
    private var pageCount: Int = 0
    
    override suspend fun openDocument(context: Context, uri: Uri): Result<Unit> = withContext(Dispatchers.IO) {
        try {
            val inputStream: InputStream = context.contentResolver.openInputStream(uri)
                ?: return@withContext Result.failure(IOException("Cannot open input stream for URI"))
            
            pdfDocument = PDDocument.load(inputStream)
            pdfRenderer = pdfDocument?.let { PDFRenderer(it) }
            
            pageCount = pdfDocument?.numberOfPages ?: 0
            if (pageCount <= 0) {
                return@withContext Result.failure(IOException("PDF file contains no pages"))
            }
            
            inputStream.close()
            Result.success(Unit)
        } catch (e: Exception) {
            close()
            Result.failure(e)
        }
    }
    
    override fun getPageCount(): Int? {
        return if (pdfDocument != null) pageCount else null
    }
    
    override suspend fun renderPage(pageIndex: Int, maxWidth: Int, maxHeight: Int): Result<Bitmap> = withContext(Dispatchers.IO) {
        try {
            val renderer = pdfRenderer ?: return@withContext Result.failure(IOException("PDF renderer not initialized"))
            if (pageIndex < 0 || pageIndex >= pageCount) {
                return@withContext Result.failure(IllegalArgumentException("Invalid page index: $pageIndex"))
            }
            
            // pdfbox-android рендерит сразу в Bitmap
            val rendered = renderer.renderImageWithDPI(pageIndex, 150f, ImageType.ARGB)
            val result = scaleBitmapIfNeeded(rendered, maxWidth, maxHeight)
            Result.success(result)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    override fun close() {
        try {
            pdfDocument?.close()
        } catch (e: Exception) {
            // Игнорируем ошибки при закрытии
        } finally {
            pdfDocument = null
            pdfRenderer = null
            pageCount = 0
        }
    }
    
    override fun supportsUri(uri: Uri): Boolean {
        return uri.scheme?.let { it == "content" || it == "file" } ?: false
    }
    
    private fun scaleBitmapIfNeeded(bitmap: Bitmap, maxWidth: Int, maxHeight: Int): Bitmap {
        val width = bitmap.width
        val height = bitmap.height
        if (width <= maxWidth && height <= maxHeight) return bitmap
        val scaleX = maxWidth.toFloat() / width
        val scaleY = maxHeight.toFloat() / height
        val scale = minOf(scaleX, scaleY)
        val newWidth = (width * scale).toInt()
        val newHeight = (height * scale).toInt()
        return Bitmap.createScaledBitmap(bitmap, newWidth, newHeight, true)
    }
}