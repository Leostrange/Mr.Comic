package io.leostrange.mrcomic.core.ui.locale

data class TranslationLanguageOption(
    val code: String,
    val label: String,
    val shortLabel: String,
)

private val TRANSLATION_LANGUAGE_AUTONYMS = mapOf(
    "ru" to "Русский",
    "en" to "English",
    "ja" to "日本語",
    "zh" to "中文",
    "ko" to "한국어",
    "fr" to "Français",
    "it" to "Italiano",
    "pl" to "Polski",
    "tr" to "Türkçe",
    "pt" to "Português (Brasil)",
)

val supportedTranslationLanguageCodes: List<String> = listOf(
    "ru",
    "en",
    "ja",
    "zh",
    "ko",
    "fr",
    "it",
    "pl",
    "tr",
    "pt",
)

val supportedOcrSourceLanguageCodes: List<String> = listOf(
    "ja",
    "zh",
    "ko",
    "en",
    "fr",
    "it",
    "pl",
    "tr",
    "pt",
)

fun normalizeTranslationLanguageCode(rawCode: String?): String? {
    val normalized = rawCode
        ?.trim()
        ?.replace('_', '-')
        ?.lowercase()
        ?.ifBlank { null }
        ?: return null

    val collapsed = when {
        normalized == "pt-br" -> "pt"
        else -> normalized.substringBefore('-')
    }

    return collapsed.takeIf { it in supportedTranslationLanguageCodes }
}

fun isSupportedTranslationLanguageCode(rawCode: String?): Boolean =
    normalizeTranslationLanguageCode(rawCode) != null

fun isSupportedOcrSourceLanguageCode(rawCode: String?): Boolean =
    normalizeTranslationLanguageCode(rawCode) in supportedOcrSourceLanguageCodes

fun translationLanguageLabel(code: String, uiLanguageCode: String): String {
    val normalized = normalizeTranslationLanguageCode(code) ?: return code.uppercase()
    return when (normalized) {
        "ru" -> if (uiLanguageCode == "en") "Russian" else TRANSLATION_LANGUAGE_AUTONYMS.getValue(normalized)
        "en" -> if (uiLanguageCode == "ru") "Английский" else TRANSLATION_LANGUAGE_AUTONYMS.getValue(normalized)
        "ja" -> if (uiLanguageCode == "en") "Japanese" else TRANSLATION_LANGUAGE_AUTONYMS.getValue(normalized)
        "zh" -> if (uiLanguageCode == "en") "Chinese" else TRANSLATION_LANGUAGE_AUTONYMS.getValue(normalized)
        "ko" -> if (uiLanguageCode == "en") "Korean" else TRANSLATION_LANGUAGE_AUTONYMS.getValue(normalized)
        "fr" -> if (uiLanguageCode == "ru") "Французский" else TRANSLATION_LANGUAGE_AUTONYMS.getValue(normalized)
        "it" -> if (uiLanguageCode == "ru") "Итальянский" else TRANSLATION_LANGUAGE_AUTONYMS.getValue(normalized)
        "pl" -> if (uiLanguageCode == "ru") "Польский" else TRANSLATION_LANGUAGE_AUTONYMS.getValue(normalized)
        "tr" -> if (uiLanguageCode == "ru") "Турецкий" else TRANSLATION_LANGUAGE_AUTONYMS.getValue(normalized)
        "pt" -> if (uiLanguageCode == "ru") "Португальский (Бразилия)" else TRANSLATION_LANGUAGE_AUTONYMS.getValue(normalized)
        else -> TRANSLATION_LANGUAGE_AUTONYMS[normalized] ?: normalized.uppercase()
    }
}

fun translationLanguageShortLabel(code: String): String = when (normalizeTranslationLanguageCode(code)) {
    "pt" -> "PT-BR"
    null -> code.uppercase()
    else -> normalizeTranslationLanguageCode(code)!!.uppercase()
}

fun translationLanguageOptions(uiLanguageCode: String): List<Pair<String, String>> =
    supportedTranslationLanguageCodes.map { code ->
        code.uppercase() to translationLanguageLabel(code, uiLanguageCode)
    }

fun ocrSourceLanguageOptions(uiLanguageCode: String): List<TranslationLanguageOption> =
    supportedOcrSourceLanguageCodes.map { code ->
        TranslationLanguageOption(
            code = code,
            label = translationLanguageLabel(code, uiLanguageCode),
            shortLabel = translationLanguageShortLabel(code)
        )
    }

fun translationTargetLanguageOptions(uiLanguageCode: String): List<TranslationLanguageOption> =
    supportedTranslationLanguageCodes.map { code ->
        TranslationLanguageOption(
            code = code,
            label = translationLanguageLabel(code, uiLanguageCode),
            shortLabel = translationLanguageShortLabel(code)
        )
    }
