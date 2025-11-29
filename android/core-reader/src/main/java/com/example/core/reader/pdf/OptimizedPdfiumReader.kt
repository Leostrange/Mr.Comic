package com.example.core.reader.pdf

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Matrix
import android.graphics.RectF
import android.net.Uri
import android.os.ParcelFileDescriptor
import android.util.LruCache
import com.shockwave.pdfium.PdfDocument
import com.shockwave.pdfium.PdfiumCore
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.withContext
import java.io.IOException
import java.util.concurrent.ConcurrentHashMap
import kotlin.math.max
import kotlin.math.min

/**
 * Оптимизированная реализация PDF ридера с использованием Pdfium
 * Включает пул битмапов, кэширование и оптимизации для больших файлов
 * 
 * ИСПРАВЛЕНИЕ: Добавлена Mutex для синхронизации доступа к Pdfium,
 * чтобы избежать race conditions и "PdfiumCore already closed" ошибок
 */
class OptimizedPdfiumReader : PdfReader {
    
    private var pdfiumCore: PdfiumCore? = null
    private var pdfDocument: PdfDocument? = null
    private var parcelFileDescriptor: ParcelFileDescriptor? = null
    private var pageCount: Int = 0
    
    // Mutex для синхронизации доступа к Pdfium (только 1 thread одновременно)
    private val pdfiumMutex = Mutex()
    
    // Пул битмапов для переиспользования
    private val bitmapPool = LruCache<String, Bitmap>(10) // Максимум 10 битмапов в пуле
    
    // Кэш рендеренных страниц
    private val pageCache = LruCache<String, Bitmap>(20) // Максимум 20 страниц в кэше
    
    // Статистика производительности
    private val renderStats = RenderStats()
    
    companion object {
        private const val TAG = "OptimizedPdfiumReader"
        private const val MAX_BITMAP_SIZE = 2048 * 2048 // Максимальный размер битмапа
        private const val CACHE_SIZE_MB = 50 // Размер кэша в МБ

        /**
         * Ensure URI permission with proper error handling
         */
        private fun ensureUriPermission(context: Context, uri: Uri): Boolean {
            return try {
                // Check if we already have permission
                val hasPermission = context.contentResolver.persistedUriPermissions
                    .any { it.uri == uri && it.isReadPermission }

                if (!hasPermission) {
                    context.contentResolver.takePersistableUriPermission(
                        uri,
                        android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                    )
                    android.util.Log.d(TAG, "Persistable permission granted for URI: $uri")
                } else {
                    android.util.Log.d(TAG, "Already have permission for URI: $uri")
                }
                true
            } catch (e: SecurityException) {
                android.util.Log.e(TAG, "Could not take persistable permission: ${e.message}", e)
                false
            }
        }
    }

    override suspend fun openDocument(context: Context, uri: Uri): Result<Unit> = withContext(Dispatchers.IO) {
        try {
            // Check and request permissions for content:// URIs with proper error handling
            if (uri.scheme == "content") {
                if (!ensureUriPermission(context, uri)) {
                    return@withContext Result.failure(
                        SecurityException("Permission denied for PDF: $uri. Please re-select file using file picker.")
                    )
                }
            }

            // Инициализируем PdfiumCore
            pdfiumCore = PdfiumCore(context)

            // Открываем файловый дескриптор
            parcelFileDescriptor = try {
                context.contentResolver.openFileDescriptor(uri, "r")
            } catch (e: SecurityException) {
                android.util.Log.e(TAG, "SecurityException when opening URI: $uri", e)
                return@withContext Result.failure(IOException("Permission Denial: reading ${uri.authority} uri $uri requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"))
            } ?: return@withContext Result.failure(IOException("Could not open file descriptor for URI: $uri"))

            // Открываем PDF документ
            pdfDocument = pdfiumCore?.newDocument(parcelFileDescriptor, null)
            pageCount = pdfiumCore?.getPageCount(pdfDocument) ?: 0

            if (pageCount <= 0) {
                android.util.Log.e(TAG, "PDF file contains no pages or failed to get page count")
                return@withContext Result.failure(IOException("PDF file contains no pages"))
            }

            android.util.Log.d(TAG, "PDF opened successfully. Page count: $pageCount")
            Result.success(Unit)

        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to open PDF document", e)
            close()
            Result.failure(e)
        }
    }
    
    override fun getPageCount(): Int? = pageCount.takeIf { it > 0 }
    
    override suspend fun renderPage(pageIndex: Int, maxWidth: Int, maxHeight: Int): Result<Bitmap> = withContext(Dispatchers.IO) {
        try {
            val startTime = System.currentTimeMillis()
            
            if (pageIndex < 0 || pageIndex >= pageCount) {
                return@withContext Result.failure(IndexOutOfBoundsException("Page index $pageIndex out of bounds (0-${pageCount - 1})"))
            }
            
            // Проверяем кэш (это быстро, не требует Mutex)
            val cacheKey = "${pageIndex}_${maxWidth}_${maxHeight}"
            pageCache.get(cacheKey)?.let { cachedBitmap ->
                android.util.Log.d(TAG, "Cache hit for page $pageIndex")
                return@withContext Result.success(cachedBitmap)
            }
            
            val pdfiumCore = this@OptimizedPdfiumReader.pdfiumCore ?: return@withContext Result.failure(IllegalStateException("PDF document not opened"))
            val pdfDocument = this@OptimizedPdfiumReader.pdfDocument ?: return@withContext Result.failure(IllegalStateException("PDF document not opened"))
            
            // Получаем размеры страницы (не требует Mutex)
            val pageWidth = pdfiumCore.getPageWidthPoint(pdfDocument, pageIndex)
            val pageHeight = pdfiumCore.getPageHeightPoint(pdfDocument, pageIndex)
            
            // Рассчитываем оптимальные размеры с учетом ограничений
            val scale = min(
                maxWidth.toFloat() / pageWidth,
                maxHeight.toFloat() / pageHeight
            ).coerceAtMost(2.0f) // Ограничиваем максимальный зум для производительности
            
            val renderWidth = (pageWidth * scale).toInt()
            val renderHeight = (pageHeight * scale).toInt()
            
            // Проверяем размер битмапа
            if (renderWidth * renderHeight > MAX_BITMAP_SIZE) {
                android.util.Log.w(TAG, "Bitmap size too large: ${renderWidth}x${renderHeight}, reducing quality")
                val reductionFactor = sqrt(MAX_BITMAP_SIZE.toFloat() / (renderWidth * renderHeight))
                val adjustedWidth = (renderWidth * reductionFactor).toInt()
                val adjustedHeight = (renderHeight * reductionFactor).toInt()
                return@withContext renderPageWithSize(pageIndex, adjustedWidth, adjustedHeight, cacheKey)
            }
            
            renderPageWithSize(pageIndex, renderWidth, renderHeight, cacheKey)
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to render PDF page $pageIndex", e)
            Result.failure(e)
        }
    }
    
    private suspend fun renderPageWithSize(pageIndex: Int, width: Int, height: Int, cacheKey: String): Result<Bitmap> = withContext(Dispatchers.IO) {
        try {
            val pdfiumCore = this@OptimizedPdfiumReader.pdfiumCore ?: return@withContext Result.failure(IllegalStateException("PDF document not opened"))
            val pdfDocument = this@OptimizedPdfiumReader.pdfDocument ?: return@withContext Result.failure(IllegalStateException("PDF document not opened"))
            
            // Создаем битмап (можно делать без Mutex)
            val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            
            // КРИТИЧНО: Используем Mutex для синхронизации доступа к Pdfium
            // Это предотвращает race conditions и "PdfiumCore already closed" ошибки
            pdfiumMutex.lock()
            try {
                // Рендерим страницу (это может быть долгой операцией)
                pdfiumCore.renderPageBitmap(
                    pdfDocument,
                    bitmap,
                    pageIndex,
                    0, 0, width, height
                )
            } finally {
                pdfiumMutex.unlock()
            }
            
            // Добавляем в кэш
            pageCache.put(cacheKey, bitmap)
            
            // Обновляем статистику
            renderStats.onPageRendered(pageIndex, System.currentTimeMillis())
            
            android.util.Log.d(TAG, "Page $pageIndex rendered successfully (${width}x${height})")
            Result.success(bitmap)
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to render page with size ${width}x${height}", e)
            Result.failure(e)
        }
    }
    
    override fun close() {
        try {
            // Clear caches first (prevents bitmap leaks)
            pageCache.evictAll()
            bitmapPool.evictAll()
            
            // Close PDF document if open
            pdfDocument?.let { doc ->
                pdfiumCore?.closeDocument(doc)
                android.util.Log.d(TAG, "PDF document closed")
            }
            
            // Close file descriptor
            parcelFileDescriptor?.let { fd ->
                fd.close()
                android.util.Log.d(TAG, "File descriptor closed")
            }
            
            // Clear PdfiumCore
            pdfiumCore = null
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error closing PDF resources", e)
        } finally {
            // Ensure all references are nulled even on exception
            pdfDocument = null
            parcelFileDescriptor = null
            pageCount = 0
            android.util.Log.d(TAG, "PDF reader cleanup completed")
        }
    }
    
    override fun supportsUri(uri: Uri): Boolean {
        return uri.scheme == "file" || uri.scheme == "content"
    }
    
    /**
     * Очищает кэш для освобождения памяти
     */
    fun clearCache() {
        pageCache.evictAll()
        bitmapPool.evictAll()
        android.util.Log.d(TAG, "Cache cleared")
    }
    
    /**
     * Получает статистику рендеринга
     */
    fun getRenderStats(): RenderStats = renderStats
    
    /**
     * Статистика рендеринга для мониторинга производительности
     */
    data class RenderStats(
        var totalPagesRendered: Int = 0,
        var totalRenderTime: Long = 0,
        var averageRenderTime: Double = 0.0,
        var cacheHitRate: Double = 0.0
    ) {
        fun onPageRendered(pageIndex: Int, endTime: Long) {
            totalPagesRendered++
            totalRenderTime += endTime
            averageRenderTime = totalRenderTime.toDouble() / totalPagesRendered
        }
    }
}

private fun sqrt(value: Float): Float = kotlin.math.sqrt(value.toDouble()).toFloat()
