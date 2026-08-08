package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import kotlinx.coroutines.launch

internal fun SettingsSettersController.setTranslationMode(mode: String) = settingsPreferencesController.setTranslationMode(mode)

internal fun SettingsSettersController.setTranslationSourceLanguage(code: String) = settingsPreferencesController.setTranslationSourceLanguage(code)

internal fun SettingsSettersController.setTranslationTargetLanguage(code: String) = settingsPreferencesController.setTranslationTargetLanguage(code)

internal fun SettingsSettersController.setTranslationTransport(value: String) = settingsPreferencesController.setTranslationTransport(value)

internal fun SettingsSettersController.setTranslationExplainEnabled(enabled: Boolean) = settingsPreferencesController.setTranslationExplainEnabled(enabled)

internal fun SettingsSettersController.setTranslationExplainProvider(provider: String) = settingsPreferencesController.setTranslationExplainProvider(provider)

internal fun SettingsSettersController.saveEncryptedOpenRouterApiKey(value: String) {
        scope.launch {
            preferences.set(
                PreferencesKeys.TRANSLATION_OPENROUTER_API_KEY,
                SettingsSecretStore.encrypt(value)
            )
        }
    }

internal fun SettingsSettersController.setOpenRouterApiKey(value: String) {
        saveEncryptedOpenRouterApiKey(value)
    }

internal fun SettingsSettersController.setOpenRouterModel(value: String) {
        scope.launch {
            preferences.set(
                PreferencesKeys.TRANSLATION_OPENROUTER_MODEL,
                value.trim().ifBlank { "openrouter/auto" }
            )
        }
    }

internal fun SettingsSettersController.setDeepLApiKey(value: String) {
        scope.launch {
            val encrypted = SettingsSecretStore.encrypt(value.trim())
            preferences.set(PreferencesKeys.TRANSLATION_DEEPL_API_KEY, encrypted)
        }
    }

internal fun SettingsSettersController.setDeepLUseFreeApi(value: Boolean) = settingsPreferencesController.setDeepLUseFreeApi(value)

internal fun SettingsSettersController.setGoogleApiKey(value: String) {
        scope.launch {
            val encrypted = SettingsSecretStore.encrypt(value.trim())
            preferences.set(PreferencesKeys.TRANSLATION_GOOGLE_API_KEY, encrypted)
        }
    }

internal fun SettingsSettersController.setYandexApiKey(value: String) {
        scope.launch {
            val encrypted = SettingsSecretStore.encrypt(value.trim())
            preferences.set(PreferencesKeys.TRANSLATION_YANDEX_API_KEY, encrypted)
        }
    }

internal fun SettingsSettersController.setYandexFolderId(value: String) {
        scope.launch {
            preferences.set(PreferencesKeys.TRANSLATION_YANDEX_FOLDER_ID, value.trim())
        }
    }

internal fun SettingsSettersController.setTranslationWifiOnly(value: Boolean) = settingsPreferencesController.setTranslationWifiOnly(value)

internal fun SettingsSettersController.setTranslationDailyCharLimit(value: Int) = settingsPreferencesController.setTranslationDailyCharLimit(value)

internal fun SettingsSettersController.setOcrLanguage(lang: String) = settingsPreferencesController.setOcrLanguage(lang)

internal fun SettingsSettersController.setOcrDialoguesOnly(enabled: Boolean) = settingsPreferencesController.setOcrDialoguesOnly(enabled)

internal fun SettingsSettersController.setOcrIncludeSfx(enabled: Boolean) = settingsPreferencesController.setOcrIncludeSfx(enabled)

internal fun SettingsSettersController.setOcrOverlayOpacity(value: Float) {
        setSlider("ocrOverlayOpacity") {
            preferences.set(PreferencesKeys.OCR_OVERLAY_OPACITY, value.coerceIn(0.45f, 1.0f))
        }
    }

internal fun SettingsSettersController.setOcrOverlayFontScale(value: Float) {
        setSlider("ocrOverlayFontScale") {
            preferences.set(PreferencesKeys.OCR_OVERLAY_FONT_SCALE, value.coerceIn(0.85f, 1.3f))
        }
    }

internal fun SettingsSettersController.setOcrOverlayStyle(value: String) = settingsPreferencesController.setOcrOverlayStyle(value)
