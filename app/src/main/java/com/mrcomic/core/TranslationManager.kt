package com.mrcomic.core

import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import com.mrcomic.core.TranslationEngine
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import retrofit2.Response
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import retrofit2.http.Body
import retrofit2.http.Header
import retrofit2.http.POST
import java.io.InputStreamReader
import javax.inject.Inject
import javax.inject.Singleton
import com.mrcomic.core.TranslationMemory

/**
 * Менеджер для управления переводами
 */
@Singleton
class TranslationManager @Inject constructor(
    private val tfliteManager: TFLiteManager,
    private val context: Context,
    private val translationMemory: TranslationMemory
) {

    private var glossary: Glossary? = null
    private val gson = Gson()
    
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

    // Текущий выбранный движок перевода
    var currentEngine: TranslationEngine = TranslationEngine.OFFLINE_TFLITE

    init {
        loadGlossary()
    }


    /**
     * Перевод текста с автоматическим выбором метода
     */
    suspend fun translateText(
        text: String,
        fromLang: String,
        toLang: String
    ): TranslationResult = withContext(Dispatchers.IO) {

        // Проверяем память переводов
        val tmKey = "$fromLang-$toLang-$text"
        translationMemory.getTranslation(tmKey)?.let { tmTranslation ->
            return@withContext TranslationResult(
                originalText = text,
                translatedText = tmTranslation,
                fromLanguage = fromLang,
                toLanguage = toLang,
                confidence = 1.0f, // Высокая уверенность, так как из памяти
                isOffline = true, // Считаем, что из памяти - это офлайн
                provider = "Translation Memory"
            )
        }

        val translatedResult = when (currentEngine) {
            TranslationEngine.OFFLINE_TFLITE -> translateOffline(text, fromLang, toLang)
            TranslationEngine.DEEPL -> translateWithDeepL(text, fromLang, toLang)
            TranslationEngine.GOOGLE_TRANSLATE -> translateWithGoogle(text, fromLang, toLang)
            TranslationEngine.MARIAN_MT -> translateWithMarianMT(text, fromLang, toLang)
        }

        // Применяем глоссарий
        val finalTranslatedText = applyGlossary(translatedResult.translatedText, fromLang, toLang)

        // Добавляем в память переводов, если перевод успешен и не из памяти
        if (translatedResult.translatedText.isNotEmpty() && translatedResult.provider != "Translation Memory") {
            translationMemory.addEntry(tmKey, finalTranslatedText)
        }

        return@withContext translatedResult.copy(translatedText = finalTranslatedText)
    }

    private suspend fun translateOffline(text: String, fromLang: String, toLang: String): TranslationResult {
        // Здесь будет логика для офлайн перевода через TFLite
        // Пока заглушка
        return TranslationResult(
            originalText = text,
            translatedText = "Offline translated: $text",
            fromLanguage = fromLang,
            toLanguage = toLang,
            confidence = 0.8f,
            isOffline = true,
            provider = "TFLite"
        )
    }

    private suspend fun translateWithDeepL(text: String, fromLang: String, toLang: String): TranslationResult {
        // Здесь будет логика для перевода через DeepL API
        // Пока заглушка
        return TranslationResult(
            originalText = text,
            translatedText = "DeepL translated: $text",
            fromLanguage = fromLang,
            toLanguage = toLang,
            confidence = 0.9f,
            isOffline = false,
            provider = "DeepL"
        )
    }

    private suspend fun translateWithGoogle(text: String, fromLang: String, toLang: String): TranslationResult {
        // Здесь будет логика для перевода через Google Translate API
        // Пока заглушка
        return TranslationResult(
            originalText = text,
            translatedText = "Google translated: $text",
            fromLanguage = fromLang,
            toLanguage = toLang,
            confidence = 0.95f,
            isOffline = false,
            provider = "Google Translate"
        )
    }

    private suspend fun translateWithMarianMT(text: String, fromLang: String, toLang: String): TranslationResult {
        // Здесь будет логика для перевода через MarianMT
        // Пока заглушка
        return TranslationResult(
            originalText = text,
            translatedText = "MarianMT translated: $text",
            fromLanguage = fromLang,
            toLanguage = toLang,
            confidence = 0.85f,
            isOffline = true,
            provider = "MarianMT"
        )
    }

    private fun applyGlossary(text: String, fromLang: String, toLang: String): String {
        var result = text
        glossary?.terms?.forEach { entry ->
            if (entry.source.equals(text, ignoreCase = true)) {
                result = entry.target
                return result // Применяем первое совпадение и выходим
            }
        }
        return result
    }

    private fun loadGlossary() {
        try {
            context.assets.open("dictionaries/glossary.json").use {\n                val reader = InputStreamReader(it)
                glossary = gson.fromJson(reader, Glossary::class.java)
            }
        } catch (e: Exception) {
            e.printStackTrace()
            glossary = null
        }
    }

    // Data classes for API responses
    data class DeepLTranslationRequest(
        val text: List<String>,
        val target_lang: String,
        val source_lang: String? = null
    )

    data class DeepLTranslationResponse(
        val translations: List<DeepLTranslation>
    )

    data class DeepLTranslation(
        val detected_source_language: String,
        val text: String
    )

    interface DeepLApiService {
        @POST("v2/translate")
        suspend fun translate(
            @Header("Authorization") auth: String,
            @Body request: DeepLTranslationRequest
        ): Response<DeepLTranslationResponse>
    }

    data class GoogleTranslateRequest(
        val q: List<String>,
        val target: String,
        val source: String? = null,
        val format: String = "text"
    )

    data class GoogleTranslateResponse(
        val data: GoogleTranslateData
    )

    data class GoogleTranslateData(
        val translations: List<GoogleTranslation>
    )

    data class GoogleTranslation(
        val translatedText: String,
        val detectedSourceLanguage: String?
    )

    interface GoogleTranslateApiService {
        @POST("language/translate/v2")
        suspend fun translate(
            @Body request: GoogleTranslateRequest,
            @Header("Authorization") auth: String
        ): Response<GoogleTranslateResponse>
    }

    data class TranslationResult(
        val originalText: String,
        val translatedText: String,
        val fromLanguage: String,
        val toLanguage: String,
        val confidence: Float,
        val isOffline: Boolean,
        val provider: String
    )

    data class GlossaryEntry(
        val source: String,
        val target: String,
        val description: String? = null
    )

    data class Glossary(
        val terms: List<GlossaryEntry>
    )

}


