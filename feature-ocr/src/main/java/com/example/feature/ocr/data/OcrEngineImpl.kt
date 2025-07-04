package com.example.feature.ocr.data

import com.example.feature.ocr.domain.OcrEngine
import javax.inject.Inject

class OcrEngineImpl @Inject constructor() : OcrEngine {
    override suspend fun recognizeText(imagePath: String): String {
        // Placeholder for actual OCR implementation
        return "Recognized text from $imagePath"
    }
}


