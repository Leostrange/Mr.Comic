package com.mrcomic.utils

import android.content.Context
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.InputStreamReader
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Менеджер для проверки орфографии и коррекции OCR ошибок.
 */
@Singleton
class SpellcheckManager @Inject constructor(
    private val context: Context
) {

    private var ocrCorrections: OcrCorrections? = null

    /**
     * Инициализирует менеджер, загружая данные из ocr_corrections.json.
     */
    suspend fun initialize() = withContext(Dispatchers.IO) {
        try {
            context.assets.open("dictionaries/ocr_corrections.json").use {
                val reader = InputStreamReader(it)
                ocrCorrections = Gson().fromJson(reader, object : TypeToken<OcrCorrections>() {}.type)
            }
        } catch (e: Exception) {
            android.util.Log.e("SpellcheckManager", "Error loading ocr_corrections.json", e)
        }
    }

    /**
     * Применяет коррекции к распознанному тексту.
     */
    fun applyCorrections(text: String, language: String): String {
        var correctedText = text
        ocrCorrections?.let {
            // Применение общих коррекций
            it.corrections.common_ocr_errors.forEach { (key, value) ->
                correctedText = correctedText.replace(key, value, ignoreCase = true)
            }

            // Применение языковых коррекций
            when (language) {
                "ja" -> it.corrections.japanese_common_mistakes.forEach { (key, value) ->
                    correctedText = correctedText.replace(key, value)
                }
                "en" -> it.corrections.english_common_mistakes.forEach { (key, value) ->
                    correctedText = correctedText.replace(key, value, ignoreCase = true)
                }
            }

            // Применение контекстных коррекций (для простоты, пока без сложной логики)
            it.corrections.context_corrections.comic_specific.forEach { (key, value) ->
                correctedText = correctedText.replace(key, value)
            }
        }
        return correctedText
    }

    /**
     * Восстанавливает разорванные слова.
     * Это простая эвристика, в реальном приложении потребуется более сложная логика
     * с использованием словарей и контекста.
     */
    fun restoreBrokenWords(words: List<String>): List<String> {
        val restoredWords = mutableListOf<String>()
        var i = 0
        while (i < words.size) {
            var currentWord = words[i]
            // Простая эвристика: если слово заканчивается на дефис, пытаемся объединить со следующим
            if (currentWord.endsWith("-") && i + 1 < words.size) {
                currentWord = currentWord.dropLast(1) + words[i + 1]
                restoredWords.add(currentWord)
                i += 2
            } else {
                restoredWords.add(currentWord)
                i += 1
            }
        }
        return restoredWords
    }
}

data class OcrCorrections(
    val corrections: Corrections,
    val confidence_adjustments: ConfidenceAdjustments
)

data class Corrections(
    val japanese_common_mistakes: Map<String, String>,
    val english_common_mistakes: Map<String, String>,
    val common_ocr_errors: Map<String, String>,
    val context_corrections: ContextCorrections
)

data class ContextCorrections(
    val comic_specific: Map<String, String>
)

data class ConfidenceAdjustments(
    val high_confidence_words: List<String>,
    val low_confidence_patterns: List<String>
)

