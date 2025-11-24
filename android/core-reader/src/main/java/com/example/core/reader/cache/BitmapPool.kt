package com.example.core.reader.cache

import android.graphics.Bitmap
import java.util.concurrent.ConcurrentLinkedQueue
import java.util.concurrent.atomic.AtomicInteger
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Пул bitmap для переиспользования объектов
 * Уменьшает аллокации и сборку мусора
 */
@Singleton
class BitmapPool @Inject constructor() {
    
    companion object {
        private const val TAG = "BitmapPool"
        private const val MAX_POOL_SIZE = 20
        private const val MIN_BITMAP_SIZE = 100 * 100 * 4 // 100x100 ARGB_8888
        private const val MAX_BITMAP_SIZE = 2048 * 2048 * 4 // 2048x2048 ARGB_8888
    }
    
    // Пулы для разных размеров bitmap
    private val smallBitmaps = ConcurrentLinkedQueue<Bitmap>() // до 512x512
    private val mediumBitmaps = ConcurrentLinkedQueue<Bitmap>() // до 1024x1024
    private val largeBitmaps = ConcurrentLinkedQueue<Bitmap>() // до 2048x2048
    
    private val poolSize = AtomicInteger(0)
    
    /**
     * Получить bitmap из пула или создать новый
     */
    fun getBitmap(width: Int, height: Int, config: Bitmap.Config = Bitmap.Config.ARGB_8888): Bitmap {
        val requiredBytes = width * height * getBytesPerPixel(config)
        
        if (requiredBytes < MIN_BITMAP_SIZE || requiredBytes > MAX_BITMAP_SIZE) {
            // Слишком маленький или большой - создаем новый
            return Bitmap.createBitmap(width, height, config)
        }
        
        val pool = getPoolForSize(requiredBytes)
        val reusableBitmap = pool.poll()
        
        return if (reusableBitmap != null && canReuseBitmap(reusableBitmap, width, height, config)) {
            poolSize.decrementAndGet()
            android.util.Log.d(TAG, "Reused bitmap from pool: ${width}x${height}")
            // Очищаем bitmap перед переиспользованием
            reusableBitmap.eraseColor(0)
            reusableBitmap
        } else {
            // Возвращаем bitmap в пул если он не подходит
            reusableBitmap?.let { returnBitmap(it) }
            android.util.Log.d(TAG, "Created new bitmap: ${width}x${height}")
            Bitmap.createBitmap(width, height, config)
        }
    }
    
    /**
     * Вернуть bitmap в пул для переиспользования
     */
    fun returnBitmap(bitmap: Bitmap) {
        if (bitmap.isRecycled || poolSize.get() >= MAX_POOL_SIZE) {
            return
        }
        
        val bitmapBytes = bitmap.byteCount
        if (bitmapBytes < MIN_BITMAP_SIZE || bitmapBytes > MAX_BITMAP_SIZE) {
            return
        }
        
        val pool = getPoolForSize(bitmapBytes)
        pool.offer(bitmap)
        poolSize.incrementAndGet()
        
        android.util.Log.d(TAG, "Returned bitmap to pool: ${bitmap.width}x${bitmap.height}")
    }
    
    /**
     * Очистить все пулы
     */
    fun clearPools() {
        smallBitmaps.clear()
        mediumBitmaps.clear()
        largeBitmaps.clear()
        poolSize.set(0)
        android.util.Log.d(TAG, "Bitmap pools cleared")
    }
    
    /**
     * Получить статистику пула
     */
    fun getPoolStats(): PoolStats {
        return PoolStats(
            totalPoolSize = poolSize.get(),
            smallBitmapsCount = smallBitmaps.size,
            mediumBitmapsCount = mediumBitmaps.size,
            largeBitmapsCount = largeBitmaps.size
        )
    }
    
    private fun getPoolForSize(bytes: Int): ConcurrentLinkedQueue<Bitmap> {
        return when {
            bytes <= 512 * 512 * 4 -> smallBitmaps
            bytes <= 1024 * 1024 * 4 -> mediumBitmaps
            else -> largeBitmaps
        }
    }
    
    private fun canReuseBitmap(bitmap: Bitmap, width: Int, height: Int, config: Bitmap.Config): Boolean {
        return !bitmap.isRecycled && 
               bitmap.width >= width && 
               bitmap.height >= height &&
               bitmap.config == config
    }
    
    private fun getBytesPerPixel(config: Bitmap.Config): Int {
        return when (config) {
            Bitmap.Config.ARGB_8888 -> 4
            Bitmap.Config.RGB_565 -> 2
            Bitmap.Config.ARGB_4444 -> 2
            Bitmap.Config.ALPHA_8 -> 1
            else -> 4
        }
    }
}

/**
 * Статистика пула bitmap
 */
data class PoolStats(
    val totalPoolSize: Int,
    val smallBitmapsCount: Int,
    val mediumBitmapsCount: Int,
    val largeBitmapsCount: Int
)
