package com.example.mrcomic.utils

import android.content.Context
import android.graphics.Bitmap
import android.graphics.pdf.PdfRenderer
import android.os.ParcelFileDescriptor
import android.util.Log
import android.util.LruCache
import kotlinx.coroutines.*
import java.io.File
import java.io.IOException
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.atomic.AtomicLong

/**
 * Высокопроизводительный рендерер PDF с кэшированием для больших документов
 * Оптимизирован для работы с PDF >200 страниц
 */
class LargePdfRenderer(
    private val context: Context,
    private val maxCacheSize: Long = 100 * 1024 * 1024, // 100MB по умолчанию
    private val preloadPages: Int = 3 // Количество страниц для предзагрузки
) {

    companion object {
        private const val TAG = "LargePdfRenderer"
        private const val DEFAULT_DPI = 150f
        private const val HIGH_QUALITY_DPI = 300f
        private const val THUMBNAIL_DPI = 72f
    }

    private var pdfRenderer: PdfRenderer? = null
    private var parcelFileDescriptor: ParcelFileDescriptor? = null
    private var currentPdfFile: File? = null
    
    // LRU кэш для рендеренных страниц
    private val pageCache = LruCache<String, CachedPage>(
        (maxCacheSize / (1024 * 1024)).toInt() // Размер в MB
    )
    
    // Отслеживание размера кэша в байтах
    private val currentCacheSize = AtomicLong(0)
    
    // Карта активных задач рендеринга
    private val renderingTasks = ConcurrentHashMap<String, Deferred<Bitmap?>>()
    
    // Корутин скоуп для фоновых задач
    private val renderingScope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    /**
     * Открытие PDF файла
     */
    suspend fun openPdf(pdfFile: File): Boolean = withContext(Dispatchers.IO) {
        try {
            closePdf()
            
            parcelFileDescriptor = ParcelFileDescriptor.open(pdfFile, ParcelFileDescriptor.MODE_READ_ONLY)
            pdfRenderer = PdfRenderer(parcelFileDescriptor!!)
            currentPdfFile = pdfFile
            
            Log.i(TAG, "Opened PDF: ${pdfFile.name}, pages: ${pdfRenderer!!.pageCount}")
            true
            
        } catch (e: Exception) {
            Log.e(TAG, "Error opening PDF: ${pdfFile.name}", e)
            closePdf()
            false
        }
    }

    /**
     * Получение количества страниц
     */
    fun getPageCount(): Int {
        return pdfRenderer?.pageCount ?: 0
    }

    /**
     * Рендеринг страницы с кэшированием
     */
    suspend fun renderPage(
        pageIndex: Int,
        quality: RenderQuality = RenderQuality.NORMAL,
        forceReload: Boolean = false
    ): Bitmap? = withContext(Dispatchers.Main) {
        
        val renderer = pdfRenderer ?: return@withContext null
        
        if (pageIndex < 0 || pageIndex >= renderer.pageCount) {
            Log.w(TAG, "Invalid page index: $pageIndex")
            return@withContext null
        }

        val cacheKey = getCacheKey(pageIndex, quality)
        
        // Проверяем кэш
        if (!forceReload) {
            val cachedPage = pageCache.get(cacheKey)
            if (cachedPage != null && !cachedPage.isExpired()) {
                Log.d(TAG, "Cache hit for page $pageIndex")
                cachedPage.updateAccessTime()
                return@withContext cachedPage.bitmap
            }
        }

        // Проверяем, не рендерится ли уже эта страница
        val existingTask = renderingTasks[cacheKey]
        if (existingTask != null && existingTask.isActive) {
            Log.d(TAG, "Waiting for existing render task for page $pageIndex")
            return@withContext existingTask.await()
        }

        // Создаём новую задачу рендеринга
        val renderTask = renderingScope.async {
            renderPageInternal(pageIndex, quality)
        }
        
        renderingTasks[cacheKey] = renderTask
        
        try {
            val bitmap = renderTask.await()
            
            // Кэшируем результат
            if (bitmap != null) {
                cacheRenderedPage(cacheKey, bitmap)
                
                // Предзагружаем соседние страницы
                preloadAdjacentPages(pageIndex, quality)
            }
            
            return@withContext bitmap
            
        } finally {
            renderingTasks.remove(cacheKey)
        }
    }

    /**
     * Внутренний метод рендеринга страницы
     */
    private suspend fun renderPageInternal(pageIndex: Int, quality: RenderQuality): Bitmap? = withContext(Dispatchers.IO) {
        val renderer = pdfRenderer ?: return@withContext null
        
        try {
            val page = renderer.openPage(pageIndex)
            
            val dpi = when (quality) {
                RenderQuality.THUMBNAIL -> THUMBNAIL_DPI
                RenderQuality.NORMAL -> DEFAULT_DPI
                RenderQuality.HIGH -> HIGH_QUALITY_DPI
            }
            
            val scale = dpi / 72f // PDF базовое разрешение 72 DPI
            val width = (page.width * scale).toInt()
            val height = (page.height * scale).toInt()
            
            val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            bitmap.eraseColor(android.graphics.Color.WHITE)
            
            page.render(bitmap, null, null, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
            page.close()
            
            Log.d(TAG, "Rendered page $pageIndex (${width}x${height}, ${quality.name})")
            bitmap
            
        } catch (e: Exception) {
            Log.e(TAG, "Error rendering page $pageIndex", e)
            null
        }
    }

    /**
     * Предзагрузка соседних страниц
     */
    private fun preloadAdjacentPages(currentPage: Int, quality: RenderQuality) {
        val renderer = pdfRenderer ?: return
        
        renderingScope.launch {
            for (offset in 1..preloadPages) {
                // Предзагружаем следующие страницы
                val nextPage = currentPage + offset
                if (nextPage < renderer.pageCount) {
                    val nextCacheKey = getCacheKey(nextPage, quality)
                    if (pageCache.get(nextCacheKey) == null && !renderingTasks.containsKey(nextCacheKey)) {
                        renderPage(nextPage, quality)
                    }
                }
                
                // Предзагружаем предыдущие страницы
                val prevPage = currentPage - offset
                if (prevPage >= 0) {
                    val prevCacheKey = getCacheKey(prevPage, quality)
                    if (pageCache.get(prevCacheKey) == null && !renderingTasks.containsKey(prevCacheKey)) {
                        renderPage(prevPage, quality)
                    }
                }
            }
        }
    }

    /**
     * Кэширование рендеренной страницы
     */
    private fun cacheRenderedPage(cacheKey: String, bitmap: Bitmap) {
        val pageSize = bitmap.byteCount.toLong()
        
        // Проверяем, не превышает ли размер лимит кэша
        if (pageSize > maxCacheSize) {
            Log.w(TAG, "Page too large for cache: ${pageSize / (1024 * 1024)}MB")
            return
        }
        
        // Освобождаем место в кэше при необходимости
        ensureCacheSpace(pageSize)
        
        val cachedPage = CachedPage(bitmap, System.currentTimeMillis())
        pageCache.put(cacheKey, cachedPage)
        currentCacheSize.addAndGet(pageSize)
        
        Log.d(TAG, "Cached page $cacheKey, cache size: ${currentCacheSize.get() / (1024 * 1024)}MB")
    }

    /**
     * Обеспечение свободного места в кэше
     */
    private fun ensureCacheSpace(requiredSpace: Long) {
        while (currentCacheSize.get() + requiredSpace > maxCacheSize) {
            val oldestKey = findOldestCacheEntry()
            if (oldestKey != null) {
                val removedPage = pageCache.remove(oldestKey)
                if (removedPage != null) {
                    currentCacheSize.addAndGet(-removedPage.bitmap.byteCount.toLong())
                    Log.d(TAG, "Evicted page from cache: $oldestKey")
                }
            } else {
                break
            }
        }
    }

    /**
     * Поиск самой старой записи в кэше
     */
    private fun findOldestCacheEntry(): String? {
        var oldestKey: String? = null
        var oldestTime = Long.MAX_VALUE
        
        val snapshot = pageCache.snapshot()
        for ((key, cachedPage) in snapshot) {
            if (cachedPage.lastAccessTime < oldestTime) {
                oldestTime = cachedPage.lastAccessTime
                oldestKey = key
            }
        }
        
        return oldestKey
    }

    /**
     * Генерация ключа кэша
     */
    private fun getCacheKey(pageIndex: Int, quality: RenderQuality): String {
        val fileName = currentPdfFile?.name ?: "unknown"
        return "${fileName}_${pageIndex}_${quality.name}"
    }

    /**
     * Очистка кэша
     */
    fun clearCache() {
        pageCache.evictAll()
        currentCacheSize.set(0)
        Log.i(TAG, "Cache cleared")
    }

    /**
     * Получение статистики кэша
     */
    fun getCacheStats(): CacheStats {
        val snapshot = pageCache.snapshot()
        return CacheStats(
            totalEntries = snapshot.size,
            totalSizeMB = currentCacheSize.get() / (1024 * 1024),
            maxSizeMB = maxCacheSize / (1024 * 1024),
            hitRate = if (pageCache.hitCount() + pageCache.missCount() > 0) {
                pageCache.hitCount().toFloat() / (pageCache.hitCount() + pageCache.missCount())
            } else 0f
        )
    }

    /**
     * Закрытие PDF и освобождение ресурсов
     */
    fun closePdf() {
        try {
            renderingScope.coroutineContext.cancelChildren()
            renderingTasks.clear()
            clearCache()
            
            pdfRenderer?.close()
            parcelFileDescriptor?.close()
            
            pdfRenderer = null
            parcelFileDescriptor = null
            currentPdfFile = null
            
            Log.i(TAG, "PDF closed and resources released")
            
        } catch (e: Exception) {
            Log.e(TAG, "Error closing PDF", e)
        }
    }

    /**
     * Качество рендеринга
     */
    enum class RenderQuality {
        THUMBNAIL,  // 72 DPI - для миниатюр
        NORMAL,     // 150 DPI - для обычного просмотра
        HIGH        // 300 DPI - для высокого качества
    }

    /**
     * Кэшированная страница
     */
    private data class CachedPage(
        val bitmap: Bitmap,
        val creationTime: Long,
        var lastAccessTime: Long = creationTime
    ) {
        fun updateAccessTime() {
            lastAccessTime = System.currentTimeMillis()
        }
        
        fun isExpired(maxAge: Long = 30 * 60 * 1000): Boolean { // 30 минут
            return System.currentTimeMillis() - creationTime > maxAge
        }
    }

    /**
     * Статистика кэша
     */
    data class CacheStats(
        val totalEntries: Int,
        val totalSizeMB: Long,
        val maxSizeMB: Long,
        val hitRate: Float
    ) {
        val usagePercentage: Float get() = (totalSizeMB.toFloat() / maxSizeMB) * 100f
        
        override fun toString(): String {
            return "CacheStats(entries=$totalEntries, size=${totalSizeMB}MB/${maxSizeMB}MB (${String.format("%.1f", usagePercentage)}%), hitRate=${String.format("%.2f", hitRate)})"
        }
    }
}

