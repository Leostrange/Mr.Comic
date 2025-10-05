package com.example.core.reader.parser

import com.example.core.model.ComicFormat
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.InputStream
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Детектор формата файлов комиксов
 * Определяет формат по расширению и magic bytes
 */
@Singleton
class FormatDetector @Inject constructor() {
    
    companion object {
        /**
         * Magic bytes для различных форматов
         */
        private val MAGIC_BYTES = mapOf(
            ComicFormat.ZIP to byteArrayOf(0x50, 0x4B, 0x03, 0x04), // PK..
            ComicFormat.CBZ to byteArrayOf(0x50, 0x4B, 0x03, 0x04), // PK..
            ComicFormat.RAR to byteArrayOf(0x52, 0x61, 0x72, 0x21), // Rar!
            ComicFormat.CBR to byteArrayOf(0x52, 0x61, 0x72, 0x21), // Rar!
            ComicFormat.PDF to byteArrayOf(0x25, 0x50, 0x44, 0x46), // %PDF
            ComicFormat.SEVENZ to byteArrayOf(0x37, 0x7A, 0xBC.toByte(), 0xAF.toByte(), 0x27, 0x1C), // 7z..
            ComicFormat.TAR to byteArrayOf(0x75, 0x73, 0x74, 0x61, 0x72) // ustar (at offset 257)
        )
        
        /**
         * Соответствие расширений форматам
         */
        private val EXTENSION_TO_FORMAT = mapOf(
            "cbz" to ComicFormat.CBZ,
            "cbr" to ComicFormat.CBR,
            "zip" to ComicFormat.ZIP,
            "rar" to ComicFormat.RAR,
            "pdf" to ComicFormat.PDF,
            "7z" to ComicFormat.SEVENZ,
            "tar" to ComicFormat.TAR,
            "epub" to ComicFormat.EPUB
        )
    }
    
    /**
     * Определить формат файла по расширению
     */
    fun detectByExtension(file: File): ComicFormat {
        val extension = file.extension.lowercase()
        return EXTENSION_TO_FORMAT[extension] ?: ComicFormat.UNKNOWN
    }
    
    /**
     * Определить формат файла по расширению (из строки)
     */
    fun detectByExtension(path: String): ComicFormat {
        val extension = path.substringAfterLast('.', "").lowercase()
        return EXTENSION_TO_FORMAT[extension] ?: ComicFormat.UNKNOWN
    }
    
    /**
     * Определить формат файла по magic bytes
     */
    suspend fun detectByMagicBytes(file: File): ComicFormat = withContext(Dispatchers.IO) {
        try {
            file.inputStream().use { input ->
                detectByMagicBytes(input)
            }
        } catch (e: Exception) {
            android.util.Log.e("FormatDetector", "Failed to detect format by magic bytes", e)
            ComicFormat.UNKNOWN
        }
    }
    
    /**
     * Определить формат по magic bytes из InputStream
     */
    suspend fun detectByMagicBytes(input: InputStream): ComicFormat = withContext(Dispatchers.IO) {
        try {
            val buffer = ByteArray(512) // Читаем больше для TAR (offset 257)
            val bytesRead = input.read(buffer)
            
            if (bytesRead < 4) return@withContext ComicFormat.UNKNOWN
            
            // Проверяем magic bytes
            for ((format, magic) in MAGIC_BYTES) {
                if (format == ComicFormat.TAR) {
                    // TAR имеет magic bytes на offset 257
                    if (bytesRead >= 262 && buffer.checkMagicAt(257, magic)) {
                        return@withContext format
                    }
                } else {
                    if (buffer.startsWith(magic)) {
                        return@withContext format
                    }
                }
            }
            
            ComicFormat.UNKNOWN
        } catch (e: Exception) {
            android.util.Log.e("FormatDetector", "Failed to detect format by magic bytes", e)
            ComicFormat.UNKNOWN
        }
    }
    
    /**
     * Определить формат файла (комбинированный метод)
     * Сначала проверяет расширение, затем magic bytes
     */
    suspend fun detectFormat(file: File): ComicFormat {
        // Сначала пробуем по расширению
        val formatByExtension = detectByExtension(file)
        if (formatByExtension != ComicFormat.UNKNOWN) {
            return formatByExtension
        }
        
        // Если не удалось определить по расширению, пробуем по magic bytes
        return detectByMagicBytes(file)
    }
    
    /**
     * Проверить, поддерживается ли формат
     */
    fun isSupported(format: ComicFormat): Boolean {
        return format in listOf(
            ComicFormat.CBZ,
            ComicFormat.CBR,
            ComicFormat.ZIP,
            ComicFormat.RAR,
            ComicFormat.PDF,
            ComicFormat.FOLDER
        )
    }
    
    /**
     * Проверить, поддерживается ли файл
     */
    suspend fun isSupported(file: File): Boolean {
        if (file.isDirectory) {
            // Проверяем, содержит ли папка изображения
            return file.listFiles { f ->
                f.isFile && isImageFile(f.name)
            }?.isNotEmpty() == true
        }
        
        val format = detectFormat(file)
        return isSupported(format)
    }
    
    /**
     * Проверить, является ли файл изображением
     */
    private fun isImageFile(fileName: String): Boolean {
        val extension = fileName.substringAfterLast('.', "").lowercase()
        return extension in setOf("jpg", "jpeg", "png", "gif", "bmp", "webp")
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
    
    /**
     * Проверка magic bytes на определенном offset
     */
    private fun ByteArray.checkMagicAt(offset: Int, magic: ByteArray): Boolean {
        if (offset + magic.size > this.size) return false
        for (i in magic.indices) {
            if (this[offset + i] != magic[i]) return false
        }
        return true
    }
}
