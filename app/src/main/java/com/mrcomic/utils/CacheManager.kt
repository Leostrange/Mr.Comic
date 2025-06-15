package com.example.mrcomic.utils

import android.content.Context
import android.util.Log
import kotlinx.coroutines.*
import java.io.File
import java.util.concurrent.atomic.AtomicLong

/**
 * Менеджер кэша с автоматической очисткой по объёму и времени
 * Оптимизирован для управления кэшем рендеренных страниц PDF
 */
class CacheManager(
    private val context: Context,
    private val maxCacheSize: Long = 200 * 1024 * 1024, // 200MB по умолчанию
    private val maxAge: Long = 24 * 60 * 60 * 1000, // 24 часа
    private val cleanupInterval: Long = 5 * 60 * 1000 // Очистка каждые 5 минут
) {

    companion object {
        private const val TAG = "CacheManager"
        private const val CACHE_DIR_NAME = "pdf_cache"
        private const val EMERGENCY_CLEANUP_THRESHOLD = 0.9f // 90% заполнения
        private const val TARGET_CLEANUP_PERCENTAGE = 0.7f // Очищать до 70%
    }

    private val cacheDir: File = File(context.cacheDir, CACHE_DIR_NAME)
    private val currentCacheSize = AtomicLong(0)
    private val cleanupScope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var cleanupJob: Job? = null
    
    // Статистика
    private var totalCleanups = 0
    private var totalFilesDeleted = 0
    private var totalBytesFreed = 0L

    init {
        initializeCache()
        startPeriodicCleanup()
    }

    /**
     * Инициализация кэша
     */
    private fun initializeCache() {
        if (!cacheDir.exists()) {
            cacheDir.mkdirs()
            Log.i(TAG, "Created cache directory: ${cacheDir.absolutePath}")
        }
        
        // Подсчитываем текущий размер кэша
        calculateCurrentCacheSize()
        
        Log.i(TAG, "Cache initialized: ${currentCacheSize.get() / (1024 * 1024)}MB / ${maxCacheSize / (1024 * 1024)}MB")
    }

    /**
     * Подсчёт текущего размера кэша
     */
    private fun calculateCurrentCacheSize() {
        val totalSize = cacheDir.walkTopDown()
            .filter { it.isFile }
            .map { it.length() }
            .sum()
        
        currentCacheSize.set(totalSize)
    }

    /**
     * Запуск периодической очистки
     */
    private fun startPeriodicCleanup() {
        cleanupJob = cleanupScope.launch {
            while (isActive) {
                delay(cleanupInterval)
                performCleanup(false)
            }
        }
    }

    /**
     * Проверка необходимости очистки перед добавлением файла
     */
    suspend fun ensureSpaceForFile(requiredSize: Long): Boolean = withContext(Dispatchers.IO) {
        val currentSize = currentCacheSize.get()
        val availableSpace = maxCacheSize - currentSize
        
        if (requiredSize <= availableSpace) {
            return@withContext true
        }
        
        Log.i(TAG, "Need to free space: ${requiredSize / (1024 * 1024)}MB required, ${availableSpace / (1024 * 1024)}MB available")
        
        // Экстренная очистка
        val freedSpace = performCleanup(true, requiredSize)
        
        return@withContext freedSpace >= requiredSize
    }

    /**
     * Выполнение очистки кэша
     */
    suspend fun performCleanup(
        emergency: Boolean = false,
        requiredSpace: Long = 0
    ): Long = withContext(Dispatchers.IO) {
        
        val startTime = System.currentTimeMillis()
        val initialSize = currentCacheSize.get()
        
        Log.i(TAG, "Starting cache cleanup (emergency: $emergency, required: ${requiredSpace / (1024 * 1024)}MB)")
        
        val files = cacheDir.walkTopDown()
            .filter { it.isFile }
            .toList()
        
        if (files.isEmpty()) {
            Log.d(TAG, "No files to clean")
            return@withContext 0L
        }
        
        // Сортируем файлы по времени последнего доступа (старые первыми)
        val sortedFiles = files.sortedBy { it.lastModified() }
        
        var deletedFiles = 0
        var freedBytes = 0L
        val currentTime = System.currentTimeMillis()
        
        for (file in sortedFiles) {
            val shouldDelete = when {
                // Экстренная очистка - удаляем пока не освободим нужное место
                emergency && freedBytes < requiredSpace -> true
                
                // Файлы старше максимального возраста
                currentTime - file.lastModified() > maxAge -> true
                
                // Превышен лимит кэша - удаляем старые файлы
                !emergency && currentCacheSize.get() > maxCacheSize * EMERGENCY_CLEANUP_THRESHOLD -> true
                
                else -> false
            }
            
            if (shouldDelete) {
                val fileSize = file.length()
                
                if (file.delete()) {
                    deletedFiles++
                    freedBytes += fileSize
                    currentCacheSize.addAndGet(-fileSize)
                    
                    Log.d(TAG, "Deleted cache file: ${file.name} (${fileSize / 1024}KB)")
                    
                    // Проверяем, достигли ли цели очистки
                    if (emergency && freedBytes >= requiredSpace) {
                        break
                    }
                    
                    if (!emergency && currentCacheSize.get() <= maxCacheSize * TARGET_CLEANUP_PERCENTAGE) {
                        break
                    }
                } else {
                    Log.w(TAG, "Failed to delete cache file: ${file.name}")
                }
            }
        }
        
        val duration = System.currentTimeMillis() - startTime
        totalCleanups++
        totalFilesDeleted += deletedFiles
        totalBytesFreed += freedBytes
        
        Log.i(TAG, "Cache cleanup completed: deleted $deletedFiles files, freed ${freedBytes / (1024 * 1024)}MB in ${duration}ms")
        
        return@withContext freedBytes
    }

    /**
     * Полная очистка кэша
     */
    suspend fun clearAllCache(): Boolean = withContext(Dispatchers.IO) {
        try {
            val files = cacheDir.walkTopDown()
                .filter { it.isFile }
                .toList()
            
            var deletedFiles = 0
            var freedBytes = 0L
            
            for (file in files) {
                val fileSize = file.length()
                if (file.delete()) {
                    deletedFiles++
                    freedBytes += fileSize
                }
            }
            
            currentCacheSize.set(0)
            
            Log.i(TAG, "Cleared all cache: deleted $deletedFiles files, freed ${freedBytes / (1024 * 1024)}MB")
            true
            
        } catch (e: Exception) {
            Log.e(TAG, "Error clearing cache", e)
            false
        }
    }

    /**
     * Получение статистики кэша
     */
    fun getCacheStatistics(): CacheStatistics {
        val files = cacheDir.walkTopDown()
            .filter { it.isFile }
            .toList()
        
        val currentSize = currentCacheSize.get()
        val usagePercentage = (currentSize.toFloat() / maxCacheSize) * 100f
        
        val oldestFile = files.minByOrNull { it.lastModified() }
        val newestFile = files.maxByOrNull { it.lastModified() }
        
        return CacheStatistics(
            totalFiles = files.size,
            totalSizeBytes = currentSize,
            totalSizeMB = currentSize / (1024 * 1024),
            maxSizeMB = maxCacheSize / (1024 * 1024),
            usagePercentage = usagePercentage,
            oldestFileAge = oldestFile?.let { System.currentTimeMillis() - it.lastModified() },
            newestFileAge = newestFile?.let { System.currentTimeMillis() - it.lastModified() },
            totalCleanups = totalCleanups,
            totalFilesDeleted = totalFilesDeleted,
            totalBytesFreed = totalBytesFreed
        )
    }

    /**
     * Проверка состояния кэша
     */
    fun getCacheHealth(): CacheHealth {
        val stats = getCacheStatistics()
        
        val health = when {
            stats.usagePercentage < 50f -> CacheHealth.HEALTHY
            stats.usagePercentage < 80f -> CacheHealth.WARNING
            stats.usagePercentage < 95f -> CacheHealth.CRITICAL
            else -> CacheHealth.FULL
        }
        
        return health
    }

    /**
     * Добавление файла в кэш с проверкой места
     */
    suspend fun addFileToCache(file: File): Boolean = withContext(Dispatchers.IO) {
        val fileSize = file.length()
        
        if (fileSize > maxCacheSize) {
            Log.w(TAG, "File too large for cache: ${fileSize / (1024 * 1024)}MB")
            return@withContext false
        }
        
        if (!ensureSpaceForFile(fileSize)) {
            Log.w(TAG, "Cannot free enough space for file: ${fileSize / (1024 * 1024)}MB")
            return@withContext false
        }
        
        currentCacheSize.addAndGet(fileSize)
        Log.d(TAG, "Added file to cache tracking: ${file.name} (${fileSize / 1024}KB)")
        
        return@withContext true
    }

    /**
     * Удаление файла из кэша
     */
    fun removeFileFromCache(file: File): Boolean {
        if (file.exists()) {
            val fileSize = file.length()
            if (file.delete()) {
                currentCacheSize.addAndGet(-fileSize)
                Log.d(TAG, "Removed file from cache: ${file.name} (${fileSize / 1024}KB)")
                return true
            }
        }
        return false
    }

    /**
     * Остановка менеджера кэша
     */
    fun shutdown() {
        cleanupJob?.cancel()
        cleanupScope.cancel()
        Log.i(TAG, "Cache manager shutdown")
    }

    /**
     * Статистика кэша
     */
    data class CacheStatistics(
        val totalFiles: Int,
        val totalSizeBytes: Long,
        val totalSizeMB: Long,
        val maxSizeMB: Long,
        val usagePercentage: Float,
        val oldestFileAge: Long?,
        val newestFileAge: Long?,
        val totalCleanups: Int,
        val totalFilesDeleted: Int,
        val totalBytesFreed: Long
    ) {
        override fun toString(): String {
            return "CacheStats(files=$totalFiles, size=${totalSizeMB}MB/${maxSizeMB}MB (${String.format("%.1f", usagePercentage)}%), cleanups=$totalCleanups)"
        }
    }

    /**
     * Состояние здоровья кэша
     */
    enum class CacheHealth {
        HEALTHY,    // < 50%
        WARNING,    // 50-80%
        CRITICAL,   // 80-95%
        FULL        // > 95%
    }
}

