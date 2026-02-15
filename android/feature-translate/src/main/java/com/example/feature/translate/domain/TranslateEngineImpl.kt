package com.example.feature.translate.domain

import javax.inject.Inject

class TranslateEngineImpl @Inject constructor() : TranslateEngine {
    override val id: String = "dummy"
    override val displayName: String = "Dummy Translator"

    override fun getSupportedLanguages(): Set<String> = setOf("en", "ru", "es", "fr")

    override suspend fun translate(text: String, from: String, to: String): String {
        // Placeholder: return text with prefix
        return "[$to] $text"
    }
}