package com.example.mrcomic.data.network.dto

import com.google.gson.annotations.SerializedName

// --- OCR Response DTOs ---

data class OcrResponseDto(
    @SerializedName("success") val success: Boolean,
    @SerializedName("processingTimeMs") val processingTimeMs: Long?,
    @SerializedName("results") val results: List<OcrResultDto>?,
    @SerializedName("error") val error: ApiErrorDto?
)

data class OcrResultDto(
    @SerializedName("regionId") val regionId: String?,
    @SerializedName("text") val text: String,
    @SerializedName("confidence") val confidence: Float?,
    @SerializedName("language") val language: String?,
    @SerializedName("bbox") val bbox: BoundingBoxDto?,
    @SerializedName("words") val words: List<WordDto>?
)

data class BoundingBoxDto(
    @SerializedName("x") val x: Int,
    @SerializedName("y") val y: Int,
    @SerializedName("width") val width: Int,
    @SerializedName("height") val height: Int
)

data class WordDto(
    @SerializedName("text") val text: String,
    @SerializedName("confidence") val confidence: Float?,
    @SerializedName("bbox") val bbox: BoundingBoxDto?
)

// Общий класс для ошибок API, если он будет использоваться и в других ответах
// data class ApiErrorDto(
//    @SerializedName("code") val code: String,
//    @SerializedName("message") val message: String
// )
// Пока не создаю ApiErrorDto, так как его структура может быть разной.
// OcrResponseDto будет использовать свой inline error object, если он специфичен,
// или можно будет позже вынести общий ApiErrorDto.
// Для простоты пока оставлю так, как спроектировано для API (success + error object).

// В MrComicApiService для OCR запроса используются RequestBody для JSON-строк,
// поэтому отдельный OcrRequestDto не требуется на этом этапе для Retrofit-интерфейса.
// Если бы мы передавали сложный JSON объект как @Body, он бы понадобился.
