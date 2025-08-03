package com.example.core.reader.pdf

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Matrix
import android.graphics.RectF
import android.net.Uri
import android.os.ParcelFileDescriptor
import com.shockwave.pdfium.PdfDocument
import com.shockwave.pdfium.PdfiumCore
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.IOException

/**
 * Реализация PDF ридера с использованием Pdfium
 */
class PdfiumReader : PdfReader {
    
    private var pdfiumCore: PdfiumCore? = null
    private var pdfDocument: PdfDocument? = null
    private var parcelFileDescriptor: ParcelFileDescriptor? = null
    private var pageCount: Int = 0
    
    override suspend fun openDocument(context: Context, uri: Uri): Result<Unit> = withContext(Dispatchers.IO) {
        try {
            // Инициализируем PdfiumCore
            pdfiumCore = PdfiumCore(context)
            
            // Открываем файловый дескриптор
            parcelFileDescriptor = context.contentResolver.openFileDescriptor(uri, "r")
                ?: return Result.failure(IOException("Cannot open file descriptor for URI"))
            
            // Создаем PDF документ
            pdfDocument = pdfiumCore?.newDocument(parcelFileDescriptor)
                ?: return Result.failure(IOException("Cannot create PDF document"))
            
            // Получаем количество страниц
            pageCount = pdfiumCore?.getPageCount(pdfDocument) ?: 0
            if (pageCount <= 0) {
                return Result.failure(IOException("PDF file contains no pages"))
            }
            
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
            val core = pdfiumCore ?: return Result.failure(IOException("PdfiumCore not initialized"))
            val document = pdfDocument ?: return Result.failure(IOException("PDF document not opened"))
            
            if (pageIndex < 0 || pageIndex >= pageCount) {
                return Result.failure(IllegalArgumentException("Invalid page index: $pageIndex"))
            }
            
            // Открываем страницу
            core.openPage(document, pageIndex)
            
            // Получаем размеры страницы
            val width = core.getPageWidthPoint(document, pageIndex)
            val height = core.getPageHeightPoint(document, pageIndex)
            
            // Вычисляем масштаб для ограничения размера
            val scale = calculateScale(width, height, maxWidth, maxHeight)
            val scaledWidth = (width * scale).toInt()
            val scaledHeight = (height * scale).toInt()
            
            // Создаем bitmap
            val bitmap = Bitmap.createBitmap(scaledWidth, scaledHeight, Bitmap.Config.ARGB_8888)
            
            // Рендерим страницу
            core.renderPageBitmap(bitmap, document, pageIndex, 0, 0, scaledWidth, scaledHeight)
            
            // Закрываем страницу
            core.closePage(document, pageIndex)
            
            Result.success(bitmap)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    override fun close() {
        try {
            pdfiumCore?.closeDocument(pdfDocument)
            parcelFileDescriptor?.close()
        } catch (e: Exception) {
            // Игнорируем ошибки при закрытии
        } finally {
            pdfiumCore = null
            pdfDocument = null
            parcelFileDescriptor = null
            pageCount = 0
        }
    }
    
    override fun supportsUri(uri: Uri): Boolean {
        // Pdfium поддерживает все URI, которые можно открыть через ContentResolver
        return uri.scheme?.let { it == "content" || it == "file" } ?: false
    }
    
    private fun calculateScale(pageWidth: Int, pageHeight: Int, maxWidth: Int, maxHeight: Int): Float {
        val scaleX = maxWidth.toFloat() / pageWidth
        val scaleY = maxHeight.toFloat() / pageHeight
        return minOf(scaleX, scaleY, 1.0f) // Не увеличиваем изображение
    }
}