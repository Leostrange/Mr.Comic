package com.mrcomic.plugins.ocr

import android.graphics.Bitmap

/**
 * Интерфейс для OCR плагинов
 */
interface OcrPlugin {
    
    /**
     * Инициализация плагина
     */
    suspend fun initialize(): Boolean
    
    /**
     * Распознавание текста на изображении
     */
    suspend fun recognizeText(bitmap: Bitmap, language: String = "auto"): OcrResult
    
    /**
     * Получение поддерживаемых языков
     */
    fun getSupportedLanguages(): List<String>
    
    /**
     * Освобождение ресурсов
     */
    fun cleanup()
}

/**
 * Результат OCR распознавания
 */
data class OcrResult(
    val text: String,
    val confidence: Float,
    val language: String,
    val textBlocks: List<TextBlockResult> = emptyList(),
    val processingTime: Long = 0L,
    val error: String? = null
)

/**
 * Результат распознавания текстового блока
 */
data class TextBlockResult(
    val text: String,
    val confidence: Float,
    val boundingBox: BoundingBox,
    val words: List<WordResult> = emptyList()
)

/**
 * Результат распознавания слова
 */
data class WordResult(
    val text: String,
    val confidence: Float,
    val boundingBox: BoundingBox
)

/**
 * Ограничивающий прямоугольник
 */
data class BoundingBox(
    val left: Int,
    val top: Int,
    val right: Int,
    val bottom: Int
) {
    val width: Int get() = right - left
    val height: Int get() = bottom - top
}

