package com.example.feature.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.example.feature.reader.domain.BookReader
import com.example.core.reader.pdf.PdfReaderFactory
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

/**
 * A [BookReader] implementation for reading PDF files with fallback support.
 *
 * @param context The Android context, required for initializing PDF readers.
 */
class PdfReader(
    private val context: Context
) : BookReader {

    private val pdfReaderFactory = PdfReaderFactory()
    private var currentReader: com.example.core.reader.pdf.PdfReader? = null
    private var pageCount: Int = 0

    override suspend fun open(uri: Uri): Int {
        return withContext(Dispatchers.IO) {
            try {
                // Clean up any existing resources
                close()
                
                // Пытаемся открыть PDF с использованием всех доступных ридеров
                val result = pdfReaderFactory.openPdfWithFallback(context, uri)
                if (result.isFailure) {
                    throw IllegalStateException("Failed to open PDF: ${result.exceptionOrNull()?.message}")
                }
                
                currentReader = result.getOrThrow()
                pageCount = currentReader?.getPageCount() ?: 0
                
                if (pageCount <= 0) {
                    throw IllegalStateException("PDF файл не содержит страниц")
                }
                
                android.util.Log.d("PdfReader", "Successfully opened PDF with $pageCount pages using ${currentReader?.javaClass?.simpleName}")
                pageCount
            } catch (e: Exception) {
                // Clean up on error
                close()
                throw when (e) {
                    is IllegalStateException -> e
                    else -> IllegalStateException("Ошибка при открытии PDF файла: ${e.message}", e)
                }
            }
        }
    }

    override fun getPageCount(): Int = pageCount

    override fun renderPage(pageIndex: Int): Bitmap? {
        val reader = currentReader ?: return null

        if (pageIndex < 0 || pageIndex >= pageCount) {
            android.util.Log.w("PdfReader", "Invalid page index: $pageIndex (total pages: $pageCount)")
            return null
        }

        return runCatching {
            // Используем suspend функцию в runBlocking для совместимости с существующим API
            kotlinx.coroutines.runBlocking {
                val result = reader.renderPage(pageIndex)
                if (result.isSuccess) {
                    result.getOrThrow()
                } else {
                    throw result.exceptionOrNull() ?: Exception("Failed to render page")
                }
            }
        }.getOrElse { e ->
            android.util.Log.e("PdfReader", "Failed to render page $pageIndex: ${e.message}", e)
            null
        }
    }

    override fun close() {
        try {
            currentReader?.close()
        } catch (e: Exception) {
            android.util.Log.w("PdfReader", "Error closing PDF reader: ${e.message}")
        }
        
        currentReader = null
        pageCount = 0
    }
}