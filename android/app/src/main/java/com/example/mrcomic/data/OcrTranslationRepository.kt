package com.example.mrcomic.data

import android.content.Context
import android.net.Uri
import com.example.mrcomic.data.network.MrComicApiService
import com.example.mrcomic.data.network.dto.OcrResponseDto
import com.example.mrcomic.data.network.dto.TranslationRequestDto
import com.example.mrcomic.data.network.dto.TranslationResponseDto
import com.example.mrcomic.di.Resource
import com.example.core.data.repository.SettingsRepository
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.first
import okhttp3.MultipartBody
import okhttp3.RequestBody
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.RequestBody.Companion.asRequestBody
import okhttp3.RequestBody.Companion.toRequestBody
import java.io.File
import javax.inject.Inject
import com.google.gson.Gson

/**
 * Repository for handling OCR and translation operations.
 *
 * This class wraps the [MrComicApiService] calls into flows of [Resource] types so
 * that the UI can observe loading, success and error states consistently. It converts
 * a URI pointing to an image into a [MultipartBody.Part] required by the API and
 * builds request bodies for optional JSON parameters when provided.
 */
class OcrTranslationRepository @Inject constructor(
    private val apiService: MrComicApiService,
    private val context: Context,
    private val gson: Gson,
    private val settingsRepository: SettingsRepository,
    private val localTranslationEngine: LocalTranslationEngine
) {

    /**
     * Processes an image for OCR. Converts the provided [imageUri] into a multipart body
     * and forwards optional region/language/parameter JSON strings as request bodies. Emits
     * [Resource.Loading] first, followed by either [Resource.Success] or [Resource.Error].
     */
    fun processImageOcr(
        imageUri: Uri,
        regionsJson: String? = null,
        languagesJson: String? = null,
        ocrParamsJson: String? = null
    ): Flow<Resource<OcrResponseDto>> = flow {
        emit(Resource.Loading())
        val file = File(imageUri.path ?: "")
        if (!file.exists()) {
            emit(Resource.Error("Image file not found"))
            return@flow
        }
        val requestFile = file.asRequestBody("image/*".toMediaTypeOrNull())
        val imagePart = MultipartBody.Part.createFormData("image", file.name, requestFile)
        val regionsBody: RequestBody? = regionsJson?.toRequestBody("application/json".toMediaTypeOrNull())
        val languagesBody: RequestBody? = languagesJson?.toRequestBody("application/json".toMediaTypeOrNull())
        val paramsBody: RequestBody? = ocrParamsJson?.toRequestBody("application/json".toMediaTypeOrNull())
        val response = apiService.processImageOcr(imagePart, regionsBody, languagesBody, paramsBody)
        if (response.isSuccessful) {
            val body = response.body()
            if (body != null) {
                emit(Resource.Success(body))
            } else {
                emit(Resource.Error("Empty response body"))
            }
        } else {
            emit(Resource.Error("Error processing OCR: ${'$'}{response.code()}"))
        }
    }.catch { e ->
        emit(Resource.Error(e.message ?: "Unknown error"))
    }

    /**
     * Translates the given text(s) described by [requestDto]. Emits a loading state
     * before performing the network call and returns either the translated response
     * or an error wrapped in [Resource].
     */
    fun translateText(requestDto: TranslationRequestDto): Flow<Resource<TranslationResponseDto>> = flow {
        emit(Resource.Loading())
        val provider = settingsRepository.translationProvider.first()
        val body = if (provider.equals("Local", true)) {
            localTranslationEngine.translate(requestDto)
        } else {
            val response = apiService.translateText(requestDto)
            if (response.isSuccessful) {
                response.body()
            } else {
                emit(Resource.Error("Error translating text: ${'$'}{response.code()}"))
                null
            }
        }
        if (body != null) {
            emit(Resource.Success(body))
        } else if (!provider.equals("Local", true)) {
            emit(Resource.Error("Empty response body"))
        }
    }.catch { e ->
        emit(Resource.Error(e.message ?: "Unknown error"))
    }
}