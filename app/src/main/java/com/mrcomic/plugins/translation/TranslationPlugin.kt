package com.mrcomic.plugins.translation

import com.mrcomic.plugins.Plugin

/**
 * Интерфейс для плагинов перевода.
 */
interface TranslationPlugin : Plugin {

    /**
     * Переводит текст с одного языка на другой.
     * @param text Исходный текст для перевода.
     * @param fromLanguage Исходный язык текста (например, "en", "ja").
     * @param toLanguage Целевой язык перевода (например, "ru", "en").
     * @return Результат перевода.
     */
    suspend fun translate(text: String, fromLanguage: String, toLanguage: String): TranslationResult

    /**
     * Возвращает список поддерживаемых языков для перевода.
     */
    fun getSupportedLanguages(): List<String>
}

data class TranslationResult(
    val translatedText: String,
    val confidence: Float = 0.0f,
    val error: String? = null,
    val processingTime: Long = 0L
)

