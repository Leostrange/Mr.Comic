package io.leostrange.mrcomic.feature.ocr.data

import com.google.mlkit.nl.translate.TranslateLanguage

internal object MlKitTranslationSupport {

    fun resolveLanguageCode(rawCode: String?): String? =
        rawCode
            ?.trim()
            ?.replace('_', '-')
            ?.lowercase()
            ?.substringBefore('-')
            ?.takeIf { it.isNotBlank() && it != "und" }

    fun toTranslateLanguage(rawCode: String?): String? = when (resolveLanguageCode(rawCode)) {
        "ja" -> TranslateLanguage.JAPANESE
        "zh" -> TranslateLanguage.CHINESE
        "ko" -> TranslateLanguage.KOREAN
        "ru" -> TranslateLanguage.RUSSIAN
        "en" -> TranslateLanguage.ENGLISH
        "de" -> TranslateLanguage.GERMAN
        "fr" -> TranslateLanguage.FRENCH
        "es" -> TranslateLanguage.SPANISH
        "it" -> TranslateLanguage.ITALIAN
        "pt" -> TranslateLanguage.PORTUGUESE
        "uk" -> TranslateLanguage.UKRAINIAN
        "pl" -> TranslateLanguage.POLISH
        "tr" -> TranslateLanguage.TURKISH
        else -> null
    }
}
