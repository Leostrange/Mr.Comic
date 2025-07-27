package com.example.feature.ocr.domain

interface OcrEngine {
    suspend fun recognizeText(imagePath: String): String
}


