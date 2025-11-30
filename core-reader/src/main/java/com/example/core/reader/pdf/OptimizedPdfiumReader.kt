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
import androidx.annotation.VisibleForTesting
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.io.InputStream
import java.util.concurrent.ConcurrentHashMap
import kotlin.math.floor
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt

/**
 * Оптимизированная реализация PDF ридера с использованием Pdfium
 * Включает пул битмапов, кэширование и оптимизации для больших файлов
 */
class OptimizedPdfiumReader : PdfReader {
    
    private var pdfiumCore: PdfiumCore? = null
    private var pdfDocument: PdfDocument? = null
    private var parcelFileDescriptor: ParcelFileDescriptor? = null
    private var tempFile: File? = null // Временный файл для content:// URI, которые не поддерживают openFileDescriptor
    private var pageCount: Int = 0
    
    // Пул битмапов для переиспользования
    private val bitmapPool = LruCache<String, Bitmap>(10) // Максимум 10 битмапов в пуле
    
    // Кэш рендеренных страниц
    private val pageCache = LruCache<String, Bitmap>(20) // Максимум 20 страниц в кэше
    
    // Статистика производительности
    private val renderStats = RenderStats()
    
    companion object {
        private const val TAG = "OptimizedPdfiumReader"
        private const val MAX_BITMAP_SIZE = 4096 * 4096 // Максимальный размер битмапа
        private const val MAX_BITMAP_EDGE = 8192
        private const val CACHE_SIZE_MB = 50 // Размер кэша в МБ

        @VisibleForTesting
        internal fun clampBitmapSize(width: Int, height: Int): Pair<Int, Int> {
            var safeWidth = width.coerceAtLeast(1)
            var safeHeight = height.coerceAtLeast(1)

            // Ограничиваем максимальную сторону
            val edgeRatio = max(
                safeWidth.toFloat() / MAX_BITMAP_EDGE.toFloat(),
                safeHeight.toFloat() / MAX_BITMAP_EDGE.toFloat()
            )
            if (edgeRatio > 1f) {
                val scale = 1f / edgeRatio
                safeWidth = max(1, floor(safeWidth * scale).toInt())
                safeHeight = max(1, floor(safeHeight * scale).toInt())
            }

            // Ограничиваем общее количество пикселей
            var totalPixels = safeWidth.toLong() * safeHeight.toLong()
            if (totalPixels > MAX_BITMAP_SIZE) {
                val scale = sqrt(MAX_BITMAP_SIZE.toFloat() / totalPixels.toFloat())
                safeWidth = max(1, floor(safeWidth * scale).toInt())
                safeHeight = max(1, floor(safeHeight * scale).toInt())
                totalPixels = safeWidth.toLong() * safeHeight.toLong()
            }

            if (totalPixels > MAX_BITMAP_SIZE) {
                val correction = sqrt(MAX_BITMAP_SIZE.toFloat() / totalPixels.toFloat())
                safeWidth = max(1, floor(safeWidth * correction).toInt())
                safeHeight = max(1, floor(safeHeight * correction).toInt())
            }

            return safeWidth to safeHeight
        }
    }
    
    override suspend fun openDocument(context: Context, uri: Uri): Result<Unit> = withContext(Dispatchers.IO) {
        try {
            // Check and request permissions for content:// URIs
            if (uri.scheme == "content") {
                try {
                    context.contentResolver.takePersistableUriPermission(
                        uri, 
                        android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                    )
                    android.util.Log.d(TAG, "✅ PDF DIAGNOSTIC: Persistable permission granted for URI: $uri")
                } catch (e: SecurityException) {
                    android.util.Log.w(TAG, "⚠️ PDF DIAGNOSTIC: Could not take persistable permission: ${e.message}")
                }
            }
            
            // Инициализируем PdfiumCore
            pdfiumCore = PdfiumCore(context)
            
            // Пытаемся открыть файловый дескриптор
            parcelFileDescriptor = try {
                context.contentResolver.openFileDescriptor(uri, "r")
            } catch (e: SecurityException) {
                android.util.Log.w(TAG, "⚠️ PDF DIAGNOSTIC: SecurityException when opening FileDescriptor, trying InputStream fallback: $uri", e)
                null
            } catch (e: Exception) {
                android.util.Log.w(TAG, "⚠️ PDF DIAGNOSTIC: Exception when opening FileDescriptor, trying InputStream fallback: $uri", e)
                null
            }
            
            // Если не удалось открыть через FileDescriptor, пробуем через InputStream (для некоторых content:// URI)
            if (parcelFileDescriptor == null && uri.scheme == "content") {
                android.util.Log.d(TAG, "📥 PDF DIAGNOSTIC: Using InputStream fallback for content URI: $uri")
                try {
                    val inputStream: InputStream? = context.contentResolver.openInputStream(uri)
                    if (inputStream != null) {
                        // Создаем временный файл
                        tempFile = File.createTempFile("pdf_", ".pdf", context.cacheDir)
                        tempFile?.let { file ->
                            FileOutputStream(file).use { output ->
                                inputStream.copyTo(output)
                            }
                            android.util.Log.d(TAG, "✅ PDF DIAGNOSTIC: Copied PDF to temp file: ${file.absolutePath}")
                            // Открываем временный файл через FileDescriptor
                            parcelFileDescriptor = ParcelFileDescriptor.open(file, ParcelFileDescriptor.MODE_READ_ONLY)
                        }
                    } else {
                        return@withContext Result.failure(IOException("Cannot open input stream for URI: $uri"))
                    }
                } catch (e: Exception) {
                    android.util.Log.e(TAG, "❌ PDF DIAGNOSTIC: Failed to use InputStream fallback", e)
                    return@withContext Result.failure(IOException("Failed to open PDF: ${e.message}", e))
                }
            }
            
            if (parcelFileDescriptor == null) {
                return@withContext Result.failure(IOException("Could not open file descriptor for URI: $uri"))
            }
            
            // Открываем PDF документ с проверкой на null
            pdfDocument = pdfiumCore?.newDocument(parcelFileDescriptor, null)
            
            // КРИТИЧЕСКАЯ ПРОВЕРКА: Убеждаемся, что документ успешно создан
            if (pdfDocument == null) {
                android.util.Log.e(TAG, "❌ Failed to create PDF document - newDocument returned null")
                return@withContext Result.failure(IOException("Failed to create PDF document - file may be corrupted or invalid"))
            }
            
            // Получаем количество страниц с проверкой
            pageCount = try {
                pdfiumCore?.getPageCount(pdfDocument) ?: 0
            } catch (e: Exception) {
                android.util.Log.e(TAG, "❌ Failed to get page count: ${e.message}", e)
                0
            }
            
            if (pageCount <= 0) {
                android.util.Log.e(TAG, "❌ PDF file contains no pages or could not be read (pageCount=$pageCount)")
                // Закрываем документ перед возвратом ошибки
                try {
                    pdfiumCore?.closeDocument(pdfDocument)
                } catch (e: Exception) {
                    android.util.Log.w(TAG, "Error closing invalid PDF document", e)
                }
                pdfDocument = null
                return@withContext Result.failure(IOException("PDF file contains no pages or could not be read"))
            }
            
            android.util.Log.d(TAG, "✅ PDF opened successfully. Page count: $pageCount")
            Result.success(Unit)
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "❌ Failed to open PDF document", e)
            close()
            Result.failure(e)
        }
    }
    
    override fun getPageCount(): Int? = pageCount.takeIf { it > 0 }
    
    override suspend fun renderPage(pageIndex: Int, maxWidth: Int, maxHeight: Int): Result<Bitmap> = withContext(Dispatchers.IO) {
        try {
            if (pageIndex < 0 || pageIndex >= pageCount) {
                return@withContext Result.failure(IndexOutOfBoundsException("Page index $pageIndex out of bounds (0-${pageCount - 1})"))
            }
            
            // Проверяем кэш (учитываем реальные ограничения)
            val cacheKey = "${pageIndex}_${maxWidth}_${maxHeight}"
            pageCache.get(cacheKey)?.let { cachedBitmap ->
                android.util.Log.d(TAG, "✅ Cache hit for page $pageIndex")
                return@withContext Result.success(cachedBitmap)
            }
            
            val pdfiumCore = this@OptimizedPdfiumReader.pdfiumCore ?: return@withContext Result.failure(IllegalStateException("PDF document not opened"))
            val pdfDocument = this@OptimizedPdfiumReader.pdfDocument ?: return@withContext Result.failure(IllegalStateException("PDF document not opened"))
            
            // КРИТИЧЕСКАЯ ПРОВЕРКА: Убеждаемся, что PDF документ полностью инициализирован
            // Проверяем, что документ не null и что он валиден перед вызовом нативных методов
            try {
                // Проверяем валидность документа через getPageCount (безопасный метод)
                val docPageCount = pdfiumCore.getPageCount(pdfDocument)
                if (docPageCount <= 0 || pageIndex >= docPageCount) {
                    android.util.Log.e(TAG, "❌ Invalid PDF document state: pageCount=$docPageCount, requested page=$pageIndex")
                    return@withContext Result.failure(IllegalStateException("PDF document is invalid or page index out of bounds"))
                }
            } catch (e: Exception) {
                android.util.Log.e(TAG, "❌ PDF document validation failed: ${e.message}", e)
                return@withContext Result.failure(IllegalStateException("PDF document is not properly initialized: ${e.message}", e))
            }
            
            // Открываем страницу перед получением размеров (иначе Pdfium может вернуть 0)
            try {
                pdfiumCore.openPage(pdfDocument, pageIndex)
            } catch (e: Exception) {
                android.util.Log.e(TAG, "❌ Failed to open PDF page $pageIndex: ${e.message}", e)
                return@withContext Result.failure(IllegalStateException("Failed to open PDF page $pageIndex: ${e.message}", e))
            }
            
            // Получаем размеры страницы и гарантируем положительные значения
            var pageWidth = pdfiumCore.getPageWidthPoint(pdfDocument, pageIndex)
            var pageHeight = pdfiumCore.getPageHeightPoint(pdfDocument, pageIndex)
            
            if (pageWidth <= 0 || pageHeight <= 0) {
                android.util.Log.w(TAG, "⚠️ Pdfium reported non-positive size for page $pageIndex: ${pageWidth}x${pageHeight}. Using fallback size.")
                pageWidth = max(pageWidth, 1)
                pageHeight = max(pageHeight, 1)
            }
            
            // Рассчитываем оптимальные размеры с учетом ограничений
            val widthConstraint = resolveConstraint(maxWidth, pageWidth).coerceAtLeast(1f)
            val heightConstraint = resolveConstraint(maxHeight, pageHeight).coerceAtLeast(1f)
            val scale = min(
                widthConstraint / pageWidth,
                heightConstraint / pageHeight
            ).coerceAtLeast(1.0f)
            
            val (safeWidth, safeHeight) = clampBitmapSize(
                (pageWidth * scale).roundToInt(),
                (pageHeight * scale).roundToInt()
            )
            
            renderPageWithSize(pageIndex, safeWidth, safeHeight, cacheKey)
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "❌ Failed to render PDF page $pageIndex", e)
            Result.failure(e)
        }
    }

    private fun resolveConstraint(requestedMax: Int, pageDimension: Int, defaultMultiplier: Float = 4f): Float {
        return when {
            requestedMax <= 0 -> pageDimension * defaultMultiplier
            requestedMax == Int.MAX_VALUE -> pageDimension * defaultMultiplier
            else -> requestedMax.toFloat()
        }
    }
    
    private suspend fun renderPageWithSize(pageIndex: Int, width: Int, height: Int, cacheKey: String): Result<Bitmap> = withContext(Dispatchers.IO) {
        try {
            val pdfiumCore = this@OptimizedPdfiumReader.pdfiumCore ?: return@withContext Result.failure(IllegalStateException("PDF document not opened"))
            val pdfDocument = this@OptimizedPdfiumReader.pdfDocument ?: return@withContext Result.failure(IllegalStateException("PDF document not opened"))
            
            // КРИТИЧЕСКАЯ ПРОВЕРКА: Повторная валидация перед рендерингом
            try {
                val docPageCount = pdfiumCore.getPageCount(pdfDocument)
                if (docPageCount <= 0 || pageIndex >= docPageCount) {
                    android.util.Log.e(TAG, "❌ PDF document invalid before render: pageCount=$docPageCount, page=$pageIndex")
                    return@withContext Result.failure(IllegalStateException("PDF document is invalid"))
                }
            } catch (e: Exception) {
                android.util.Log.e(TAG, "❌ PDF document validation failed before render: ${e.message}", e)
                return@withContext Result.failure(IllegalStateException("PDF document validation failed: ${e.message}", e))
            }
            
            val safeWidth = width.coerceAtLeast(1)
            val safeHeight = height.coerceAtLeast(1)
            
            // Создаем битмап
            val bitmap = try {
                Bitmap.createBitmap(safeWidth, safeHeight, Bitmap.Config.ARGB_8888)
            } catch (e: OutOfMemoryError) {
                android.util.Log.e(TAG, "❌ OutOfMemoryError creating bitmap ${safeWidth}x${safeHeight}")
                return@withContext Result.failure(IllegalStateException("Not enough memory to create bitmap"))
            }
            
            // Рендерим страницу с высоким DPI для лучшего качества
            // Оборачиваем в try-catch для перехвата нативных ошибок
            try {
                pdfiumCore.renderPageBitmap(
                    pdfDocument,
                    bitmap,
                    pageIndex,
                    0, 0, safeWidth, safeHeight
                )
            } catch (e: Exception) {
                android.util.Log.e(TAG, "❌ Failed to render PDF page bitmap: ${e.message}", e)
                bitmap.recycle() // Освобождаем память при ошибке
                return@withContext Result.failure(IllegalStateException("Failed to render PDF page: ${e.message}", e))
            }
            
            // Добавляем в кэш
            pageCache.put(cacheKey, bitmap)
            
            // Обновляем статистику
            renderStats.onPageRendered(pageIndex, System.currentTimeMillis())
            
            android.util.Log.d(TAG, "✅ Page $pageIndex rendered successfully (${safeWidth}x${safeHeight})")
            Result.success(bitmap)
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "❌ Failed to render page with size ${width}x${height}", e)
            Result.failure(e)
        }
    }
    
    override fun close() {
        try {
            pageCache.evictAll()
            bitmapPool.evictAll()
            pdfDocument?.let { pdfiumCore?.closeDocument(it) }
            parcelFileDescriptor?.close()
            // Удаляем временный файл, если он был создан
            tempFile?.delete()
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error closing PDF resources", e)
        } finally {
            pdfDocument = null
            pdfiumCore = null
            parcelFileDescriptor = null
            tempFile = null
            pageCount = 0
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
        fun onPageRendered(@Suppress("UNUSED_PARAMETER") pageIndex: Int, endTime: Long) {
            totalPagesRendered++
            totalRenderTime += endTime
            averageRenderTime = totalRenderTime.toDouble() / totalPagesRendered
        }
    }
}

private fun sqrt(value: Float): Float = kotlin.math.sqrt(value.toDouble()).toFloat()
