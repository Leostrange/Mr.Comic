package com.example.core.reader.domain

import android.graphics.Bitmap
import android.net.Uri
import android.content.Context

/**
 * Единый интерфейс для чтения различных медиа-форматов
 * Поддерживает CBR, CBZ, PDF, EPUB, IMAGE_SEQ, ZIP
 */
interface MediaReader {
    
    /**
     * Открыть медиа-файл по URI
     * @param context Android контекст
     * @param uri URI файла для открытия
     * @return Result с успехом или ошибкой
     */
    suspend fun open(context: Context, uri: Uri): Result<MediaMetadata>
    
    /**
     * Получить количество страниц
     * @return количество страниц или null если не определено
     */
    fun getPageCount(): Int?
    
    /**
     * Отрендерить страницу
     * @param pageIndex индекс страницы (0-based)
     * @param maxWidth максимальная ширина в пикселях
     * @param maxHeight максимальная высота в пикселях
     * @param scale масштаб рендеринга (1.0 = оригинальный размер)
     * @return Result с Bitmap или ошибкой
     */
    suspend fun renderPage(
        pageIndex: Int, 
        maxWidth: Int = 1920, 
        maxHeight: Int = 1080,
        scale: Float = 1.0f
    ): Result<Bitmap>
    
    /**
     * Получить метаданные медиа-файла
     * @return метаданные или null
     */
    fun getMetadata(): MediaMetadata?
    
    /**
     * Закрыть ридер и освободить ресурсы
     */
    suspend fun close()
    
    /**
     * Проверить, открыт ли ридер
     */
    fun isOpen(): Boolean
}

/**
 * Метаданные медиа-файла
 */
data class MediaMetadata(
    val title: String? = null,
    val author: String? = null,
    val pageCount: Int = 0,
    val type: MediaType,
    val fileSize: Long = 0,
    val lastModified: Long = 0,
    val hasTableOfContents: Boolean = false,
    val language: String? = null,
    val publisher: String? = null,
    val description: String? = null
)

/**
 * Типы поддерживаемых медиа-форматов
 */
enum class MediaType(val extension: String, val mimeType: String) {
    CBR("cbr", "application/x-cbr"),
    CBZ("cbz", "application/x-cbz"), 
    PDF("pdf", "application/pdf"),
    EPUB("epub", "application/epub+zip"),
    IMAGE_SEQ("", "image/*"),
    ZIP("zip", "application/zip");
    
    companion object {
        /**
         * Определить тип по расширению файла
         */
        fun fromExtension(extension: String): MediaType? {
            return values().find { 
                it.extension.equals(extension, ignoreCase = true) 
            }
        }
        
        /**
         * Определить тип по MIME типу
         */
        fun fromMimeType(mimeType: String): MediaType? {
            return values().find { 
                it.mimeType.equals(mimeType, ignoreCase = true) 
            }
        }
    }
}