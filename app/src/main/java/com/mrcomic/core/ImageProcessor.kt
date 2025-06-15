package com.mrcomic.core

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Canvas
import android.graphics.ColorMatrix
import android.graphics.ColorMatrixColorFilter
import android.graphics.Paint
import android.net.Uri
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.opencv.android.Utils
import org.opencv.core.Mat
import org.opencv.core.Size
import org.opencv.imgproc.Imgproc
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Класс для обработки изображений перед OCR
 */
@Singleton
class ImageProcessor @Inject constructor(
    private val context: Context
) {
    
    /**
     * Предобработка изображения для улучшения качества OCR
     */
    suspend fun preprocessForOcr(bitmap: Bitmap): Bitmap = withContext(Dispatchers.IO) {
        var processedBitmap = bitmap
        
        // Увеличение контрастности
        processedBitmap = enhanceContrast(processedBitmap)
        
        // Преобразование в оттенки серого
        processedBitmap = convertToGrayscale(processedBitmap)
        
        // Применение фильтра резкости
        processedBitmap = applySharpenFilter(processedBitmap)
        
        // Нормализация размера
        processedBitmap = normalizeSize(processedBitmap)
        
        processedBitmap
    }
    
    /**
     * Загрузка изображения из URI
     */
    suspend fun loadImageFromUri(uri: Uri): Bitmap? = withContext(Dispatchers.IO) {
        try {
            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                BitmapFactory.decodeStream(inputStream)
            }
        } catch (e: Exception) {
            null
        }
    }
    
    /**
     * Сегментация текстовых блоков на изображении
     */
    suspend fun segmentTextBlocks(bitmap: Bitmap): List<TextBlock> = withContext(Dispatchers.IO) {
        val textBlocks = mutableListOf<TextBlock>()
        
        // Конвертация в OpenCV Mat
        val mat = Mat()
        Utils.bitmapToMat(bitmap, mat)
        
        // Применение морфологических операций для выделения текстовых областей
        val processed = Mat()
        Imgproc.cvtColor(mat, processed, Imgproc.COLOR_BGR2GRAY)
        
        // Здесь должна быть логика сегментации текстовых блоков
        // Для примера создаем один блок на все изображение
        textBlocks.add(
            TextBlock(
                x = 0,
                y = 0,
                width = bitmap.width,
                height = bitmap.height,
                confidence = 0.9f
            )
        )
        
        textBlocks
    }
    
    /**
     * Увеличение контрастности изображения
     */
    private fun enhanceContrast(bitmap: Bitmap): Bitmap {
        val contrast = 1.5f
        val brightness = 0f
        
        val colorMatrix = ColorMatrix().apply {
            set(floatArrayOf(
                contrast, 0f, 0f, 0f, brightness,
                0f, contrast, 0f, 0f, brightness,
                0f, 0f, contrast, 0f, brightness,
                0f, 0f, 0f, 1f, 0f
            ))
        }
        
        val paint = Paint().apply {
            colorFilter = ColorMatrixColorFilter(colorMatrix)
        }
        
        val result = Bitmap.createBitmap(bitmap.width, bitmap.height, bitmap.config)
        val canvas = Canvas(result)
        canvas.drawBitmap(bitmap, 0f, 0f, paint)
        
        return result
    }
    
    /**
     * Преобразование в оттенки серого
     */
    private fun convertToGrayscale(bitmap: Bitmap): Bitmap {
        val colorMatrix = ColorMatrix().apply {
            setSaturation(0f)
        }
        
        val paint = Paint().apply {
            colorFilter = ColorMatrixColorFilter(colorMatrix)
        }
        
        val result = Bitmap.createBitmap(bitmap.width, bitmap.height, bitmap.config)
        val canvas = Canvas(result)
        canvas.drawBitmap(bitmap, 0f, 0f, paint)
        
        return result
    }
    
    /**
     * Применение фильтра резкости
     */
    private fun applySharpenFilter(bitmap: Bitmap): Bitmap {
        // Простая реализация фильтра резкости
        val mat = Mat()
        Utils.bitmapToMat(bitmap, mat)
        
        val sharpened = Mat()
        val kernel = Mat.ones(3, 3, org.opencv.core.CvType.CV_32F)
        kernel.put(1, 1, -8.0)
        
        Imgproc.filter2D(mat, sharpened, -1, kernel)
        
        val result = Bitmap.createBitmap(bitmap.width, bitmap.height, bitmap.config)
        Utils.matToBitmap(sharpened, result)
        
        return result
    }
    
    /**
     * Нормализация размера изображения
     */
    private fun normalizeSize(bitmap: Bitmap): Bitmap {
        val maxSize = 1920
        val width = bitmap.width
        val height = bitmap.height
        
        if (width <= maxSize && height <= maxSize) {
            return bitmap
        }
        
        val ratio = minOf(maxSize.toFloat() / width, maxSize.toFloat() / height)
        val newWidth = (width * ratio).toInt()
        val newHeight = (height * ratio).toInt()
        
        return Bitmap.createScaledBitmap(bitmap, newWidth, newHeight, true)
    }
}

/**
 * Класс для представления текстового блока
 */
data class TextBlock(
    val x: Int,
    val y: Int,
    val width: Int,
    val height: Int,
    val confidence: Float
)

