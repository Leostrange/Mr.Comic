package com.example.core.reader.utils

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Matrix
import kotlin.math.max
import kotlin.math.min

/**
 * Утилиты для работы с bitmap - downsample, масштабирование, оптимизация
 */
object BitmapUtils {
    
    private const val TAG = "BitmapUtils"
    
    /**
     * Декодировать bitmap с downsample под размер экрана
     */
    fun decodeSampledBitmap(
        data: ByteArray,
        reqWidth: Int,
        reqHeight: Int,
        config: Bitmap.Config = Bitmap.Config.RGB_565
    ): Bitmap? {
        return try {
            // Сначала декодируем только размеры
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            BitmapFactory.decodeByteArray(data, 0, data.size, options)
            
            // Вычисляем inSampleSize
            options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight)
            
            // Декодируем с downsample
            options.inJustDecodeBounds = false
            options.inPreferredConfig = config
            options.inDither = false
            options.inPurgeable = true
            options.inInputShareable = true
            
            BitmapFactory.decodeByteArray(data, 0, data.size, options)
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to decode sampled bitmap", e)
            null
        }
    }
    
    /**
     * Декодировать bitmap из файла с downsample
     */
    fun decodeSampledBitmapFromFile(
        filePath: String,
        reqWidth: Int,
        reqHeight: Int,
        config: Bitmap.Config = Bitmap.Config.RGB_565
    ): Bitmap? {
        return try {
            // Сначала декодируем только размеры
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            BitmapFactory.decodeFile(filePath, options)
            
            // Вычисляем inSampleSize
            options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight)
            
            // Декодируем с downsample
            options.inJustDecodeBounds = false
            options.inPreferredConfig = config
            options.inDither = false
            
            BitmapFactory.decodeFile(filePath, options)
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to decode sampled bitmap from file: $filePath", e)
            null
        }
    }
    
    /**
     * Вычислить inSampleSize для downsample
     */
    fun calculateInSampleSize(options: BitmapFactory.Options, reqWidth: Int, reqHeight: Int): Int {
        val height = options.outHeight
        val width = options.outWidth
        var inSampleSize = 1
        
        if (height > reqHeight || width > reqWidth) {
            val halfHeight = height / 2
            val halfWidth = width / 2
            
            // Вычисляем наибольший inSampleSize который является степенью 2
            // и сохраняет размеры больше требуемых
            while ((halfHeight / inSampleSize) >= reqHeight && (halfWidth / inSampleSize) >= reqWidth) {
                inSampleSize *= 2
            }
        }
        
        return inSampleSize
    }
    
    /**
     * Масштабировать bitmap с сохранением пропорций
     */
    fun scaleBitmap(
        source: Bitmap,
        maxWidth: Int,
        maxHeight: Int,
        filter: Boolean = true
    ): Bitmap {
        val sourceWidth = source.width
        val sourceHeight = source.height
        
        // Вычисляем масштаб
        val scale = min(
            maxWidth.toFloat() / sourceWidth,
            maxHeight.toFloat() / sourceHeight
        )
        
        if (scale >= 1.0f) {
            // Не нужно масштабировать
            return source
        }
        
        val newWidth = (sourceWidth * scale).toInt()
        val newHeight = (sourceHeight * scale).toInt()
        
        return try {
            Bitmap.createScaledBitmap(source, newWidth, newHeight, filter)
        } catch (e: OutOfMemoryError) {
            android.util.Log.e(TAG, "OutOfMemoryError while scaling bitmap", e)
            source // Возвращаем оригинал если не хватает памяти
        }
    }
    
    /**
     * Создать превью bitmap
     */
    fun createThumbnail(
        source: Bitmap,
        thumbnailSize: Int = 200
    ): Bitmap {
        val sourceWidth = source.width
        val sourceHeight = source.height
        
        val scale = min(
            thumbnailSize.toFloat() / sourceWidth,
            thumbnailSize.toFloat() / sourceHeight
        )
        
        val newWidth = (sourceWidth * scale).toInt()
        val newHeight = (sourceHeight * scale).toInt()
        
        return try {
            Bitmap.createScaledBitmap(source, newWidth, newHeight, true)
        } catch (e: OutOfMemoryError) {
            android.util.Log.e(TAG, "OutOfMemoryError while creating thumbnail", e)
            // Создаем минимальное превью
            Bitmap.createScaledBitmap(source, 50, 50, false)
        }
    }
    
    /**
     * Повернуть bitmap
     */
    fun rotateBitmap(source: Bitmap, degrees: Float): Bitmap {
        if (degrees == 0f) return source
        
        val matrix = Matrix().apply {
            postRotate(degrees)
        }
        
        return try {
            Bitmap.createBitmap(source, 0, 0, source.width, source.height, matrix, true)
        } catch (e: OutOfMemoryError) {
            android.util.Log.e(TAG, "OutOfMemoryError while rotating bitmap", e)
            source
        }
    }
    
    /**
     * Получить размер bitmap в байтах
     */
    fun getBitmapSize(bitmap: Bitmap): Int {
        return bitmap.byteCount
    }
    
    /**
     * Проверить, можно ли безопасно создать bitmap указанного размера
     */
    fun canCreateBitmap(width: Int, height: Int, config: Bitmap.Config = Bitmap.Config.ARGB_8888): Boolean {
        val bytesPerPixel = when (config) {
            Bitmap.Config.ARGB_8888 -> 4
            Bitmap.Config.RGB_565 -> 2
            Bitmap.Config.ARGB_4444 -> 2
            Bitmap.Config.ALPHA_8 -> 1
            else -> 4
        }
        
        val requiredBytes = width * height * bytesPerPixel
        val maxMemory = Runtime.getRuntime().maxMemory()
        val usedMemory = Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()
        val availableMemory = maxMemory - usedMemory
        
        // Оставляем 25% памяти для других нужд
        return requiredBytes < (availableMemory * 0.75)
    }
    
    /**
     * Оптимизировать bitmap для отображения
     */
    fun optimizeBitmap(
        source: Bitmap,
        targetWidth: Int,
        targetHeight: Int,
        scale: Float = 1.0f
    ): Bitmap {
        val finalWidth = (targetWidth * scale).toInt()
        val finalHeight = (targetHeight * scale).toInt()
        
        // Проверяем, нужно ли масштабирование
        if (source.width <= finalWidth && source.height <= finalHeight) {
            return source
        }
        
        // Масштабируем с сохранением пропорций
        return scaleBitmap(source, finalWidth, finalHeight)
    }
}