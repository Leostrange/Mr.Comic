package com.example.core.reader

import android.content.Context
import android.graphics.*
import android.graphics.drawable.BitmapDrawable
import android.graphics.drawable.Drawable
import android.util.LruCache
import kotlinx.coroutines.*
import javax.inject.Inject
import javax.inject.Singleton
import kotlin.math.min

/**
 * Система оптимизации изображений для улучшения производительности
 */
@Singleton
class ImageOptimizer @Inject constructor(
    private val context: Context
) {
    
    // LRU кэш для битмапов
    private val bitmapCache: LruCache<String, Bitmap> = LruCache<String, Bitmap>(
        // Используем 1/8 доступной памяти для кэша
        (Runtime.getRuntime().maxMemory() / 1024 / 8).toInt()
    ) {
        override fun sizeOf(key: String, bitmap: Bitmap): Int {
            return bitmap.allocationByteCount / 1024
        }
    }
    
    // Кэш для миниатюр
    private val thumbnailCache: LruCache<String, Bitmap> = LruCache<String, Bitmap>(
        (Runtime.getRuntime().maxMemory() / 1024 / 16).toInt()
    ) {
        override fun sizeOf(key: String, bitmap: Bitmap): Int {
            return bitmap.allocationByteCount / 1024
        }
    }
    
    companion object {
        private const val THUMBNAIL_SIZE = 200
        private const val MAX_IMAGE_SIZE = 2048
        private const val COMPRESSION_QUALITY = 85
    }
    
    /**
     * Загружает и оптимизирует изображение
     */
    suspend fun loadOptimizedImage(
        imagePath: String,
        targetWidth: Int = MAX_IMAGE_SIZE,
        targetHeight: Int = MAX_IMAGE_SIZE,
        useCache: Boolean = true
    ): Bitmap? = withContext(Dispatchers.IO) {
        
        val cacheKey = generateCacheKey(imagePath, targetWidth, targetHeight)
        
        // Проверяем кэш
        if (useCache) {
            bitmapCache.get(cacheKey)?.let { return@withContext it }
        }
        
        try {
            // Сначала получаем размеры изображения без загрузки в память
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            BitmapFactory.decodeFile(imagePath, options)
            
            // Вычисляем коэффициент масштабирования
            val scaleFactor = calculateInSampleSize(options, targetWidth, targetHeight)
            
            // Загружаем оптимизированное изображение
            val finalOptions = BitmapFactory.Options().apply {
                inSampleSize = scaleFactor
                inPreferredConfig = Bitmap.Config.RGB_565 // Экономим память
                inDither = true
            }
            
            val bitmap = BitmapFactory.decodeFile(imagePath, finalOptions)
            
            // Дополнительное масштабирование если нужно
            val optimizedBitmap = if (bitmap != null && 
                (bitmap.width > targetWidth || bitmap.height > targetHeight)) {
                resizeBitmap(bitmap, targetWidth, targetHeight)
            } else {
                bitmap
            }
            
            // Кэшируем результат
            if (useCache && optimizedBitmap != null) {
                bitmapCache.put(cacheKey, optimizedBitmap)
            }
            
            optimizedBitmap
            
        } catch (e: Exception) {
            null
        }
    }
    
    /**
     * Создает миниатюру изображения
     */
    suspend fun createThumbnail(
        imagePath: String,
        size: Int = THUMBNAIL_SIZE
    ): Bitmap? = withContext(Dispatchers.IO) {
        
        val cacheKey = "thumb_${imagePath}_$size"
        
        // Проверяем кэш миниатюр
        thumbnailCache.get(cacheKey)?.let { return@withContext it }
        
        try {
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            BitmapFactory.decodeFile(imagePath, options)
            
            val scaleFactor = calculateInSampleSize(options, size, size)
            
            val thumbnailOptions = BitmapFactory.Options().apply {
                inSampleSize = scaleFactor
                inPreferredConfig = Bitmap.Config.RGB_565
            }
            
            val bitmap = BitmapFactory.decodeFile(imagePath, thumbnailOptions)
            val thumbnail = bitmap?.let { resizeBitmap(it, size, size) }
            
            if (thumbnail != null) {
                thumbnailCache.put(cacheKey, thumbnail)
            }
            
            thumbnail
            
        } catch (e: Exception) {
            null
        }
    }
    
    /**
     * Предварительная загрузка изображений
     */
    suspend fun preloadImages(
        imagePaths: List<String>,
        targetWidth: Int = MAX_IMAGE_SIZE,
        targetHeight: Int = MAX_IMAGE_SIZE
    ) = withContext(Dispatchers.IO) {
        
        // Загружаем параллельно с ограничением количества одновременных операций
        val semaphore = Semaphore(3) // Максимум 3 одновременные загрузки
        
        imagePaths.map { imagePath ->
            async {
                semaphore.withPermit {
                    loadOptimizedImage(imagePath, targetWidth, targetHeight, useCache = true)
                }
            }
        }.awaitAll()
    }
    
    /**
     * Сжимает изображение для экономии памяти
     */
    suspend fun compressImage(
        bitmap: Bitmap,
        quality: Int = COMPRESSION_QUALITY
    ): ByteArray? = withContext(Dispatchers.IO) {
        try {
            val outputStream = java.io.ByteArrayOutputStream()
            bitmap.compress(Bitmap.CompressFormat.JPEG, quality, outputStream)
            outputStream.toByteArray()
        } catch (e: Exception) {
            null
        }
    }
    
    /**
     * Применяет фильтр к изображению
     */
    suspend fun applyImageFilter(
        bitmap: Bitmap,
        filter: ImageFilter
    ): Bitmap? = withContext(Dispatchers.Default) {
        try {
            when (filter) {
                ImageFilter.BRIGHTNESS -> adjustBrightness(bitmap, 1.2f)
                ImageFilter.CONTRAST -> adjustContrast(bitmap, 1.3f)
                ImageFilter.GRAYSCALE -> convertToGrayscale(bitmap)
                ImageFilter.SEPIA -> applySepiaFilter(bitmap)
                ImageFilter.SHARPEN -> sharpenImage(bitmap)
            }
        } catch (e: Exception) {
            null
        }
    }
    
    /**
     * Очищает кэш изображений
     */
    fun clearCache() {
        bitmapCache.evictAll()
        thumbnailCache.evictAll()
    }
    
    /**
     * Получает статистику кэша
     */
    fun getCacheStats(): CacheStats {
        return CacheStats(
            bitmapCacheSize = bitmapCache.size(),
            bitmapCacheHits = bitmapCache.hitCount(),
            bitmapCacheMisses = bitmapCache.missCount(),
            thumbnailCacheSize = thumbnailCache.size(),
            thumbnailCacheHits = thumbnailCache.hitCount(),
            thumbnailCacheMisses = thumbnailCache.missCount()
        )
    }
    
    // Приватные методы
    
    private fun calculateInSampleSize(
        options: BitmapFactory.Options,
        reqWidth: Int,
        reqHeight: Int
    ): Int {
        val height = options.outHeight
        val width = options.outWidth
        var inSampleSize = 1
        
        if (height > reqHeight || width > reqWidth) {
            val halfHeight = height / 2
            val halfWidth = width / 2
            
            while ((halfHeight / inSampleSize) >= reqHeight && 
                   (halfWidth / inSampleSize) >= reqWidth) {
                inSampleSize *= 2
            }
        }
        
        return inSampleSize
    }
    
    private fun resizeBitmap(bitmap: Bitmap, maxWidth: Int, maxHeight: Int): Bitmap {
        val width = bitmap.width
        val height = bitmap.height
        
        val scale = min(maxWidth.toFloat() / width, maxHeight.toFloat() / height)
        
        val newWidth = (width * scale).toInt()
        val newHeight = (height * scale).toInt()
        
        return Bitmap.createScaledBitmap(bitmap, newWidth, newHeight, true)
    }
    
    private fun generateCacheKey(imagePath: String, width: Int, height: Int): String {
        return "${imagePath}_${width}x${height}"
    }
    
    private fun adjustBrightness(bitmap: Bitmap, factor: Float): Bitmap {
        val colorMatrix = ColorMatrix().apply {
            set(floatArrayOf(
                factor, 0f, 0f, 0f, 0f,
                0f, factor, 0f, 0f, 0f,
                0f, 0f, factor, 0f, 0f,
                0f, 0f, 0f, 1f, 0f
            ))
        }
        return applyColorMatrix(bitmap, colorMatrix)
    }
    
    private fun adjustContrast(bitmap: Bitmap, factor: Float): Bitmap {
        val translate = (-.5f * factor + .5f) * 255f
        val colorMatrix = ColorMatrix().apply {
            set(floatArrayOf(
                factor, 0f, 0f, 0f, translate,
                0f, factor, 0f, 0f, translate,
                0f, 0f, factor, 0f, translate,
                0f, 0f, 0f, 1f, 0f
            ))
        }
        return applyColorMatrix(bitmap, colorMatrix)
    }
    
    private fun convertToGrayscale(bitmap: Bitmap): Bitmap {
        val colorMatrix = ColorMatrix().apply {
            setSaturation(0f)
        }
        return applyColorMatrix(bitmap, colorMatrix)
    }
    
    private fun applySepiaFilter(bitmap: Bitmap): Bitmap {
        val colorMatrix = ColorMatrix().apply {
            set(floatArrayOf(
                0.393f, 0.769f, 0.189f, 0f, 0f,
                0.349f, 0.686f, 0.168f, 0f, 0f,
                0.272f, 0.534f, 0.131f, 0f, 0f,
                0f, 0f, 0f, 1f, 0f
            ))
        }
        return applyColorMatrix(bitmap, colorMatrix)
    }
    
    private fun sharpenImage(bitmap: Bitmap): Bitmap {
        val sharpenMatrix = floatArrayOf(
            0f, -1f, 0f,
            -1f, 5f, -1f,
            0f, -1f, 0f
        )
        return applyConvolutionMatrix(bitmap, sharpenMatrix)
    }
    
    private fun applyColorMatrix(bitmap: Bitmap, colorMatrix: ColorMatrix): Bitmap {
        val result = Bitmap.createBitmap(bitmap.width, bitmap.height, bitmap.config)
        val canvas = Canvas(result)
        val paint = Paint().apply {
            colorFilter = ColorMatrixColorFilter(colorMatrix)
        }
        canvas.drawBitmap(bitmap, 0f, 0f, paint)
        return result
    }
    
    private fun applyConvolutionMatrix(bitmap: Bitmap, matrix: FloatArray): Bitmap {
        // Упрощенная реализация свертки
        val result = bitmap.copy(bitmap.config, true)
        // Здесь должна быть реализация свертки
        return result
    }
}

/**
 * Типы фильтров изображений
 */
enum class ImageFilter {
    BRIGHTNESS,
    CONTRAST,
    GRAYSCALE,
    SEPIA,
    SHARPEN
}

/**
 * Статистика кэша изображений
 */
data class CacheStats(
    val bitmapCacheSize: Int,
    val bitmapCacheHits: Long,
    val bitmapCacheMisses: Long,
    val thumbnailCacheSize: Int,
    val thumbnailCacheHits: Long,
    val thumbnailCacheMisses: Long
) {
    val bitmapHitRate: Float
        get() = if (bitmapCacheHits + bitmapCacheMisses > 0) {
            bitmapCacheHits.toFloat() / (bitmapCacheHits + bitmapCacheMisses)
        } else 0f
    
    val thumbnailHitRate: Float
        get() = if (thumbnailCacheHits + thumbnailCacheMisses > 0) {
            thumbnailCacheHits.toFloat() / (thumbnailCacheHits + thumbnailCacheMisses)
        } else 0f
}