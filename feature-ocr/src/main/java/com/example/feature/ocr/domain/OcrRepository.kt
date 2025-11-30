package com.example.feature.ocr.domain

import android.graphics.Bitmap
import com.example.core.model.TextRegion

/**
 * Репозиторий OCR: выбирает движок, кэширует результаты, хранит метаданные.
 */
interface OcrRepository {
    suspend fun recognize(image: Bitmap, lang: String): List<TextRegion>
    fun setEngine(engine: OcrEngine)
    fun getActiveEngine(): OcrEngine
}


