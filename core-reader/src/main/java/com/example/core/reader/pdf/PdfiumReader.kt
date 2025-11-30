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
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.io.InputStream

/**
 * Реализация PDF ридера с использованием Pdfium
 */
class PdfiumReader : PdfReader {
    
    private var pdfiumCore: PdfiumCore? = null
    private var pdfDocument: PdfDocument? = null
    private var parcelFileDescriptor: ParcelFileDescriptor? = null
    private var tempFile: File? = null // Временный файл для content:// URI, которые не поддерживают openFileDescriptor
    private var pageCount: Int = 0
    
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
            
            // Пытаемся открыть файловый дескриптор
            parcelFileDescriptor = try {
                context.contentResolver.openFileDescriptor(uri, "r")
            } catch (e: SecurityException) {
                android.util.Log.w("PdfiumReader", "⚠️ PDF DIAGNOSTIC: SecurityException when opening FileDescriptor, trying InputStream fallback: $uri", e)
                null
            } catch (e: Exception) {
                android.util.Log.w("PdfiumReader", "⚠️ PDF DIAGNOSTIC: Exception when opening FileDescriptor, trying InputStream fallback: $uri", e)
                null
            }
            
            // Если не удалось открыть через FileDescriptor, пробуем через InputStream (для некоторых content:// URI)
            if (parcelFileDescriptor == null && uri.scheme == "content") {
                android.util.Log.d("PdfiumReader", "📥 PDF DIAGNOSTIC: Using InputStream fallback for content URI: $uri")
                try {
                    val inputStream: InputStream? = context.contentResolver.openInputStream(uri)
                    if (inputStream != null) {
                        // Создаем временный файл
                        tempFile = File.createTempFile("pdf_", ".pdf", context.cacheDir)
                        tempFile?.let { file ->
                            FileOutputStream(file).use { output ->
                                inputStream.copyTo(output)
                            }
                            android.util.Log.d("PdfiumReader", "✅ PDF DIAGNOSTIC: Copied PDF to temp file: ${file.absolutePath}")
                            // Открываем временный файл через FileDescriptor
                            parcelFileDescriptor = ParcelFileDescriptor.open(file, ParcelFileDescriptor.MODE_READ_ONLY)
                        }
                    } else {
                        return@withContext Result.failure(IOException("Cannot open input stream for URI: $uri"))
                    }
                } catch (e: Exception) {
                    android.util.Log.e("PdfiumReader", "❌ PDF DIAGNOSTIC: Failed to use InputStream fallback", e)
                    return@withContext Result.failure(IOException("Failed to open PDF: ${e.message}", e))
                }
            }
            
            if (parcelFileDescriptor == null) {
                return@withContext Result.failure(IOException("Cannot open file descriptor for URI: $uri"))
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
            
            // Рендерим страницу (сигнатуры библиотек различаются порядком аргументов)
            // Попробуем порядок: document, bitmap, index, left, top, width, height
            core.renderPageBitmap(document, bitmap, pageIndex, 0, 0, scaledWidth, scaledHeight)
            
            Result.success(bitmap)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    override fun close() {
        try {
            pdfiumCore?.closeDocument(pdfDocument)
            parcelFileDescriptor?.close()
            // Удаляем временный файл, если он был создан
            tempFile?.delete()
        } catch (e: Exception) {
            // Игнорируем ошибки при закрытии
        } finally {
            pdfiumCore = null
            pdfDocument = null
            parcelFileDescriptor = null
            tempFile = null
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
