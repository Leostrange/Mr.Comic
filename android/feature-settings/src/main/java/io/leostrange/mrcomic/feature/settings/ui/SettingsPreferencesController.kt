package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.ui.locale.normalizeAppLanguageCode
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

/**
 * Simple preference setter functions.
 * Extracted from SettingsViewModel to reduce its size.
 */
internal class SettingsPreferencesController(
    private val viewModelScope: CoroutineScope,
    private val preferences: UserPreferences
) {
    fun setAppLanguage(code: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.APP_LANGUAGE, normalizeAppLanguageCode(code)) }
    }

    fun setReaderChromeAutoHide(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_CHROME_AUTO_HIDE, enabled) }
    }

    fun setReaderEyeRestEnabled(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_EYE_REST_ENABLED, enabled) }
    }

    fun setUiSoundEnabled(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.UI_SOUND_ENABLED, enabled) }
    }

    fun setPerformanceReducedMotion(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.UI_REDUCED_MOTION, enabled) }
    }

    fun setPerformanceReducedVisualEffects(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.UI_REDUCED_VISUAL_EFFECTS, enabled) }
    }

    fun setTranslationMode(mode: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_MODE, mode) }
    }

    fun setTranslationSourceLanguage(code: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_SOURCE_LANGUAGE, code) }
    }

    fun setTranslationTargetLanguage(code: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_TARGET_LANGUAGE, code) }
    }

    fun setTranslationTransport(value: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_TRANSPORT, value) }
    }

    fun setTranslationExplainEnabled(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_EXPLAIN_ENABLED, enabled) }
    }

    fun setTranslationExplainProvider(provider: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_EXPLAIN_PROVIDER, provider) }
    }

    fun setDeepLUseFreeApi(value: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_DEEPL_USE_FREE, value) }
    }

    fun setTranslationWifiOnly(value: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_WIFI_ONLY, value) }
    }

    fun setTranslationDailyCharLimit(value: Int) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_DAILY_CHAR_LIMIT, value) }
    }

    fun setOcrLanguage(lang: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.OCR_LANGUAGE, lang) }
    }

    fun setOcrDialoguesOnly(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.OCR_DIALOGUES_ONLY, enabled) }
    }

    fun setOcrIncludeSfx(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.OCR_INCLUDE_SFX, enabled) }
    }

    fun setOcrOverlayStyle(value: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.OCR_OVERLAY_STYLE, value) }
    }

    fun setLibraryCardStyle(style: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, style) }
    }

    fun setLibraryRecentStripPosition(position: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_RECENT_STRIP_POSITION, position) }
    }

    fun setLibraryShowProgress(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_SHOW_PROGRESS, enabled) }
    }

    fun setLibraryShowCoverTitles(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_SHOW_COVER_TITLES, enabled) }
    }

    fun setLibraryShowStatusChips(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_SHOW_STATUS_CHIPS, enabled) }
    }

    fun setLibraryCoverScale(scale: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_COVER_SCALE, scale) }
    }

    fun setLibrarySortOrder(order: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_SORT_ORDER, order) }
    }

    fun setLibraryGroupBy(mode: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_GROUP_BY, mode) }
    }

    fun setLibraryThumbnailMode(mode: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_THUMBNAIL_MODE, mode) }
    }
}
