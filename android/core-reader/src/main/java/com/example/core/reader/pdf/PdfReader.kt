package com.example.core.reader.pdf

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri

/**
 * Интерфейс для PDF ридера с поддержкой fallback механизмов
 */
interface PdfReader {
    /**
     * Открывает PDF документ
     * @param context Контекст приложения
     * @param uri URI PDF файла
     * @return Результат операции
     */
    suspend fun openDocument(context: Context, uri: Uri): Result<Unit>
    
    /**
     * Получает количество страниц в документе
     * @return Количество страниц или null если документ не открыт
     */
    fun getPageCount(): Int?
    
    /**
     * Рендерит страницу в изображение
     * @param pageIndex Индекс страницы (начиная с 0)
     * @param maxWidth Максимальная ширина изображения
     * @param maxHeight Максимальная высота изображения
     * @return Результат с изображением страницы
     */
    suspend fun renderPage(pageIndex: Int, maxWidth: Int = 2048, maxHeight: Int = 2048): Result<Bitmap>
    
    /**
     * Закрывает документ и освобождает ресурсы
     */
    fun close()
    
    /**
     * Проверяет, поддерживается ли данный URI
     * @param uri URI для проверки
     * @return true если URI поддерживается
     */
    fun supportsUri(uri: Uri): Boolean
}

/**
 * Результат операции с PDF
 */
sealed class PdfResult<out T> {
    data class Success<T>(val data: T) : PdfResult<T>()
    data class Error(val message: String, val exception: Throwable? = null) : PdfResult<Nothing>()
}

/**
 * Фабрика для создания PDF ридеров с fallback механизмами
 */
class PdfReaderFactory {
    
    private val readers = mutableListOf<PdfReader>()
    
    init {
        // Добавляем ридеры в порядке приоритета
        addReader(PdfiumReader())
        addReader(PdfBoxReader())
        // Можно добавить другие ридеры в будущем
    }
    
    private fun addReader(reader: PdfReader) {
        readers.add(reader)
    }
    
    /**
     * Создает PDF ридер для указанного URI
     * @param uri URI PDF файла
     * @return Подходящий ридер или null если ни один не поддерживает
     */
    fun createReader(uri: Uri): PdfReader? {
        return readers.firstOrNull { it.supportsUri(uri) }
    }
    
    /**
     * Пытается открыть PDF с использованием всех доступных ридеров
     * @param context Контекст приложения
     * @param uri URI PDF файла
     * @return Результат операции
     */
    suspend fun openPdfWithFallback(context: Context, uri: Uri): Result<PdfReader> {
        val errors = mutableListOf<String>()
        
        for (reader in readers) {
            if (!reader.supportsUri(uri)) continue
            
            try {
                val result = reader.openDocument(context, uri)
                if (result.isSuccess) {
                    return Result.success(reader)
                } else {
                    errors.add("${reader.javaClass.simpleName}: ${result.exceptionOrNull()?.message ?: "Unknown error"}")
                }
            } catch (e: Exception) {
                errors.add("${reader.javaClass.simpleName}: ${e.message}")
            }
        }
        
        return Result.failure(Exception("Failed to open PDF with all readers: ${errors.joinToString(", ")}"))
    }
}