package com.example.core.reader.parser

import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import android.graphics.Bitmap
import android.graphics.pdf.PdfRenderer
import android.os.ParcelFileDescriptor
import com.example.core.model.ComicFormat
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject

/**
 * Парсер для PDF файлов
 * Использует PdfRenderer (Android API) для работы с PDF
 */
class PdfParser @Inject constructor(
    context: Context
) : BaseFileParser(context) {
    
    override suspend fun parse(file: File): ComicFile = withContext(Dispatchers.IO) {
        if (!file.exists()) {
            throw ParsingException("File not found: ${file.absolutePath}")
        }
        
        if (!isSupported(file)) {
            throw ParsingException("Unsupported file format: ${file.extension}")
        }
        
        var pdfRenderer: PdfRenderer? = null
        var fileDescriptor: ParcelFileDescriptor? = null
        
        try {
            fileDescriptor = ParcelFileDescriptor.open(
                file,
                ParcelFileDescriptor.MODE_READ_ONLY
            )
            
            pdfRenderer = PdfRenderer(fileDescriptor)
            val pageCount = pdfRenderer.pageCount
            
            if (pageCount == 0) {
                throw ParsingException("PDF file has no pages: ${file.name}")
            }
            
            // Создаем информацию о страницах
            val pages = (0 until pageCount).map { index ->
                PageInfo(
                    index = index,
                    name = "Page ${index + 1}",
                    size = 0L // PDF не предоставляет размер отдельных страниц
                )
            }
            
            ComicFile(
                file = file,
                format = ComicFormat.PDF,
                pageCount = pageCount,
                title = file.nameWithoutExtension,
                fileSize = file.length(),
                pages = pages
            )
        } catch (e: ParsingException) {
            throw e
        } catch (e: Exception) {
            throw ParsingException("Failed to parse PDF file: ${file.name}", e)
        } finally {
            pdfRenderer?.close()
            fileDescriptor?.close()
        }
    }
    
    override fun getSupportedFormats(): List<String> {
        return listOf("pdf")
    }
    
    /**
     * Рендеринг страницы PDF в Bitmap
     * Этот метод можно использовать для получения изображения страницы
     */
    suspend fun renderPdfPage(
        file: File,
        pageIndex: Int,
        width: Int = 1024,
        height: Int = 1024
    ): Bitmap? = withContext(Dispatchers.IO) {
        var pdfRenderer: PdfRenderer? = null
        var fileDescriptor: ParcelFileDescriptor? = null
        var page: PdfRenderer.Page? = null
        
        try {
            fileDescriptor = ParcelFileDescriptor.open(
                file,
                ParcelFileDescriptor.MODE_READ_ONLY
            )
            
            pdfRenderer = PdfRenderer(fileDescriptor)
            
            if (pageIndex < 0 || pageIndex >= pdfRenderer.pageCount) {
                return@withContext null
            }
            
            page = pdfRenderer.openPage(pageIndex)
            
            // Создаем Bitmap для рендеринга
            val bitmap = Bitmap.createBitmap(
                width,
                height,
                Bitmap.Config.ARGB_8888
            )
            
            // Рендерим страницу
            page.render(
                bitmap,
                null,
                null,
                PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY
            )
            
            bitmap
        } catch (e: Exception) {
            android.util.Log.e("PdfParser", "Failed to render PDF page $pageIndex", e)
            null
        } finally {
            page?.close()
            pdfRenderer?.close()
            fileDescriptor?.close()
        }
    }
}
