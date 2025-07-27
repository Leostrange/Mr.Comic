package com.example.mrcomic.data.network

import com.example.mrcomic.data.network.dto.OcrResponseDto
import com.example.mrcomic.data.network.dto.TranslationRequestDto
import com.example.mrcomic.data.network.dto.TranslationResponseDto
import okhttp3.MultipartBody
import okhttp3.RequestBody
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.Multipart
import retrofit2.http.POST
import retrofit2.http.Part

interface MrComicApiService {

    @Multipart
    @POST("ocr/process_image")
    suspend fun processImageOcr(
        @Part image: MultipartBody.Part,
        @Part("regions") regions: RequestBody? = null, // JSON string as RequestBody
        @Part("languages") languages: RequestBody? = null, // JSON string as RequestBody
        @Part("ocrParams") ocrParams: RequestBody? = null // JSON string as RequestBody
    ): Response<OcrResponseDto> // Предполагаем, что OcrResponseDto будет создан

    @POST("translation/translate_text")
    suspend fun translateText(
        @Body request: TranslationRequestDto
    ): Response<TranslationResponseDto> // Предполагаем, что DTO будут созданы
}
