// Phase Z (2026-08-04):
// All setter functions extracted from SettingsViewModel.kt.
// Domain: appearance, reader, UI, performance, text, TTS, translation, OCR, library.

package io.leostrange.mrcomic.feature.settings.ui

import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PerfProfile
import io.leostrange.mrcomic.core.data.preferences.PerfRenderQuality
import io.leostrange.mrcomic.core.data.preferences.PerformanceDefaults
import io.leostrange.mrcomic.core.data.preferences.PerformancePreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.util.LibraryViewModeKey
import io.leostrange.mrcomic.core.domain.util.normalizeLibraryViewModeKey
import io.leostrange.mrcomic.core.domain.util.normalizeTapZoneActionName
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderInfoSlot
import io.leostrange.mrcomic.core.model.ReaderScreenTimeoutMode
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.model.ReaderTtsProviderType
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import io.leostrange.mrcomic.core.ui.theme.ThemePreset
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_STYLE
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryBackgroundStyle
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryGraphicCoverStyle
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryShelfStyle
import io.leostrange.mrcomic.core.ui.theme.toConfig
import kotlinx.coroutines.Dispatchers
import org.json.JSONObject
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch

internal fun SettingsViewModel.setAppLanguage(code: String) = settingsPreferencesController.setAppLanguage(code)

    /**
     * Applies a theme preset: writes all preset color values and flags into DataStore,
     * then marks the active preset. Selecting CUSTOM only marks the preset key.
     */
internal fun SettingsViewModel.setThemePreset(preset: ThemePreset) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(preset)
            if (preset != ThemePreset.CUSTOM) {
                val cfg = preset.toConfig()
                themePreferencesRepository.setThemeMode(cfg.themeMode)
                themePreferencesRepository.setUseDynamicColor(cfg.useDynamicColor)
                themePreferencesRepository.setUseAmoledDark(cfg.useAmoledDark)
                themePreferencesRepository.setCustomPrimaryColor(cfg.primaryColor)
                themePreferencesRepository.setCustomSecondaryColor(cfg.secondaryColor)
                themePreferencesRepository.setCustomBackgroundColor(cfg.backgroundColor)
                themePreferencesRepository.setCustomSurfaceColor(null)
                themePreferencesRepository.setSurfaceOpacity(1f)
            }
        }
    }

    /**
     * Applies a reader preset: sets multiple reader settings at once.
     * CUSTOM only marks the preset key without changing other settings.
     */
internal fun SettingsViewModel.setReaderPreset(presetName: String) {
        viewModelScope.launch {
            val preset = ReadingPreset.fromStored(presetName.uppercase())
            preferences.set(PreferencesKeys.READER_PRESET, preset.name)
            if (preset == ReadingPreset.CUSTOM) return@launch

            val style = preset.style()
            preferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, style.immersiveMode)
            preferences.set(PreferencesKeys.READER_PAGE_ANIMATION, style.pageAnimation)
            preferences.set(PreferencesKeys.READER_PAGE_SOUND, false)
            preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, style.textColorScheme)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, null)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, null)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, null)
            preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, style.fontFamily)
            preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, style.lineHeight)
            preferences.set(PreferencesKeys.TEXT_LETTER_SPACING, style.letterSpacing)
            preferences.set(PreferencesKeys.TEXT_WORD_SPACING, style.wordSpacing)
            preferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, style.paragraphSpacing)
            preferences.set(PreferencesKeys.TEXT_ALIGNMENT, style.textAlignment)
            preferences.set(PreferencesKeys.TEXT_BOLD, style.textBold)
        }
    }

private fun SettingsViewModel.markReaderPresetCustom() {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
        }
    }

internal fun SettingsViewModel.setThemeMode(mode: ThemeMode) {
        viewModelScope.launch {
            // Manual change = exit preset
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setThemeMode(mode)
        }
    }

internal fun SettingsViewModel.setUseDynamicColor(enabled: Boolean) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setUseDynamicColor(enabled)
        }
    }

internal fun SettingsViewModel.setUseAmoledDark(enabled: Boolean) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setUseAmoledDark(enabled)
        }
    }

internal fun SettingsViewModel.setCustomPrimaryColor(color: Long?) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setCustomPrimaryColor(color)
        }
    }

internal fun SettingsViewModel.setCustomSecondaryColor(color: Long?) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setCustomSecondaryColor(color)
        }
    }

internal fun SettingsViewModel.setCustomBackgroundColor(color: Long?) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setCustomBackgroundColor(color)
        }
    }

internal fun SettingsViewModel.setCustomSurfaceColor(color: Long?) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setCustomSurfaceColor(color)
        }
    }

internal fun SettingsViewModel.setSurfaceOpacity(value: Float) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setSurfaceOpacity(value)
        }
    }

internal fun SettingsViewModel.setReadingMode(mode: ReadingMode) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READING_MODE, mode.name)
        }
    }

internal fun SettingsViewModel.setBrightness(value: Float) {
        markReaderPresetCustom()
        setSlider("brightness") {
            preferences.set(
                PreferencesKeys.READING_BRIGHTNESS,
                if (value <= 0.01f) -1f else value.coerceIn(0.05f, 1f)
            )
        }
    }

internal fun SettingsViewModel.setKeepScreenOnInReader(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_KEEP_SCREEN_ON, enabled)
        }
    }

internal fun SettingsViewModel.setReaderScreenTimeoutMode(mode: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.READER_SCREEN_TIMEOUT_MODE,
                ReaderScreenTimeoutMode.fromStored(mode).storedValue
            )
        }
    }

internal fun SettingsViewModel.setReaderLandscapeSpreadEnabled(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_LANDSCAPE_SPREAD_ENABLED, enabled)
        }
    }

internal fun SettingsViewModel.setLibraryGridColumns(count: Int) {
        setSlider("gridColumns") { preferences.set(PreferencesKeys.LIBRARY_GRID_COLUMNS, count.coerceIn(2, 4)) }
    }

internal fun SettingsViewModel.setLibraryViewGrid(grid: Boolean) {
        setLibraryViewMode(if (grid) "GRID" else "LIST")
    }

internal fun SettingsViewModel.setLibraryViewMode(mode: String) {
        val normalized = normalizeLibraryViewModeKey(mode, LibraryViewModeKey.GRID).name
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_VIEW_MODE, normalized)
            preferences.set(PreferencesKeys.LIBRARY_VIEW_GRID, normalized == "GRID")
        }
    }

internal fun SettingsViewModel.setReaderPreloadPages(count: Int) {
        setSlider("preloadPages") { preferences.set(PreferencesKeys.READER_PRELOAD_PAGES, count.coerceIn(2, 8)) }
    }

internal fun SettingsViewModel.setReaderImageScaleMode(mode: String) {
        val resolved = ReaderImageScaleMode.fromStored(mode)
        markReaderPresetCustom()
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_IMAGE_SCALE_MODE, resolved.storedValue)
        }
    }

internal fun SettingsViewModel.setReaderImageMarginCropHorizontal(value: Float) {
        markReaderPresetCustom()
        setSlider("readerImageMarginCropHorizontal") {
            preferences.set(
                PreferencesKeys.READER_PAGE_MARGIN_CROP_HORIZONTAL,
                value.coerceIn(0f, 0.22f)
            )
        }
    }

internal fun SettingsViewModel.setReaderImageMarginCropVertical(value: Float) {
        markReaderPresetCustom()
        setSlider("readerImageMarginCropVertical") {
            preferences.set(
                PreferencesKeys.READER_PAGE_MARGIN_CROP_VERTICAL,
                value.coerceIn(0f, 0.22f)
            )
        }
    }

internal fun SettingsViewModel.setReaderImmersiveMode(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, enabled) }
    }

internal fun SettingsViewModel.setReaderChromeAutoHide(enabled: Boolean) = settingsPreferencesController.setReaderChromeAutoHide(enabled)

internal fun SettingsViewModel.setReaderTopToolbarOpacity(value: Float) {
        setSlider("readerTopToolbarOpacity") {
            preferences.set(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, value.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f))
        }
    }

internal fun SettingsViewModel.setReaderBottomToolbarOpacity(value: Float) {
        setSlider("readerBottomToolbarOpacity") {
            preferences.set(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, value.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f))
        }
    }

internal fun SettingsViewModel.setReaderToolbarOpacity(value: Float) {
        val safe = value.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f)
        setSlider("readerToolbarOpacity") {
            preferences.set(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, safe)
            preferences.set(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, safe)
        }
    }

internal fun SettingsViewModel.setReaderToolbarBlur(value: Float) {
        setSlider("readerToolbarBlur") {
            preferences.set(PreferencesKeys.READER_TOOLBAR_BLUR, value.coerceIn(0f, 1.0f))
        }
    }

internal fun SettingsViewModel.setReaderPageAnimation(animation: String) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_PAGE_ANIMATION, animation) }
    }

internal fun SettingsViewModel.setAppNavTransitionStyle(style: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.APP_NAV_TRANSITION_STYLE,
                when (style.uppercase()) {
                    "NONE", "FADE", "SLIDE", "LIFT" -> style.uppercase()
                    else -> "FADE"
                }
            )
        }
    }

internal fun SettingsViewModel.setReaderPageSound(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_PAGE_SOUND, enabled) }
    }

internal fun SettingsViewModel.setReaderEyeRestEnabled(enabled: Boolean) = settingsPreferencesController.setReaderEyeRestEnabled(enabled)

internal fun SettingsViewModel.setReaderEyeRestMinutes(minutes: Int) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_EYE_REST_MINUTES, minutes.coerceIn(10, 60))
        }
    }

internal fun SettingsViewModel.setLibraryTileSize(size: Int) {
        setSlider("tileSize") { preferences.set(PreferencesKeys.LIBRARY_TILE_SIZE_DP, size.coerceIn(80, 200)) }
    }

internal fun SettingsViewModel.setReaderPageSoundStyle(style: String) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_PAGE_SOUND_STYLE, style) }
    }

internal fun SettingsViewModel.setUiSoundEnabled(enabled: Boolean) = settingsPreferencesController.setUiSoundEnabled(enabled)

internal fun SettingsViewModel.setUiSoundsVolume(vol: Float) {
        setSlider("uiVolume") { preferences.set(PreferencesKeys.UI_SOUNDS_VOLUME, vol.coerceIn(0f, 1f)) }
    }

internal fun SettingsViewModel.setMascotRecapEnabled(enabled: Boolean) {
        val wasEnabled = uiState.value.mascotRecapEnabled
        viewModelScope.launch {
            preferences.set(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, enabled)
            updateToggleEnabledAt(
                key = PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED_AT,
                wasEnabled = wasEnabled,
                enabled = enabled
            )
        }
    }

internal fun SettingsViewModel.setQuestPromptsEnabled(enabled: Boolean) {
        val wasEnabled = uiState.value.questPromptsEnabled
        viewModelScope.launch {
            preferences.set(PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED, enabled)
            updateToggleEnabledAt(
                key = PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED_AT,
                wasEnabled = wasEnabled,
                enabled = enabled
            )
        }
    }

internal fun SettingsViewModel.setDailyReadingGoalEnabled(enabled: Boolean) {
        val currentState = uiState.value
        if (currentState.dailyReadingGoalEnabled == enabled) return
        viewModelScope.launch {
            dailyReadingGoalStore.setGoalEnabled(enabled)
            updateToggleEnabledAt(
                key = PreferencesKeys.DAILY_READING_GOAL_ENABLED_AT,
                wasEnabled = currentState.dailyReadingGoalEnabled,
                enabled = enabled
            )
            if (!enabled) {
                dailyReadingGoalStore.setStreakEnabled(false)
                dailyReadingGoalStore.setGraceEnabled(false)
            }
            analyticsTracker.track(
                ReadingAnalyticsEvent.GoalSet(
                    enabled = enabled,
                    targetPages = currentState.dailyReadingGoalTargetPages,
                    streakEnabled = if (enabled) currentState.dailyReadingStreakEnabled else false,
                    graceEnabled = if (enabled) currentState.dailyReadingGraceEnabled else false,
                    source = "goal_enabled_toggle"
                )
            )
        }
    }

internal fun SettingsViewModel.setDailyReadingGoalTargetPages(targetPages: Int) {
        val currentState = uiState.value
        if (currentState.dailyReadingGoalTargetPages == targetPages) return
        viewModelScope.launch {
            dailyReadingGoalStore.setTargetPages(targetPages)
            analyticsTracker.track(
                ReadingAnalyticsEvent.GoalSet(
                    enabled = currentState.dailyReadingGoalEnabled,
                    targetPages = targetPages,
                    streakEnabled = currentState.dailyReadingStreakEnabled,
                    graceEnabled = currentState.dailyReadingGraceEnabled,
                    source = "target_pages_changed"
                )
            )
        }
    }

internal fun SettingsViewModel.setDailyReadingStreakEnabled(enabled: Boolean) {
        viewModelScope.launch {
            if (enabled && !uiState.value.dailyReadingGoalEnabled) {
                dailyReadingGoalStore.setGoalEnabled(true)
                updateToggleEnabledAt(
                    key = PreferencesKeys.DAILY_READING_GOAL_ENABLED_AT,
                    wasEnabled = false,
                    enabled = true
                )
            }
            dailyReadingGoalStore.setStreakEnabled(enabled)
            if (!enabled) {
                dailyReadingGoalStore.setGraceEnabled(false)
            }
        }
    }

internal fun SettingsViewModel.setDailyReadingGraceEnabled(enabled: Boolean) {
        viewModelScope.launch {
            if (enabled && !uiState.value.dailyReadingGoalEnabled) {
                dailyReadingGoalStore.setGoalEnabled(true)
                updateToggleEnabledAt(
                    key = PreferencesKeys.DAILY_READING_GOAL_ENABLED_AT,
                    wasEnabled = false,
                    enabled = true
                )
            }
            if (enabled) {
                dailyReadingGoalStore.setStreakEnabled(true)
            }
            dailyReadingGoalStore.setGraceEnabled(enabled)
        }
    }

internal fun SettingsViewModel.setUiFontScale(scale: Float) {
        setSlider("fontScale") { preferences.set(PreferencesKeys.UI_FONT_SCALE, scale) }
    }

internal fun SettingsViewModel.setUiDensityScale(scale: Float) {
        setSlider("uiDensity") { preferences.set(PreferencesKeys.UI_DENSITY_SCALE, scale.coerceIn(0.82f, 1.18f)) }
    }

internal fun SettingsViewModel.setUiCornerRadius(radius: Int) {
        setSlider("cornerRadius") { preferences.set(PreferencesKeys.UI_CORNER_RADIUS, radius.coerceIn(0, 32)) }
    }

internal fun SettingsViewModel.setPerformanceReducedMotion(enabled: Boolean) = settingsPreferencesController.setPerformanceReducedMotion(enabled)

internal fun SettingsViewModel.setPerformanceReducedVisualEffects(enabled: Boolean) = settingsPreferencesController.setPerformanceReducedVisualEffects(enabled)

internal fun SettingsViewModel.setPerfProfile(profile: String) {
        viewModelScope.launch {
            preferences.set(
                PerformancePreferencesKeys.PERF_PROFILE,
                PerfProfile.fromStored(profile).storedValue
            )
            when (PerfProfile.fromStored(profile)) {
                PerfProfile.QUALITY -> {
                    preferences.set(PerformancePreferencesKeys.PERF_RENDER_QUALITY, PerfRenderQuality.HIGH.storedValue)
                    preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, 8)
                    preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, 512)
                    preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, false)
                }
                PerfProfile.BALANCED -> {
                    preferences.set(PerformancePreferencesKeys.PERF_RENDER_QUALITY, PerfRenderQuality.AUTO.storedValue)
                    preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, 5)
                    preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, 256)
                    preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, false)
                }
                PerfProfile.ECONOMY -> {
                    preferences.set(PerformancePreferencesKeys.PERF_RENDER_QUALITY, PerfRenderQuality.LOW.storedValue)
                    preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, 3)
                    preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, 64)
                    preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, true)
                }
                PerfProfile.AUTO -> Unit
            }
        }
    }

internal fun SettingsViewModel.setPerfRenderQuality(quality: String) {
        viewModelScope.launch {
            preferences.set(
                PerformancePreferencesKeys.PERF_RENDER_QUALITY,
                PerfRenderQuality.fromStored(quality).storedValue
            )
        }
    }

internal fun SettingsViewModel.setPerfCoverCacheMb(mb: Int) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, mb.coerceIn(64, 512))
        }
    }

internal fun SettingsViewModel.setPerfPageCacheCount(count: Int) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, count.coerceIn(3, 10))
        }
    }

internal fun SettingsViewModel.setPerfFtsSearchEnabled(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_FTS_SEARCH_ENABLED, enabled)
        }
    }

internal fun SettingsViewModel.setPerfStartupPreloadEnabled(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_STARTUP_PRELOAD_ENABLED, enabled)
        }
    }

internal fun SettingsViewModel.setPerfReducedAnimations(reduced: Boolean) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, reduced)
        }
    }

internal fun SettingsViewModel.resetPerfSettings() {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_PROFILE, PerformanceDefaults.PROFILE)
            preferences.set(PerformancePreferencesKeys.PERF_RENDER_QUALITY, PerformanceDefaults.RENDER_QUALITY)
            preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, PerformanceDefaults.COVER_CACHE_MB)
            preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, PerformanceDefaults.PAGE_CACHE_COUNT)
            preferences.set(PerformancePreferencesKeys.PERF_FTS_SEARCH_ENABLED, PerformanceDefaults.FTS_SEARCH)
            preferences.set(PerformancePreferencesKeys.PERF_STARTUP_PRELOAD_ENABLED, PerformanceDefaults.STARTUP_PRELOAD)
            preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, PerformanceDefaults.REDUCED_ANIM)
        }
    }

internal fun SettingsViewModel.setTextFontSize(size: Int) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_FONT_SIZE, size.coerceIn(12, 32))
        }
    }

internal fun SettingsViewModel.setTextColorScheme(scheme: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, scheme.uppercase())
        }
    }

internal fun SettingsViewModel.setTextCustomTextColor(color: Long?) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, color)
        }
    }

internal fun SettingsViewModel.setTextCustomBackgroundColor(color: Long?) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, color)
        }
    }

internal fun SettingsViewModel.setTextCustomAccentColor(color: Long?) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, color)
        }
    }

internal fun SettingsViewModel.setTextFontFamily(family: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, family)
        }
    }

internal fun SettingsViewModel.setTextLineHeight(height: Float) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, height.coerceIn(1.0f, 3.0f))
        }
    }

internal fun SettingsViewModel.setTextLetterSpacing(spacing: Float) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_LETTER_SPACING, spacing.coerceIn(0f, 0.2f))
        }
    }

internal fun SettingsViewModel.setTextWordSpacing(spacing: Float) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_WORD_SPACING, spacing.coerceIn(0f, 0.6f))
        }
    }

internal fun SettingsViewModel.setTextParagraphSpacing(spacing: Float) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, spacing.coerceIn(0.1f, 1.2f))
        }
    }

internal fun SettingsViewModel.setTextAlignment(alignment: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_ALIGNMENT, alignment.lowercase())
        }
    }

internal fun SettingsViewModel.setTextBold(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_BOLD, enabled)
        }
    }

internal fun SettingsViewModel.resetReaderTextStyle() {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_FONT_SIZE, 18)
            preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, "DAY")
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, null)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, null)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, null)
            preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, "Georgia")
            preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, 1.8f)
            preferences.set(PreferencesKeys.TEXT_LETTER_SPACING, 0f)
            preferences.set(PreferencesKeys.TEXT_WORD_SPACING, 0f)
            preferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, 0.2f)
            preferences.set(PreferencesKeys.TEXT_ALIGNMENT, "justify")
            preferences.set(PreferencesKeys.TEXT_BOLD, false)
        }
    }

internal suspend fun SettingsViewModel.importReaderTypographyFromJson(rawJson: String): String? = kotlinx.coroutines.withContext(Dispatchers.IO) {
        val imported = parseImportedReaderTypography(JSONObject(rawJson)) ?: return@withContext null
        preferences.set(PreferencesKeys.READER_PRESET, imported.readerPreset.name)
        preferences.set(PreferencesKeys.TEXT_FONT_SIZE, imported.textFontSize)
        preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, imported.textColorScheme)
        persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, imported.textCustomTextColor)
        persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, imported.textCustomBackgroundColor)
        persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, imported.textCustomAccentColor)
        preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, imported.textFontFamily)
        preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, imported.textLineHeight)
        preferences.set(PreferencesKeys.TEXT_LETTER_SPACING, imported.textLetterSpacing)
        preferences.set(PreferencesKeys.TEXT_WORD_SPACING, imported.textWordSpacing)
        preferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, imported.textParagraphSpacing)
        preferences.set(PreferencesKeys.TEXT_ALIGNMENT, imported.textAlignment)
        preferences.set(PreferencesKeys.TEXT_BOLD, imported.textBold)
        preferences.set(PreferencesKeys.READING_BRIGHTNESS, imported.brightness)
        preferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, imported.immersiveMode)
        preferences.set(PreferencesKeys.READER_PAGE_ANIMATION, imported.pageAnimation)
        imported.displayName
    }

internal fun SettingsViewModel.setReaderTapZoneMode(mode: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_TAP_ZONE_MODE, ReaderTapZoneMode.fromStored(mode).name)
        }
    }

internal fun SettingsViewModel.setReaderTapZoneSwap(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_TAP_ZONE_SWAP, enabled)
        }
    }

internal fun SettingsViewModel.setReaderVolumeKeysPaging(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_VOLUME_KEYS_PAGING, enabled)
        }
    }

internal fun SettingsViewModel.setReaderTtsSpeed(value: Float) {
        setSlider("reader_tts_speed") {
            preferences.set(PreferencesKeys.READER_TTS_SPEED, value.coerceIn(0.5f, 2.0f))
        }
    }

internal fun SettingsViewModel.setReaderTtsProvider(value: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.READER_TTS_PROVIDER,
                ReaderTtsProviderType.fromStored(value).storedValue
            )
        }
    }

internal fun SettingsViewModel.setReaderTtsPitch(value: Float) {
        setSlider("reader_tts_pitch") {
            preferences.set(PreferencesKeys.READER_TTS_PITCH, value.coerceIn(0.5f, 2.0f))
        }
    }

internal fun SettingsViewModel.setReaderTtsVolume(value: Float) {
        setSlider("reader_tts_volume") {
            preferences.set(PreferencesKeys.READER_TTS_VOLUME, value.coerceIn(0f, 1.0f))
        }
    }

internal fun SettingsViewModel.setReaderTtsVoiceName(value: String?) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_TTS_VOICE_NAME, value.orEmpty())
        }
    }

internal fun SettingsViewModel.setReaderTtsSleepTimerMode(value: String) {
        val resolved = ReaderTtsSleepTimerMode.fromStored(value)
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_TTS_SLEEP_TIMER_MODE, resolved.storedValue)
        }
    }

internal fun SettingsViewModel.setAppVideoSplashEnabled(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.APP_VIDEO_SPLASH_ENABLED, enabled)
        }
    }

internal fun SettingsViewModel.setReaderTapZoneAction(position: String, action: String) {
        val normalizedAction = normalizeTapZoneActionName(action)
        val key = when (position.uppercase()) {
            "LEFT" -> PreferencesKeys.READER_TAP_ZONE_LEFT
            "CENTER" -> PreferencesKeys.READER_TAP_ZONE_CENTER
            else -> PreferencesKeys.READER_TAP_ZONE_RIGHT
        }
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_TAP_ZONE_MODE, ReaderTapZoneMode.CUSTOM.name)
            preferences.set(key, normalizedAction)
        }
    }

internal fun SettingsViewModel.setReaderHeaderSlot(position: String, slot: String) {
        val normalizedSlot = ReaderInfoSlot.fromStored(slot).name
        val key = when (position.uppercase()) {
            "LEFT" -> PreferencesKeys.READER_HEADER_LEFT_SLOT
            "CENTER" -> PreferencesKeys.READER_HEADER_CENTER_SLOT
            else -> PreferencesKeys.READER_HEADER_RIGHT_SLOT
        }
        viewModelScope.launch { preferences.set(key, normalizedSlot) }
    }

internal fun SettingsViewModel.setReaderFooterSlot(position: String, slot: String) {
        val normalizedSlot = ReaderInfoSlot.fromStored(slot).name
        val key = when (position.uppercase()) {
            "LEFT" -> PreferencesKeys.READER_FOOTER_LEFT_SLOT
            "CENTER" -> PreferencesKeys.READER_FOOTER_CENTER_SLOT
            else -> PreferencesKeys.READER_FOOTER_RIGHT_SLOT
        }
        viewModelScope.launch { preferences.set(key, normalizedSlot) }
    }

internal fun SettingsViewModel.setReaderHeaderFooterFontSize(size: Int) {
        setSlider("readerHeaderFooterFontSize") {
            preferences.set(PreferencesKeys.READER_HEADER_FOOTER_FONT_SIZE, size.coerceIn(10, 20))
        }
    }

internal fun SettingsViewModel.setReaderHeaderFooterVerticalPadding(padding: Int) {
        setSlider("readerHeaderFooterVerticalPadding") {
            preferences.set(PreferencesKeys.READER_HEADER_FOOTER_VERTICAL_PADDING, padding.coerceIn(4, 20))
        }
    }

internal fun SettingsViewModel.setReaderHeaderFooterLeftPadding(padding: Int) {
        setSlider("readerHeaderFooterLeftPadding") {
            preferences.set(PreferencesKeys.READER_HEADER_FOOTER_LEFT_PADDING, padding.coerceIn(8, 32))
        }
    }

internal fun SettingsViewModel.setReaderHeaderFooterRightPadding(padding: Int) {
        setSlider("readerHeaderFooterRightPadding") {
            preferences.set(PreferencesKeys.READER_HEADER_FOOTER_RIGHT_PADDING, padding.coerceIn(8, 32))
        }
    }

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

internal fun SettingsViewModel.setLibraryCardStyle(style: String) = settingsPreferencesController.setLibraryCardStyle(style)

internal fun SettingsViewModel.setLibraryRecentStripPosition(position: String) = settingsPreferencesController.setLibraryRecentStripPosition(position)

internal fun SettingsViewModel.setLibraryShowProgress(enabled: Boolean) = settingsPreferencesController.setLibraryShowProgress(enabled)

internal fun SettingsViewModel.setLibraryShowCoverTitles(enabled: Boolean) = settingsPreferencesController.setLibraryShowCoverTitles(enabled)

internal fun SettingsViewModel.setLibraryShowStatusChips(enabled: Boolean) = settingsPreferencesController.setLibraryShowStatusChips(enabled)

internal fun SettingsViewModel.setLibraryCoverScale(scale: String) = settingsPreferencesController.setLibraryCoverScale(scale)

internal fun SettingsViewModel.setLibraryBackdropStrength(value: Float) {
        setSlider("libraryBackdrop") {
            preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, value.coerceIn(0f, 1f))
        }
    }

internal fun SettingsViewModel.setLibraryBackgroundBlur(value: Float) {
        setSlider("libraryBackgroundBlur") {
            preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, value.coerceIn(0f, 1f))
        }
    }

internal fun SettingsViewModel.setLibraryBackgroundStyle(style: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, normalizeLibraryBackgroundStyle(style))
        }
    }

    // Phase Y (2026-08-04): preset functions → SettingsViewModelPresets.kt.
internal fun SettingsViewModel.setLibraryBackgroundVeil(value: Float) {
        setSlider("libraryVeil") {
            preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, value.coerceIn(0f, 1f))
        }
    }

internal fun SettingsViewModel.setLibraryBackgroundImageUri(uri: String?) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_IMAGE_URI, uri.orEmpty())
            if (uri.isNullOrBlank()) {
                val currentStyle = preferences
                    .get(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, DEFAULT_LIBRARY_BACKGROUND_STYLE)
                    .first()
                if (currentStyle == "IMAGE") {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, DEFAULT_LIBRARY_BACKGROUND_STYLE)
                }
            } else {
                preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "IMAGE")
            }
        }
    }

internal fun SettingsViewModel.setLibraryShelfStyle(style: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, normalizeLibraryShelfStyle(style))
        }
    }

internal fun SettingsViewModel.setLibraryShelfDepth(value: Float) {
        setSlider("libraryShelfDepth") {
            preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, value.coerceIn(0f, 1f))
        }
    }

internal fun SettingsViewModel.setLibraryCardShadow(value: Float) {
        setSlider("libraryCardShadow") {
            preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, value.coerceIn(0f, 1f))
        }
    }

internal fun SettingsViewModel.setLibraryTitleScale(value: Float) {
        setSlider("libraryTitleScale") {
            preferences.set(PreferencesKeys.LIBRARY_TITLE_SCALE, value.coerceIn(0.85f, 1.3f))
        }
    }

internal fun SettingsViewModel.setLibraryTitleLines(value: Int) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_TITLE_LINES, value.coerceIn(1, 3))
        }
    }

internal fun SettingsViewModel.setLibraryCardStroke(value: Float) {
        setSlider("libraryCardStroke") {
            preferences.set(PreferencesKeys.LIBRARY_CARD_STROKE, value.coerceIn(0f, 1f))
        }
    }

internal fun SettingsViewModel.setLibraryCardCornerRadius(value: Int) {
        setSlider("libraryCardCornerRadius") {
            preferences.set(PreferencesKeys.LIBRARY_CARD_CORNER_RADIUS, value.coerceIn(6, 24))
        }
    }

internal fun SettingsViewModel.setLibraryTitlePanelOpacity(value: Float) {
        setSlider("libraryTitlePanelOpacity") {
            preferences.set(PreferencesKeys.LIBRARY_TITLE_PANEL_OPACITY, value.coerceIn(0.18f, 0.78f))
        }
    }

internal fun SettingsViewModel.setLibraryThumbnailMode(mode: String) = settingsPreferencesController.setLibraryThumbnailMode(mode)

internal fun SettingsViewModel.setLibraryGraphicCoverStyle(style: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE,
                normalizeLibraryGraphicCoverStyle(style)
            )
        }
    }

internal fun SettingsViewModel.setLibrarySortOrder(order: String) = settingsPreferencesController.setLibrarySortOrder(order)

internal fun SettingsViewModel.setLibraryGroupBy(mode: String) = settingsPreferencesController.setLibraryGroupBy(mode)
