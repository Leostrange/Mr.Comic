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
import com.example.core.reader.cache.PageByteCache
import com.example.core.reader.utils.BitmapUtils
import com.example.core.reader.utils.ensureUriPermission
import com.github.junrar.Archive
import com.github.junrar.rarfile.FileHeader
import java.io.ByteArrayOutputStream
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton

/**
 * CBR/RAR Reader implementation using JunRAR library
 */
@Singleton
class CbrReader @Inject constructor(
    private val context: Context,
    private val cbrToCbzConverter: CbrToCbzConverter? = null
) : MediaReader {
    
    // Fallback режим для проблемных архивов
    private var errorCount = 0
    private var safeMode = false
    private var isRar = false
    
    private val memoryManager = com.example.core.reader.utils.MemoryManager.getInstance()
    private val pageByteCache = PageByteCache.getInstance()
    
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
            android.util.Log.d(TAG, "🔥 CBR DIAGNOSTIC: Opening CBR file: $uri")
            android.util.Log.d(TAG, "🔥 CBR DIAGNOSTIC: Context: $context")
            android.util.Log.d(TAG, "🔥 CBR DIAGNOSTIC: URI scheme: ${uri.scheme}, path: ${uri.path}")
            
            // Close previous archive if exists
            close()
            
            // Сбрасываем счетчики ошибок и safe mode для нового архива
            errorCount = 0
            safeMode = false
            isRar = false
            
            currentUri = uri
            
            // Ensure we have permission to read the URI
            if (uri.scheme == "content") {
                if (!context.ensureUriPermission(uri)) {
                    android.util.Log.e(TAG, "❌ CBR DIAGNOSTIC: No permission for URI: $uri")
                    return Result.failure(UnsupportedFormatException("Нет доступа к файлу. Пожалуйста, добавьте файл заново."))
                }
                android.util.Log.d(TAG, "✅ CBR DIAGNOSTIC: Permission granted for URI: $uri")
            }
            
            // Open the RAR archive
            android.util.Log.d(TAG, "🔥 CBR DIAGNOSTIC: Opening input stream for URI: $uri")
            val inputStream = try {
                context.contentResolver.openInputStream(uri)
            } catch (e: SecurityException) {
                android.util.Log.e(TAG, "❌ CBR DIAGNOSTIC: SecurityException when opening URI: $uri", e)
                return Result.failure(UnsupportedFormatException("Permission Denial: reading ${uri.authority} uri $uri requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"))
            }
            
            if (inputStream == null) {
                android.util.Log.e(TAG, "❌ CBR DIAGNOSTIC: Failed to open input stream for URI: $uri")
                android.util.Log.e(TAG, "❌ CBR DIAGNOSTIC: URI scheme: ${uri.scheme}, authority: ${uri.authority}")
                return Result.failure(UnsupportedFormatException("Не удалось открыть файл. Проверьте разрешения на чтение файлов."))
            }
            
            android.util.Log.d(TAG, "✅ CBR DIAGNOSTIC: Input stream opened successfully")
            
            // Create temporary file for JunRAR (it requires File access)
            tempFile = File.createTempFile("cbr_temp_${System.currentTimeMillis()}", ".cbr", context.cacheDir).apply {
                deleteOnExit()
            }
            
            android.util.Log.d(TAG, "📁 CBR DIAGNOSTIC: Copying to temp file: ${tempFile?.absolutePath}")
            
            try {
                inputStream.use { input ->
                    tempFile?.outputStream()?.use { output ->
                        val bytesCount = input.copyTo(output)
                        android.util.Log.d(TAG, "📦 CBR DIAGNOSTIC: Copied $bytesCount bytes to temp file")
                    }
                }
                android.util.Log.d(TAG, "✅ CBR DIAGNOSTIC: Temp file created: ${tempFile?.exists()}, size: ${tempFile?.length()} bytes")
            } catch (e: Exception) {
                android.util.Log.e(TAG, "❌ CBR DIAGNOSTIC: Failed to create temporary file", e)
                tempFile?.delete()
                throw UnsupportedFormatException("Failed to create temporary file: ${e.message}")
            }
            
            // Проверяем формат файла перед открытием
            android.util.Log.d(TAG, "🔍 Checking file format...")
            try {
                // Читаем первые байты для определения формата
                val header = ByteArray(8)
                val bytesRead = tempFile?.inputStream()?.use { it.read(header) } ?: 0
                android.util.Log.d(TAG, "📄 Read $bytesRead bytes: ${header.joinToString(" ") { "%02X".format(it) }}")
                
                // ZIP signature: 50 4B 03 04 (PK)
                // Примечание: BookReaderFactory теперь автоматически определяет ZIP файлы и использует CbzReader
                // Эта проверка здесь для дополнительной валидации
                if (header[0] == 0x50.toByte() && header[1] == 0x4B.toByte()) {
                    android.util.Log.w(TAG, "⚠️ This is a ZIP file, not RAR! File has wrong extension. BookReaderFactory should have handled this.")
                    close()
                    return Result.failure(UnsupportedFormatException("Файл имеет расширение .cbr, но на самом деле это ZIP архив (.cbz). Приложение должно автоматически определить это."))
                }
                
                // RAR5 signature: 52 61 72 21 1A 07 01 00
                // RAR4 signature: 52 61 72 21 1A 07 00
                if (header[0] == 0x52.toByte() && header[1] == 0x61.toByte() && 
                    header[2] == 0x72.toByte() && header[3] == 0x21.toByte()) {
                    
                    if (header[6] == 0x01.toByte()) {
                        android.util.Log.d(TAG, "⚠️ RAR5 format detected - junrar support is experimental")
                        // Allow proceeding anyway, junrar 7.5.5+ might support it
                    }
                    android.util.Log.d(TAG, "✅ RAR format detected")
                    isRar = true
                } else {
                    android.util.Log.w(TAG, "⚠️ Unknown file signature: ${header.joinToString(" ") { "%02X".format(it) }}")
                }
            } catch (e: UnsupportedFormatException) {
                // Пробрасываем UnsupportedFormatException дальше
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
        return try {
            // Проверяем, что архив открыт (используется для валидации)
            if (archive == null) {
                return Result.failure(IllegalStateException("Archive not open"))
            }
            val localTempFile = tempFile ?: return Result.failure(IllegalStateException("Temporary file not available"))
            
            if (pageIndex < 0 || pageIndex >= imageFiles.size) {
                android.util.Log.w(TAG, "Page index $pageIndex out of bounds (0-${imageFiles.size - 1})")
                return Result.failure(IndexOutOfBoundsException("Page index out of bounds"))
            }
            
            val fileHeader = imageFiles[pageIndex]
            android.util.Log.d(TAG, "extract start: ${fileHeader.fileName}")
            android.util.Log.d(TAG, "Rendering page $pageIndex: ${fileHeader.fileName}")
            
            val rawCacheKey = PageByteCache.createKey(currentUri, pageIndex)
            val imageData = pageByteCache.get(rawCacheKey)?.also {
                android.util.Log.d(TAG, "Raw byte cache hit for page $pageIndex size=${it.size}")
            } ?: run {
                val outputStream = ByteArrayOutputStream()
                try {
                    // Create a thread-local archive instance for concurrent extraction
                    // Each operation gets its own Archive instance to avoid conflicts
                    Archive(localTempFile).use { threadLocalArchive ->
                        threadLocalArchive.extractFile(fileHeader, outputStream)
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
                
                outputStream.toByteArray().also { bytes ->
                    android.util.Log.d(TAG, "extract done: ${fileHeader.fileName} size=${bytes.size}")
                    if (bytes.isNotEmpty()) {
                        pageByteCache.put(rawCacheKey, bytes)
                    }
                }
            }
            
            if (imageData.isEmpty()) {
                android.util.Log.w(TAG, "No data extracted for page $pageIndex")
                return Result.failure(IllegalStateException("No data extracted for page"))
            }
            
            // Generate a unique cache key for this page that respects render parameters
            val cacheKey = createCacheKey(
                currentUri,
                pageIndex,
                maxWidth,
                maxHeight,
                scale
            )
            
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
    
    private fun createCacheKey(
        uri: Uri?,
        pageIndex: Int,
        maxWidth: Int,
        maxHeight: Int,
        scale: Float
    ): String {
        val uriHash = uri?.toString()?.hashCode() ?: 0
        val normalizedScale = String.format(java.util.Locale.US, "%.3f", scale)
        return "${uriHash}_${pageIndex}_${maxWidth.coerceAtLeast(1)}x${maxHeight.coerceAtLeast(1)}_$normalizedScale"
    }
    
    /**
     * Natural order comparator that properly sorts filenames with numbers
     * (e.g., page1.jpg, page2.jpg, page10.jpg instead of page1.jpg, page10.jpg, page2.jpg)
     */
    private fun naturalOrderComparator(): Comparator<FileHeader> {
        return Comparator { header1, header2 ->
            val name1 = header1.fileName.replace('\\', '/').lowercase()
            val name2 = header2.fileName.replace('\\', '/').lowercase()

            val segments1 = name1.split("/").filter { it.isNotBlank() }
            val segments2 = name2.split("/").filter { it.isNotBlank() }

            val minSegments = minOf(segments1.size, segments2.size)
            for (segmentIndex in 0 until minSegments) {
                val compare = compareNaturalSegment(segments1[segmentIndex], segments2[segmentIndex])
                if (compare != 0) {
                    return@Comparator compare
                }
            }

            // If all shared segments are equal, shorter path (less nested) goes first
            if (segments1.size != segments2.size) {
                return@Comparator segments1.size.compareTo(segments2.size)
            }

            // If all segments are equal and paths have the same length, files are identical
            // No need to compare full paths again as it would defeat the hierarchical sorting
            0
        }
    }

    private fun compareNaturalSegment(a: String, b: String): Int {
        if (a == b) return 0

        val partsA = a.split("(?<=\\D)(?=\\d)|(?<=\\d)(?=\\D)".toRegex())
        val partsB = b.split("(?<=\\D)(?=\\d)|(?<=\\d)(?=\\D)".toRegex())

        val minParts = minOf(partsA.size, partsB.size)
        for (index in 0 until minParts) {
            val partA = partsA[index]
            val partB = partsB[index]

            val numberA = partA.toIntOrNull()
            val numberB = partB.toIntOrNull()

            val result = when {
                numberA != null && numberB != null -> numberA.compareTo(numberB)
                else -> partA.compareTo(partB)
            }

            if (result != 0) {
                return result
            }
        }

        return partsA.size.compareTo(partsB.size)
    }
}
