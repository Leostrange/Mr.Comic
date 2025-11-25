package com.example.core.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.domain.MediaMetadata
import com.example.core.reader.domain.MediaType
import com.example.core.reader.pdf.PdfReaderFactory
import com.example.core.reader.data.cache.ThumbnailCache
import kotlinx.coroutines.*
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlin.math.max
import kotlin.math.min

/**
 * A [MediaReader] implementation for reading PDF files with fallback support and thumbnail caching.
 *
 * @param context The Android context, required for initializing PDF readers.
 * @param thumbnailCache Cache for storing page thumbnails.
 */
class PdfReader(
    private val context: Context,
    private val thumbnailCache: ThumbnailCache
) : MediaReader {

    private val pdfReaderFactory = PdfReaderFactory()
    private var currentReader: com.example.core.reader.pdf.PdfReader? = null
    private var pageCount: Int = 0
    private var metadata: MediaMetadata? = null
    private var isOpen: Boolean = false
    private var currentUri: Uri? = null
    
    private val pdfMutex = Mutex()

    // Предзагрузка миниатюр
    private val preloadScope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var isPreloading = false
    private val preloadQueue = mutableSetOf<Int>()

    // Телеметрия рендера
    private var renderStats = RenderStats()

    companion object {
        private const val THUMBNAIL_WIDTH = 200
        private const val THUMBNAIL_HEIGHT = 300
        private const val PRELOAD_AHEAD = 3 // Предзагружать 3 страницы вперёд
        private const val PRELOAD_BEHIND = 2 // И 2 страницы назад
    }

    /**
     * Статистика рендера для мониторинга производительности
     */
    internal data class RenderStats(
        var totalRenders: Long = 0,
        var successfulRenders: Long = 0,
        var failedRenders: Long = 0,
        var cacheHits: Long = 0,
        var cacheMisses: Long = 0,
        var totalRenderTimeMs: Long = 0,
        var thumbnailRenders: Long = 0,
        var thumbnailCacheHits: Long = 0,
        var thumbnailCacheMisses: Long = 0
    ) {
        fun getCacheHitRate(): Float = if (totalRenders > 0) cacheHits.toFloat() / totalRenders else 0f
        fun getAverageRenderTime(): Float = if (successfulRenders > 0) totalRenderTimeMs.toFloat() / successfulRenders else 0f
        fun logStats() {
            android.util.Log.d("PdfReader", """
                Render Stats:
                - Total renders: $totalRenders
                - Successful: $successfulRenders
                - Failed: $failedRenders
                - Cache hit rate: ${getCacheHitRate() * 100}%.2f%%
                - Avg render time: ${"%.2f".format(getAverageRenderTime())}ms
                - Thumbnail renders: $thumbnailRenders
                - Thumbnail cache hit rate: ${if (thumbnailRenders > 0) (thumbnailCacheHits.toFloat() / thumbnailRenders * 100) else 0}%.2f%%
            """.trimIndent())
        }
    }

    override suspend fun open(context: Context, uri: Uri): Result<MediaMetadata> {
        return withContext(Dispatchers.IO) {
            try {
                // Clean up any existing resources
                close()
                
                // Пытаемся открыть PDF с использованием всех доступных ридеров
                val result = pdfReaderFactory.openPdfWithFallback(context, uri)
                if (result.isFailure) {
                    throw IllegalStateException("Failed to open PDF: ${result.exceptionOrNull()?.message}")
                }
                
                currentReader = result.getOrThrow()
                currentUri = uri
                pageCount = currentReader?.getPageCount() ?: 0
                
                if (pageCount <= 0) {
                    throw IllegalStateException("PDF файл не содержит страниц")
                }
                
                android.util.Log.d("PdfReader", "Successfully opened PDF with $pageCount pages using ${currentReader?.javaClass?.simpleName}")
                
                // Create metadata
                metadata = MediaMetadata(
                    title = uri.lastPathSegment,
                    pageCount = pageCount,
                    type = MediaType.PDF
                )
                
                isOpen = true
                startPreloadingThumbnails()
                Result.success(metadata!!)
            } catch (e: Exception) {
                // Clean up on error
                close()
                val message = when {
                    e.message?.contains("Permission Denial") == true -> e.message!!
                        e.message?.contains("SecurityException") == true -> "Permission Denial: reading ${uri.authority} uri $uri requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"
                    else -> "Ошибка при открытии PDF файла: ${e.message ?: "неизвестная ошибка"}"
                }
                Result.failure(IllegalStateException(message, e))
            }
        }
    }

    override fun getPageCount(): Int? = if (isOpen) pageCount else null

    override suspend fun renderPage(
        pageIndex: Int,
        maxWidth: Int,
        maxHeight: Int,
        scale: Float
    ): Result<Bitmap> {
        if (!isOpen) {
            renderStats.failedRenders++
            renderStats.totalRenders++
            return Result.failure(IllegalStateException("PDF reader is not open"))
        }

        val reader = currentReader ?: run {
            renderStats.failedRenders++
            renderStats.totalRenders++
            return Result.failure(IllegalStateException("PDF reader not initialized"))
        }

        if (pageIndex < 0 || pageIndex >= pageCount) {
            android.util.Log.w("PdfReader", "Invalid page index: $pageIndex (total pages: $pageCount)")
            renderStats.failedRenders++
            renderStats.totalRenders++
            return Result.failure(IndexOutOfBoundsException("Invalid page index: $pageIndex"))
        }

        val startTime = System.currentTimeMillis()
        renderStats.totalRenders++

        return withContext(Dispatchers.IO) {
            pdfMutex.withLock {
                runCatching {
                    val primaryResult = reader.renderPage(pageIndex, maxWidth, maxHeight)
                    if (primaryResult.isSuccess) {
                        val bmp = primaryResult.getOrThrow()
                        val renderTime = System.currentTimeMillis() - startTime
                        renderStats.successfulRenders++
                        renderStats.totalRenderTimeMs += renderTime

                        if (!isBlankBitmap(bmp)) {
                            android.util.Log.d("PdfReader", "Rendered page $pageIndex in ${renderTime}ms")
                            return@runCatching Result.success(bmp)
                        }
                        android.util.Log.w("PdfReader", "Primary reader returned blank page, attempting PDFBox fallback for page $pageIndex")
                    }

                    // Fallback с использованием PdfBoxReader
                    val uri = currentUri
                    if (uri != null) {
                        val pdfBox = com.example.core.reader.pdf.PdfBoxReader()
                        val openRes = pdfBox.openDocument(context, uri)
                        if (openRes.isSuccess) {
                            val fbRender = pdfBox.renderPage(pageIndex, maxWidth, maxHeight)
                            if (fbRender.isSuccess) {
                                android.util.Log.d("PdfReader", "Fallback render successful for page $pageIndex")
                                renderStats.successfulRenders++
                                renderStats.totalRenderTimeMs += (System.currentTimeMillis() - startTime)
                                return@runCatching Result.success(fbRender.getOrThrow())
                            } else {
                                renderStats.failedRenders++
                                return@runCatching Result.failure(fbRender.exceptionOrNull() ?: Exception("PDFBox failed to render page"))
                            }
                        } else {
                            android.util.Log.w("PdfReader", "PDFBox open failed: ${openRes.exceptionOrNull()?.message}")
                        }
                    } else {
                        android.util.Log.w("PdfReader", "No currentUri stored; cannot fallback to PDFBox")
                    }

                    // Если дошли сюда, возвращаем ошибку из первичного результата
                    renderStats.failedRenders++
                    primaryResult.exceptionOrNull()?.let { return@runCatching Result.failure(it) }
                    Result.failure(Exception("Failed to render page and fallback"))
                }.getOrElse { e ->
                    android.util.Log.e("PdfReader", "Failed to render page $pageIndex: ${e.message}", e)
                    renderStats.failedRenders++
                    Result.failure(e)
                }
            }
        }
    }

    override fun getMetadata(): MediaMetadata? {
        return metadata
    }

    override suspend fun close() {
        try {
            // Логируем финальную статистику
            renderStats.logStats()

            currentReader?.close()
        } catch (e: Exception) {
            android.util.Log.w("PdfReader", "Error closing PDF reader: ${e.message}")
        }

        // Останавливаем предзагрузку
        isPreloading = false
        preloadScope.cancel()

        currentReader = null
        pageCount = 0
        metadata = null
        isOpen = false
        currentUri = null
        renderStats = RenderStats() // Сброс статистики
    }

    override fun isOpen(): Boolean {
        return isOpen
    }

    /**
     * Получает миниатюру страницы и сохраняет в ThumbnailCache
     * Это основной метод для загрузки миниатюр для панели
     */
    suspend fun getThumbnail(pageIndex: Int): Result<Bitmap> {
        if (!isOpen) {
            return Result.failure(IllegalStateException("PDF reader is not open"))
        }

        if (pageIndex < 0 || pageIndex >= pageCount) {
            return Result.failure(IndexOutOfBoundsException("Invalid page index: $pageIndex"))
        }

        return withContext(Dispatchers.IO) {
            val key = "${currentUri.hashCode()}:thumb:$pageIndex"
            val cached = thumbnailCache.getThumbnail(key)
            if (cached != null) {
                renderStats.thumbnailCacheHits++
                return@withContext Result.success(cached)
            }

            renderStats.thumbnailCacheMisses++
            renderStats.thumbnailRenders++

            pdfMutex.withLock {
                // Генерируем миниатюру через основной ридер
                val reader = currentReader ?: return@withContext Result.failure(IllegalStateException("PDF reader not initialized"))
                val result = reader.renderPage(pageIndex, THUMBNAIL_WIDTH, THUMBNAIL_HEIGHT)

                if (result.isSuccess) {
                    val thumbnail = result.getOrThrow()
                    thumbnailCache.putThumbnail(key, thumbnail)
                    android.util.Log.d("PdfReader", "Thumbnail loaded for page $pageIndex")
                }

                result
            }
        }
    }

    /**
     * Запускает предзагрузку миниатюр для всех страниц
     */
    private fun startPreloadingThumbnails() {
        if (isPreloading || pageCount <= 0) return

        isPreloading = true
        preloadScope.launch {
            android.util.Log.d("PdfReader", "Starting thumbnail preloading for $pageCount pages")

            for (i in 0 until pageCount) {
                if (!isPreloading) break

                val key = "${currentUri.hashCode()}:thumb:$i"
                if (thumbnailCache.getThumbnail(key) != null) continue

                try {
                    val result = getThumbnail(i)
                    if (result.isSuccess) {
                        android.util.Log.d("PdfReader", "Preloaded thumbnail for page $i")
                    } else {
                        android.util.Log.w("PdfReader", "Failed to preload thumbnail for page $i: ${result.exceptionOrNull()?.message}")
                    }

                    // Небольшая пауза между загрузками, чтобы не перегружать систему
                    delay(50)
                } catch (e: Exception) {
                    android.util.Log.w("PdfReader", "Exception preloading page $i: ${e.message}")
                }
            }

            android.util.Log.d("PdfReader", "Thumbnail preloading completed")
            isPreloading = false
        }
    }

    /**
     * Предзагружает миниатюры для соседних страниц
     */
    fun preloadNeighboringThumbnails(currentPage: Int) {
        if (!isPreloading || pageCount <= 0) return

        val startPage = maxOf(0, currentPage - PRELOAD_BEHIND)
        val endPage = minOf(pageCount - 1, currentPage + PRELOAD_AHEAD)

        preloadScope.launch {
            for (i in startPage..endPage) {
                if (i == currentPage) continue // Текущая страница уже загружена

                val key = "${currentUri.hashCode()}:thumb:$i"
                if (thumbnailCache.getThumbnail(key) != null) continue

                try {
                    val result = getThumbnail(i)
                    if (result.isSuccess) {
                        android.util.Log.d("PdfReader", "Preloaded neighboring thumbnail for page $i")
                    }
                } catch (e: Exception) {
                    android.util.Log.w("PdfReader", "Failed to preload neighboring thumbnail for page $i: ${e.message}")
                }
            }
        }
    }
}

private fun isBlankBitmap(bitmap: Bitmap): Boolean {
    // Быстрая эвристика: проверить четыре угла и центр на белизну
    if (bitmap.width < 4 || bitmap.height < 4) return false
    fun colorAt(x: Int, y: Int) = bitmap.getPixel(x, y)
    val points = listOf(
        0 to 0,
        bitmap.width - 1 to 0,
        0 to bitmap.height - 1,
        bitmap.width - 1 to bitmap.height - 1,
        bitmap.width / 2 to bitmap.height / 2
    )
    var whiteHits = 0
    for ((x, y) in points) {
        val c = colorAt(x, y)
        val r = (c shr 16) and 0xFF
        val g = (c shr 8) and 0xFF
        val b = c and 0xFF
        if (r > 250 && g > 250 && b > 250) whiteHits++
    }
    return whiteHits >= 5
}
