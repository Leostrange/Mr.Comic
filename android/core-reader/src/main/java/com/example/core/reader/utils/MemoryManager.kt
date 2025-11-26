package com.example.core.reader.utils

import android.content.Context
import android.graphics.Bitmap
import android.util.LruCache
import androidx.lifecycle.DefaultLifecycleObserver
import androidx.lifecycle.LifecycleOwner
import kotlinx.coroutines.*
import java.lang.ref.WeakReference
import java.util.concurrent.atomic.AtomicInteger

/**
 * Менеджер памяти для управления кэшем изображений и предотвращения утечек
 */
class MemoryManager private constructor() : DefaultLifecycleObserver {
    
    companion object {
        private const val TAG = "MemoryManager"
        private const val MAX_MEMORY_CACHE_SIZE = 50 * 1024 * 1024 // 50MB
        private const val CLEANUP_INTERVAL_MS = 30_000L // 30 секунд
        private const val MAX_CACHE_AGE_MS = 300_000L // 5 минут
        
        @Volatile
        private var INSTANCE: MemoryManager? = null
        
        fun getInstance(): MemoryManager {
            return INSTANCE ?: synchronized(this) {
                INSTANCE ?: MemoryManager().also { INSTANCE = it }
            }
        }
    }
    
    private val memoryCache = object : LruCache<String, CachedBitmap>(MAX_MEMORY_CACHE_SIZE / 1024) {
        override fun sizeOf(key: String, value: CachedBitmap): Int {
            return value.bitmap.byteCount / 1024
        }
    }
    
    private val cleanupJob = SupervisorJob()
    private val cleanupScope = CoroutineScope(Dispatchers.IO + cleanupJob)
    
    private var isAppInBackground = false
    
    init {
        startPeriodicCleanup()
    }
    
    /**
     * Кэшированное изображение с метаданными
     */
    data class CachedBitmap(
        val bitmap: Bitmap,
        val timestamp: Long = System.currentTimeMillis(),
        val accessCount: Int = 0
    )
    
    /**
     * Получить изображение из кэша
     */
    fun getBitmap(key: String): Bitmap? {
        val cached = memoryCache.get(key)
        return if (cached != null && !cached.bitmap.isRecycled) {
            hitCount.incrementAndGet()
            memoryCache.put(key, cached.copy(accessCount = cached.accessCount + 1))
            cached.bitmap
        } else {
            missCount.incrementAndGet()
            memoryCache.remove(key)
            null
        }
    }
    
    /**
     * Сохранить изображение в кэш
     */
    fun putBitmap(key: String, bitmap: Bitmap) {
        if (!bitmap.isRecycled && canCacheBitmap(bitmap)) {
            memoryCache.put(key, CachedBitmap(bitmap))
            android.util.Log.d(TAG, "Cached bitmap: $key (${bitmap.width}x${bitmap.height})")
        }
    }
    
    /**
     * Проверить, можно ли кэшировать bitmap с учетом доступной памяти
     */
    private fun canCacheBitmap(bitmap: Bitmap): Boolean {
        if (bitmap.isRecycled) {
            android.util.Log.w(TAG, "Cannot cache recycled bitmap")
            return false
        }
        
        val size = bitmap.byteCount
        val maxSize = MAX_MEMORY_CACHE_SIZE / 4 // Максимум 25% от кэша на одно изображение
        
        // Check available memory
        val runtime = Runtime.getRuntime()
        val usedMemory = runtime.totalMemory() - runtime.freeMemory()
        val availableMemory = runtime.maxMemory() - usedMemory
        val memoryUsagePercent = usedMemory.toFloat() / runtime.maxMemory().toFloat()
        
        // Don't cache if we're using more than 80% of memory
        if (memoryUsagePercent > 0.8f) {
            android.util.Log.w(TAG, "High memory usage (${(memoryUsagePercent * 100).toInt()}%), skipping cache")
            return false
        }
        
        // Don't cache if bitmap is too large or would use too much available memory
        if (size > maxSize || size > availableMemory / 10) {
            android.util.Log.w(TAG, "Bitmap too large for cache: ${size / 1024 / 1024}MB, available: ${availableMemory / 1024 / 1024}MB")
            return false
        }
        
        return true
    }
    
    /**
     * Очистить кэш
     */
    fun clearCache() {
        android.util.Log.d(TAG, "Clearing memory cache")
        memoryCache.evictAll()
        System.gc()
    }
    
    /**
     * Очистить старые записи
     */
    fun cleanupOldEntries() {
        val currentTime = System.currentTimeMillis()
        val keysToRemove = mutableListOf<String>()
        
        // Находим старые записи
        val snapshot = memoryCache.snapshot()
        for ((key, cached) in snapshot) {
            if (currentTime - cached.timestamp > MAX_CACHE_AGE_MS) {
                keysToRemove.add(key)
            }
        }
        
        // Удаляем старые записи
        for (key in keysToRemove) {
            memoryCache.remove(key)
        }
        
        if (keysToRemove.isNotEmpty()) {
            android.util.Log.d(TAG, "Cleaned up ${keysToRemove.size} old cache entries")
        }
    }
    
    /**
     * Получить статистику кэша
     */
    fun getCacheStats(): CacheStats {
        val snapshot = memoryCache.snapshot()
        val totalSize = snapshot.values.sumOf { it.bitmap.byteCount.toLong() }
        val entryCount = snapshot.size
        
        return CacheStats(
            entryCount = entryCount,
            totalSizeBytes = totalSize,
            maxSizeBytes = MAX_MEMORY_CACHE_SIZE.toLong(),
            hitRate = calculateHitRate()
        )
    }
    
    private val hitCount = AtomicInteger(0)
    private val missCount = AtomicInteger(0)
    
    private fun calculateHitRate(): Float {
        val hits = hitCount.get()
        val misses = missCount.get()
        val total = hits + misses
        return if (total > 0) hits.toFloat() / total else 0f
    }
    
    /**
     * Запустить периодическую очистку
     */
    private fun startPeriodicCleanup() {
        cleanupScope.launch {
            while (isActive) {
                delay(CLEANUP_INTERVAL_MS)
                cleanupOldEntries()
                
                // Дополнительная очистка при нехватке памяти
                if (isLowMemory()) {
                    android.util.Log.w(TAG, "Low memory detected, clearing cache")
                    clearCache()
                }
            }
        }
    }
    
    /**
     * Проверить, нехватка ли памяти
     */
    private fun isLowMemory(): Boolean {
        val runtime = Runtime.getRuntime()
        val usedMemory = runtime.totalMemory() - runtime.freeMemory()
        val maxMemory = runtime.maxMemory()
        val memoryUsage = usedMemory.toFloat() / maxMemory.toFloat()
        
        return memoryUsage > 0.8f // 80% использования памяти
    }
    
    override fun onStop(owner: LifecycleOwner) {
        isAppInBackground = true
        android.util.Log.d(TAG, "App backgrounded, clearing cache")
        clearCache()
    }
    
    override fun onStart(owner: LifecycleOwner) {
        isAppInBackground = false
        android.util.Log.d(TAG, "App foregrounded")
    }
    
    /**
     * Освободить ресурсы
     */
    fun destroy() {
        cleanupJob.cancel()
        clearCache()
    }
    
    /**
     * Статистика кэша
     */
    data class CacheStats(
        val entryCount: Int,
        val totalSizeBytes: Long,
        val maxSizeBytes: Long,
        val hitRate: Float
    )
}
