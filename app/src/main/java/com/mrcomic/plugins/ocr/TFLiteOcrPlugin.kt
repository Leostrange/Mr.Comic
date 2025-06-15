package com.mrcomic.plugins.ocr

import android.graphics.Bitmap
import com.mrcomic.core.TFLiteManager
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.nio.ByteBuffer
import java.nio.ByteOrder
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Реализация OCR плагина с использованием TensorFlow Lite
 */
@Singleton
class TFLiteOcrPlugin @Inject constructor(
    private val tfliteManager: TFLiteManager
) : OcrPlugin {
    
    private var isInitialized = false
    
    override suspend fun initialize(): Boolean = withContext(Dispatchers.IO) {
        return@withContext try {
            tfliteManager.initializeModels()
            isInitialized = true
            true
        } catch (e: Exception) {
            android.util.Log.e("TFLiteOcrPlugin", "Failed to initialize", e)
            false
        }
    }
    
    override suspend fun recognizeText(bitmap: Bitmap, language: String): OcrResult = withContext(Dispatchers.IO) {
        if (!isInitialized) {
            return@withContext OcrResult(
                text = "",
                confidence = 0.0f,
                language = language,
                error = "Plugin not initialized"
            )
        }
        
        val startTime = System.currentTimeMillis()
        
        return@withContext try {
            // Подготовка входных данных
            val inputBuffer = preprocessBitmap(bitmap)
            
            // Выполнение OCR
            val recognizedText = tfliteManager.runOcr(inputBuffer)
            
            // Анализ текстовых блоков
            val textBlocks = analyzeTextBlocks(bitmap, recognizedText)
            
            val processingTime = System.currentTimeMillis() - startTime
            
            OcrResult(
                text = recognizedText,
                confidence = calculateConfidence(recognizedText),
                language = detectLanguage(recognizedText),
                textBlocks = textBlocks,
                processingTime = processingTime
            )
            
        } catch (e: Exception) {
            android.util.Log.e("TFLiteOcrPlugin", "OCR failed", e)
            OcrResult(
                text = "",
                confidence = 0.0f,
                language = language,
                processingTime = System.currentTimeMillis() - startTime,
                error = e.message
            )
        }
    }
    
    override fun getSupportedLanguages(): List<String> {
        return listOf(
            "ja", // Японский
            "en", // Английский
            "auto" // Автоопределение
        )
    }
    
    override fun cleanup() {
        tfliteManager.cleanup()
        isInitialized = false
    }
    
    /**
     * Предобработка изображения для модели
     */
    private fun preprocessBitmap(bitmap: Bitmap): ByteBuffer {
        val inputSize = 224 // Размер входа модели
        val scaledBitmap = Bitmap.createScaledBitmap(bitmap, inputSize, inputSize, true)
        
        val byteBuffer = ByteBuffer.allocateDirect(4 * inputSize * inputSize * 3)
        byteBuffer.order(ByteOrder.nativeOrder())
        
        val intValues = IntArray(inputSize * inputSize)
        scaledBitmap.getPixels(intValues, 0, scaledBitmap.width, 0, 0, scaledBitmap.width, scaledBitmap.height)
        
        var pixel = 0
        for (i in 0 until inputSize) {
            for (j in 0 until inputSize) {
                val value = intValues[pixel++]
                
                // Нормализация пикселей
                byteBuffer.putFloat(((value shr 16) and 0xFF) / 255.0f)
                byteBuffer.putFloat(((value shr 8) and 0xFF) / 255.0f)
                byteBuffer.putFloat((value and 0xFF) / 255.0f)
            }
        }
        
        return byteBuffer
    }
    
    /**
     * Анализ текстовых блоков на изображении
     */
    private fun analyzeTextBlocks(bitmap: Bitmap, recognizedText: String): List<TextBlockResult> {
        // Простая реализация - один блок на все изображение
        // В реальном проекте здесь должна быть логика сегментации
        return listOf(
            TextBlockResult(
                text = recognizedText,
                confidence = calculateConfidence(recognizedText),
                boundingBox = BoundingBox(
                    left = 0,
                    top = 0,
                    right = bitmap.width,
                    bottom = bitmap.height
                )
            )
        )
    }
    
    /**
     * Вычисление уверенности распознавания
     */
    private fun calculateConfidence(text: String): Float {
        // Простая эвристика для оценки качества распознавания
        return when {
            text.isEmpty() -> 0.0f
            text.length < 3 -> 0.3f
            text.contains(Regex("[а-яё]", RegexOption.IGNORE_CASE)) -> 0.8f
            text.contains(Regex("[a-z]", RegexOption.IGNORE_CASE)) -> 0.85f
            text.contains(Regex("[ひらがなカタカナ漢字]")) -> 0.9f
            else -> 0.7f
        }
    }
    
    /**
     * Определение языка текста
     */
    private fun detectLanguage(text: String): String {
        return when {
            text.contains(Regex("[ひらがなカタカナ漢字]")) -> "ja"
            text.contains(Regex("[а-яё]", RegexOption.IGNORE_CASE)) -> "ru"
            text.contains(Regex("[a-z]", RegexOption.IGNORE_CASE)) -> "en"
            else -> "auto"
        }
    }
}

