package com.example.mrcomic.data

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.*
import java.util.zip.ZipInputStream
import java.util.zip.ZipEntry
import com.github.junrar.Archive
import com.github.junrar.rarfile.FileHeader
import org.apache.commons.compress.archivers.sevenz.SevenZArchiveEntry
import org.apache.commons.compress.archivers.sevenz.SevenZFile
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream
import org.apache.commons.compress.compressors.gzip.GzipCompressorInputStream
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorInputStream
import java.security.MessageDigest
import java.nio.charset.Charset

/**
 * Расширенный экстрактор архивов с поддержкой множества форматов
 * Поддерживает: ZIP, RAR, RAR5, 7Z, TAR.GZ, TAR.BZ2, TAR
 */
object ArchiveExtractor {
    
    data class ExtractionResult(
        val extractedFiles: List<File>,
        val totalSize: Long,
        val checksum: String,
        val errors: List<String> = emptyList()
    )
    
    data class ArchiveInfo(
        val format: ArchiveFormat,
        val totalEntries: Int,
        val totalSize: Long,
        val isPasswordProtected: Boolean,
        val compressionRatio: Float
    )
    
    enum class ArchiveFormat {
        ZIP, RAR, RAR5, SEVEN_Z, TAR_GZ, TAR_BZ2, TAR, UNKNOWN
    }
    
    private val supportedImageExtensions = setOf(
        "jpg", "jpeg", "png", "gif", "bmp", "webp", "avif", "heif", "heic"
    )
    
    /**
     * Определяет формат архива по содержимому файла
     */
    suspend fun detectArchiveFormat(file: File): ArchiveFormat = withContext(Dispatchers.IO) {
        try {
            val header = ByteArray(16)
            file.inputStream().use { it.read(header) }
            
            when {
                // ZIP signature
                header[0] == 0x50.toByte() && header[1] == 0x4B.toByte() -> ArchiveFormat.ZIP
                // RAR signature
                header[0] == 0x52.toByte() && header[1] == 0x61.toByte() && 
                header[2] == 0x72.toByte() && header[3] == 0x21.toByte() -> {
                    if (header[4] == 0x1A.toByte() && header[5] == 0x07.toByte() && 
                        header[6] == 0x01.toByte() && header[7] == 0x00.toByte()) {
                        ArchiveFormat.RAR5
                    } else {
                        ArchiveFormat.RAR
                    }
                }
                // 7Z signature
                header[0] == 0x37.toByte() && header[1] == 0x7A.toByte() -> ArchiveFormat.SEVEN_Z
                // TAR.GZ signature
                header[0] == 0x1F.toByte() && header[1] == 0x8B.toByte() -> ArchiveFormat.TAR_GZ
                // TAR.BZ2 signature
                header[0] == 0x42.toByte() && header[1] == 0x5A.toByte() -> ArchiveFormat.TAR_BZ2
                else -> {
                    // Проверяем TAR по расширению
                    if (file.extension.lowercase() == "tar") ArchiveFormat.TAR
                    else ArchiveFormat.UNKNOWN
                }
            }
        } catch (e: Exception) {
            ArchiveFormat.UNKNOWN
        }
    }
    
    /**
     * Получает информацию об архиве без извлечения
     */
    suspend fun getArchiveInfo(file: File): ArchiveInfo = withContext(Dispatchers.IO) {
        val format = detectArchiveFormat(file)
        
        when (format) {
            ArchiveFormat.ZIP -> getZipInfo(file)
            ArchiveFormat.RAR, ArchiveFormat.RAR5 -> getRarInfo(file)
            ArchiveFormat.SEVEN_Z -> get7ZInfo(file)
            ArchiveFormat.TAR_GZ -> getTarGzInfo(file)
            ArchiveFormat.TAR_BZ2 -> getTarBz2Info(file)
            ArchiveFormat.TAR -> getTarInfo(file)
            else -> ArchiveInfo(format, 0, 0, false, 0f)
        }
    }
    
    /**
     * Извлекает архив с поддержкой прогресса и восстановления
     */
    suspend fun extractArchive(
        file: File,
        outputDir: File,
        password: String? = null,
        onProgress: ((Float) -> Unit)? = null,
        validateImages: Boolean = true
    ): ExtractionResult = withContext(Dispatchers.IO) {
        
        val format = detectArchiveFormat(file)
        val errors = mutableListOf<String>()
        
        try {
            outputDir.mkdirs()
            
            val extractedFiles = when (format) {
                ArchiveFormat.ZIP -> extractZip(file, outputDir, password, onProgress, validateImages, errors)
                ArchiveFormat.RAR, ArchiveFormat.RAR5 -> extractRar(file, outputDir, password, onProgress, validateImages, errors)
                ArchiveFormat.SEVEN_Z -> extract7Z(file, outputDir, password, onProgress, validateImages, errors)
                ArchiveFormat.TAR_GZ -> extractTarGz(file, outputDir, onProgress, validateImages, errors)
                ArchiveFormat.TAR_BZ2 -> extractTarBz2(file, outputDir, onProgress, validateImages, errors)
                ArchiveFormat.TAR -> extractTar(file, outputDir, onProgress, validateImages, errors)
                else -> {
                    errors.add("Неподдерживаемый формат архива: ${file.extension}")
                    emptyList()
                }
            }
            
            val totalSize = extractedFiles.sumOf { it.length() }
            val checksum = calculateChecksum(extractedFiles)
            
            ExtractionResult(extractedFiles, totalSize, checksum, errors)
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения: ${e.message}")
            ExtractionResult(emptyList(), 0, "", errors)
        }
    }
    
    private fun extractZip(
        file: File,
        outputDir: File,
        password: String?,
        onProgress: ((Float) -> Unit)?,
        validateImages: Boolean,
        errors: MutableList<String>
    ): List<File> {
        val extractedFiles = mutableListOf<File>()
        var totalEntries = 0
        var processedEntries = 0
        
        // Первый проход - подсчет записей
        ZipInputStream(file.inputStream()).use { zis ->
            while (zis.nextEntry != null) {
                totalEntries++
                zis.closeEntry()
            }
        }
        
        // Второй проход - извлечение
        ZipInputStream(file.inputStream()).use { zis ->
            var entry: ZipEntry?
            while (zis.nextEntry.also { entry = it } != null) {
                entry?.let { zipEntry ->
                    try {
                        if (!zipEntry.isDirectory) {
                            val outputFile = File(outputDir, sanitizeFileName(zipEntry.name))
                            outputFile.parentFile?.mkdirs()
                            
                            outputFile.outputStream().use { output ->
                                zis.copyTo(output)
                            }
                            
                            if (validateImages && isImageFile(outputFile)) {
                                if (validateImageFile(outputFile)) {
                                    extractedFiles.add(outputFile)
                                } else {
                                    errors.add("Поврежденное изображение: ${zipEntry.name}")
                                    outputFile.delete()
                                }
                            } else {
                                extractedFiles.add(outputFile)
                            }
                        }
                        
                        processedEntries++
                        onProgress?.invoke(processedEntries.toFloat() / totalEntries)
                        
                    } catch (e: Exception) {
                        errors.add("Ошибка извлечения ${zipEntry.name}: ${e.message}")
                    }
                }
                zis.closeEntry()
            }
        }
        
        return extractedFiles
    }
    
    private fun extractRar(
        file: File,
        outputDir: File,
        password: String?,
        onProgress: ((Float) -> Unit)?,
        validateImages: Boolean,
        errors: MutableList<String>
    ): List<File> {
        val extractedFiles = mutableListOf<File>()
        
        try {
            val archive = Archive(file, password)
            val headers = archive.fileHeaders
            
            headers.forEachIndexed { index, header ->
                try {
                    if (!header.isDirectory) {
                        val outputFile = File(outputDir, sanitizeFileName(header.fileName))
                        outputFile.parentFile?.mkdirs()
                        
                        outputFile.outputStream().use { output ->
                            archive.extractFile(header, output)
                        }
                        
                        if (validateImages && isImageFile(outputFile)) {
                            if (validateImageFile(outputFile)) {
                                extractedFiles.add(outputFile)
                            } else {
                                errors.add("Поврежденное изображение: ${header.fileName}")
                                outputFile.delete()
                            }
                        } else {
                            extractedFiles.add(outputFile)
                        }
                    }
                    
                    onProgress?.invoke((index + 1).toFloat() / headers.size)
                    
                } catch (e: Exception) {
                    errors.add("Ошибка извлечения ${header.fileName}: ${e.message}")
                }
            }
            
            archive.close()
            
        } catch (e: Exception) {
            errors.add("Ошибка открытия RAR архива: ${e.message}")
        }
        
        return extractedFiles
    }
    
    private fun extract7Z(
        file: File,
        outputDir: File,
        password: String?,
        onProgress: ((Float) -> Unit)?,
        validateImages: Boolean,
        errors: MutableList<String>
    ): List<File> {
        val extractedFiles = mutableListOf<File>()
        
        try {
            val sevenZFile = if (password != null) {
                SevenZFile(file, password.toCharArray())
            } else {
                SevenZFile(file)
            }
            
            val entries = mutableListOf<SevenZArchiveEntry>()
            var entry: SevenZArchiveEntry?
            while (sevenZFile.nextEntry.also { entry = it } != null) {
                entry?.let { entries.add(it) }
            }
            
            sevenZFile.close()
            
            // Повторно открываем для извлечения
            val sevenZFile2 = if (password != null) {
                SevenZFile(file, password.toCharArray())
            } else {
                SevenZFile(file)
            }
            
            entries.forEachIndexed { index, archiveEntry ->
                try {
                    if (!archiveEntry.isDirectory) {
                        val outputFile = File(outputDir, sanitizeFileName(archiveEntry.name))
                        outputFile.parentFile?.mkdirs()
                        
                        val content = ByteArray(archiveEntry.size.toInt())
                        sevenZFile2.read(content)
                        
                        outputFile.writeBytes(content)
                        
                        if (validateImages && isImageFile(outputFile)) {
                            if (validateImageFile(outputFile)) {
                                extractedFiles.add(outputFile)
                            } else {
                                errors.add("Поврежденное изображение: ${archiveEntry.name}")
                                outputFile.delete()
                            }
                        } else {
                            extractedFiles.add(outputFile)
                        }
                    }
                    
                    onProgress?.invoke((index + 1).toFloat() / entries.size)
                    
                } catch (e: Exception) {
                    errors.add("Ошибка извлечения ${archiveEntry.name}: ${e.message}")
                }
            }
            
            sevenZFile2.close()
            
        } catch (e: Exception) {
            errors.add("Ошибка открытия 7Z архива: ${e.message}")
        }
        
        return extractedFiles
    }
    
    private fun extractTarGz(
        file: File,
        outputDir: File,
        onProgress: ((Float) -> Unit)?,
        validateImages: Boolean,
        errors: MutableList<String>
    ): List<File> {
        val extractedFiles = mutableListOf<File>()
        
        try {
            val gzipStream = GzipCompressorInputStream(file.inputStream())
            val tarStream = TarArchiveInputStream(gzipStream)
            
            var entry = tarStream.nextTarEntry
            var entryCount = 0
            
            while (entry != null) {
                try {
                    if (!entry.isDirectory) {
                        val outputFile = File(outputDir, sanitizeFileName(entry.name))
                        outputFile.parentFile?.mkdirs()
                        
                        outputFile.outputStream().use { output ->
                            tarStream.copyTo(output)
                        }
                        
                        if (validateImages && isImageFile(outputFile)) {
                            if (validateImageFile(outputFile)) {
                                extractedFiles.add(outputFile)
                            } else {
                                errors.add("Поврежденное изображение: ${entry.name}")
                                outputFile.delete()
                            }
                        } else {
                            extractedFiles.add(outputFile)
                        }
                    }
                    
                    entryCount++
                    onProgress?.invoke(entryCount.toFloat() / 100) // Примерная оценка
                    
                } catch (e: Exception) {
                    errors.add("Ошибка извлечения ${entry.name}: ${e.message}")
                }
                
                entry = tarStream.nextTarEntry
            }
            
            tarStream.close()
            
        } catch (e: Exception) {
            errors.add("Ошибка открытия TAR.GZ архива: ${e.message}")
        }
        
        return extractedFiles
    }
    
    private fun extractTarBz2(
        file: File,
        outputDir: File,
        onProgress: ((Float) -> Unit)?,
        validateImages: Boolean,
        errors: MutableList<String>
    ): List<File> {
        val extractedFiles = mutableListOf<File>()
        
        try {
            val bz2Stream = BZip2CompressorInputStream(file.inputStream())
            val tarStream = TarArchiveInputStream(bz2Stream)
            
            var entry = tarStream.nextTarEntry
            var entryCount = 0
            
            while (entry != null) {
                try {
                    if (!entry.isDirectory) {
                        val outputFile = File(outputDir, sanitizeFileName(entry.name))
                        outputFile.parentFile?.mkdirs()
                        
                        outputFile.outputStream().use { output ->
                            tarStream.copyTo(output)
                        }
                        
                        if (validateImages && isImageFile(outputFile)) {
                            if (validateImageFile(outputFile)) {
                                extractedFiles.add(outputFile)
                            } else {
                                errors.add("Поврежденное изображение: ${entry.name}")
                                outputFile.delete()
                            }
                        } else {
                            extractedFiles.add(outputFile)
                        }
                    }
                    
                    entryCount++
                    onProgress?.invoke(entryCount.toFloat() / 100) // Примерная оценка
                    
                } catch (e: Exception) {
                    errors.add("Ошибка извлечения ${entry.name}: ${e.message}")
                }
                
                entry = tarStream.nextTarEntry
            }
            
            tarStream.close()
            
        } catch (e: Exception) {
            errors.add("Ошибка открытия TAR.BZ2 архива: ${e.message}")
        }
        
        return extractedFiles
    }
    
    private fun extractTar(
        file: File,
        outputDir: File,
        onProgress: ((Float) -> Unit)?,
        validateImages: Boolean,
        errors: MutableList<String>
    ): List<File> {
        val extractedFiles = mutableListOf<File>()
        
        try {
            val tarStream = TarArchiveInputStream(file.inputStream())
            
            var entry = tarStream.nextTarEntry
            var entryCount = 0
            
            while (entry != null) {
                try {
                    if (!entry.isDirectory) {
                        val outputFile = File(outputDir, sanitizeFileName(entry.name))
                        outputFile.parentFile?.mkdirs()
                        
                        outputFile.outputStream().use { output ->
                            tarStream.copyTo(output)
                        }
                        
                        if (validateImages && isImageFile(outputFile)) {
                            if (validateImageFile(outputFile)) {
                                extractedFiles.add(outputFile)
                            } else {
                                errors.add("Поврежденное изображение: ${entry.name}")
                                outputFile.delete()
                            }
                        } else {
                            extractedFiles.add(outputFile)
                        }
                    }
                    
                    entryCount++
                    onProgress?.invoke(entryCount.toFloat() / 100) // Примерная оценка
                    
                } catch (e: Exception) {
                    errors.add("Ошибка извлечения ${entry.name}: ${e.message}")
                }
                
                entry = tarStream.nextTarEntry
            }
            
            tarStream.close()
            
        } catch (e: Exception) {
            errors.add("Ошибка открытия TAR архива: ${e.message}")
        }
        
        return extractedFiles
    }
    
    // Вспомогательные методы для получения информации об архивах
    private fun getZipInfo(file: File): ArchiveInfo {
        var totalEntries = 0
        var totalSize = 0L
        var isPasswordProtected = false
        
        try {
            ZipInputStream(file.inputStream()).use { zis ->
                var entry: ZipEntry?
                while (zis.nextEntry.also { entry = it } != null) {
                    entry?.let {
                        if (!it.isDirectory) {
                            totalEntries++
                            totalSize += it.size
                        }
                    }
                    zis.closeEntry()
                }
            }
        } catch (e: Exception) {
            // Возможно, архив защищен паролем
            isPasswordProtected = true
        }
        
        val compressionRatio = if (totalSize > 0) {
            (file.length().toFloat() / totalSize) * 100
        } else 0f
        
        return ArchiveInfo(ArchiveFormat.ZIP, totalEntries, totalSize, isPasswordProtected, compressionRatio)
    }
    
    private fun getRarInfo(file: File): ArchiveInfo {
        var totalEntries = 0
        var totalSize = 0L
        var isPasswordProtected = false
        
        try {
            val archive = Archive(file)
            val headers = archive.fileHeaders
            
            headers.forEach { header ->
                if (!header.isDirectory) {
                    totalEntries++
                    totalSize += header.fullUnpackSize
                }
            }
            
            archive.close()
        } catch (e: Exception) {
            isPasswordProtected = true
        }
        
        val compressionRatio = if (totalSize > 0) {
            (file.length().toFloat() / totalSize) * 100
        } else 0f
        
        return ArchiveInfo(ArchiveFormat.RAR, totalEntries, totalSize, isPasswordProtected, compressionRatio)
    }
    
    private fun get7ZInfo(file: File): ArchiveInfo {
        var totalEntries = 0
        var totalSize = 0L
        var isPasswordProtected = false
        
        try {
            val sevenZFile = SevenZFile(file)
            
            var entry: SevenZArchiveEntry?
            while (sevenZFile.nextEntry.also { entry = it } != null) {
                entry?.let {
                    if (!it.isDirectory) {
                        totalEntries++
                        totalSize += it.size
                    }
                }
            }
            
            sevenZFile.close()
        } catch (e: Exception) {
            isPasswordProtected = true
        }
        
        val compressionRatio = if (totalSize > 0) {
            (file.length().toFloat() / totalSize) * 100
        } else 0f
        
        return ArchiveInfo(ArchiveFormat.SEVEN_Z, totalEntries, totalSize, isPasswordProtected, compressionRatio)
    }
    
    private fun getTarGzInfo(file: File): ArchiveInfo {
        return getTarBasedInfo(file, ArchiveFormat.TAR_GZ) { 
            GzipCompressorInputStream(it) 
        }
    }
    
    private fun getTarBz2Info(file: File): ArchiveInfo {
        return getTarBasedInfo(file, ArchiveFormat.TAR_BZ2) { 
            BZip2CompressorInputStream(it) 
        }
    }
    
    private fun getTarInfo(file: File): ArchiveInfo {
        return getTarBasedInfo(file, ArchiveFormat.TAR) { it }
    }
    
    private fun getTarBasedInfo(
        file: File, 
        format: ArchiveFormat, 
        streamWrapper: (InputStream) -> InputStream
    ): ArchiveInfo {
        var totalEntries = 0
        var totalSize = 0L
        
        try {
            val wrappedStream = streamWrapper(file.inputStream())
            val tarStream = TarArchiveInputStream(wrappedStream)
            
            var entry = tarStream.nextTarEntry
            while (entry != null) {
                if (!entry.isDirectory) {
                    totalEntries++
                    totalSize += entry.size
                }
                entry = tarStream.nextTarEntry
            }
            
            tarStream.close()
        } catch (e: Exception) {
            // Обработка ошибок
        }
        
        val compressionRatio = if (totalSize > 0) {
            (file.length().toFloat() / totalSize) * 100
        } else 0f
        
        return ArchiveInfo(format, totalEntries, totalSize, false, compressionRatio)
    }
    
    /**
     * Очищает имя файла от небезопасных символов
     */
    private fun sanitizeFileName(fileName: String): String {
        return fileName
            .replace("\\", "/")
            .split("/")
            .last()
            .replace(Regex("[<>:\"|?*]"), "_")
            .take(255) // Ограничение длины имени файла
    }
    
    /**
     * Проверяет, является ли файл изображением
     */
    private fun isImageFile(file: File): Boolean {
        return supportedImageExtensions.contains(file.extension.lowercase())
    }
    
    /**
     * Валидирует файл изображения
     */
    private fun validateImageFile(file: File): Boolean {
        return try {
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            BitmapFactory.decodeFile(file.absolutePath, options)
            options.outWidth > 0 && options.outHeight > 0
        } catch (e: Exception) {
            false
        }
    }
    
    /**
     * Вычисляет контрольную сумму для списка файлов
     */
    private fun calculateChecksum(files: List<File>): String {
        val md = MessageDigest.getInstance("SHA-256")
        
        files.sortedBy { it.name }.forEach { file ->
            md.update(file.name.toByteArray())
            md.update(file.length().toString().toByteArray())
        }
        
        return md.digest().joinToString("") { "%02x".format(it) }
    }
    
    /**
     * Восстанавливает поврежденный архив (где возможно)
     */
    suspend fun repairArchive(file: File, outputFile: File): Boolean = withContext(Dispatchers.IO) {
        // Реализация восстановления архивов
        // Это сложная задача, требующая специализированных библиотек
        false
    }
}

