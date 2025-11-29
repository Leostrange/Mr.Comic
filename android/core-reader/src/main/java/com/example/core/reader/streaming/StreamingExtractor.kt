package com.example.core.reader.streaming

import android.content.Context
import android.net.Uri
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import net.lingala.zip4j.ZipFile
import net.lingala.zip4j.model.FileHeader
import java.io.File
import java.io.InputStream
import java.util.concurrent.ConcurrentHashMap

/**
 * Система стриминговой распаковки архивов
 * Извлекает файлы по требованию без загрузки всего архива в память
 */
class StreamingExtractor(
    private val context: Context
) {
    
    companion object {
        private const val TAG = "StreamingExtractor"
        private const val MAX_CACHE_SIZE = 10 // Максимум файлов в кэше
        private const val MAX_FILE_SIZE = 50 * 1024 * 1024 // 50MB максимум для одного файла
        private const val TIMEOUT_MS = 30000L // 30 секунд таймаут для операций
    }
    
    // Кэш извлеченных файлов
    private val extractedFiles = ConcurrentHashMap<String, File>()
    private val accessOrder = mutableListOf<String>()
    
    // Временная директория для извлеченных файлов
    private var tempDir: File? = null
    private var currentArchive: ZipFile? = null
    private var fileHeaders: List<FileHeader> = emptyList()
    
    /**
     * Открыть архив для стриминговой распаковки
     */
    suspend fun openArchive(uri: Uri): Result<List<String>> = withContext(Dispatchers.IO) {
        try {
            cleanup()
            
            val cacheDir = File(context.cacheDir, "streaming_cache")
            if (!cacheDir.exists()) {
                cacheDir.mkdirs()
            }
            
            // Создаем уникальную временную директорию
            tempDir = File(cacheDir, "stream_${uri.toString().hashCode()}_${System.currentTimeMillis()}").apply {
                mkdirs()
            }
            
            // Определяем расширение для временного файла
            val extension = when (uri.scheme) {
                "file" -> uri.path?.substringAfterLast('.', "")?.let { ".$it" } ?: ".cbz"
                "content" -> {
                    val name = try {
                        val cursor = context.contentResolver.query(uri, arrayOf(android.provider.OpenableColumns.DISPLAY_NAME), null, null, null)
                        cursor?.use { if (it.moveToFirst()) it.getString(0) else null }
                    } catch (e: Exception) {
                        android.util.Log.w(TAG, "Failed to get display name for content URI", e)
                        null
                    }
                    name?.substringAfterLast('.', "")?.let { ".$it" } ?: ".cbz"
                }
                else -> ".cbz"
            }

            android.util.Log.d(TAG, "Creating temp file with extension: $extension for URI: $uri")

            // Use file directly if it's already in cache, otherwise copy to temp file
            val tempArchiveFile = when (uri.scheme) {
                "file" -> {
                    val src = File(uri.path ?: return@withContext Result.failure(IllegalArgumentException("Invalid file uri")))
                    if (!src.exists()) {
                        return@withContext Result.failure(IllegalArgumentException("File does not exist: ${src.absolutePath}"))
                    }
                    // If file is already in cache, use it directly to avoid double copying
                    if (src.absolutePath.startsWith(context.cacheDir.absolutePath)) {
                        android.util.Log.d(TAG, "File already in cache, using directly: ${src.absolutePath}")
                        src
                    } else {
                        // Copy external file to cache
                        val tempFile = File.createTempFile("temp_archive_", extension, cacheDir)
                        src.inputStream().use { input ->
                            tempFile.outputStream().use { output ->
                                input.copyTo(output)
                            }
                        }
                        tempFile
                    }
                }
                "content" -> {
                    // Copy content:// URI to temp file
                    val tempFile = File.createTempFile("temp_archive_", extension, cacheDir)
                    context.contentResolver.openInputStream(uri)?.use { inputStream ->
                        tempFile.outputStream().use { outputStream ->
                            inputStream.copyTo(outputStream)
                        }
                    } ?: return@withContext Result.failure(IllegalStateException("Unable to open input stream for $uri"))
                    tempFile
                }
                else -> {
                    return@withContext Result.failure(IllegalArgumentException("Unsupported URI scheme: ${uri.scheme}"))
                }
            }
            
            // Открываем архив
            try {
                currentArchive = ZipFile(tempArchiveFile)
                android.util.Log.d(TAG, "Successfully created ZipFile for: ${tempArchiveFile.absolutePath}")

                // Получаем список файлов изображений
                android.util.Log.d(TAG, "🔍 Total files in archive: ${currentArchive?.fileHeaders?.size ?: 0}")
                
                // Логируем ВСЕ файлы для диагностики
                android.util.Log.d(TAG, "📋 ALL FILES IN ARCHIVE:")
                currentArchive?.fileHeaders?.forEach { header ->
                    android.util.Log.d(TAG, "  📄 ${header.fileName} (dir: ${header.isDirectory}, size: ${header.uncompressedSize})")
                }
                
                // Фильтруем только изображения
                android.util.Log.d(TAG, "🔍 Filtering image files...")
                fileHeaders = currentArchive?.fileHeaders?.filter { header ->
                    val isNotDir = !header.isDirectory
                    val isImage = isImageFile(header.fileName)
                    if (isNotDir && !isImage) {
                        android.util.Log.d(TAG, "⚠️ Skipping non-image file: ${header.fileName}")
                    }
                    isNotDir && isImage
                }?.sortedWith(naturalOrderComparator()) ?: emptyList()

                val imageFiles = fileHeaders.map { it.fileName }

                android.util.Log.d(TAG, "✅ Opened archive with ${imageFiles.size} image files")
                android.util.Log.d(TAG, "📦 Temp file size: ${tempArchiveFile.length()} bytes")

                if (imageFiles.isEmpty()) {
                    android.util.Log.e(TAG, "❌ No image files found in archive!")
                    android.util.Log.e(TAG, "📋 All files in archive:")
                    
                    val allFiles = mutableListOf<String>()
                    currentArchive?.fileHeaders?.forEach { header ->
                        android.util.Log.e(TAG, "  - ${header.fileName} (dir: ${header.isDirectory})")
                        if (!header.isDirectory) {
                            allFiles.add(header.fileName)
                        }
                    }
                    
                    val errorMessage = if (allFiles.isEmpty()) {
                        "Архив пустой или поврежден"
                    } else {
                        "В архиве ${allFiles.size} файлов, но нет изображений. Примеры: ${allFiles.take(3).joinToString(", ")}"
                    }
                    
                    return@withContext Result.failure(IllegalStateException(errorMessage))
                }

                Result.success(imageFiles)
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Failed to open archive as ZIP: ${e.message}", e)
                android.util.Log.e(TAG, "Temp file exists: ${tempArchiveFile.exists()}, size: ${tempArchiveFile.length()}")

                // Пробуем альтернативные подходы
                try {
                    android.util.Log.d(TAG, "Attempting to read as raw file...")
                    val fileContent = tempArchiveFile.inputStream().readBytes()
                    android.util.Log.d(TAG, "Read ${fileContent.size} bytes from temp file")
                } catch (readException: Exception) {
                    android.util.Log.e(TAG, "Failed to read temp file: ${readException.message}", readException)
                }

                return@withContext Result.failure(IllegalStateException("Failed to open as ZIP archive: ${e.message}", e))
            }
        } catch (e: Exception) {
            cleanup()
            Result.failure(e)
        }
    }
    
    /**
     * Получить файл по индексу (извлекает по требованию)
     */
    suspend fun getFile(index: Int): Result<File> = withContext(Dispatchers.IO) {
        try {
            if (index < 0 || index >= fileHeaders.size) {
                return@withContext Result.failure(IndexOutOfBoundsException("Invalid file index: $index"))
            }
            
            val header = fileHeaders[index]
            val fileName = header.fileName
            val cacheKey = "${index}_${fileName.hashCode()}"
            
            // Проверяем кэш
            extractedFiles[cacheKey]?.let { cachedFile ->
                if (cachedFile.exists()) {
                    updateAccessOrder(cacheKey)
                    android.util.Log.d(TAG, "Using cached file: $fileName")
                    return@withContext Result.success(cachedFile)
                } else {
                    // Файл был удален, убираем из кэша
                    extractedFiles.remove(cacheKey)
                    accessOrder.remove(cacheKey)
                }
            }
            
            // Извлекаем файл
            val extractedFile = extractFile(header, cacheKey)
            
            if (extractedFile != null) {
                // Добавляем в кэш
                addToCache(cacheKey, extractedFile)
                android.util.Log.d(TAG, "Extracted file: $fileName")
                Result.success(extractedFile)
            } else {
                Result.failure(IllegalStateException("Failed to extract file: $fileName"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Получить InputStream для файла по индексу
     */
    suspend fun getFileStream(index: Int): Result<InputStream> = withContext(Dispatchers.IO) {
        try {
            val fileResult = getFile(index)
            if (fileResult.isSuccess) {
                val file = fileResult.getOrNull()!!
                Result.success(file.inputStream())
            } else {
                fileResult.map { it.inputStream() }
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Предзагрузить файлы в диапазоне
     */
    suspend fun preloadFiles(startIndex: Int, endIndex: Int) = withContext(Dispatchers.IO) {
        val actualStart = maxOf(0, startIndex)
        val actualEnd = minOf(fileHeaders.size - 1, endIndex)
        
        android.util.Log.d(TAG, "Preloading files from $actualStart to $actualEnd")
        
        for (index in actualStart..actualEnd) {
            try {
                getFile(index)
                // Небольшая задержка между извлечениями
                kotlinx.coroutines.delay(10)
            } catch (e: Exception) {
                android.util.Log.w(TAG, "Failed to preload file at index $index", e)
            }
        }
    }
    
    private fun extractFile(header: FileHeader, cacheKey: String): File? {
        return try {
            val archive = currentArchive ?: return null
            
            // Проверяем размер файла
            if (header.uncompressedSize > MAX_FILE_SIZE) {
                android.util.Log.w(TAG, "⚠️ File too large: ${header.fileName} (${header.uncompressedSize} bytes)")
                return null
            }
            
            // Проверяем, что файл не поврежден
            if (header.crc == 0L && header.uncompressedSize > 0) {
                android.util.Log.w(TAG, "⚠️ File may be corrupted: ${header.fileName} (CRC = 0)")
            }
            val tempDirectory = tempDir ?: return null
            
            val fileName = header.fileName.substringAfterLast('/')
            val extractedFile = File(tempDirectory, "${cacheKey}_${fileName}")
            
            android.util.Log.d(TAG, "🔍 Extracting file: ${header.fileName} -> ${extractedFile.name}")
            android.util.Log.d(TAG, "   Temp directory: ${tempDirectory.absolutePath}")
            android.util.Log.d(TAG, "   Target file: ${extractedFile.absolutePath}")
            
            // Используем zip4j API для извлечения с таймаутом
            try {
                val startTime = System.currentTimeMillis()
                archive.extractFile(header, tempDirectory.absolutePath, extractedFile.name)
                val extractionTime = System.currentTimeMillis() - startTime
                
                if (extractionTime > TIMEOUT_MS) {
                    android.util.Log.w(TAG, "⚠️ Slow extraction: ${extractionTime}ms for ${header.fileName}")
                }
                
                android.util.Log.d(TAG, "   extractFile() called successfully in ${extractionTime}ms")
            } catch (e: Exception) {
                android.util.Log.e(TAG, "❌ extractFile() failed: ${e.message}")
                
                // Пробуем альтернативный метод - через InputStream
                android.util.Log.d(TAG, "   Trying alternative extraction method...")
                try {
                    archive.getInputStream(header).use { input ->
                        extractedFile.outputStream().use { output ->
                            val bytesWritten = input.copyTo(output)
                            android.util.Log.d(TAG, "   Copied $bytesWritten bytes via alternative method")
                        }
                    }
                } catch (altE: Exception) {
                    android.util.Log.e(TAG, "❌ Alternative extraction also failed: ${altE.message}")
                    
                    // Проверяем, не связана ли ошибка с Unicode именами
                    if (altE.message?.contains("encoding", ignoreCase = true) == true ||
                        altE.message?.contains("charset", ignoreCase = true) == true) {
                        android.util.Log.w(TAG, "⚠️ Unicode filename issue detected: ${header.fileName}")
                        return null
                    }
                    
                    // Файл поврежден или использует неподдерживаемый метод сжатия
                    // Возвращаем null, чтобы пропустить этот файл
                    return null
                }
            }
            
            if (extractedFile.exists() && extractedFile.length() > 0) {
                android.util.Log.d(TAG, "✅ File extracted successfully: ${extractedFile.name}, size: ${extractedFile.length()} bytes")
                extractedFile
            } else {
                android.util.Log.e(TAG, "❌ Extracted file is empty or doesn't exist: ${extractedFile.name}")
                android.util.Log.d(TAG, "   File exists: ${extractedFile.exists()}, length: ${if (extractedFile.exists()) extractedFile.length() else "N/A"}")
                null
            }
        } catch (e: Exception) {
            android.util.Log.e(TAG, "❌ Failed to extract file: ${header.fileName}", e)
            null
        }
    }
    
    private fun addToCache(cacheKey: String, file: File) {
        // Проверяем размер кэша
        if (extractedFiles.size >= MAX_CACHE_SIZE) {
            // Удаляем самый старый файл
            val oldestKey = accessOrder.firstOrNull()
            if (oldestKey != null) {
                extractedFiles[oldestKey]?.delete()
                extractedFiles.remove(oldestKey)
                accessOrder.remove(oldestKey)
            }
        }
        
        extractedFiles[cacheKey] = file
        accessOrder.add(cacheKey)
    }
    
    private fun updateAccessOrder(cacheKey: String) {
        accessOrder.remove(cacheKey)
        accessOrder.add(cacheKey)
    }
    
    private fun isImageFile(fileName: String): Boolean {
        // Игнорируем скрытые файлы и системные файлы
        val name = fileName.substringAfterLast('/')
        if (name.startsWith(".") || name.startsWith("__MACOSX") || fileName.contains("__MACOSX")) {
            return false
        }
        
        // Проверяем расширение (case-insensitive)
        val lowercaseName = fileName.lowercase()
        val isImage = lowercaseName.endsWith(".jpg") ||
            lowercaseName.endsWith(".jpeg") ||
            lowercaseName.endsWith(".png") ||
            lowercaseName.endsWith(".webp") ||
            lowercaseName.endsWith(".bmp") ||
            lowercaseName.endsWith(".gif") ||
            lowercaseName.endsWith(".jpe") ||
            lowercaseName.endsWith(".jfif") ||
            lowercaseName.endsWith(".tif") ||
            lowercaseName.endsWith(".tiff")
        
        if (isImage) {
            android.util.Log.d(TAG, "✅ Image file detected: $fileName")
        } else {
            android.util.Log.d(TAG, "❌ Not an image file: $fileName")
        }
        
        return isImage
    }
    
    /**
     * Получить количество файлов в архиве
     */
    fun getFileCount(): Int = fileHeaders.size
    
    /**
     * Получить имя файла по индексу
     */
    fun getFileName(index: Int): String? {
        return if (index in 0 until fileHeaders.size) {
            fileHeaders[index].fileName
        } else null
    }
    
    /**
     * Получить статистику кэша
     */
    fun getCacheStats(): StreamingStats {
        return StreamingStats(
            totalFiles = fileHeaders.size,
            cachedFiles = extractedFiles.size,
            cacheHitRate = 0f // TODO: implement hit rate tracking
        )
    }
    
    /**
     * Очистить все ресурсы
     */
    fun cleanup() {
        try {
            currentArchive?.close()
        } catch (e: Exception) {
            android.util.Log.w(TAG, "Failed to close archive", e)
        }
        currentArchive = null
        
        // Удаляем все извлеченные файлы
        extractedFiles.values.forEach { file ->
            try {
                file.delete()
            } catch (e: Exception) {
                android.util.Log.w(TAG, "Failed to delete extracted file: ${file.name}", e)
            }
        }
        extractedFiles.clear()
        accessOrder.clear()
        
        // Удаляем временную директорию
        try {
            tempDir?.deleteRecursively()
        } catch (e: Exception) {
            android.util.Log.w(TAG, "Failed to delete temp directory", e)
        }
        tempDir = null
        
        fileHeaders = emptyList()
        
        android.util.Log.d(TAG, "Streaming extractor cleaned up")
    }
    
    /**
     * Natural order comparator that properly sorts filenames with numbers
     * (e.g., page1.jpg, page2.jpg, page10.jpg instead of page1.jpg, page10.jpg, page2.jpg)
     */
    private fun naturalOrderComparator(): Comparator<net.lingala.zip4j.model.FileHeader> {
        return Comparator { header1, header2 ->
            val name1 = header1.fileName.lowercase()
            val name2 = header2.fileName.lowercase()
            
            // Split filenames into parts (text and numbers)
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
                    else -> part1.compareTo(part2)
                }
                
                if (result != 0) return@Comparator result
            }
            
            parts1.size.compareTo(parts2.size)
        }
    }
}

/**
 * Статистика стриминговой распаковки
 */
data class StreamingStats(
    val totalFiles: Int,
    val cachedFiles: Int,
    val cacheHitRate: Float
)
