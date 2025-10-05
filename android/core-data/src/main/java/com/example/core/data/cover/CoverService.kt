package com.example.core.data.cover

import android.graphics.Bitmap
import com.example.core.data.repository.ComicRepository
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Сервис для работы с обложками комиксов
 * Объединяет извлечение и кэширование обложек
 */
@Singleton
class CoverService @Inject constructor(
    private val coverExtractor: CoverExtractor,
    private val coverCacheManager: CoverCacheManager,
    private val comicRepository: ComicRepository,
    @dagger.hilt.android.qualifiers.ApplicationContext private val context: android.content.Context
) {
    
    companion object {
        private const val TAG = "CoverService"
    }
    
    /**
     * Получить обложку комикса
     * Сначала проверяет кэш, затем извлекает из файла
     * @param comicId ID комикса
     * @return Bitmap обложки или null
     */
    suspend fun getCover(comicId: String): Bitmap? = withContext(Dispatchers.IO) {
        try {
            // Проверяем кэш
            val cachedCover = coverCacheManager.getCover(comicId)
            if (cachedCover != null) {
                android.util.Log.d(TAG, "Cover loaded from cache: $comicId")
                return@withContext cachedCover
            }
            
            // Получаем комикс из базы
            val comic = comicRepository.getComicById(comicId)
            if (comic == null) {
                android.util.Log.w(TAG, "Comic not found: $comicId")
                return@withContext null
            }
            
            android.util.Log.d(TAG, "Extracting cover for comic: ${comic.title}, path: ${comic.path}")
            
            // Извлекаем обложку из файла
            // Проверяем, является ли путь content:// URI или file:// путем
            val cover = if (comic.path.startsWith("content://") || comic.path.startsWith("file://")) {
                // Это URI, используем его напрямую
                val uri = android.net.Uri.parse(comic.path)
                android.util.Log.d(TAG, "Using URI: $uri")
                extractCoverFromUri(uri)
            } else {
                // Это обычный путь к файлу
                val file = File(comic.path)
                android.util.Log.d(TAG, "Using File: ${file.absolutePath}")
                coverExtractor.extractCover(file)
            }
            
            if (cover != null) {
                // Сохраняем в кэш
                val coverPath = coverCacheManager.saveCover(comicId, cover)
                
                // Обновляем путь к обложке в базе
                if (coverPath != null) {
                    val updatedComic = comic.copy(coverPath = coverPath)
                    comicRepository.updateComic(updatedComic)
                }
                
                android.util.Log.d(TAG, "Cover extracted and cached: $comicId")
            }
            
            cover
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error getting cover for: $comicId", e)
            null
        }
    }
    
    /**
     * Извлечь обложку из URI
     */
    private suspend fun extractCoverFromUri(uri: android.net.Uri): Bitmap? = withContext(Dispatchers.IO) {
        try {
            android.util.Log.d(TAG, "Extracting cover from URI: $uri")
            
            // Создаем временный файл
            val tempFile = File.createTempFile("cover_temp_", ".tmp", context.cacheDir)
            tempFile.deleteOnExit()
            
            // Копируем содержимое URI во временный файл
            context.contentResolver.openInputStream(uri)?.use { input ->
                tempFile.outputStream().use { output ->
                    input.copyTo(output)
                }
            } ?: run {
                android.util.Log.e(TAG, "Failed to open input stream for URI: $uri")
                return@withContext null
            }
            
            android.util.Log.d(TAG, "Temp file created: ${tempFile.absolutePath}, size: ${tempFile.length()}")
            
            // Извлекаем обложку из временного файла
            val cover = coverExtractor.extractCover(tempFile)
            
            // Удаляем временный файл
            tempFile.delete()
            
            cover
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error extracting cover from URI: $uri", e)
            null
        }
    }
    
    /**
     * Получить путь к обложке
     * @param comicId ID комикса
     * @return путь к файлу обложки или null
     */
    suspend fun getCoverPath(comicId: String): String? = withContext(Dispatchers.IO) {
        try {
            // Проверяем кэш
            val cachedPath = coverCacheManager.getCoverPath(comicId)
            if (cachedPath != null) {
                return@withContext cachedPath
            }
            
            // Извлекаем обложку
            val cover = getCover(comicId)
            if (cover != null) {
                return@withContext coverCacheManager.getCoverPath(comicId)
            }
            
            null
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error getting cover path for: $comicId", e)
            null
        }
    }
    
    /**
     * Получить thumbnail обложки
     * @param comicId ID комикса
     * @param size размер thumbnail
     * @return Bitmap thumbnail или null
     */
    suspend fun getThumbnail(
        comicId: String,
        size: Int = CoverCacheManager.THUMBNAIL_MEDIUM_SIZE
    ): Bitmap? = withContext(Dispatchers.IO) {
        try {
            // Проверяем, есть ли thumbnail в кэше
            val cachedThumbnail = coverCacheManager.getThumbnail(comicId, size)
            if (cachedThumbnail != null) {
                return@withContext cachedThumbnail
            }
            
            // Получаем обложку (из кэша или извлекаем)
            val cover = getCover(comicId)
            if (cover != null) {
                // Создаем thumbnail
                coverCacheManager.createThumbnail(comicId, size)
                return@withContext coverCacheManager.getThumbnail(comicId, size)
            }
            
            null
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error getting thumbnail for: $comicId", e)
            null
        }
    }
    
    /**
     * Предзагрузить обложки для списка комиксов
     * @param comicIds список ID комиксов
     */
    suspend fun preloadCovers(comicIds: List<String>) {
        withContext(Dispatchers.IO) {
            try {
                android.util.Log.d(TAG, "Preloading ${comicIds.size} covers")
                
                for (comicId in comicIds) {
                    // Пропускаем, если уже в кэше
                    if (coverCacheManager.hasCover(comicId)) {
                        continue
                    }
                    
                    // Извлекаем обложку
                    getCover(comicId)
                }
                
                android.util.Log.d(TAG, "Preloading completed")
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Error preloading covers", e)
            }
        }
    }
    
    /**
     * Обновить обложку комикса
     * Удаляет старую обложку из кэша и извлекает новую
     * @param comicId ID комикса
     * @return Bitmap новой обложки или null
     */
    suspend fun refreshCover(comicId: String): Bitmap? = withContext(Dispatchers.IO) {
        try {
            // Удаляем старую обложку из кэша
            coverCacheManager.deleteCover(comicId)
            
            // Извлекаем новую обложку
            getCover(comicId)
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error refreshing cover for: $comicId", e)
            null
        }
    }
    
    /**
     * Удалить обложку комикса
     * @param comicId ID комикса
     */
    suspend fun deleteCover(comicId: String) {
        withContext(Dispatchers.IO) {
            try {
                coverCacheManager.deleteCover(comicId)
                
                // Обновляем комикс в базе
                val comic = comicRepository.getComicById(comicId)
                if (comic != null) {
                    val updatedComic = comic.copy(coverPath = null)
                    comicRepository.updateComic(updatedComic)
                }
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Error deleting cover for: $comicId", e)
            }
            Unit
        }
    }
    
    /**
     * Очистить кэш обложек
     */
    suspend fun clearCache() {
        withContext(Dispatchers.IO) {
            try {
                coverCacheManager.clearCache()
                android.util.Log.d(TAG, "Cache cleared")
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Error clearing cache", e)
            }
        }
    }
    
    /**
     * Очистить устаревшие обложки
     * @param maxAgeDays максимальный возраст в днях
     * @return количество удаленных файлов
     */
    suspend fun clearOldCovers(maxAgeDays: Long = 30): Int = withContext(Dispatchers.IO) {
        try {
            coverCacheManager.clearOldCovers(maxAgeDays)
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error clearing old covers", e)
            0
        }
    }
    
    /**
     * Получить информацию о кэше
     */
    fun getCacheInfo(): CacheInfo {
        return CacheInfo(
            size = coverCacheManager.getCacheSize(),
            fileCount = coverCacheManager.getCacheFileCount()
        )
    }
}

/**
 * Информация о кэше обложек
 */
data class CacheInfo(
    val size: Long,        // Размер в байтах
    val fileCount: Int     // Количество файлов
) {
    /**
     * Размер в МБ
     */
    val sizeMb: Float
        get() = size / 1024f / 1024f
}
