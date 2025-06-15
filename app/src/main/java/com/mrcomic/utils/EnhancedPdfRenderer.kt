package com.example.mrcomic.utils

import android.content.Context
import android.graphics.Bitmap
import android.graphics.pdf.PdfRenderer
import android.os.Build
import android.os.ParcelFileDescriptor
import android.util.Log
import androidx.annotation.RequiresApi
import java.io.File
import java.io.IOException
import java.security.SecurityException

/**
 * Расширенный PdfRenderer с поддержкой паролей и улучшенной обработкой ошибок
 * Интегрирует PasswordProtectedPdfReader для работы с защищёнными PDF
 */
class EnhancedPdfRenderer(private val context: Context) {

    companion object {
        private const val TAG = "EnhancedPdfRenderer"
    }

    private var currentRenderer: PdfRenderer? = null
    private var currentFileDescriptor: ParcelFileDescriptor? = null
    private val passwordReader = PasswordProtectedPdfReader(context)

    /**
     * Открытие PDF файла с автоматической обработкой паролей
     */
    fun openPdf(file: File, password: String? = null): Boolean {
        closeCurrent()
        
        return try {
            // Сначала проверяем, защищён ли файл
            if (passwordReader.isPdfPasswordProtected(file)) {
                Log.i(TAG, "PDF is password protected, attempting to open with password")
                currentRenderer = passwordReader.openPdfWithPassword(file, password)
            } else {
                // Обычное открытие для незащищённых файлов
                currentFileDescriptor = ParcelFileDescriptor.open(
                    file, 
                    ParcelFileDescriptor.MODE_READ_ONLY
                )
                currentRenderer = PdfRenderer(currentFileDescriptor!!)
            }
            
            val success = currentRenderer != null
            if (success) {
                Log.i(TAG, "Successfully opened PDF: ${file.name}, pages: ${currentRenderer?.pageCount}")
            } else {
                Log.e(TAG, "Failed to open PDF: ${file.name}")
            }
            
            success
            
        } catch (e: Exception) {
            Log.e(TAG, "Error opening PDF: ${file.name}", e)
            closeCurrent()
            false
        }
    }

    /**
     * Получение количества страниц
     */
    fun getPageCount(): Int {
        return currentRenderer?.pageCount ?: 0
    }

    /**
     * Рендеринг страницы в Bitmap
     */
    fun renderPage(pageIndex: Int, width: Int, height: Int): Bitmap? {
        val renderer = currentRenderer ?: return null
        
        if (pageIndex < 0 || pageIndex >= renderer.pageCount) {
            Log.w(TAG, "Invalid page index: $pageIndex, total pages: ${renderer.pageCount}")
            return null
        }
        
        return try {
            val page = renderer.openPage(pageIndex)
            val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            
            // Рендеринг с белым фоном
            bitmap.eraseColor(android.graphics.Color.WHITE)
            page.render(bitmap, null, null, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
            
            page.close()
            bitmap
            
        } catch (e: Exception) {
            Log.e(TAG, "Error rendering page $pageIndex", e)
            null
        }
    }

    /**
     * Рендеринг страницы с автоматическим масштабированием
     */
    fun renderPageAutoScale(pageIndex: Int, maxWidth: Int, maxHeight: Int): Bitmap? {
        val renderer = currentRenderer ?: return null
        
        if (pageIndex < 0 || pageIndex >= renderer.pageCount) {
            return null
        }
        
        return try {
            val page = renderer.openPage(pageIndex)
            val pageWidth = page.width
            val pageHeight = page.height
            
            // Вычисляем масштаб для сохранения пропорций
            val scaleX = maxWidth.toFloat() / pageWidth
            val scaleY = maxHeight.toFloat() / pageHeight
            val scale = minOf(scaleX, scaleY)
            
            val scaledWidth = (pageWidth * scale).toInt()
            val scaledHeight = (pageHeight * scale).toInt()
            
            val bitmap = Bitmap.createBitmap(scaledWidth, scaledHeight, Bitmap.Config.ARGB_8888)
            bitmap.eraseColor(android.graphics.Color.WHITE)
            
            page.render(bitmap, null, null, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
            page.close()
            
            Log.d(TAG, "Rendered page $pageIndex: ${scaledWidth}x${scaledHeight} (scale: $scale)")
            bitmap
            
        } catch (e: Exception) {
            Log.e(TAG, "Error rendering page $pageIndex with auto-scale", e)
            null
        }
    }

    /**
     * Получение информации о странице
     */
    fun getPageInfo(pageIndex: Int): PageInfo? {
        val renderer = currentRenderer ?: return null
        
        if (pageIndex < 0 || pageIndex >= renderer.pageCount) {
            return null
        }
        
        return try {
            val page = renderer.openPage(pageIndex)
            val info = PageInfo(
                index = pageIndex,
                width = page.width,
                height = page.height
            )
            page.close()
            info
        } catch (e: Exception) {
            Log.e(TAG, "Error getting page info for page $pageIndex", e)
            null
        }
    }

    /**
     * Проверка, открыт ли PDF
     */
    fun isOpen(): Boolean {
        return currentRenderer != null
    }

    /**
     * Закрытие текущего PDF
     */
    fun closeCurrent() {
        try {
            currentRenderer?.close()
            currentFileDescriptor?.close()
        } catch (e: Exception) {
            Log.w(TAG, "Error closing PDF resources", e)
        } finally {
            currentRenderer = null
            currentFileDescriptor = null
        }
    }

    /**
     * Освобождение ресурсов
     */
    fun release() {
        closeCurrent()
    }

    /**
     * Информация о странице PDF
     */
    data class PageInfo(
        val index: Int,
        val width: Int,
        val height: Int
    ) {
        val aspectRatio: Float get() = width.toFloat() / height.toFloat()
    }
}

