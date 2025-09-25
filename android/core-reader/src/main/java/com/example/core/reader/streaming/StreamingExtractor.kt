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

            // Копируем архив во временный файл (поддержка content:// и file://)
            val tempArchiveFile = File.createTempFile("temp_archive_", extension, cacheDir)
            when (uri.scheme) {
                "file" -> {
                    val src = File(uri.path ?: return@withContext Result.failure(IllegalArgumentException("Invalid file uri")))
                    if (!src.exists()) {
                        return@withContext Result.failure(IllegalArgumentException("File does not exist: ${src.absolutePath}"))
                    }
                    src.inputStream().use { input ->
                        tempArchiveFile.outputStream().use { output ->
                            input.copyTo(output)
                        }
                    }
                }
                else -> {
                    context.contentResolver.openInputStream(uri)?.use { inputStream ->
                        tempArchiveFile.outputStream().use { outputStream ->
                            inputStream.copyTo(outputStream)
                        }
                    } ?: return@withContext Result.failure(IllegalStateException("Unable to open input stream for $uri"))
                }
            }
            
            // Открываем архив
            try {
                currentArchive = ZipFile(tempArchiveFile)
                android.util.Log.d(TAG, "Successfully created ZipFile for: ${tempArchiveFile.absolutePath}")

                // Получаем список файлов изображений
                fileHeaders = currentArchive?.fileHeaders?.filter { header ->
                    !header.isDirectory && isImageFile(header.fileName)
                }?.sortedBy { it.fileName } ?: emptyList()

                val imageFiles = fileHeaders.map { it.fileName }

                android.util.Log.d(TAG, "Opened archive with ${imageFiles.size} image files")
                android.util.Log.d(TAG, "Temp file size: ${tempArchiveFile.length()} bytes")
                android.util.Log.d(TAG, "Total files in archive: ${currentArchive?.fileHeaders?.size ?: 0}")

                if (imageFiles.isEmpty()) {
                    android.util.Log.w(TAG, "No image files found in archive. Available files: ${currentArchive?.fileHeaders?.map { it.fileName }}")
                    return@withContext Result.failure(IllegalStateException("No image files found in archive"))
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
            val tempDirectory = tempDir ?: return null
            
            val extractedFile = File(tempDirectory, "${cacheKey}_${header.fileName.substringAfterLast('/')}")
            
            archive.extractFile(header, tempDirectory.absolutePath, extractedFile.name)
            
            if (extractedFile.exists() && extractedFile.length() > 0) {
                extractedFile
            } else {
                null
            }
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to extract file: ${header.fileName}", e)
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
        val lowercaseName = fileName.lowercase()
        return lowercaseName.endsWith(".jpg") ||
            lowercaseName.endsWith(".jpeg") ||
            lowercaseName.endsWith(".png") ||
            lowercaseName.endsWith(".webp") ||
            lowercaseName.endsWith(".bmp") ||
            lowercaseName.endsWith(".gif")
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
}

/**
 * Статистика стриминговой распаковки
 */
data class StreamingStats(
    val totalFiles: Int,
    val cachedFiles: Int,
    val cacheHitRate: Float
)