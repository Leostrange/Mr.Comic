package com.example.core.reader.parser

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import com.example.core.model.ComicFormat
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.InputStream

/**
 * Базовый класс для парсеров файлов комиксов
 * Содержит общую логику для всех парсеров
 */
abstract class BaseFileParser(
    protected val context: Context
) : FileParser {
    
    companion object {
        /**
         * Поддерживаемые расширения изображений
         */
        val SUPPORTED_IMAGE_EXTENSIONS = setOf(
            "jpg", "jpeg", "png", "gif", "bmp", "webp"
        )
        
        /**
         * Magic bytes для определения формата файла
         */
        private val MAGIC_BYTES = mapOf(
            ComicFormat.ZIP to byteArrayOf(0x50, 0x4B, 0x03, 0x04), // PK..
            ComicFormat.CBZ to byteArrayOf(0x50, 0x4B, 0x03, 0x04), // PK..
            ComicFormat.RAR to byteArrayOf(0x52, 0x61, 0x72, 0x21), // Rar!
            ComicFormat.CBR to byteArrayOf(0x52, 0x61, 0x72, 0x21), // Rar!
            ComicFormat.PDF to byteArrayOf(0x25, 0x50, 0x44, 0x46), // %PDF
            ComicFormat.SEVENZ to byteArrayOf(0x37, 0x7A, 0xBC.toByte(), 0xAF.toByte(), 0x27, 0x1C) // 7z..
        )
    }
    
    /**
     * Определить формат файла по расширению
     */
    protected fun getFormatByExtension(file: File): ComicFormat {
        return when (file.extension.lowercase()) {
            "cbz" -> ComicFormat.CBZ
            "cbr" -> ComicFormat.CBR
            "zip" -> ComicFormat.ZIP
            "rar" -> ComicFormat.RAR
            "pdf" -> ComicFormat.PDF
            "7z" -> ComicFormat.SEVENZ
            "tar" -> ComicFormat.TAR
            "epub" -> ComicFormat.EPUB
            else -> ComicFormat.UNKNOWN
        }
    }
    
    /**
     * Определить формат файла по magic bytes
     */
    protected suspend fun getFormatByMagicBytes(file: File): ComicFormat = withContext(Dispatchers.IO) {
        try {
            file.inputStream().use { input ->
                val buffer = ByteArray(8)
                val bytesRead = input.read(buffer)
                
                if (bytesRead < 4) return@withContext ComicFormat.UNKNOWN
                
                for ((format, magic) in MAGIC_BYTES) {
                    if (buffer.startsWith(magic)) {
                        return@withContext format
                    }
                }
                
                ComicFormat.UNKNOWN
            }
        } catch (e: Exception) {
            ComicFormat.UNKNOWN
        }
    }
    
    /**
     * Проверить, является ли файл изображением
     */
    protected fun isImageFile(fileName: String): Boolean {
        val extension = fileName.substringAfterLast('.', "").lowercase()
        return extension in SUPPORTED_IMAGE_EXTENSIONS
    }
    
    /**
     * Декодировать изображение из InputStream
     */
    protected suspend fun decodeImage(
        input: InputStream,
        maxWidth: Int = 2048,
        maxHeight: Int = 2048
    ): Bitmap? = withContext(Dispatchers.IO) {
        try {
            // Сначала получаем размеры изображения
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
                inPreferredConfig = Bitmap.Config.RGB_565
            }
            
            val bytes = input.readBytes()
            BitmapFactory.decodeByteArray(bytes, 0, bytes.size, options)
            
            // Вычисляем inSampleSize
            options.inSampleSize = calculateInSampleSize(options, maxWidth, maxHeight)
            options.inJustDecodeBounds = false
            
            // Декодируем изображение
            BitmapFactory.decodeByteArray(bytes, 0, bytes.size, options)
        } catch (e: Exception) {
            android.util.Log.e("BaseFileParser", "Failed to decode image", e)
            null
        }
    }
    
    /**
     * Вычислить inSampleSize для оптимизации памяти
     */
    protected fun calculateInSampleSize(
        options: BitmapFactory.Options,
        reqWidth: Int,
        reqHeight: Int
    ): Int {
        val height = options.outHeight
        val width = options.outWidth
        var inSampleSize = 1
        
        if (height > reqHeight || width > reqWidth) {
            val halfHeight = height / 2
            val halfWidth = width / 2
            
            while ((halfHeight / inSampleSize) >= reqHeight &&
                (halfWidth / inSampleSize) >= reqWidth
            ) {
                inSampleSize *= 2
            }
        }
        
        return inSampleSize
    }
    
    /**
     * Сортировка файлов в естественном порядке
     */
    protected fun sortFilesNaturally(files: List<String>): List<String> {
        return files.sortedWith(naturalOrderComparator())
    }
    
    /**
     * Компаратор для естественной сортировки
     */
    private fun naturalOrderComparator(): Comparator<String> {
        return Comparator { name1, name2 ->
            val parts1 = name1.split("(?<=\\D)(?=\\d)|(?<=\\d)(?=\\D)".toRegex())
            val parts2 = name2.split("(?<=\\D)(?=\\d)|(?<=\\d)(?=\\D)".toRegex())
            
            val minSize = minOf(parts1.size, parts2.size)
            
            for (i in 0 until minSize) {
                val part1 = parts1[i]
                val part2 = parts2[i]
                
                val num1 = part1.toIntOrNull()
                val num2 = part2.toIntOrNull()
                
                val result = when {
                    num1 != null && num2 != null -> num1.compareTo(num2)
                    else -> part1.compareTo(part2, ignoreCase = true)
                }
                
                if (result != 0) return@Comparator result
            }
            
            parts1.size.compareTo(parts2.size)
        }
    }
    
    /**
     * Проверка, начинается ли массив байтов с заданной последовательности
     */
    private fun ByteArray.startsWith(prefix: ByteArray): Boolean {
        if (prefix.size > this.size) return false
        for (i in prefix.indices) {
            if (this[i] != prefix[i]) return false
        }
        return true
    }
}
