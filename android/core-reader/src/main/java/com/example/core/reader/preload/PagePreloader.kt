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
        private const val PRELOAD_RANGE = 2 // Уменьшаем до ±2 страниц для стабильности
        private const val MAX_CONCURRENT_PRELOADS = 2 // Ограничиваем количество одновременных загрузок
        private const val MAX_CONCURRENT_PRELOADS_PDF = 1 // PDF требует синхронизированного доступа
        private const val MAX_CACHE_SIZE = 50 // Максимум 50 страниц в кэше для больших библиотек
        private const val THUMBNAIL_CACHE_SIZE = 200 // Максимум 200 миниатюр в кэше
    }
    
    // Отдельный dispatcher для IO операций предзагрузки
    private val preloadDispatcher = Executors.newFixedThreadPool(2).asCoroutineDispatcher()
    
    // Глобальный обработчик исключений для CBR операций
    private val cbrExceptionHandler = CoroutineExceptionHandler { _, throwable ->
        android.util.Log.e(TAG, "Unhandled exception in CBR preloader", throwable)
    }
    private val preloadScope = CoroutineScope(preloadDispatcher + SupervisorJob() + cbrExceptionHandler)
    
    // Активные задачи предзагрузки
    private val activeJobs = ConcurrentHashMap<String, Job>()
    
    // Отслеживание "битых" страниц для предотвращения повторных попыток
    private val brokenPages = mutableSetOf<Int>()
    
    // Флаги готовности
    private var isReaderReady = false
    private var isBookSelected = false
    private var isArchiveValidated = false
    
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
        
        // Сбрасываем флаги готовности
        isReaderReady = false
        isBookSelected = false
        isArchiveValidated = false
        
        currentReader = reader
        currentUri = uri
        currentMaxWidth = maxWidth
        currentMaxHeight = maxHeight
        currentScale = scale
        
        android.util.Log.d(TAG, "Set current reader for preloading: $uri")
    }
    
    /**
     * Отметить, что книга выбрана и архив валидирован
     */
    fun markBookSelected() {
        isBookSelected = true
        android.util.Log.d(TAG, "Book selected, ready for preloading")
    }
    
    /**
     * Отметить, что архив валидирован
     */
    fun markArchiveValidated() {
        isArchiveValidated = true
        android.util.Log.d(TAG, "Archive validated, ready for preloading")
    }
    
    /**
     * Отметить, что reader готов
     */
    fun markReaderReady() {
        isReaderReady = true
        android.util.Log.d(TAG, "Reader ready, preloading can start")
    }
    
    /**
     * Предзагрузить страницы вокруг текущей
     */
    fun preloadAroundPage(currentPage: Int) {
        // Проверяем готовность системы
        if (!isReaderReady || !isBookSelected || !isArchiveValidated) {
            android.util.Log.w(TAG, "Preloading blocked: readerReady=$isReaderReady, bookSelected=$isBookSelected, archiveValidated=$isArchiveValidated")
            return
        }
        
        val reader = currentReader ?: return
        val uri = currentUri ?: return
        
        // ИСПРАВЛЕНИЕ: Для PDF не предзагружаем страницы, пока текущая не загружена
        if (uri.endsWith(".pdf", ignoreCase = true)) {
            val currentPageKey = bitmapCache.createKey(uri, currentPage, currentMaxWidth, currentMaxHeight, currentScale)
            if (!bitmapCache.hasBitmap(currentPageKey)) {
                android.util.Log.d(TAG, "PDF: Current page $currentPage not loaded yet, skipping preload")
                return
            }
        }
        val pageCount = reader.getPageCount() ?: return
        
        android.util.Log.d(TAG, "Preloading around page $currentPage for book: $uri")
        
        // Отменяем старые задачи предзагрузки
        cancelPreloadingExcept(currentPage)
        
        // Для PDF используем ограничение в 1 одновременную загрузку из-за Mutex в Pdfium
        val maxConcurrent = if (uri.endsWith(".pdf", ignoreCase = true)) {
            MAX_CONCURRENT_PRELOADS_PDF
        } else {
            MAX_CONCURRENT_PRELOADS
        }
        
        // Предзагружаем страницы в диапазоне (с ограничением)
        var preloadCount = 0
        for (offset in -PRELOAD_RANGE..PRELOAD_RANGE) {
            if (preloadCount >= maxConcurrent) {
                android.util.Log.d(TAG, "Reached max concurrent preloads, stopping")
                break
            }
            
            val pageIndex = currentPage + offset
            
            if (pageIndex < 0 || pageIndex >= pageCount || pageIndex == currentPage) {
                continue
            }
            
            // Пропускаем "битые" страницы
            if (brokenPages.contains(pageIndex)) {
                android.util.Log.d(TAG, "Skipping broken page $pageIndex")
                continue
            }
            
            val cacheKey = bitmapCache.createKey(uri, pageIndex, currentMaxWidth, currentMaxHeight, currentScale)
            
            // Проверяем, есть ли уже в кэше
            if (bitmapCache.hasBitmap(cacheKey)) {
                continue
            }
            
            // Запускаем предзагрузку
            startPreloadingPage(pageIndex, cacheKey, reader)
            preloadCount++
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
                
                // Рендерим страницу без таймаута для стабильности CBR
                val result = withContext(Dispatchers.IO) {
                    reader.renderPage(pageIndex, currentMaxWidth, currentMaxHeight, currentScale)
                }
                
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
            } catch (e: java.lang.AssertionError) {
                android.util.Log.e(TAG, "AssertionError in junrar PPM block during preload for page $pageIndex: ${e.message}", e)
                // Не прерываем работу, просто логируем ошибку
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Error preloading page $pageIndex: ${e.message}", e)
                
                // Специальная обработка для junrar ошибок
                if (e.message?.contains("AssertionError") == true || 
                    e.message?.contains("junrar") == true ||
                    e.message?.contains("RAR archive corruption") == true) {
                    android.util.Log.e(TAG, "RAR archive corruption detected for page $pageIndex, marking as broken")
                    // Помечаем страницу как "битую" для предотвращения повторных попыток
                    brokenPages.add(pageIndex)
                }
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
     * Для PDF использует специализированный метод getThumbnail
     */
    fun preloadThumbnails(startPage: Int, endPage: Int) {
        val reader = currentReader ?: return
        val uri = currentUri ?: return
        val pageCount = reader.getPageCount() ?: return
        
        val actualStartPage = maxOf(0, startPage)
        val actualEndPage = minOf(pageCount - 1, endPage)
        
        android.util.Log.d(TAG, "Preloading thumbnails from $actualStartPage to $actualEndPage")
        
        preloadScope.launch {
            // Проверяем, является ли это PDF
            val isPdf = uri.endsWith(".pdf", ignoreCase = true)
            
            if (isPdf && reader is com.example.core.reader.data.PdfReader) {
                // Для PDF используем специализированный метод getThumbnail
                for (pageIndex in actualStartPage..actualEndPage) {
                    val thumbnailKey = bitmapCache.createThumbnailKey(uri, pageIndex)
                    
                    if (!bitmapCache.hasThumbnail(thumbnailKey)) {
                        try {
                            val result = reader.getThumbnail(pageIndex)
                            if (result.isSuccess) {
                                val bitmap = result.getOrNull()
                                if (bitmap != null && !bitmap.isRecycled) {
                                    bitmapCache.putThumbnail(thumbnailKey, bitmap)
                                    android.util.Log.d(TAG, "Preloaded PDF thumbnail for page $pageIndex")
                                }
                            } else {
                                android.util.Log.w(TAG, "Failed to preload PDF thumbnail for page $pageIndex: ${result.exceptionOrNull()?.message}")
                            }
                        } catch (e: Exception) {
                            android.util.Log.w(TAG, "Exception preloading PDF thumbnail for page $pageIndex", e)
                        }
                    }
                    
                    // Небольшая задержка между превью
                    delay(50)
                }
            } else {
                // Для остальных форматов используем renderPage
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
    }
    
    /**
     * Получить миниатюру из кэша
     */
    suspend fun getThumbnailFromCache(pageIndex: Int): Bitmap? {
        val uri = currentUri ?: return null
        val thumbnailKey = bitmapCache.createThumbnailKey(uri, pageIndex)
        return bitmapCache.getThumbnail(thumbnailKey)
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
