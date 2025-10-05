package com.example.core.reader.preload

import android.graphics.Bitmap
import com.example.core.reader.cache.BitmapCache
import com.example.core.reader.domain.MediaReader
import kotlinx.coroutines.*
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.Executors
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Система предзагрузки страниц для плавного скроллинга
 * Предзагружает ±1 страницу в фоновом потоке
 */
@Singleton
class PagePreloader @Inject constructor(
    private val bitmapCache: BitmapCache
) {
    
    companion object {
        private const val TAG = "PagePreloader"
        private const val PRELOAD_RANGE = 3 // Предзагружаем ±3 страницы для более плавного UX
    }
    
    // Отдельный dispatcher для IO операций предзагрузки
    private val preloadDispatcher = Executors.newFixedThreadPool(2).asCoroutineDispatcher()
    private val preloadScope = CoroutineScope(preloadDispatcher + SupervisorJob())
    
    // Активные задачи предзагрузки
    private val activeJobs = ConcurrentHashMap<String, Job>()
    
    // Текущий reader и параметры
    private var currentReader: MediaReader? = null
    private var currentUri: String? = null
    private var currentMaxWidth: Int = 1920
    private var currentMaxHeight: Int = 1080
    private var currentScale: Float = 1.0f
    
    /**
     * Установить текущий reader для предзагрузки
     */
    fun setCurrentReader(
        reader: MediaReader,
        uri: String,
        maxWidth: Int = 1920,
        maxHeight: Int = 1080,
        scale: Float = 1.0f
    ) {
        // Отменяем все предыдущие задачи
        cancelAllPreloading()
        
        currentReader = reader
        currentUri = uri
        currentMaxWidth = maxWidth
        currentMaxHeight = maxHeight
        currentScale = scale
        
        android.util.Log.d(TAG, "Set current reader for preloading: $uri")
    }
    
    /**
     * Предзагрузить страницы вокруг текущей
     */
    fun preloadAroundPage(currentPage: Int) {
        val reader = currentReader ?: return
        val uri = currentUri ?: return
        val pageCount = reader.getPageCount() ?: return
        
        android.util.Log.d(TAG, "Preloading around page $currentPage")
        
        // Отменяем старые задачи предзагрузки
        cancelPreloadingExcept(currentPage)
        
        // Предзагружаем страницы в диапазоне
        for (offset in -PRELOAD_RANGE..PRELOAD_RANGE) {
            val pageIndex = currentPage + offset
            
            if (pageIndex < 0 || pageIndex >= pageCount || pageIndex == currentPage) {
                continue
            }
            
            val cacheKey = bitmapCache.createKey(uri, pageIndex, currentMaxWidth, currentMaxHeight, currentScale)
            
            // Проверяем, есть ли уже в кэше
            if (bitmapCache.hasBitmap(cacheKey)) {
                continue
            }
            
            // Запускаем предзагрузку
            startPreloadingPage(pageIndex, cacheKey, reader)
        }
    }
    
    /**
     * Предзагрузить конкретную страницу
     */
    private fun startPreloadingPage(pageIndex: Int, cacheKey: String, reader: MediaReader) {
        val jobKey = "preload_$pageIndex"
        
        // Отменяем предыдущую задачу для этой страницы
        activeJobs[jobKey]?.cancel()
        
        val job = preloadScope.launch {
            try {
                android.util.Log.d(TAG, "Starting preload for page $pageIndex")
                
                val result = reader.renderPage(pageIndex, currentMaxWidth, currentMaxHeight, currentScale)
                
                if (result.isSuccess) {
                    val bitmap = result.getOrNull()
                    if (bitmap != null && !bitmap.isRecycled) {
                        bitmapCache.putBitmap(cacheKey, bitmap)
                        android.util.Log.d(TAG, "Preloaded page $pageIndex successfully")
                    }
                } else {
                    android.util.Log.w(TAG, "Failed to preload page $pageIndex: ${result.exceptionOrNull()?.message}")
                }
            } catch (e: CancellationException) {
                android.util.Log.d(TAG, "Preload cancelled for page $pageIndex")
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Error preloading page $pageIndex", e)
            } finally {
                activeJobs.remove(jobKey)
            }
        }
        
        activeJobs[jobKey] = job
    }
    
    /**
     * Отменить предзагрузку всех страниц кроме указанных
     */
    private fun cancelPreloadingExcept(currentPage: Int) {
        val keepPages = (-PRELOAD_RANGE..PRELOAD_RANGE).map { currentPage + it }.toSet()
        
        activeJobs.entries.removeAll { (jobKey, job) ->
            val pageIndex = jobKey.removePrefix("preload_").toIntOrNull()
            if (pageIndex != null && pageIndex !in keepPages) {
                job.cancel()
                android.util.Log.d(TAG, "Cancelled preload for page $pageIndex")
                true
            } else {
                false
            }
        }
    }
    
    /**
     * Отменить всю предзагрузку
     */
    fun cancelAllPreloading() {
        activeJobs.values.forEach { it.cancel() }
        activeJobs.clear()
        android.util.Log.d(TAG, "Cancelled all preloading")
    }
    
    /**
     * Предзагрузить превью для диапазона страниц
     */
    fun preloadThumbnails(startPage: Int, endPage: Int) {
        val reader = currentReader ?: return
        val uri = currentUri ?: return
        val pageCount = reader.getPageCount() ?: return
        
        val actualStartPage = maxOf(0, startPage)
        val actualEndPage = minOf(pageCount - 1, endPage)
        
        android.util.Log.d(TAG, "Preloading thumbnails from $actualStartPage to $actualEndPage")
        
        preloadScope.launch {
            for (pageIndex in actualStartPage..actualEndPage) {
                val thumbnailKey = bitmapCache.createThumbnailKey(uri, pageIndex)
                
                if (!bitmapCache.hasThumbnail(thumbnailKey)) {
                    try {
                        val result = reader.renderPage(pageIndex, 200, 200, 0.5f)
                        if (result.isSuccess) {
                            val bitmap = result.getOrNull()
                            if (bitmap != null && !bitmap.isRecycled) {
                                bitmapCache.putThumbnail(thumbnailKey, bitmap)
                            }
                        }
                    } catch (e: Exception) {
                        android.util.Log.w(TAG, "Failed to preload thumbnail for page $pageIndex", e)
                    }
                }
                
                // Небольшая задержка между превью
                delay(50)
            }
        }
    }
    
    /**
     * Получить статистику предзагрузки
     */
    fun getPreloadStats(): PreloadStats {
        return PreloadStats(
            activePreloadJobs = activeJobs.size,
            currentReader = currentReader?.javaClass?.simpleName,
            currentUri = currentUri
        )
    }
    
    /**
     * Очистить ресурсы
     */
    fun cleanup() {
        cancelAllPreloading()
        currentReader = null
        currentUri = null
        android.util.Log.d(TAG, "Preloader cleaned up")
    }
}

/**
 * Статистика предзагрузки
 */
data class PreloadStats(
    val activePreloadJobs: Int,
    val currentReader: String?,
    val currentUri: String?
)
