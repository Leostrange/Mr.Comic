package com.example.mrcomic.data

import com.example.mrcomic.data.network.dto.TranslatedTextDto
import com.example.mrcomic.data.network.dto.TranslationRequestDto
import com.example.mrcomic.data.network.dto.TranslationResponseDto

/**
 * Interface for local translation engines backed by on-device LLMs.
 */
interface LocalTranslationEngine {
    suspend fun translate(request: TranslationRequestDto): TranslationResponseDto
}

/**
 * Simple placeholder implementation that echoes the input text.
 * Replace with real model inference (OPUS-MT, M2M-100, etc.).
 */
class DummyLocalTranslationEngine : LocalTranslationEngine {
    override suspend fun translate(request: TranslationRequestDto): TranslationResponseDto {
        val results = request.texts.map {
            TranslatedTextDto(
                id = it.id,
                originalText = it.text,
                translatedText = it.text,
                detectedSourceLanguage = request.sourceLanguage,
                engineUsed = "local-dummy"
            )
        }
        return TranslationResponseDto(
            success = true,
            processingTimeMs = 0,
            results = results,
            error = null
        )
    }
}
