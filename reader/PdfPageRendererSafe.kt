package reader

import android.content.Context
import android.graphics.Bitmap
import android.graphics.pdf.PdfRenderer
import android.os.ParcelFileDescriptor
import java.io.File

class PdfPageRendererSafe(private val context: Context, private val file: File) {
    
    fun getAllPages(): List<Bitmap> {
        val result = mutableListOf<Bitmap>()
        var fileDescriptor: ParcelFileDescriptor? = null
        var renderer: PdfRenderer? = null
        
        try {
            if (!file.exists()) {
                throw IllegalArgumentException("PDF файл не найден: ${file.absolutePath}")
            }
            
            if (file.length() == 0L) {
                throw IllegalArgumentException("PDF файл пустой")
            }
            
            fileDescriptor = ParcelFileDescriptor.open(file, ParcelFileDescriptor.MODE_READ_ONLY)
            renderer = PdfRenderer(fileDescriptor)
            
            val pageCount = renderer.pageCount
            if (pageCount <= 0) {
                throw IllegalStateException("PDF файл не содержит страниц")
            }
            
            for (pageIndex in 0 until pageCount) {
                var page: PdfRenderer.Page? = null
                try {
                    page = renderer.openPage(pageIndex)
                    
                    // Определяем размеры страницы
                    val pageWidth = page.width
                    val pageHeight = page.height
                    
                    if (pageWidth <= 0 || pageHeight <= 0) {
                        println("Предупреждение: страница $pageIndex имеет некорректные размеры")
                        continue
                    }
                    
                    // Создаем bitmap с проверкой размеров
                    val maxDimension = 2048 // Ограничиваем максимальный размер для экономии памяти
                    val scale = if (pageWidth > maxDimension || pageHeight > maxDimension) {
                        minOf(maxDimension.toFloat() / pageWidth, maxDimension.toFloat() / pageHeight)
                    } else {
                        1f
                    }
                    
                    val scaledWidth = (pageWidth * scale).toInt()
                    val scaledHeight = (pageHeight * scale).toInt()
                    
                    val bitmap = Bitmap.createBitmap(scaledWidth, scaledHeight, Bitmap.Config.ARGB_8888)
                    
                    // Рендерим страницу
                    page.render(bitmap, null, null, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
                    result.add(bitmap)
                    
                } catch (e: Exception) {
                    println("Ошибка при рендеринге страницы $pageIndex: ${e.message}")
                    // Продолжаем обработку других страниц
                } finally {
                    try {
                        page?.close()
                    } catch (e: Exception) {
                        // Игнорируем ошибки при закрытии страницы
                    }
                }
            }
            
            if (result.isEmpty()) {
                throw IllegalStateException("Не удалось отрендерить ни одной страницы из PDF")
            }
            
        } catch (e: Exception) {
            result.forEach { it.recycle() } // Освобождаем память
            result.clear()
            when (e) {
                is IllegalArgumentException, is IllegalStateException -> throw e
                else -> throw IllegalStateException("Ошибка при чтении PDF файла: ${e.message}", e)
            }
        } finally {
            try {
                renderer?.close()
            } catch (e: Exception) {
                // Игнорируем ошибки при закрытии рендерера
            }
            
            try {
                fileDescriptor?.close()
            } catch (e: Exception) {
                // Игнорируем ошибки при закрытии дескриптора файла
            }
        }
        
        return result
    }
}


