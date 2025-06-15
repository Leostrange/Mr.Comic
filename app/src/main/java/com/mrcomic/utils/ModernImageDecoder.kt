package com.example.mrcomic.utils

import android.content.Context
import android.graphics.Bitmap
import android.graphics.ImageDecoder
import android.os.Build
import android.util.Log
import androidx.annotation.RequiresApi
import java.io.File
import java.io.FileInputStream
import java.io.IOException

/**
 * Универсальный декодер изображений с поддержкой современных форматов
 * Поддерживает WebP, AVIF, HEIC через ImageDecoder (Android 9+)
 */
class ModernImageDecoder(private val context: Context) {

    companion object {
        private const val TAG = "ModernImageDecoder"
        
        // Поддерживаемые современные форматы
        private val MODERN_IMAGE_EXTENSIONS = setOf(
            "webp", "avif", "heic", "heif"
        )
        
        // Традиционные форматы
        private val TRADITIONAL_IMAGE_EXTENSIONS = setOf(
            "jpg", "jpeg", "png", "gif", "bmp"
        )
    }

    /**
     * Декодирование изображения с автоматическим выбором метода
     */
    fun decodeImage(imageFile: File): Bitmap? {
        val extension = imageFile.extension.lowercase()
        
        return when {
            isModernFormat(extension) -> decodeModernFormat(imageFile)
            isTraditionalFormat(extension) -> decodeTraditionalFormat(imageFile)
            else -> {
                Log.w(TAG, "Unsupported image format: $extension")
                null
            }
        }
    }

    /**
     * Декодирование из байтового массива
     */
    fun decodeImage(imageData: ByteArray, format: String): Bitmap? {
        return when {
            isModernFormat(format) -> decodeModernFormat(imageData)
            isTraditionalFormat(format) -> decodeTraditionalFormat(imageData)
            else -> {
                Log.w(TAG, "Unsupported image format: $format")
                null
            }
        }
    }

    /**
     * Декодирование современных форматов через ImageDecoder
     */
    @RequiresApi(Build.VERSION_CODES.P)
    private fun decodeModernFormat(imageFile: File): Bitmap? {
        return try {
            val source = ImageDecoder.createSource(imageFile)
            val bitmap = ImageDecoder.decodeBitmap(source) { decoder, info, source ->
                // Настройки декодирования
                decoder.allocator = ImageDecoder.ALLOCATOR_SOFTWARE
                decoder.isMutableRequired = false
                
                Log.d(TAG, "Decoding modern format: ${imageFile.name}, size: ${info.size}")
            }
            
            Log.i(TAG, "Successfully decoded modern format: ${imageFile.name}")
            bitmap
            
        } catch (e: Exception) {
            Log.e(TAG, "Error decoding modern format: ${imageFile.name}", e)
            // Fallback для старых версий Android
            if (Build.VERSION.SDK_INT < Build.VERSION_CODES.P) {
                decodeTraditionalFormat(imageFile)
            } else {
                null
            }
        }
    }

    /**
     * Декодирование современных форматов из байтового массива
     */
    @RequiresApi(Build.VERSION_CODES.P)
    private fun decodeModernFormat(imageData: ByteArray): Bitmap? {
        return try {
            val source = ImageDecoder.createSource(imageData)
            val bitmap = ImageDecoder.decodeBitmap(source) { decoder, info, source ->
                decoder.allocator = ImageDecoder.ALLOCATOR_SOFTWARE
                decoder.isMutableRequired = false
                
                Log.d(TAG, "Decoding modern format from bytes, size: ${info.size}")
            }
            
            Log.i(TAG, "Successfully decoded modern format from bytes")
            bitmap
            
        } catch (e: Exception) {
            Log.e(TAG, "Error decoding modern format from bytes", e)
            decodeTraditionalFormat(imageData)
        }
    }

    /**
     * Декодирование традиционных форматов через BitmapFactory
     */
    private fun decodeTraditionalFormat(imageFile: File): Bitmap? {
        return try {
            val options = android.graphics.BitmapFactory.Options().apply {
                inJustDecodeBounds = false
                inSampleSize = 1
                inPreferredConfig = Bitmap.Config.ARGB_8888
            }
            
            val bitmap = android.graphics.BitmapFactory.decodeFile(imageFile.absolutePath, options)
            Log.i(TAG, "Successfully decoded traditional format: ${imageFile.name}")
            bitmap
            
        } catch (e: Exception) {
            Log.e(TAG, "Error decoding traditional format: ${imageFile.name}", e)
            null
        }
    }

    /**
     * Декодирование традиционных форматов из байтового массива
     */
    private fun decodeTraditionalFormat(imageData: ByteArray): Bitmap? {
        return try {
            val options = android.graphics.BitmapFactory.Options().apply {
                inJustDecodeBounds = false
                inSampleSize = 1
                inPreferredConfig = Bitmap.Config.ARGB_8888
            }
            
            val bitmap = android.graphics.BitmapFactory.decodeByteArray(imageData, 0, imageData.size, options)
            Log.i(TAG, "Successfully decoded traditional format from bytes")
            bitmap
            
        } catch (e: Exception) {
            Log.e(TAG, "Error decoding traditional format from bytes", e)
            null
        }
    }

    /**
     * Получение метаданных изображения
     */
    fun getImageMetadata(imageFile: File): ImageMetadata? {
        val extension = imageFile.extension.lowercase()
        
        return when {
            isModernFormat(extension) -> getModernFormatMetadata(imageFile)
            isTraditionalFormat(extension) -> getTraditionalFormatMetadata(imageFile)
            else -> null
        }
    }

    /**
     * Получение метаданных современных форматов
     */
    @RequiresApi(Build.VERSION_CODES.P)
    private fun getModernFormatMetadata(imageFile: File): ImageMetadata? {
        return try {
            val source = ImageDecoder.createSource(imageFile)
            var metadata: ImageMetadata? = null
            
            ImageDecoder.decodeBitmap(source) { decoder, info, source ->
                metadata = ImageMetadata(
                    width = info.size.width,
                    height = info.size.height,
                    format = imageFile.extension.uppercase(),
                    colorSpace = info.colorSpace?.name ?: "Unknown",
                    hasAlpha = info.colorSpace?.isWideGamut ?: false,
                    fileSize = imageFile.length(),
                    isAnimated = info.isAnimated
                )
                
                // Прерываем декодирование, нам нужны только метаданные
                decoder.allocator = ImageDecoder.ALLOCATOR_SOFTWARE
            }
            
            metadata
            
        } catch (e: Exception) {
            Log.e(TAG, "Error getting modern format metadata: ${imageFile.name}", e)
            null
        }
    }

    /**
     * Получение метаданных традиционных форматов
     */
    private fun getTraditionalFormatMetadata(imageFile: File): ImageMetadata? {
        return try {
            val options = android.graphics.BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            
            android.graphics.BitmapFactory.decodeFile(imageFile.absolutePath, options)
            
            ImageMetadata(
                width = options.outWidth,
                height = options.outHeight,
                format = imageFile.extension.uppercase(),
                colorSpace = "sRGB", // Предполагаем sRGB для традиционных форматов
                hasAlpha = options.outConfig == Bitmap.Config.ARGB_8888,
                fileSize = imageFile.length(),
                isAnimated = false
            )
            
        } catch (e: Exception) {
            Log.e(TAG, "Error getting traditional format metadata: ${imageFile.name}", e)
            null
        }
    }

    /**
     * Проверка поддержки формата
     */
    fun isFormatSupported(extension: String): Boolean {
        val ext = extension.lowercase()
        return isModernFormat(ext) || isTraditionalFormat(ext)
    }

    /**
     * Проверка, является ли формат современным
     */
    private fun isModernFormat(extension: String): Boolean {
        return MODERN_IMAGE_EXTENSIONS.contains(extension.lowercase())
    }

    /**
     * Проверка, является ли формат традиционным
     */
    private fun isTraditionalFormat(extension: String): Boolean {
        return TRADITIONAL_IMAGE_EXTENSIONS.contains(extension.lowercase())
    }

    /**
     * Получение списка поддерживаемых форматов
     */
    fun getSupportedFormats(): List<String> {
        val formats = mutableListOf<String>()
        formats.addAll(TRADITIONAL_IMAGE_EXTENSIONS)
        
        // Добавляем современные форматы только для Android 9+
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            formats.addAll(MODERN_IMAGE_EXTENSIONS)
        }
        
        return formats.sorted()
    }

    /**
     * Метаданные изображения
     */
    data class ImageMetadata(
        val width: Int,
        val height: Int,
        val format: String,
        val colorSpace: String,
        val hasAlpha: Boolean,
        val fileSize: Long,
        val isAnimated: Boolean
    ) {
        val aspectRatio: Float get() = width.toFloat() / height.toFloat()
        val megapixels: Float get() = (width * height) / 1_000_000f
        val fileSizeMB: Float get() = fileSize / (1024f * 1024f)
        
        override fun toString(): String {
            return "ImageMetadata(${width}x${height}, $format, ${String.format("%.2f", fileSizeMB)}MB, $colorSpace)"
        }
    }
}

