package com.example.core.model

import java.util.Date

/**
 * Пара перевода (оригинал → перевод) — чистая модель
 */
data class TranslationPair(
    val id: String,
    val originalText: String,
    val translatedText: String,
    val sourceLanguage: String,
    val targetLanguage: String,
    val confidence: Float,
    val translationEngine: String,
    val createdAt: Date = Date(),
    val isUserEdited: Boolean = false,
    val usageCount: Int = 0
)

/**
 * Словарь/глоссарий для переводов — чистая модель
 */
data class Dictionary(
    val id: String,
    val name: String,
    val language: String,
    val entries: Map<String, String>, // оригинал → перевод
    val isBuiltIn: Boolean = false,
    val version: String = "1.0",
    val lastUpdated: Date = Date()
)

/**
 * Настройки перевода
 */
data class TranslationSettings(
    val defaultSourceLanguage: String = "auto",
    val defaultTargetLanguage: String = "en",
    val preferredEngine: TranslationEngine = TranslationEngine.OFFLINE,
    val enableOfflineMode: Boolean = true,
    val enableOnlineMode: Boolean = false,
    val cacheTranslations: Boolean = true,
    val maxCacheSize: Int = 1000
)

/**
 * Доступные движки перевода
 */
enum class TranslationEngine {
    OFFLINE,        // Офлайн модели (NLLB, ML Kit)
    GOOGLE,         // Google Translate API
    DEEPL,          // DeepL API
    OPENAI,         // OpenAI API
    CUSTOM          // Пользовательские плагины
}
