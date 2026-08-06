package io.leostrange.mrcomic.feature.ocr.ui

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.core.ui.locale.isSupportedOcrSourceLanguageCode
import io.leostrange.mrcomic.core.ui.locale.isSupportedTranslationLanguageCode
import io.leostrange.mrcomic.core.ui.locale.normalizeTranslationLanguageCode
import io.leostrange.mrcomic.feature.ocr.data.MlKitTranslationSupport
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Translation-backend availability: stored default restoration, network probe,
 * availability refresh and offline language-pair preparation. Extracted from
 * OcrViewModel.kt as extension functions.
 */

internal suspend fun OcrViewModel.applyStoredTranslationDefaults() {
    val appLanguage = preferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first().normalizeLanguageCode() ?: "ru"
    val storedSourceLanguage = normalizeTranslationLanguageCode(
        preferences.get(PreferencesKeys.TRANSLATION_SOURCE_LANGUAGE, "AUTO").first()
    )
    val storedTargetLanguage = normalizeTranslationLanguageCode(
        preferences.get(PreferencesKeys.TRANSLATION_TARGET_LANGUAGE, "APP").first()
    )
    val storedTransport = preferences.get(
        PreferencesKeys.TRANSLATION_TRANSPORT,
        TranslationTransportPreference.AUTO.name
    ).first()
    val overlayOpacity = preferences.get(PreferencesKeys.OCR_OVERLAY_OPACITY, 0.85f).first().coerceIn(0.45f, 1.0f)
    val overlayFontScale = preferences.get(PreferencesKeys.OCR_OVERLAY_FONT_SCALE, 1.0f).first().coerceIn(0.85f, 1.3f)
    val overlayStyle = preferences.get(PreferencesKeys.OCR_OVERLAY_STYLE, "AUTO").first()
    val prefersImagePipeline = !_uiState.value.imagePath.isNullOrBlank() || !_uiState.value.comicId.isNullOrBlank()

    _uiState.update {
        it.copy(
            sourceLang = when {
                prefersImagePipeline -> storedSourceLanguage
                    ?.takeIf(::isSupportedOcrSourceLanguageCode)
                    ?: OcrViewModel.AUTO_SOURCE_LANGUAGE
                else -> storedSourceLanguage
                    ?.takeIf(::isSupportedTranslationLanguageCode)
                    ?: "AUTO"
            },
            targetLang = (storedTargetLanguage ?: appLanguage).coerceToSupportedTargetLanguage(),
            preferredTransport = runCatching { TranslationTransportPreference.valueOf(storedTransport) }
                .getOrDefault(TranslationTransportPreference.AUTO),
            overlayOpacity = overlayOpacity,
            overlayFontScale = overlayFontScale,
            overlayStyle = overlayStyle.uppercase()
        )
    }
}

internal fun OcrViewModel.refreshTranslationAvailabilityAsync() {
    viewModelScope.launch {
        refreshTranslationAvailability()
    }
}

internal suspend fun OcrViewModel.refreshTranslationAvailability() {
    val state = _uiState.value
    val sourceLanguage = state.sourceLang.normalizeLanguageCode()
        ?.takeIf(::isSupportedTranslationLanguageCode)
    val targetLanguage = state.targetLang.normalizeLanguageCode()
        ?.takeIf(::isSupportedTranslationLanguageCode)

    _uiState.update {
        it.copy(
            translationAvailability = it.translationAvailability.copy(isRefreshing = true)
        )
    }

    val explainEnabled = preferences.get(PreferencesKeys.TRANSLATION_EXPLAIN_ENABLED, false).first()
    val networkAvailable = isNetworkAvailable()
    val onlineConfigured = when (val configured = onlineTranslationEngine.isConfigured()) {
        is Result.Success -> configured.data
        is Result.Error -> false
        Result.Loading -> false
    }

    if (sourceLanguage == null || targetLanguage == null || sourceLanguage == targetLanguage) {
        _uiState.update {
            it.copy(
                translationAvailability = OcrTranslationAvailability(
                    isRefreshing = false,
                    dictionaryAvailable = false,
                    offlinePairSupported = false,
                    offlineModelInstalled = false,
                    networkAvailable = networkAvailable,
                    onlineConfigured = onlineConfigured,
                    explainToggleEnabled = explainEnabled
                )
            )
        }
        return
    }

    val dictionaryAvailable = when (
        val availability = dictionaryEngine.isLookupAvailable(
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
    ) {
        is Result.Success -> availability.data
        is Result.Error -> false
        Result.Loading -> false
    }

    val offlinePairSupported =
        MlKitTranslationSupport.toTranslateLanguage(sourceLanguage) != null &&
            MlKitTranslationSupport.toTranslateLanguage(targetLanguage) != null

    val offlineModelInstalled = if (offlinePairSupported) {
        when (
            val availability = offlineTranslationEngine.isLanguagePairAvailable(
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> availability.data
            is Result.Error -> false
            Result.Loading -> false
        }
    } else {
        false
    }

    _uiState.update {
        it.copy(
            translationAvailability = OcrTranslationAvailability(
                isRefreshing = false,
                dictionaryAvailable = dictionaryAvailable,
                offlinePairSupported = offlinePairSupported,
                offlineModelInstalled = offlineModelInstalled,
                networkAvailable = networkAvailable,
                onlineConfigured = onlineConfigured,
                explainToggleEnabled = explainEnabled
            )
        )
    }
}

internal suspend fun OcrViewModel.currentUiLanguage(): String =
    preferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first().normalizeLanguageCode() ?: "ru"

internal fun OcrViewModel.isNetworkAvailable(): Boolean {
    val connectivityManager = context.getSystemService(ConnectivityManager::class.java) ?: return false
    val network = connectivityManager.activeNetwork ?: return false
    val capabilities = connectivityManager.getNetworkCapabilities(network) ?: return false
    return capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET) &&
        capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_VALIDATED)
}

internal fun OcrViewModel.prepareOfflineLanguagePair() {
    val state = _uiState.value
    if (state.isInteractionLocked()) return
    val sourceLanguage = state.sourceLang.normalizeLanguageCode()
        ?.takeIf(::isSupportedTranslationLanguageCode)
        ?: return
    val targetLanguage = state.targetLang.normalizeLanguageCode()
        ?.takeIf(::isSupportedTranslationLanguageCode)
        ?: return
    if (sourceLanguage == targetLanguage) return
    if (
        MlKitTranslationSupport.toTranslateLanguage(sourceLanguage) == null ||
        MlKitTranslationSupport.toTranslateLanguage(targetLanguage) == null
    ) {
        return
    }

    viewModelScope.launch {
        val uiLanguage = currentUiLanguage()
        _uiState.update {
            it.clearTransientFeedback().copy(
                isPreparingOfflineModel = true,
                error = null
            )
        }
        val result = offlineTranslationEngine.prepareLanguagePair(
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
        refreshTranslationAvailability()
        _uiState.update { it.copy(isPreparingOfflineModel = false) }
        when (result) {
            is Result.Success -> {
                if (result.data) {
                    _uiState.update {
                        it.copy(
                            saveMessage = ocrOfflineModelReadyMessage(
                                sourceLanguage = sourceLanguage,
                                targetLanguage = targetLanguage,
                                language = uiLanguage
                            )
                        )
                    }
                } else {
                    _uiState.update {
                        it.copy(error = ocrOfflineModelUnavailableMessage(uiLanguage))
                    }
                }
            }

            is Result.Error -> {
                _uiState.update {
                    it.copy(error = ocrOfflineModelUnavailableMessage(uiLanguage))
                }
            }

            Result.Loading -> Unit
        }
    }
}
