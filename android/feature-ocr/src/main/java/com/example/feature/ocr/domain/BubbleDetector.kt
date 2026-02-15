package com.example.feature.ocr.domain

import android.graphics.Bitmap
import com.example.core.model.BoundingBox

/**
 * Детектор облачков (speech bubbles) на страницах.
 */
interface BubbleDetector {
    /** Возвращает список прямоугольников, где вероятны облачка. */
    fun detectBubbles(image: Bitmap): List<BoundingBox>
}


