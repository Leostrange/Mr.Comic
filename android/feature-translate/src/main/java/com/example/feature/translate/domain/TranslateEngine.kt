package com.example.feature.translate.domain

/**
 * Интерфейс движка перевода.
 */
interface TranslateEngine {
    val id: String
    val displayName: String

    fun getSupportedLanguages(): Set<String>

    suspend fun translate(text: String, from: String, to: String): String
}


