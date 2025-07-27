package com.example.mrcomic.data.network.dto

import com.google.gson.annotations.SerializedName

// --- Translation Request DTO ---

data class TranslationRequestDto(
    @SerializedName("texts") val texts: List<TextToTranslateDto>,
    @SerializedName("sourceLanguage") val sourceLanguage: String, // "auto" или код языка
    @SerializedName("targetLanguage") val targetLanguage: String, // код языка
    @SerializedName("translationParams") val translationParams: TranslationParametersDto? = null
)

data class TextToTranslateDto(
    @SerializedName("id") val id: String? = null, // Опциональный ID для сопоставления
    @SerializedName("text") val text: String
)

data class TranslationParametersDto(
    @SerializedName("engine") val engine: String? = null,
    @SerializedName("domain") val domain: String? = null // "general", "comic", "manga"
)

// --- Translation Response DTO ---

data class TranslationResponseDto(
    @SerializedName("success") val success: Boolean,
    @SerializedName("processingTimeMs") val processingTimeMs: Long?,
    @SerializedName("results") val results: List<TranslatedTextDto>?,
    @SerializedName("error") val error: ApiErrorDto? // Используем общий ApiErrorDto, если он будет создан
)

data class TranslatedTextDto(
    @SerializedName("id") val id: String?, // ID из запроса для сопоставления
    @SerializedName("originalText") val originalText: String,
    @SerializedName("translatedText") val translatedText: String?,
    @SerializedName("detectedSourceLanguage") val detectedSourceLanguage: String?,
    @SerializedName("engineUsed") val engineUsed: String?
)

// Общий класс для ошибок API. Если он уже есть или будет в другом файле, этот можно удалить.
// Если его нет, можно создать отдельный файл ApiErrorDto.kt или оставить здесь.
data class ApiErrorDto(
    @SerializedName("code") val code: String?,
    @SerializedName("message") val message: String?
    // @SerializedName("details") val details: Any? // details могут быть разной структуры
)
