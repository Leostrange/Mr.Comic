package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.SingleWordDictionaryMatch
import io.leostrange.mrcomic.core.domain.translation.hasMeaningfulTranslationFor
import io.leostrange.mrcomic.core.domain.translation.resolveBestSingleWordDictionaryMatch
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.DictionaryEntry
import io.leostrange.mrcomic.core.model.LanguageDetectionResult
import io.leostrange.mrcomic.core.model.TranslationServiceConfig
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.core.ui.locale.normalizeAppLanguageCode
import io.leostrange.mrcomic.core.ui.locale.normalizeTranslationLanguageCode
import io.leostrange.mrcomic.core.ui.locale.supportedTranslationLanguageCodes
import kotlinx.coroutines.flow.first

internal fun String.normalizeReaderSelectionText(): String =
    trim().replace(Regex("\\s+"), " ")

internal fun String.countSelectionTokens(): Int =
    SELECTION_TOKEN_REGEX.findAll(this).count().coerceAtLeast(if (isBlank()) 0 else 1)

internal val SELECTION_TOKEN_REGEX = "[\\p{L}\\p{N}]+".toRegex()

internal suspend fun resolveReaderTranslationSettings(
    readerPreferences: UserPreferences
): TranslationServiceConfig {
    val appLanguage = normalizeAppLanguageCode(
        readerPreferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first()
    )
    val rawTargetLanguage = readerPreferences.get(PreferencesKeys.TRANSLATION_TARGET_LANGUAGE, "APP").first()
    val rawSourceLanguage = readerPreferences.get(PreferencesKeys.TRANSLATION_SOURCE_LANGUAGE, "AUTO").first()
    val rawTransport = readerPreferences.get(
        PreferencesKeys.TRANSLATION_TRANSPORT,
        TranslationTransportPreference.AUTO.name
    ).first()
    val explainEnabled = readerPreferences.get(PreferencesKeys.TRANSLATION_EXPLAIN_ENABLED, false).first()

    val targetLanguage = normalizeTranslationLanguageCode(rawTargetLanguage)
        ?: appLanguage
        ?: "ru"

    val sourceLanguage = normalizeTranslationLanguageCode(rawSourceLanguage)

    return TranslationServiceConfig.fromStored(
        mode = null,
        sourceLanguage = sourceLanguage,
        targetLanguage = targetLanguage,
        preferredTransport = rawTransport,
        explainEnabled = explainEnabled
    )
}

internal suspend fun currentReaderUiLanguage(readerPreferences: UserPreferences): String =
    normalizeAppLanguageCode(
        readerPreferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first()
    )

internal suspend fun localizedReaderError(
    readerPreferences: UserPreferences,
    messageProvider: (String) -> String
): String {
    val languageCode = normalizeAppLanguageCode(
        readerPreferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first()
    )
    return messageProvider(languageCode)
}

internal fun isNetworkAvailable(context: Context): Boolean {
    val connectivityManager = context.getSystemService(ConnectivityManager::class.java) ?: return false
    val network = connectivityManager.activeNetwork ?: return false
    val capabilities = connectivityManager.getNetworkCapabilities(network) ?: return false
    return capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET) &&
        capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_VALIDATED)
}

internal suspend fun resolveSingleWordDictionaryMatch(
    rawWord: String,
    targetLanguage: String,
    preferredSourceLanguage: String?,
    detectionResult: LanguageDetectionResult?,
    dictionaryEngine: DictionaryEngine
): SingleWordDictionaryMatch? {
    return resolveBestSingleWordDictionaryMatch(
        rawWord = rawWord,
        targetLanguage = targetLanguage,
        dictionaryEngine = dictionaryEngine,
        preferredSourceLanguage = preferredSourceLanguage,
        detectedLanguage = detectionResult?.languageCode,
        detectedCandidates = detectionResult?.candidates?.map { it.languageCode }.orEmpty(),
        fallbackSourceLanguages = supportedTranslationLanguageCodes.filter { it != targetLanguage }
    )
}

internal suspend fun resolveReaderDictionaryEntry(
    rawWord: String,
    sourceLanguage: String,
    targetLanguage: String,
    dictionaryEngine: DictionaryEngine
): DictionaryEntry? {
    return when (
        val dictionaryResult = dictionaryEngine.lookup(
            rawWord = rawWord,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
    ) {
        is Result.Success -> dictionaryResult.data.takeIf { entry ->
            entry.hasMeaningfulTranslationFor(rawWord) || entry.translations.isNotEmpty() || entry.glosses.isNotEmpty()
        }
        is Result.Error -> null
        Result.Loading -> null
    }
}
