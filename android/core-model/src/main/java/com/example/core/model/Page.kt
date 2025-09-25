package com.example.core.model

/**
 * Модель страницы комикса (чистая модель без зависимостей Room)
 */
data class Page(
    val id: String,
    val comicId: String,
    val pageNumber: Int,
    val imagePath: String,
    val width: Int,
    val height: Int,
    val fileSize: Long,
    val isRead: Boolean = false,
    val readTime: Long = 0L, // время чтения в миллисекундах
    val thumbnailPath: String? = null
)

/**
 * Результат OCR для страницы
 */
data class OcrResult(
    val pageId: String,
    val textRegions: List<TextRegion>,
    val fullText: String,
    val confidence: Float,
    val language: String,
    val processingTime: Long
)

/**
 * Область текста на странице
 */
data class TextRegion(
    val id: String,
    val text: String,
    val boundingBox: BoundingBox,
    val confidence: Float,
    val language: String,
    val isBubble: Boolean = false,
    val bubbleType: BubbleType = BubbleType.SPEECH
)

/**
 * Прямоугольная область на изображении
 */
data class BoundingBox(
    val x: Int,
    val y: Int,
    val width: Int,
    val height: Int
)

/**
 * Тип облачка для текста
 */
enum class BubbleType {
    SPEECH,     // Речевое облачко
    THOUGHT,    // Облачко мыслей
    NARRATION,  // Нарративный текст
    SOUND,      // Звуковые эффекты
    OTHER       // Другие типы
}
