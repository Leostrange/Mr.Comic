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
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.withContext
import java.io.IOException

/**
 * Реализация PDF ридера с использованием Pdfium
 * 
 * ИСПРАВЛЕНИЕ: Добавлена Mutex для синхронизации доступа к Pdfium
 */
class PdfiumReader : PdfReader {
    
    private var pdfiumCore: PdfiumCore? = null
    private var pdfDocument: PdfDocument? = null
    private var parcelFileDescriptor: ParcelFileDescriptor? = null
    private var pageCount: Int = 0
    
    // Mutex для синхронизации доступа к Pdfium
    private val pdfiumMutex = Mutex()
    
    override suspend fun openDocument(context: Context, uri: Uri): Result<Unit> = withContext(Dispatchers.IO) {
        try {
            // Check and request permissions for content:// URIs
            if (uri.scheme == "content") {
                try {
                    // Try to take persistable permission
                    context.contentResolver.takePersistableUriPermission(
                        uri, 
                        android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                    )
                    android.util.Log.d("PdfiumReader", "✅ PDF DIAGNOSTIC: Persistable permission granted for URI: $uri")
                } catch (e: SecurityException) {
                    android.util.Log.w("PdfiumReader", "⚠️ PDF DIAGNOSTIC: Could not take persistable permission: ${e.message}")
                    // Continue anyway, might work with temporary permission
                }
            }
            
            // Инициализируем PdfiumCore
            pdfiumCore = PdfiumCore(context)
            
            // Открываем файловый дескриптор
            parcelFileDescriptor = try {
                context.contentResolver.openFileDescriptor(uri, "r")
            } catch (e: SecurityException) {
                android.util.Log.e("PdfiumReader", "❌ PDF DIAGNOSTIC: SecurityException when opening URI: $uri", e)
                return@withContext Result.failure(IOException("Permission Denial: reading ${uri.authority} uri $uri requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"))
            }
            
            if (parcelFileDescriptor == null) {
                return@withContext Result.failure(IOException("Cannot open file descriptor for URI"))
            }
            
            // Создаем PDF документ
            pdfDocument = pdfiumCore?.newDocument(parcelFileDescriptor)
                ?: return@withContext Result.failure(IOException("Cannot create PDF document"))
            
            // Получаем количество страниц
            pageCount = pdfiumCore?.getPageCount(pdfDocument) ?: 0
            if (pageCount <= 0) {
                return@withContext Result.failure(IOException("PDF file contains no pages"))
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
            val core = pdfiumCore ?: return@withContext Result.failure(IOException("PdfiumCore not initialized"))
            val document = pdfDocument ?: return@withContext Result.failure(IOException("PDF document not opened"))
            
            if (pageIndex < 0 || pageIndex >= pageCount) {
                return@withContext Result.failure(IllegalArgumentException("Invalid page index: $pageIndex"))
            }
            
            // Получаем размеры страницы (можно делать без Mutex)
            val width = core.getPageWidthPoint(document, pageIndex)
            val height = core.getPageHeightPoint(document, pageIndex)
            
            // Вычисляем масштаб для ограничения размера
            val scale = calculateScale(width, height, maxWidth, maxHeight)
            val scaledWidth = (width * scale).toInt()
            val scaledHeight = (height * scale).toInt()
            
            // Создаем bitmap (не требует Mutex)
            val bitmap = Bitmap.createBitmap(scaledWidth, scaledHeight, Bitmap.Config.ARGB_8888)
            
            // КРИТИЧНО: Используем Mutex для синхронизации доступа к Pdfium
            pdfiumMutex.lock()
            try {
                // Открываем страницу и рендерим (требует Mutex)
                core.openPage(document, pageIndex)
                core.renderPageBitmap(document, bitmap, pageIndex, 0, 0, scaledWidth, scaledHeight)
            } finally {
                pdfiumMutex.unlock()
            }
            
            Result.success(bitmap)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    override fun close() {
        try {
            pdfiumCore?.closeDocument(pdfDocument)
            parcelFileDescriptor?.close()
            android.util.Log.d("PdfiumReader", "PDF resources closed")
        } catch (e: Exception) {
            android.util.Log.w("PdfiumReader", "Error closing PDF resources", e)
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
