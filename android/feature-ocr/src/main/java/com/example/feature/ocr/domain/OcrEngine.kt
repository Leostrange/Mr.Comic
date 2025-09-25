package com.example.feature.ocr.domain

import android.graphics.Bitmap
import com.example.core.model.TextRegion

/**
 * Базовый интерфейс OCR-движка.
 * Реализации: Tesseract (tess-two), MLKit, сторонние плагины.
 */
interface OcrEngine {
    /** Уникальный идентификатор движка (e.g. "tesseract", "mlkit"). */
    val id: String

    /** Человекочитаемое имя. */
    val displayName: String

    /** Поддерживаемые языки (ISO-639-1 коды). */
    fun getSupportedLanguages(): Set<String>

    /**
     * Распознать текст на изображении.
     * @param image Bitmap страницы/фрагмента
     * @param lang Язык распознавания, например "en" или "ja"
     * @return Список распознанных текстовых регионов с координатами
     */
    suspend fun recognize(image: Bitmap, lang: String): List<TextRegion>
}


