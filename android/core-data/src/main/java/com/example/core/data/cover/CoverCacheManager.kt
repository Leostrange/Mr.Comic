package com.example.core.data.cover

import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.security.MessageDigest
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Менеджер кэша обложек
 * Управляет дисковым кэшем обложек комиксов
 */
@Singleton
class CoverCacheManager @Inject constructor(
    @ApplicationContext private val context: Context
) {
    
    companion object {
        private const val TAG = "CoverCacheManager"
        private const val CACHE_DIR_NAME = "covers"
        private const val THUMBNAIL_DIR_NAME = "thumbnails"
        private const val MAX_CACHE_SIZE_MB = 100L
        private const val MAX_CACHE_AGE_DAYS = 30L
        
        // Размеры для thumbnails
        const val THUMBNAIL_SMALL_SIZE = 128
        const val THUMBNAIL_MEDIUM_SIZE = 256
        const val THUMBNAIL_LARGE_SIZE = 512
    }
    
    private val cacheDir: File by lazy {
        File(context.cacheDir, CACHE_DIR_NAME).apply {
            if (!exists()) mkdirs()
        }
    }
    
    private val thumbnailDir: File by lazy {
        File(context.cacheDir, THUMBNAIL_DIR_NAME).apply {
            if (!exists()) mkdirs()
        }
    }
    
    /**
     * Сохранить обложку в кэш
     * @param comicId ID комикса
     * @param bitmap обложка
     * @return путь к сохраненному файлу или null при ошибке
     */
    suspend fun saveCover(comicId: String, bitmap: Bitmap): String? = withContext(Dispatchers.IO) {
        try {
            val fileName = generateFileName(comicId)
            val file = File(cacheDir, fileName)
            
            FileOutputStream(file).use { out ->
                bitmap.compress(Bitmap.CompressFormat.JPEG, 90, out)
            }
            
            android.util.Log.d(TAG, "Cover saved: ${file.absolutePath}")
            file.absolutePath
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error saving cover for: $comicId", e)
            null
        }
    }
    
    /**
     * Получить обложку из кэша
     * @param comicId ID комикса
     * @return Bitmap обложки или null если не найдена
     */
    suspend fun getCover(comicId: String): Bitmap? = withContext(Dispatchers.IO) {
        try {
            val fileName = generateFileName(comicId)
            val file = File(cacheDir, fileName)
            
            if (!file.exists()) {
                return@withContext null
            }
            
            BitmapFactory.decodeFile(file.absolutePath)
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error loading cover for: $comicId", e)
            null
        }
    }
    
    /**
     * Получить путь к обложке в кэше
     * @param comicId ID комикса
     * @return путь к файлу или null если не существует
     */
    fun getCoverPath(comicId: String): String? {
        val fileName = generateFileName(comicId)
        val file = File(cacheDir, fileName)
        return if (file.exists()) file.absolutePath else null
    }
    
    /**
     * Проверить, существует ли обложка в кэше
     * @param comicId ID комикса
     * @return true если обложка существует
     */
    fun hasCover(comicId: String): Boolean {
        val fileName = generateFileName(comicId)
        return File(cacheDir, fileName).exists()
    }
    
    /**
     * Удалить обложку из кэша
     * @param comicId ID комикса
     * @return true если удалено успешно
     */
    suspend fun deleteCover(comicId: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val fileName = generateFileName(comicId)
            val file = File(cacheDir, fileName)
            
            if (file.exists()) {
                file.delete()
            } else {
                false
            }
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error deleting cover for: $comicId", e)
            false
        }
    }
    
    /**
     * Создать thumbnail из обложки
     * @param comicId ID комикса
     * @param size размер thumbnail
     * @return путь к thumbnail или null при ошибке
     */
    suspend fun createThumbnail(
        comicId: String,
        size: Int = THUMBNAIL_MEDIUM_SIZE
    ): String? = withContext(Dispatchers.IO) {
        try {
            // Загружаем оригинальную обложку
            val cover = getCover(comicId) ?: return@withContext null
            
            // Создаем thumbnail
            val thumbnail = Bitmap.createScaledBitmap(
                cover,
                size,
                (size * cover.height.toFloat() / cover.width.toFloat()).toInt(),
                true
            )
            
            // Сохраняем thumbnail
            val fileName = generateThumbnailFileName(comicId, size)
            val file = File(thumbnailDir, fileName)
            
            FileOutputStream(file).use { out ->
                thumbnail.compress(Bitmap.CompressFormat.JPEG, 85, out)
            }
            
            // Освобождаем ресурсы
            if (thumbnail != cover) {
                thumbnail.recycle()
            }
            
            android.util.Log.d(TAG, "Thumbnail created: ${file.absolutePath}")
            file.absolutePath
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error creating thumbnail for: $comicId", e)
            null
        }
    }
    
    /**
     * Получить thumbnail из кэша
     * @param comicId ID комикса
     * @param size размер thumbnail
     * @return Bitmap thumbnail или null если не найден
     */
    suspend fun getThumbnail(
        comicId: String,
        size: Int = THUMBNAIL_MEDIUM_SIZE
    ): Bitmap? = withContext(Dispatchers.IO) {
        try {
            val fileName = generateThumbnailFileName(comicId, size)
            val file = File(thumbnailDir, fileName)
            
            if (!file.exists()) {
                // Пробуем создать thumbnail
                createThumbnail(comicId, size)
                if (!file.exists()) {
                    return@withContext null
                }
            }
            
            BitmapFactory.decodeFile(file.absolutePath)
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error loading thumbnail for: $comicId", e)
            null
        }
    }
    
    /**
     * Очистить весь кэш обложек
     */
    suspend fun clearCache(): Boolean = withContext(Dispatchers.IO) {
        try {
            var success = true
            
            // Очищаем обложки
            cacheDir.listFiles()?.forEach { file ->
                if (!file.delete()) {
                    success = false
                }
            }
            
            // Очищаем thumbnails
            thumbnailDir.listFiles()?.forEach { file ->
                if (!file.delete()) {
                    success = false
                }
            }
            
            android.util.Log.d(TAG, "Cache cleared")
            success
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error clearing cache", e)
            false
        }
    }
    
    /**
     * Очистить устаревшие обложки
     * @param maxAgeDays максимальный возраст в днях
     * @return количество удаленных файлов
     */
    suspend fun clearOldCovers(maxAgeDays: Long = MAX_CACHE_AGE_DAYS): Int = withContext(Dispatchers.IO) {
        try {
            val now = System.currentTimeMillis()
            val maxAge = maxAgeDays * 24 * 60 * 60 * 1000
            var deletedCount = 0
            
            // Очищаем старые обложки
            cacheDir.listFiles()?.forEach { file ->
                if (now - file.lastModified() > maxAge) {
                    if (file.delete()) {
                        deletedCount++
                    }
                }
            }
            
            // Очищаем старые thumbnails
            thumbnailDir.listFiles()?.forEach { file ->
                if (now - file.lastModified() > maxAge) {
                    if (file.delete()) {
                        deletedCount++
                    }
                }
            }
            
            android.util.Log.d(TAG, "Deleted $deletedCount old covers")
            deletedCount
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error clearing old covers", e)
            0
        }
    }
    
    /**
     * Очистить кэш если превышен лимит размера
     * @param maxSizeMb максимальный размер в МБ
     * @return количество удаленных файлов
     */
    suspend fun clearIfOverLimit(maxSizeMb: Long = MAX_CACHE_SIZE_MB): Int = withContext(Dispatchers.IO) {
        try {
            val currentSize = getCacheSize()
            val maxSize = maxSizeMb * 1024 * 1024
            
            if (currentSize <= maxSize) {
                return@withContext 0
            }
            
            android.util.Log.d(TAG, "Cache size exceeded: ${currentSize / 1024 / 1024}MB / ${maxSizeMb}MB")
            
            // Получаем список файлов, отсортированных по дате изменения
            val allFiles = mutableListOf<File>()
            cacheDir.listFiles()?.let { allFiles.addAll(it) }
            thumbnailDir.listFiles()?.let { allFiles.addAll(it) }
            
            val sortedFiles = allFiles.sortedBy { it.lastModified() }
            
            var deletedCount = 0
            var freedSize = 0L
            
            // Удаляем самые старые файлы пока не достигнем лимита
            for (file in sortedFiles) {
                if (currentSize - freedSize <= maxSize) {
                    break
                }
                
                freedSize += file.length()
                if (file.delete()) {
                    deletedCount++
                }
            }
            
            android.util.Log.d(TAG, "Deleted $deletedCount files, freed ${freedSize / 1024 / 1024}MB")
            deletedCount
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error clearing cache by size", e)
            0
        }
    }
    
    /**
     * Получить размер кэша в байтах
     */
    fun getCacheSize(): Long {
        var size = 0L
        
        cacheDir.listFiles()?.forEach { file ->
            size += file.length()
        }
        
        thumbnailDir.listFiles()?.forEach { file ->
            size += file.length()
        }
        
        return size
    }
    
    /**
     * Получить количество файлов в кэше
     */
    fun getCacheFileCount(): Int {
        val coverCount = cacheDir.listFiles()?.size ?: 0
        val thumbnailCount = thumbnailDir.listFiles()?.size ?: 0
        return coverCount + thumbnailCount
    }
    
    /**
     * Генерировать имя файла для обложки
     */
    private fun generateFileName(comicId: String): String {
        val hash = md5(comicId)
        return "$hash.jpg"
    }
    
    /**
     * Генерировать имя файла для thumbnail
     */
    private fun generateThumbnailFileName(comicId: String, size: Int): String {
        val hash = md5(comicId)
        return "${hash}_${size}.jpg"
    }
    
    /**
     * Вычислить MD5 хэш строки
     */
    private fun md5(input: String): String {
        val md = MessageDigest.getInstance("MD5")
        val digest = md.digest(input.toByteArray())
        return digest.joinToString("") { "%02x".format(it) }
    }
}
