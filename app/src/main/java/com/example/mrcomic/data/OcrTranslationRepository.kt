package com.example.mrcomic.data

import android.content.Context
import android.net.Uri
import android.provider.OpenableColumns
import com.example.mrcomic.data.network.MrComicApiService
import com.example.mrcomic.data.network.dto.ApiErrorDto
import com.example.mrcomic.data.network.dto.OcrResponseDto
import com.example.mrcomic.data.network.dto.TranslationRequestDto
import com.example.mrcomic.data.network.dto.TranslationResponseDto
import com.example.mrcomic.di.Resource // Будет создан на следующем шаге
import com.google.gson.Gson
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOn
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.MultipartBody
import okhttp3.RequestBody
import okhttp3.RequestBody.Companion.asRequestBody
import okhttp3.RequestBody.Companion.toRequestBody
import java.io.File
import java.io.FileOutputStream
import java.io.InputStream
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class OcrTranslationRepository @Inject constructor(
    private val mrComicApiService: MrComicApiService,
    @ApplicationContext private val context: Context,
    private val gson: Gson // Для парсинга ошибок из errorBody
) {

    suspend fun processImageOcr(
        imageUri: Uri,
        regionsJson: String? = null,
        languagesJson: String? = null,
        ocrParamsJson: String? = null
    ): Flow<Resource<OcrResponseDto>> = flow {
        emit(Resource.Loading())
        var tempFile: File? = null
        try {
            tempFile = copyUriToTempFile(imageUri)
            val imageFilePart = MultipartBody.Part.createFormData(
                "image",
                tempFile.name,
                tempFile.asRequestBody("image/*".toMediaTypeOrNull())
            )

            val regionsPart = regionsJson?.toRequestBody("application/json; charset=utf-f".toMediaTypeOrNull())
            val languagesPart = languagesJson?.toRequestBody("application/json; charset=utf-8".toMediaTypeOrNull())
            val ocrParamsPart = ocrParamsJson?.toRequestBody("application/json; charset=utf-8".toMediaTypeOrNull())

            val response = mrComicApiService.processImageOcr(
                image = imageFilePart,
                regions = regionsPart,
                languages = languagesPart,
                ocrParams = ocrParamsPart
            )

            if (response.isSuccessful && response.body() != null) {
                val responseBody = response.body()!!
                if (responseBody.success) {
                    emit(Resource.Success(responseBody))
                } else {
                    emit(Resource.Error(responseBody.error?.message ?: "OCR operation failed (API success false)", responseBody))
                }
            } else {
                val errorBodyString = response.errorBody()?.string()
                var errorMessage = response.message()
                if (!errorBodyString.isNullOrEmpty()) {
                    try {
                        val apiError = gson.fromJson(errorBodyString, OcrResponseDto::class.java)?.error
                                       ?: gson.fromJson(errorBodyString, ApiErrorDto::class.java)
                        errorMessage = apiError?.message ?: errorBodyString
                    } catch (e: Exception) {
                        // Не удалось распарсить JSON ошибки, используем errorBodyString
                        errorMessage = errorBodyString
                    }
                }
                emit(Resource.Error(errorMessage, null))
            }
        } catch (e: Exception) {
            emit(Resource.Error(e.localizedMessage ?: "An unexpected error occurred in OCR process", null))
        } finally {
            tempFile?.delete() // Удаляем временный файл
        }
    }.flowOn(Dispatchers.IO)

    suspend fun translateText(
        requestDto: TranslationRequestDto
    ): Flow<Resource<TranslationResponseDto>> = flow {
        emit(Resource.Loading())
        try {
            val response = mrComicApiService.translateText(requestDto)
            if (response.isSuccessful && response.body() != null) {
                val responseBody = response.body()!!
                if (responseBody.success) {
                    emit(Resource.Success(responseBody))
                } else {
                    emit(Resource.Error(responseBody.error?.message ?: "Translation operation failed (API success false)", responseBody))
                }
            } else {
                val errorBodyString = response.errorBody()?.string()
                var errorMessage = response.message()
                 if (!errorBodyString.isNullOrEmpty()) {
                    try {
                        val apiError = gson.fromJson(errorBodyString, TranslationResponseDto::class.java)?.error
                                       ?: gson.fromJson(errorBodyString, ApiErrorDto::class.java)
                        errorMessage = apiError?.message ?: errorBodyString
                    } catch (e: Exception) {
                        errorMessage = errorBodyString
                    }
                }
                emit(Resource.Error(errorMessage, null))
            }
        } catch (e: Exception) {
            emit(Resource.Error(e.localizedMessage ?: "An unexpected error occurred in translation process", null))
        }
    }.flowOn(Dispatchers.IO)

    private suspend fun copyUriToTempFile(uri: Uri): File {
        val inputStream = context.contentResolver.openInputStream(uri)
            ?: throw Exception("Failed to open InputStream for Uri: $uri")

        var fileName = "temp_ocr_image.tmp"
        // Пытаемся получить оригинальное имя файла, если возможно
        context.contentResolver.query(uri, null, null, null, null)?.use { cursor ->
            if (cursor.moveToFirst()) {
                val nameIndex = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                if (nameIndex != -1) {
                    cursor.getString(nameIndex)?.let {
                        fileName = it
                    }
                }
            }
        }
        // Чтобы избежать конфликтов имен, добавляем уникальный префикс
        val tempFile = File(context.cacheDir, "ocr_${System.currentTimeMillis()}_${fileName.takeLast(32)}")

        FileOutputStream(tempFile).use { outputStream ->
            inputStream.copyTo(outputStream)
        }
        inputStream.close()
        return tempFile
    }
}
