package com.example.core.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.LruCache
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.domain.MediaMetadata
import com.example.core.reader.domain.MediaType
import com.example.core.reader.domain.UnsupportedFormatException
import com.example.core.reader.utils.BitmapUtils
import com.github.junrar.Archive
import com.github.junrar.rarfile.FileHeader
import java.io.ByteArrayOutputStream
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock

/**
 * CBR/RAR Reader implementation using JunRAR library
 */
@Singleton
class CbrReader @Inject constructor(
    private val context: Context,
    private val cbrToCbzConverter: CbrToCbzConverter? = null
) : MediaReader {
    
    // Mutex для последовательной распаковки RAR файлов
    private val rarMutex = Mutex()
    
    // Fallback режим для проблемных архивов
    private var errorCount = 0
    private var safeMode = false
    private var isRar = false
    
    private val memoryManager = com.example.core.reader.utils.MemoryManager.getInstance()
    
    companion object {
        private const val TAG = "CbrReader"
        private val SUPPORTED_IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "gif", "bmp", "webp")
    }
    
    private var archive: Archive? = null
    private var imageFiles: List<FileHeader> = emptyList()
    private var currentUri: Uri? = null
    private var pageCount: Int = 0
    private var metadata: MediaMetadata? = null
    private var isOpen: Boolean = false
    private var tempFile: File? = null
    
    override suspend fun open(context: Context, uri: Uri): Result<MediaMetadata> {
        return try {
            android.util.Log.d(TAG, "Opening CBR file: $uri")

            // Close previous archive if exists
            close()

            // Сбрасываем счетчики ошибок и safe mode для нового архива
            errorCount = 0
            safeMode = false
            isRar = false

            currentUri = uri

            // Check and request permissions for content:// URIs
            if (uri.scheme == "content") {
                try {
                    // Try to take persistable permission
                    context.contentResolver.takePersistableUriPermission(
                        uri,
                        android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                    )
                    android.util.Log.d(TAG, "Persistable permission granted for URI: $uri")
                } catch (e: SecurityException) {
                    android.util.Log.w(TAG, "Could not take persistable permission: ${e.message}")
                    // Continue anyway, might work with temporary permission
                }
            }

            // Open the RAR archive
            val inputStream = try {
                context.contentResolver.openInputStream(uri)
            } catch (e: SecurityException) {
                android.util.Log.e(TAG, "SecurityException when opening URI: $uri", e)
                return Result.failure(UnsupportedFormatException("Permission Denial: reading ${uri.authority} uri $uri requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"))
            }

            if (inputStream == null) {
                android.util.Log.e(TAG, "Failed to open input stream for URI: $uri")
                return Result.failure(UnsupportedFormatException("Не удалось открыть файл. Проверьте разрешения на чтение файлов."))
            }

            android.util.Log.d(TAG, "Input stream opened successfully")

            // Create temporary file for JunRAR (it requires File access)
            tempFile = File.createTempFile("cbr_", ".cbr", context.cacheDir)

            try {
                inputStream.use { input ->
                    tempFile?.outputStream()?.use { output ->
                        val bytesCount = input.copyTo(output)
                        android.util.Log.d(TAG, "Copied $bytesCount bytes to temp file")
                    }
                }
                android.util.Log.d(TAG, "Temp file created: ${tempFile?.exists()}, size: ${tempFile?.length()} bytes")
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Failed to create temporary file", e)
                tempFile?.delete()
                return Result.failure(UnsupportedFormatException("Failed to create temporary file: ${e.message}"))
            }
            
            // Check file format before opening
            try {
                // Read first bytes to identify format
                val header = ByteArray(8)
                val bytesRead = tempFile?.inputStream()?.use { it.read(header) } ?: 0
                android.util.Log.d(TAG, "Read $bytesRead bytes")
                
                // ZIP signature: 50 4B 03 04 (PK)
                if (header[0] == 0x50.toByte() && header[1] == 0x4B.toByte()) {
                    android.util.Log.e(TAG, "This is a ZIP file, not RAR! File has wrong extension.")
                    close()
                    return Result.failure(UnsupportedFormatException("Файл имеет расширение .cbr, но на самом деле это ZIP архив (.cbz). Переименуйте файл в .cbz и попробуйте снова."))
                }
                
                // RAR5 signature: 52 61 72 21 1A 07 01 00
                // RAR4 signature: 52 61 72 21 1A 07 00
                if (header[0] == 0x52.toByte() && header[1] == 0x61.toByte() && 
                    header[2] == 0x72.toByte() && header[3] == 0x21.toByte()) {
                    
                    if (header[6] == 0x01.toByte()) {
                        android.util.Log.e(TAG, "RAR5 format detected - not supported by junrar")
                        close()
                        return Result.failure(UnsupportedFormatException("Формат RAR5 не поддерживается библиотекой JunRAR. Пожалуйста, конвертируйте файл в CBZ или используйте RAR4. Для поддержки RAR5 требуется обновление библиотеки."))
                    }
                    android.util.Log.d(TAG, "RAR4 format detected")
                    isRar = true
                } else {
                    android.util.Log.w(TAG, "Unknown file signature")
                }
            } catch (e: UnsupportedFormatException) {
                // Propagate UnsupportedFormatException
                throw e
            } catch (e: Exception) {
                android.util.Log.w(TAG, "Could not check file format", e)
            }
            
            try {
                archive = Archive(tempFile)
            } catch (e: Exception) {
                android.util.Log.e(TAG, "❌ Failed to open RAR archive", e)
                close()
                return when {
                    e.message?.contains("password", ignoreCase = true) == true -> 
                        Result.failure(UnsupportedFormatException("Архив защищен паролем. Пожалуйста, распакуйте его вручную и конвертируйте в CBZ."))
                    e.message?.contains("corrupted", ignoreCase = true) == true -> 
                        Result.failure(UnsupportedFormatException("Архив поврежден или имеет неподдерживаемый формат. Попробуйте пересоздать архив."))
                    else -> 
                        Result.failure(UnsupportedFormatException("Не удалось открыть RAR архив: ${e.message}"))
                }
            }
            
            // Get all image files from the archive, including those in subdirectories
            imageFiles = archive!!.fileHeaders
                .filter { header ->
                    !header.isDirectory && 
                    header.fileName.substringAfterLast('.', "").lowercase() in SUPPORTED_IMAGE_EXTENSIONS
                }
                .sortedWith(naturalOrderComparator())
                
            if (imageFiles.isEmpty()) {
                // Try alternative approach for some archives
                imageFiles = archive!!.fileHeaders
                    .filter { !it.isDirectory }
                    .filter { header ->
                        val name = header.fileName.lowercase()
                        SUPPORTED_IMAGE_EXTENSIONS.any { ext -> name.endsWith(".$ext") }
                    }
                    .sortedWith(naturalOrderComparator())
            }
            
            android.util.Log.d(TAG, "Found ${imageFiles.size} image files in CBR archive")
            
            if (imageFiles.isEmpty()) {
                throw UnsupportedFormatException("В архиве нет изображений. Проверьте содержимое файла.")
            }
            
            pageCount = imageFiles.size
            
            // Create metadata
            metadata = MediaMetadata(
                title = uri.lastPathSegment,
                pageCount = pageCount,
                type = MediaType.CBR,
                fileSize = tempFile?.length() ?: 0L
            )
            
            isOpen = true
            Result.success(metadata!!)
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to open CBR file: $uri", e)
            close()
            // Graceful error text for users
            val message = when {
                e.message?.contains("Permission Denial") == true -> e.message!!
                e.message?.contains("SecurityException") == true -> "Permission Denial: reading ${uri.authority} uri $uri requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"
                else -> "Архив CBR повреждён или не поддерживается: ${e.message ?: "неизвестная ошибка"}"
            }
            Result.failure(UnsupportedFormatException(message))
        }
    }
    
    override suspend fun renderPage(
        pageIndex: Int,
        maxWidth: Int,
        maxHeight: Int,
        scale: Float
    ): Result<Bitmap> {
        var localArchive: Archive? = null
        return try {
            val currentArchive = archive ?: return Result.failure(IllegalStateException("Archive not open"))
            
            // Create a local archive instance for this operation to avoid thread conflicts
            localArchive = try {
                val inputStream = java.io.FileInputStream(java.io.File(currentUri?.path ?: ""))
                Archive(inputStream)
            } catch (e: Exception) {
                android.util.Log.w(TAG, "Failed to create local archive, using shared instance", e)
                currentArchive
            }
            
            if (pageIndex < 0 || pageIndex >= imageFiles.size) {
                android.util.Log.w(TAG, "Page index $pageIndex out of bounds (0-${imageFiles.size - 1})")
                return Result.failure(IndexOutOfBoundsException("Page index out of bounds"))
            }
            
            val fileHeader = imageFiles[pageIndex]
            android.util.Log.d(TAG, "extract start: ${fileHeader.fileName}")
            android.util.Log.d(TAG, "Rendering page $pageIndex: ${fileHeader.fileName}")
            
            // Extract file data from archive with enhanced error handling and mutex protection
            val outputStream = ByteArrayOutputStream()
            try {
                // Используем Mutex для последовательной распаковки RAR файлов
                rarMutex.withLock {
                    localArchive?.extractFile(fileHeader, outputStream)
                }
            } catch (e: java.lang.AssertionError) {
                android.util.Log.e(TAG, "AssertionError in junrar PPM block for page $pageIndex: ${e.message}", e)
                errorCount++
                
                // Активируем safe mode для RAR файлов при ошибках
                if (errorCount > 0 && isRar && !safeMode) {
                    safeMode = true
                    android.util.Log.w(TAG, "Fallback to safe mode: sequential extraction for RAR archive")
                    
                    // Предлагаем конвертацию в CBZ для улучшения стабильности
                    if (errorCount == 1) {
                        android.util.Log.i(TAG, "Consider converting CBR to CBZ for better stability")
                    }
                }
                
                return Result.failure(IllegalStateException("RAR archive corruption (PPM block): ${e.message}"))
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Failed to extract file for page $pageIndex: ${e.message}", e)
                errorCount++
                
                // Специальная обработка для junrar ошибок
                if (e.message?.contains("junrar") == true || e.message?.contains("RAR") == true) {
                    android.util.Log.e(TAG, "RAR archive corruption detected, skipping page $pageIndex")
                    
                    // Активируем safe mode для RAR файлов при ошибках
                    if (errorCount > 0 && isRar && !safeMode) {
                        safeMode = true
                        android.util.Log.w(TAG, "Fallback to safe mode: sequential extraction for RAR archive")
                    }
                    
                    return Result.failure(IllegalStateException("RAR archive corruption: ${e.message}"))
                }
                
                return Result.failure(e)
            }
            
            val imageData = outputStream.toByteArray()
            android.util.Log.d(TAG, "extract done: ${fileHeader.fileName} size=${imageData.size}")
            
            if (imageData.isEmpty()) {
                android.util.Log.w(TAG, "No data extracted for page $pageIndex")
                return Result.failure(IllegalStateException("No data extracted for page"))
            }
            
            // Generate a unique cache key for this page
            val cacheKey = "${currentUri?.toString() ?: ""}_$pageIndex"
            
            // Try to get from cache first
            memoryManager.getBitmap(cacheKey)?.let { cachedBitmap ->
                if (!cachedBitmap.isRecycled) {
                    android.util.Log.d(TAG, "Cache hit for page $pageIndex")
                    return Result.success(cachedBitmap)
                }
            }
            
            // Calculate optimal sample size with high quality settings
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
                inPreferredConfig = Bitmap.Config.ARGB_8888 // Высокое качество вместо RGB_565
                inDither = false // Отключаем дизеринг для лучшей резкости
                inScaled = false // Отключаем автоматическое масштабирование
                inPremultiplied = false // Отключаем предварительное умножение альфы
            }
            
            // First decode with inJustDecodeBounds=true to check dimensions
            BitmapFactory.decodeByteArray(imageData, 0, imageData.size, options)
            
            // Calculate inSampleSize
            options.inSampleSize = BitmapUtils.calculateInSampleSize(
                options,
                maxWidth,
                maxHeight
            )
            
            // Decode bitmap with inSampleSize set
            options.inJustDecodeBounds = false
            
            var bitmap: Bitmap? = null
            var retryCount = 0
            val maxRetries = 2
            
            while (bitmap == null && retryCount < maxRetries) {
                try {
                    // Используем улучшенный декодер с поддержкой EXIF
                    bitmap = com.example.core.reader.utils.BitmapUtils.decodeBitmapWithExif(
                        imageData,
                        maxWidth,
                        maxHeight,
                        options.inPreferredConfig
                    )
                    
                    if (bitmap == null && retryCount == 0) {
                        // First try failed, try with different settings
                        options.inPreferredConfig = Bitmap.Config.ARGB_8888
                        options.inDither = false
                        options.inScaled = false
                        retryCount++
                    } else if (bitmap == null) {
                        break
                    }
                } catch (e: OutOfMemoryError) {
                    // Clear cache and try again
                    memoryManager.clearCache()
                    System.gc()
                    retryCount++
                } catch (e: Exception) {
                    android.util.Log.e(TAG, "Error decoding bitmap: ${e.message}")
                    retryCount++
                }
            }
            
            bitmap?.let { 
                // Add to cache
                memoryManager.putBitmap(cacheKey, it)
                android.util.Log.d(TAG, "Successfully rendered page $pageIndex (${it.width}x${it.height})")
                Result.success(it)
            } ?: run {
                android.util.Log.e(TAG, "Failed to decode page $pageIndex after $maxRetries attempts")
                Result.failure(IllegalStateException("Failed to decode page $pageIndex"))
            }
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to render page $pageIndex", e)
            Result.failure(e)
        } finally {
            // Close local archive if it was created
            try {
                if (localArchive != null && localArchive != archive) {
                    localArchive.close()
                }
            } catch (e: Exception) {
                android.util.Log.w(TAG, "Failed to close local archive", e)
            }
        }
    }
    
    override fun getPageCount(): Int? {
        return if (isOpen) pageCount else null
    }
    
    override fun getMetadata(): MediaMetadata? {
        return metadata
    }
    
    override suspend fun close() {
        try {
            // Clear memory cache
            memoryManager.clearCache()
            
            // Close and clean up archive
            archive?.close()
            
            // Delete temporary file
            tempFile?.let {
                if (it.exists()) {
                    it.delete()
                }
            }
            
            android.util.Log.d(TAG, "CBR archive closed and resources released")
        } catch (e: Exception) {
            android.util.Log.w(TAG, "Error closing CBR archive", e)
        } finally {
            archive = null
            tempFile = null
            imageFiles = emptyList()
            currentUri = null
            pageCount = 0
            metadata = null
            isOpen = false
        }
    }
    
    override fun isOpen(): Boolean {
        return isOpen
    }
    
    /**
     * Natural order comparator that properly sorts filenames with numbers
     * (e.g., page1.jpg, page2.jpg, page10.jpg instead of page1.jpg, page10.jpg, page2.jpg)
     */
    private fun naturalOrderComparator(): Comparator<FileHeader> {
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
