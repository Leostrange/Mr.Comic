package io.leostrange.mrcomic.feature.settings.ui

import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import kotlinx.coroutines.launch

internal fun SettingsViewModel.setTranslationMode(mode: String) = settingsPreferencesController.setTranslationMode(mode)

internal fun SettingsViewModel.setTranslationSourceLanguage(code: String) = settingsPreferencesController.setTranslationSourceLanguage(code)

internal fun SettingsViewModel.setTranslationTargetLanguage(code: String) = settingsPreferencesController.setTranslationTargetLanguage(code)

internal fun SettingsViewModel.setTranslationTransport(value: String) = settingsPreferencesController.setTranslationTransport(value)

internal fun SettingsViewModel.setTranslationExplainEnabled(enabled: Boolean) = settingsPreferencesController.setTranslationExplainEnabled(enabled)

internal fun SettingsViewModel.setTranslationExplainProvider(provider: String) = settingsPreferencesController.setTranslationExplainProvider(provider)

internal fun SettingsViewModel.saveEncryptedOpenRouterApiKey(value: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.TRANSLATION_OPENROUTER_API_KEY,
                SettingsSecretStore.encrypt(value)
            )
        }
    }

internal fun SettingsViewModel.setOpenRouterApiKey(value: String) {
        saveEncryptedOpenRouterApiKey(value)
    }

internal fun SettingsViewModel.setOpenRouterModel(value: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.TRANSLATION_OPENROUTER_MODEL,
                value.trim().ifBlank { "openrouter/auto" }
            )
        }
    }

internal fun SettingsViewModel.setDeepLApiKey(value: String) {
        viewModelScope.launch {
            val encrypted = SettingsSecretStore.encrypt(value.trim())
            preferences.set(PreferencesKeys.TRANSLATION_DEEPL_API_KEY, encrypted)
        }
    }

internal fun SettingsViewModel.setDeepLUseFreeApi(value: Boolean) = settingsPreferencesController.setDeepLUseFreeApi(value)

internal fun SettingsViewModel.setGoogleApiKey(value: String) {
        viewModelScope.launch {
            val encrypted = SettingsSecretStore.encrypt(value.trim())
            preferences.set(PreferencesKeys.TRANSLATION_GOOGLE_API_KEY, encrypted)
        }
    }

internal fun SettingsViewModel.setYandexApiKey(value: String) {
        viewModelScope.launch {
            val encrypted = SettingsSecretStore.encrypt(value.trim())
            preferences.set(PreferencesKeys.TRANSLATION_YANDEX_API_KEY, encrypted)
        }
    }

internal fun SettingsViewModel.setYandexFolderId(value: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.TRANSLATION_YANDEX_FOLDER_ID, value.trim())
        }
    }

internal fun SettingsViewModel.setTranslationWifiOnly(value: Boolean) = settingsPreferencesController.setTranslationWifiOnly(value)

internal fun SettingsViewModel.setTranslationDailyCharLimit(value: Int) = settingsPreferencesController.setTranslationDailyCharLimit(value)

internal fun SettingsViewModel.setOcrLanguage(lang: String) = settingsPreferencesController.setOcrLanguage(lang)

internal fun SettingsViewModel.setOcrDialoguesOnly(enabled: Boolean) = settingsPreferencesController.setOcrDialoguesOnly(enabled)

internal fun SettingsViewModel.setOcrIncludeSfx(enabled: Boolean) = settingsPreferencesController.setOcrIncludeSfx(enabled)

internal fun SettingsViewModel.setOcrOverlayOpacity(value: Float) {
        setSlider("ocrOverlayOpacity") {
            preferences.set(PreferencesKeys.OCR_OVERLAY_OPACITY, value.coerceIn(0.45f, 1.0f))
        }
    }

internal fun SettingsViewModel.setOcrOverlayFontScale(value: Float) {
        setSlider("ocrOverlayFontScale") {
            preferences.set(PreferencesKeys.OCR_OVERLAY_FONT_SCALE, value.coerceIn(0.85f, 1.3f))
        }
    }

internal fun SettingsViewModel.setOcrOverlayStyle(value: String) = settingsPreferencesController.setOcrOverlayStyle(value)
