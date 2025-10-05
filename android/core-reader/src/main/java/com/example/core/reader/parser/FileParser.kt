package com.example.core.reader.parser

import android.graphics.Bitmap
import com.example.core.model.ComicFormat
import java.io.File

/**
 * Интерфейс для парсинга файлов комиксов
 * Предоставляет единый API для работы с различными форматами
 */
interface FileParser {
    
    /**
     * Парсинг файла комикса
     * @param file файл для парсинга
     * @return результат парсинга с метаданными
     */
    suspend fun parse(file: File): ComicFile
    
    /**
     * Получить список поддерживаемых форматов
     * @return список расширений файлов (например, ["cbz", "zip"])
     */
    fun getSupportedFormats(): List<String>
    
    /**
     * Проверить, поддерживается ли формат файла
     * @param file файл для проверки
     * @return true если формат поддерживается
     */
    fun isSupported(file: File): Boolean {
        val extension = file.extension.lowercase()
        return extension in getSupportedFormats()
    }
}

/**
 * Результат парсинга файла комикса
 */
data class ComicFile(
    val file: File,
    val format: ComicFormat,
    val pageCount: Int,
    val title: String,
    val fileSize: Long,
    val pages: List<PageInfo> = emptyList()
) {
    /**
     * Получить страницу по индексу
     */
    suspend fun getPage(index: Int): Bitmap? {
        if (index < 0 || index >= pageCount) return null
        return pages.getOrNull(index)?.bitmap
    }
}

/**
 * Информация о странице комикса
 */
data class PageInfo(
    val index: Int,
    val name: String,
    val size: Long = 0,
    val bitmap: Bitmap? = null
)

/**
 * Исключение при парсинге файла
 */
class ParsingException(message: String, cause: Throwable? = null) : Exception(message, cause)
