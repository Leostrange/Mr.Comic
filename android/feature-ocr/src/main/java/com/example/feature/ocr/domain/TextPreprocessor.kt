package com.example.feature.ocr.domain

import android.graphics.Bitmap

/**
 * Предобработка изображений для OCR: бинаризация, шумоподавление, выравнивание.
 */
interface TextPreprocessor {
    fun preprocess(source: Bitmap): Bitmap
}


