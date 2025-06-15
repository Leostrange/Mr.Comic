package com.mrcomic.core

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import retrofit2.Response
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import retrofit2.http.Body
import retrofit2.http.Header
import retrofit2.http.POST
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Менеджер для управления переводами
 */
@Singleton
class TranslationManager @Inject constructor(
    private val tfliteManager: TFLiteManager
) {
    
    private val deepLApi by lazy {
        Retrofit.Builder()
            .baseUrl("https://api-free.deepl.com/")
            .addConverterFactory(GsonConverterFactory.create())
            .build()
            .create(DeepLApiService::class.java)
    }
    
    private val googleTranslateApi by lazy {
        Retrofit.Builder()
            .baseUrl("https://translation.googleapis.com/")
            .addConverterFactory(GsonConverterFactory.create())
            .build()
            .create(GoogleTranslateApiService::class.java)
    }
    
    /**
     * Перевод текста с автоматическим выбором метода
     */
    suspend fun translateText(
        text: String,
        fromLang: String,
        toLang: String,
        useOffline: Boolean = true
    ): TranslationResult = withContext(Dispatchers.IO) {
        
        return@withContext if (useOffline) {
            translateOffline(text, fromLang, toLang)
        } else {
            translateOnline(text, fromLang, toLang)
        }
    }
    
    /**
     * Офлайн перевод с использованием TFLite
     */
    private suspend fun translateOffline(
        text: String,
        fromLang: String,
        toLang: String
    ): TranslationResult {
        return try {
            val translatedText = tfliteManager.runTranslation(text, fromLang, toLang)
            TranslationResult(
                originalText = text,
                translatedText = translatedText,
                fromLanguage = fromLang,
                toLanguage = toLang,
                confidence = 0.85f,
                isOffline = true,
                provider = "TensorFlow Lite"
            )
        } catch (e: Exception) {
            TranslationResult(
                originalText = text,
                translatedText = "",
                fromLanguage = fromLang,
                toLanguage = toLang,
                confidence = 0.0f,
                isOffline = true,
                provider = "TensorFlow Lite",
                error = e.message
            )
        }
    }
    
    /**
     * Онлайн перевод с использованием внешних API
     */
    private suspend fun translateOnline(
        text: String,
        fromLang: String,
        toLang: String
    ): TranslationResult {
        // Сначала пробуем DeepL
        val deepLResult = translateWithDeepL(text, fromLang, toLang)
        if (deepLResult.translatedText.isNotEmpty()) {
            return deepLResult
        }
        
        // Если DeepL не сработал, пробуем Google Translate
        return translateWithGoogle(text, fromLang, toLang)
    }
    
    /**
     * Перевод с помощью DeepL API
     */
    private suspend fun translateWithDeepL(
        text: String,
        fromLang: String,
        toLang: String
    ): TranslationResult {
        return try {
            val request = DeepLTranslationRequest(
                text = listOf(text),
                source_lang = fromLang.uppercase(),
                target_lang = toLang.uppercase()
            )
            
            val response = deepLApi.translate("YOUR_DEEPL_API_KEY", request)
            
            if (response.isSuccessful && response.body() != null) {
                val translatedText = response.body()!!.translations.firstOrNull()?.text ?: ""
                TranslationResult(
                    originalText = text,
                    translatedText = translatedText,
                    fromLanguage = fromLang,
                    toLanguage = toLang,
                    confidence = 0.95f,
                    isOffline = false,
                    provider = "DeepL"
                )
            } else {
                TranslationResult(
                    originalText = text,
                    translatedText = "",
                    fromLanguage = fromLang,
                    toLanguage = toLang,
                    confidence = 0.0f,
                    isOffline = false,
                    provider = "DeepL",
                    error = "API Error: ${response.code()}"
                )
            }
        } catch (e: Exception) {
            TranslationResult(
                originalText = text,
                translatedText = "",
                fromLanguage = fromLang,
                toLanguage = toLang,
                confidence = 0.0f,
                isOffline = false,
                provider = "DeepL",
                error = e.message
            )
        }
    }
    
    /**
     * Перевод с помощью Google Translate API
     */
    private suspend fun translateWithGoogle(
        text: String,
        fromLang: String,
        toLang: String
    ): TranslationResult {
        return try {
            val request = GoogleTranslationRequest(
                q = text,
                source = fromLang,
                target = toLang,
                format = "text"
            )
            
            val response = googleTranslateApi.translate("YOUR_GOOGLE_API_KEY", request)
            
            if (response.isSuccessful && response.body() != null) {
                val translatedText = response.body()!!.data.translations.firstOrNull()?.translatedText ?: ""
                TranslationResult(
                    originalText = text,
                    translatedText = translatedText,
                    fromLanguage = fromLang,
                    toLanguage = toLang,
                    confidence = 0.90f,
                    isOffline = false,
                    provider = "Google Translate"
                )
            } else {
                TranslationResult(
                    originalText = text,
                    translatedText = "",
                    fromLanguage = fromLang,
                    toLanguage = toLang,
                    confidence = 0.0f,
                    isOffline = false,
                    provider = "Google Translate",
                    error = "API Error: ${response.code()}"
                )
            }
        } catch (e: Exception) {
            TranslationResult(
                originalText = text,
                translatedText = "",
                fromLanguage = fromLang,
                toLanguage = toLang,
                confidence = 0.0f,
                isOffline = false,
                provider = "Google Translate",
                error = e.message
            )
        }
    }
    
    /**
     * Пакетный перевод нескольких текстовых блоков
     */
    suspend fun translateBatch(
        textBlocks: List<String>,
        fromLang: String,
        toLang: String,
        useOffline: Boolean = true
    ): List<TranslationResult> = withContext(Dispatchers.IO) {
        textBlocks.map { text ->
            translateText(text, fromLang, toLang, useOffline)
        }
    }
}

/**
 * Результат перевода
 */
data class TranslationResult(
    val originalText: String,
    val translatedText: String,
    val fromLanguage: String,
    val toLanguage: String,
    val confidence: Float,
    val isOffline: Boolean,
    val provider: String,
    val error: String? = null
)

/**
 * API сервис для DeepL
 */
interface DeepLApiService {
    @POST("v2/translate")
    suspend fun translate(
        @Header("Authorization") authKey: String,
        @Body request: DeepLTranslationRequest
    ): Response<DeepLTranslationResponse>
}

/**
 * API сервис для Google Translate
 */
interface GoogleTranslateApiService {
    @POST("language/translate/v2")
    suspend fun translate(
        @Header("Authorization") apiKey: String,
        @Body request: GoogleTranslationRequest
    ): Response<GoogleTranslationResponse>
}

// Data классы для API запросов и ответов
data class DeepLTranslationRequest(
    val text: List<String>,
    val source_lang: String,
    val target_lang: String
)

data class DeepLTranslationResponse(
    val translations: List<DeepLTranslation>
)

data class DeepLTranslation(
    val text: String,
    val detected_source_language: String
)

data class GoogleTranslationRequest(
    val q: String,
    val source: String,
    val target: String,
    val format: String
)

data class GoogleTranslationResponse(
    val data: GoogleTranslationData
)

data class GoogleTranslationData(
    val translations: List<GoogleTranslation>
)

data class GoogleTranslation(
    val translatedText: String,
    val detectedSourceLanguage: String? = null
)

