package com.example.core.reader.pdf

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Color
import android.net.Uri
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.apache.pdfbox.pdmodel.PDDocument
import org.apache.pdfbox.rendering.PDFRenderer
import java.io.IOException
import java.io.InputStream

/**
 * Fallback реализация PDF ридера с использованием PDFBox
 * Используется когда Pdfium недоступен или не работает
 */
class PdfBoxReader : PdfReader {
    
    private var pdfDocument: PDDocument? = null
    private var pdfRenderer: PDFRenderer? = null
    private var pageCount: Int = 0
    
    override suspend fun openDocument(context: Context, uri: Uri): Result<Unit> = withContext(Dispatchers.IO) {
        try {
            // Открываем поток для чтения PDF
            val inputStream: InputStream = context.contentResolver.openInputStream(uri)
                ?: return Result.failure(IOException("Cannot open input stream for URI"))
            
            // Загружаем PDF документ
            pdfDocument = PDDocument.load(inputStream)
            
            // Создаем рендерер
            pdfRenderer = PDFRenderer(pdfDocument)
            
            // Получаем количество страниц
            pageCount = pdfDocument?.numberOfPages ?: 0
            if (pageCount <= 0) {
                return Result.failure(IOException("PDF file contains no pages"))
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
            val renderer = pdfRenderer ?: return Result.failure(IOException("PDF renderer not initialized"))
            
            if (pageIndex < 0 || pageIndex >= pageCount) {
                return Result.failure(IllegalArgumentException("Invalid page index: $pageIndex"))
            }
            
            // Рендерим страницу
            val awtImage = renderer.renderImageWithDPI(pageIndex, 150f) // 150 DPI для хорошего качества
            
            // Конвертируем AWT изображение в Android Bitmap
            val bitmap = convertAwtImageToBitmap(awtImage)
            
            // Масштабируем если нужно
            val scaledBitmap = scaleBitmapIfNeeded(bitmap, maxWidth, maxHeight)
            
            Result.success(scaledBitmap)
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
        // PDFBox поддерживает все URI, которые можно открыть через ContentResolver
        return uri.scheme?.let { it == "content" || it == "file" } ?: false
    }
    
    private fun convertAwtImageToBitmap(awtImage: java.awt.image.BufferedImage): Bitmap {
        val width = awtImage.width
        val height = awtImage.height
        
        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        
        // Конвертируем пиксели из AWT в Android Bitmap
        for (y in 0 until height) {
            for (x in 0 until width) {
                val rgb = awtImage.getRGB(x, y)
                val alpha = (rgb shr 24) and 0xFF
                val red = (rgb shr 16) and 0xFF
                val green = (rgb shr 8) and 0xFF
                val blue = rgb and 0xFF
                
                val color = Color.argb(alpha, red, green, blue)
                bitmap.setPixel(x, y, color)
            }
        }
        
        return bitmap
    }
    
    private fun scaleBitmapIfNeeded(bitmap: Bitmap, maxWidth: Int, maxHeight: Int): Bitmap {
        val width = bitmap.width
        val height = bitmap.height
        
        if (width <= maxWidth && height <= maxHeight) {
            return bitmap
        }
        
        val scaleX = maxWidth.toFloat() / width
        val scaleY = maxHeight.toFloat() / height
        val scale = minOf(scaleX, scaleY)
        
        val newWidth = (width * scale).toInt()
        val newHeight = (height * scale).toInt()
        
        return Bitmap.createScaledBitmap(bitmap, newWidth, newHeight, true)
    }
}