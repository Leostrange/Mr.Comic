package com.example.core.reader.utils

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Matrix
import android.media.ExifInterface
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
        config: Bitmap.Config = Bitmap.Config.ARGB_8888 // По умолчанию высокое качество
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
            options.inDither = false // Отключаем дизеринг для лучшей резкости
            options.inScaled = false // Отключаем автоматическое масштабирование
            options.inPremultiplied = false // Отключаем предварительное умножение альфы
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
        config: Bitmap.Config = Bitmap.Config.ARGB_8888 // По умолчанию высокое качество
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
            options.inDither = false // Отключаем дизеринг для лучшей резкости
            options.inScaled = false // Отключаем автоматическое масштабирование
            options.inPremultiplied = false // Отключаем предварительное умножение альфы
            
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
        if (reqWidth <= 0 || reqHeight <= 0) {
            return 1
        }
        val height = options.outHeight
        val width = options.outWidth
        var inSampleSize = 1
        
        if (height > reqHeight || width > reqWidth) {
            val heightRatio = height.toFloat() / reqHeight.toFloat()
            val widthRatio = width.toFloat() / reqWidth.toFloat()
            val dominantRatio = max(heightRatio, widthRatio)

            // Если изображение не намного больше, возвращаем оригинальное качество
            if (dominantRatio < 1.2f) {
                return 1
            }

            // Используем ближайшую степень двойки для стабильности декодера
            while (inSampleSize * 2 <= dominantRatio) {
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
        filter: Boolean = true // Используем true для высокого качества масштабирования
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
     * Получить EXIF ориентацию из файла
     */
    fun getExifOrientation(filePath: String): Int {
        return try {
            val exif = ExifInterface(filePath)
            exif.getAttributeInt(ExifInterface.TAG_ORIENTATION, ExifInterface.ORIENTATION_NORMAL)
        } catch (e: Exception) {
            android.util.Log.w(TAG, "Failed to read EXIF orientation: ${e.message}")
            ExifInterface.ORIENTATION_NORMAL
        }
    }
    
    /**
     * Получить EXIF ориентацию из байтов
     */
    fun getExifOrientationFromBytes(data: ByteArray): Int {
        return try {
            val exif = ExifInterface(java.io.ByteArrayInputStream(data))
            exif.getAttributeInt(ExifInterface.TAG_ORIENTATION, ExifInterface.ORIENTATION_NORMAL)
        } catch (e: Exception) {
            android.util.Log.w(TAG, "Failed to read EXIF orientation from bytes: ${e.message}")
            ExifInterface.ORIENTATION_NORMAL
        }
    }
    
    /**
     * Повернуть bitmap согласно EXIF ориентации
     */
    fun rotateBitmapByExif(bitmap: Bitmap, orientation: Int): Bitmap {
        return when (orientation) {
            ExifInterface.ORIENTATION_ROTATE_90 -> rotateBitmap(bitmap, 90f)
            ExifInterface.ORIENTATION_ROTATE_180 -> rotateBitmap(bitmap, 180f)
            ExifInterface.ORIENTATION_ROTATE_270 -> rotateBitmap(bitmap, 270f)
            ExifInterface.ORIENTATION_FLIP_HORIZONTAL -> flipBitmap(bitmap, horizontal = true)
            ExifInterface.ORIENTATION_FLIP_VERTICAL -> flipBitmap(bitmap, vertical = true)
            ExifInterface.ORIENTATION_TRANSPOSE -> {
                // Поворот на 90° + отражение по горизонтали
                rotateBitmap(flipBitmap(bitmap, horizontal = true), 90f)
            }
            ExifInterface.ORIENTATION_TRANSVERSE -> {
                // Поворот на 270° + отражение по горизонтали
                rotateBitmap(flipBitmap(bitmap, horizontal = true), 270f)
            }
            else -> bitmap
        }
    }
    
    /**
     * Отражение bitmap
     */
    fun flipBitmap(source: Bitmap, horizontal: Boolean = false, vertical: Boolean = false): Bitmap {
        if (!horizontal && !vertical) return source
        
        val matrix = Matrix().apply {
            if (horizontal) postScale(-1f, 1f)
            if (vertical) postScale(1f, -1f)
        }
        
        return try {
            Bitmap.createBitmap(source, 0, 0, source.width, source.height, matrix, true)
        } catch (e: OutOfMemoryError) {
            android.util.Log.e(TAG, "OutOfMemoryError while flipping bitmap", e)
            source
        }
    }
    
    /**
     * Декодировать bitmap с учетом EXIF ориентации
     */
    fun decodeBitmapWithExif(
        data: ByteArray,
        reqWidth: Int,
        reqHeight: Int,
        config: Bitmap.Config = Bitmap.Config.ARGB_8888
    ): Bitmap? {
        return try {
            // Получаем EXIF ориентацию
            val orientation = getExifOrientationFromBytes(data)
            
            // Декодируем bitmap
            val bitmap = decodeSampledBitmap(data, reqWidth, reqHeight, config)
            
            // Поворачиваем согласно EXIF
            bitmap?.let { rotateBitmapByExif(it, orientation) }
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to decode bitmap with EXIF", e)
            null
        }
    }
    
    /**
     * Декодировать bitmap из файла с учетом EXIF ориентации
     */
    fun decodeBitmapFromFileWithExif(
        filePath: String,
        reqWidth: Int,
        reqHeight: Int,
        config: Bitmap.Config = Bitmap.Config.RGB_565
    ): Bitmap? {
        return try {
            // Получаем EXIF ориентацию
            val orientation = getExifOrientation(filePath)
            
            // Декодируем bitmap
            val bitmap = decodeSampledBitmapFromFile(filePath, reqWidth, reqHeight, config)
            
            // Поворачиваем согласно EXIF
            bitmap?.let { rotateBitmapByExif(it, orientation) }
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to decode bitmap from file with EXIF", e)
            null
        }
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
