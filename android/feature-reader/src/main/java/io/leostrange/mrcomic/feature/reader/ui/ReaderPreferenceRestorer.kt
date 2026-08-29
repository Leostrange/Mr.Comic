package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import androidx.datastore.core.IOException
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.emptyPreferences
import io.leostrange.mrcomic.core.model.ReaderScreenTimeoutMode
import kotlinx.coroutines.flow.first
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.domain.util.normalizeTapZoneActionName
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderInfoSlot
import io.leostrange.mrcomic.core.model.ReaderTapZoneAction
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.model.ReaderTtsProviderType
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.engine.api.RenderDeviceProfile
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetEntries
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSlot
import io.leostrange.mrcomic.feature.reader.domain.preset.migrateLegacyReaderStyleSlotsToEntries
import io.leostrange.mrcomic.feature.reader.domain.preset.parseReaderStylePresetEntries
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderChromeState
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.update

/**
 * Reads all reader preferences from DataStore and returns them as a snapshot.
 *
 * Extracted from [ReaderViewModel] to reduce its size. Pure preference parsing —
 * no side effects, no UI state mutation.
 */
internal object ReaderPreferenceRestorer {

    /**
     * Snapshot of all restored reader preferences.
     */
    data class RestoredPreferences(
        val mode: ReadingMode,
        val brightness: Float,
        val keepScreenOn: Boolean,
        val screenTimeoutMode: String,
        val landscapeSpreadEnabled: Boolean,
        val animation: String,
        val pageSound: Boolean,
        val soundStyle: String,
        val immersive: Boolean,
        val chromeAutoHideEnabled: Boolean,
        val topToolbarOpacity: Float,
        val bottomToolbarOpacity: Float,
        val toolbarBlur: Float,
        val imageScaleMode: ReaderImageScaleMode,
        val marginCrop: io.leostrange.mrcomic.feature.reader.domain.crop.ReaderMarginCrop,
        val preload: Int,
        val fontSize: Int,
        val colorScheme: String,
        val graphicColorScheme: String,
        val customTextColor: Long?,
        val customBackgroundColor: Long?,
        val customAccentColor: Long?,
        val fontFamily: String,
        val lineHeight: Float,
        val letterSpacing: Float,
        val wordSpacing: Float,
        val paragraphSpacing: Float,
        val alignment: String,
        val bold: Boolean,
        val tapZoneMode: ReaderTapZoneMode,
        val tapZoneSwap: Boolean,
        val volumeKeysPagingEnabled: Boolean,
        val ttsProvider: ReaderTtsProviderType,
        val ttsSpeed: Float,
        val ttsPitch: Float,
        val ttsVolume: Float,
        val ttsVoiceName: String?,
        val ttsSleepTimerMode: ReaderTtsSleepTimerMode,
        val tapZoneLeft: String,
        val tapZoneCenter: String,
        val tapZoneRight: String,
        val headerLeftSlot: ReaderInfoSlot,
        val headerCenterSlot: ReaderInfoSlot,
        val headerRightSlot: ReaderInfoSlot,
        val footerLeftSlot: ReaderInfoSlot,
        val footerCenterSlot: ReaderInfoSlot,
        val footerRightSlot: ReaderInfoSlot,
        val headerFooterFontSize: Int,
        val headerFooterVerticalPadding: Int,
        val headerFooterLeftPadding: Int,
        val headerFooterRightPadding: Int,
        val eyeRestEnabled: Boolean,
        val eyeRestMinutes: Int,
        val mascotUiEnabled: Boolean,
        val chromeIconOrder: String,
        val chromeShowTocIcon: Boolean,
        val chromeShowStyleIcon: Boolean,
        val chromeShowAudioIcon: Boolean,
        val chromeShowDirectionIcon: Boolean,
        val chromeShowTranslateIcon: Boolean,
        val chromeShowBrightnessIcon: Boolean,
        val chromeShowAutoScrollIcon: Boolean,
        val chromeShowCropIcon: Boolean,
        val readerStylePresetEntries: List<io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetEntry>,
        val readerStylePresetSlots: List<ReaderStylePresetSlot>,
        val savedReaderStylePresetEntries: List<io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetEntry>,
        val readerPreset: ReadingPreset,
        val needsPersistStylePresets: Boolean
    )

    suspend fun restore(context: Context, renderProfile: RenderDeviceProfile): RestoredPreferences {
        val preferences = readPreferencesSnapshot(context)
        fun <T> pref(key: Preferences.Key<T>, defaultValue: T): T = preferences[key] ?: defaultValue

        val storedMode = pref(PreferencesKeys.READING_MODE, ReadingMode.PAGE_LTR.name)
        val mode = runCatching { ReadingMode.valueOf(storedMode) }.getOrDefault(ReadingMode.PAGE_LTR)

        val brightness = pref(PreferencesKeys.READING_BRIGHTNESS, -1f).let { stored ->
            if (stored < 0f) -1f else stored.coerceIn(0.05f, 1f)
        }
        val keepScreenOn = pref(PreferencesKeys.READER_KEEP_SCREEN_ON, false)
        val screenTimeoutMode = ReaderScreenTimeoutMode.fromStored(
            pref(PreferencesKeys.READER_SCREEN_TIMEOUT_MODE, ReaderScreenTimeoutMode.SYSTEM.storedValue)
        ).storedValue
        val landscapeSpreadEnabled = pref(PreferencesKeys.READER_LANDSCAPE_SPREAD_ENABLED, true)
        val animation = pref(PreferencesKeys.READER_PAGE_ANIMATION, "SLIDE")
        val pageSound = pref(PreferencesKeys.READER_PAGE_SOUND, false)
        val soundStyle = pref(PreferencesKeys.READER_PAGE_SOUND_STYLE, "PAPER")
        val immersive = pref(PreferencesKeys.READER_IMMERSIVE_MODE, false)
        val chromeAutoHideEnabled = pref(PreferencesKeys.READER_CHROME_AUTO_HIDE, true)
        val topToolbarOpacity = pref(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, 0.86f).coerceIn(0f, 1.0f)
        val bottomToolbarOpacity = pref(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, 0.9f).coerceIn(0f, 1.0f)
        val toolbarBlur = pref(PreferencesKeys.READER_TOOLBAR_BLUR, 0.0f).coerceIn(0f, 1f)
        val imageScaleMode = ReaderImageScaleMode.fromStored(
            pref(PreferencesKeys.READER_IMAGE_SCALE_MODE, ReaderImageScaleMode.FIT_WIDTH.storedValue)
        )
        // Per-side crop values; -1f marks "key absent" so the legacy symmetric
        // H/V preferences can seed them on the first run after the upgrade.
        val storedLeft = pref(PreferencesKeys.READER_PAGE_MARGIN_CROP_LEFT, -1f)
        val storedTop = pref(PreferencesKeys.READER_PAGE_MARGIN_CROP_TOP, -1f)
        val storedRight = pref(PreferencesKeys.READER_PAGE_MARGIN_CROP_RIGHT, -1f)
        val storedBottom = pref(PreferencesKeys.READER_PAGE_MARGIN_CROP_BOTTOM, -1f)
        val legacyHorizontal = pref(PreferencesKeys.READER_PAGE_MARGIN_CROP_HORIZONTAL, 0f)
            .coerceIn(0f, io.leostrange.mrcomic.feature.reader.domain.crop.ReaderMarginCrop.MAX_SIDE_FRACTION)
        val legacyVertical = pref(PreferencesKeys.READER_PAGE_MARGIN_CROP_VERTICAL, 0f)
            .coerceIn(0f, io.leostrange.mrcomic.feature.reader.domain.crop.ReaderMarginCrop.MAX_SIDE_FRACTION)
        val seededCrop = io.leostrange.mrcomic.feature.reader.domain.crop.ReaderMarginCrop()
            .seededFromLegacy(legacyHorizontal, legacyVertical)
        val marginCrop = io.leostrange.mrcomic.feature.reader.domain.crop.ReaderMarginCrop(
            // A legacy user with non-zero H/V crop keeps it enabled after the upgrade.
            enabled = pref(
                PreferencesKeys.READER_PAGE_MARGIN_CROP_ENABLED,
                legacyHorizontal > 0f || legacyVertical > 0f
            ),
            left = if (storedLeft >= 0f) storedLeft else seededCrop.left,
            top = if (storedTop >= 0f) storedTop else seededCrop.top,
            right = if (storedRight >= 0f) storedRight else seededCrop.right,
            bottom = if (storedBottom >= 0f) storedBottom else seededCrop.bottom,
            symmetric = pref(PreferencesKeys.READER_PAGE_MARGIN_CROP_SYMMETRIC, true),
            showWarning = pref(PreferencesKeys.READER_PAGE_MARGIN_CROP_SHOW_WARNING, true)
        ).withSymmetricEnforced()
        val preload = pref(PreferencesKeys.READER_PRELOAD_PAGES, renderProfile.defaultPreloadPages)
            .coerceIn(2, 8)
            .coerceAtMost(renderProfile.maxPreloadPages)

        // Text reader settings
        val fontSize = pref(PreferencesKeys.TEXT_FONT_SIZE, 18).coerceIn(12, 32)
        val colorScheme = pref(PreferencesKeys.TEXT_COLOR_SCHEME, "DAY")
        val graphicColorScheme = pref(PreferencesKeys.GRAPHIC_COLOR_SCHEME, DEFAULT_GRAPHIC_COLOR_SCHEME)
        val customTextColor = pref(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, Long.MIN_VALUE)
            .takeUnless { it == Long.MIN_VALUE }
        val customBackgroundColor = pref(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, Long.MIN_VALUE)
            .takeUnless { it == Long.MIN_VALUE }
        val customAccentColor = pref(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, Long.MIN_VALUE)
            .takeUnless { it == Long.MIN_VALUE }
        val fontFamily = pref(PreferencesKeys.TEXT_FONT_FAMILY, "Sans-Serif")
        val lineHeight = pref(PreferencesKeys.TEXT_LINE_HEIGHT, 1.2f).coerceIn(1.0f, 3.0f)
        val letterSpacing = pref(PreferencesKeys.TEXT_LETTER_SPACING, 0f).coerceIn(0f, 0.2f)
        val wordSpacing = pref(PreferencesKeys.TEXT_WORD_SPACING, 0f).coerceIn(0f, 0.6f)
        val paragraphSpacing = pref(PreferencesKeys.TEXT_PARAGRAPH_SPACING, 0.2f).coerceIn(0.1f, 1.2f)
        val alignment = pref(PreferencesKeys.TEXT_ALIGNMENT, "left")
        val bold = pref(PreferencesKeys.TEXT_BOLD, false)

        val tapZoneMode = ReaderTapZoneMode.fromStored(
            pref(PreferencesKeys.READER_TAP_ZONE_MODE, ReaderTapZoneMode.SIMPLE.name)
        )
        val tapZoneSwap = pref(PreferencesKeys.READER_TAP_ZONE_SWAP, false)
        val volumeKeysPagingEnabled = pref(PreferencesKeys.READER_VOLUME_KEYS_PAGING, false)

        val ttsProvider = ReaderTtsProviderType.fromStored(
            pref(PreferencesKeys.READER_TTS_PROVIDER, ReaderTtsProviderType.SYSTEM.storedValue)
        )
        val ttsSpeed = pref(PreferencesKeys.READER_TTS_SPEED, 1.0f).coerceIn(0.5f, 2.0f)
        val ttsPitch = pref(PreferencesKeys.READER_TTS_PITCH, 1.0f).coerceIn(0.5f, 2.0f)
        val ttsVolume = pref(PreferencesKeys.READER_TTS_VOLUME, 1.0f).coerceIn(0f, 1.0f)
        val ttsVoiceName = pref(PreferencesKeys.READER_TTS_VOICE_NAME, "").ifBlank { null }
        val ttsSleepTimerMode = ReaderTtsSleepTimerMode.fromStored(
            pref(PreferencesKeys.READER_TTS_SLEEP_TIMER_MODE, ReaderTtsSleepTimerMode.OFF.storedValue)
        )

        val tapZoneLeft = normalizeTapZoneActionName(
            pref(PreferencesKeys.READER_TAP_ZONE_LEFT, ReaderTapZoneAction.PREVIOUS_PAGE.name)
        )
        val tapZoneCenter = normalizeTapZoneActionName(
            pref(PreferencesKeys.READER_TAP_ZONE_CENTER, ReaderTapZoneAction.MENU.name)
        )
        val tapZoneRight = normalizeTapZoneActionName(
            pref(PreferencesKeys.READER_TAP_ZONE_RIGHT, ReaderTapZoneAction.NEXT_PAGE.name)
        )

        val headerLeftSlot = ReaderInfoSlot.fromStored(pref(PreferencesKeys.READER_HEADER_LEFT_SLOT, ReaderInfoSlot.BOOK_TITLE.name))
        val headerCenterSlot = ReaderInfoSlot.fromStored(pref(PreferencesKeys.READER_HEADER_CENTER_SLOT, ReaderInfoSlot.NONE.name))
        val headerRightSlot = ReaderInfoSlot.fromStored(pref(PreferencesKeys.READER_HEADER_RIGHT_SLOT, ReaderInfoSlot.TIME.name))
        val footerLeftSlot = ReaderInfoSlot.fromStored(pref(PreferencesKeys.READER_FOOTER_LEFT_SLOT, ReaderInfoSlot.CHAPTER_TITLE.name))
        val footerCenterSlot = ReaderInfoSlot.fromStored(pref(PreferencesKeys.READER_FOOTER_CENTER_SLOT, ReaderInfoSlot.PAGE.name))
        val footerRightSlot = ReaderInfoSlot.fromStored(pref(PreferencesKeys.READER_FOOTER_RIGHT_SLOT, ReaderInfoSlot.PROGRESS.name))
        val headerFooterFontSize = pref(PreferencesKeys.READER_HEADER_FOOTER_FONT_SIZE, 12).coerceIn(10, 20)
        val headerFooterVerticalPadding = pref(PreferencesKeys.READER_HEADER_FOOTER_VERTICAL_PADDING, 6).coerceIn(4, 20)
        val headerFooterLeftPadding = pref(PreferencesKeys.READER_HEADER_FOOTER_LEFT_PADDING, 16).coerceIn(8, 32)
        val headerFooterRightPadding = pref(PreferencesKeys.READER_HEADER_FOOTER_RIGHT_PADDING, 16).coerceIn(8, 32)

        val eyeRestEnabled = pref(PreferencesKeys.READER_EYE_REST_ENABLED, false)
        val eyeRestMinutes = pref(PreferencesKeys.READER_EYE_REST_MINUTES, 20).coerceIn(10, 60)
        val mascotUiEnabled = pref(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, true)

        val chromeIconOrder = ReaderChromeButton.normalizeStoredOrder(
            pref(PreferencesKeys.READER_CHROME_ICON_ORDER, ReaderChromeButton.defaultStoredOrder)
        )
        val chromeShowTocIcon = pref(PreferencesKeys.READER_CHROME_SHOW_TOC, true)
        val chromeShowStyleIcon = pref(PreferencesKeys.READER_CHROME_SHOW_STYLE, true)
        val chromeShowAudioIcon = pref(PreferencesKeys.READER_CHROME_SHOW_AUDIO, true)
        val chromeShowDirectionIcon = pref(PreferencesKeys.READER_CHROME_SHOW_DIRECTION, true)
        val chromeShowTranslateIcon = pref(PreferencesKeys.READER_CHROME_SHOW_TRANSLATE, true)
        val chromeShowBrightnessIcon = pref(PreferencesKeys.READER_CHROME_SHOW_BRIGHTNESS, true)
        val chromeShowAutoScrollIcon = pref(PreferencesKeys.READER_CHROME_SHOW_AUTO_SCROLL, true)
        val chromeShowCropIcon = pref(PreferencesKeys.READER_CHROME_SHOW_CROP, true)

        val legacyReaderStylePresetSlots = listOf(
            ReaderStylePresetSlot(1, pref(PreferencesKeys.READER_STYLE_PRESET_1, "").ifBlank { null }),
            ReaderStylePresetSlot(2, pref(PreferencesKeys.READER_STYLE_PRESET_2, "").ifBlank { null }),
            ReaderStylePresetSlot(3, pref(PreferencesKeys.READER_STYLE_PRESET_3, "").ifBlank { null })
        )
        val savedReaderStylePresetEntries = parseReaderStylePresetEntries(
            pref(PreferencesKeys.READER_STYLE_PRESET_LIST, "")
        )
        val readerStylePresetEntries = savedReaderStylePresetEntries.ifEmpty {
            migrateLegacyReaderStyleSlotsToEntries(legacyReaderStylePresetSlots)
        }
        val readerStylePresetSlots = if (readerStylePresetEntries.isNotEmpty()) {
            ReaderStylePresetEntries.toLegacySlots(readerStylePresetEntries)
        } else {
            legacyReaderStylePresetSlots
        }
        val readerPreset = ReadingPreset.fromStored(
            pref(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
        )

        return RestoredPreferences(
            mode = mode,
            brightness = brightness,
            keepScreenOn = keepScreenOn,
            screenTimeoutMode = screenTimeoutMode,
            landscapeSpreadEnabled = landscapeSpreadEnabled,
            animation = animation,
            pageSound = pageSound,
            soundStyle = soundStyle,
            immersive = immersive,
            chromeAutoHideEnabled = chromeAutoHideEnabled,
            topToolbarOpacity = topToolbarOpacity,
            bottomToolbarOpacity = bottomToolbarOpacity,
            toolbarBlur = toolbarBlur,
            imageScaleMode = imageScaleMode,
            marginCrop = marginCrop,
            preload = preload,
            fontSize = fontSize,
            colorScheme = colorScheme,
            graphicColorScheme = graphicColorScheme,
            customTextColor = customTextColor,
            customBackgroundColor = customBackgroundColor,
            customAccentColor = customAccentColor,
            fontFamily = fontFamily,
            lineHeight = lineHeight,
            letterSpacing = letterSpacing,
            wordSpacing = wordSpacing,
            paragraphSpacing = paragraphSpacing,
            alignment = alignment,
            bold = bold,
            tapZoneMode = tapZoneMode,
            tapZoneSwap = tapZoneSwap,
            volumeKeysPagingEnabled = volumeKeysPagingEnabled,
            ttsProvider = ttsProvider,
            ttsSpeed = ttsSpeed,
            ttsPitch = ttsPitch,
            ttsVolume = ttsVolume,
            ttsVoiceName = ttsVoiceName,
            ttsSleepTimerMode = ttsSleepTimerMode,
            tapZoneLeft = tapZoneLeft,
            tapZoneCenter = tapZoneCenter,
            tapZoneRight = tapZoneRight,
            headerLeftSlot = headerLeftSlot,
            headerCenterSlot = headerCenterSlot,
            headerRightSlot = headerRightSlot,
            footerLeftSlot = footerLeftSlot,
            footerCenterSlot = footerCenterSlot,
            footerRightSlot = footerRightSlot,
            headerFooterFontSize = headerFooterFontSize,
            headerFooterVerticalPadding = headerFooterVerticalPadding,
            headerFooterLeftPadding = headerFooterLeftPadding,
            headerFooterRightPadding = headerFooterRightPadding,
            eyeRestEnabled = eyeRestEnabled,
            eyeRestMinutes = eyeRestMinutes,
            mascotUiEnabled = mascotUiEnabled,
            chromeIconOrder = chromeIconOrder,
            chromeShowTocIcon = chromeShowTocIcon,
            chromeShowStyleIcon = chromeShowStyleIcon,
            chromeShowAudioIcon = chromeShowAudioIcon,
            chromeShowDirectionIcon = chromeShowDirectionIcon,
            chromeShowTranslateIcon = chromeShowTranslateIcon,
            chromeShowBrightnessIcon = chromeShowBrightnessIcon,
            chromeShowAutoScrollIcon = chromeShowAutoScrollIcon,
            chromeShowCropIcon = chromeShowCropIcon,
            readerStylePresetEntries = readerStylePresetEntries,
            readerStylePresetSlots = readerStylePresetSlots,
            savedReaderStylePresetEntries = savedReaderStylePresetEntries,
            readerPreset = readerPreset,
            needsPersistStylePresets = savedReaderStylePresetEntries.isEmpty() && readerStylePresetEntries.isNotEmpty()
        )
    }

    /**
     * Applies restored preferences to the reader UI state.
     *
     * @param p The restored preferences snapshot.
     * @param uiState The mutable UI state to update.
     * @param isLandscape Whether the device is in landscape orientation.
     * @param supportsAutomaticLandscapeSpread Whether the current mode supports auto landscape spread.
     * @param disableAnimations Whether animations are disabled by the device profile.
     */
    fun applyTo(
        p: RestoredPreferences,
        uiState: MutableStateFlow<ReaderUiState>,
        isLandscape: Boolean,
        supportsAutomaticLandscapeSpread: Boolean,
        disableAnimations: Boolean
    ) {
        val effectiveMode = if (
            isLandscape && supportsAutomaticLandscapeSpread
        ) ReadingMode.DUAL_PAGE else p.mode
        uiState.update { state ->
            state.copy(
                readingMode = effectiveMode,
                chromeState = ReaderChromeState.HIDDEN,
                brightness = p.brightness,
                keepScreenOn = p.keepScreenOn,
                screenTimeoutMode = p.screenTimeoutMode,
                landscapeSpreadEnabled = p.landscapeSpreadEnabled,
                readerPageAnimation = if (disableAnimations) "NONE" else p.animation,
                pageSoundEnabled = p.pageSound,
                pageSoundStyle = p.soundStyle,
                immersiveMode = p.immersive,
                chromeAutoHideEnabled = p.chromeAutoHideEnabled,
                topToolbarOpacity = p.topToolbarOpacity,
                bottomToolbarOpacity = p.bottomToolbarOpacity,
                toolbarBlur = p.toolbarBlur,
                imageScaleMode = p.imageScaleMode.storedValue,
                marginCropEnabled = p.marginCrop.enabled,
                marginCropLeft = p.marginCrop.left,
                marginCropTop = p.marginCrop.top,
                marginCropRight = p.marginCrop.right,
                marginCropBottom = p.marginCrop.bottom,
                marginCropSymmetric = p.marginCrop.symmetric,
                marginCropShowWarning = p.marginCrop.showWarning,
                preloadPages = p.preload,
                textFontSize = p.fontSize,
                textColorScheme = p.colorScheme,
                graphicColorScheme = p.graphicColorScheme,
                textCustomTextColor = p.customTextColor,
                textCustomBackgroundColor = p.customBackgroundColor,
                textCustomAccentColor = p.customAccentColor,
                textFontFamily = p.fontFamily,
                textLineHeight = p.lineHeight,
                textLetterSpacing = p.letterSpacing,
                textWordSpacing = p.wordSpacing,
                textParagraphSpacing = p.paragraphSpacing,
                textAlignment = p.alignment,
                textBold = p.bold,
                readerStylePresetEntries = p.readerStylePresetEntries,
                readerStylePresetSlots = p.readerStylePresetSlots,
                tapZoneMode = p.tapZoneMode.name,
                tapZoneSwap = p.tapZoneSwap,
                volumeKeysPagingEnabled = p.volumeKeysPagingEnabled,
                ttsProvider = p.ttsProvider.storedValue,
                ttsSpeed = p.ttsSpeed,
                ttsPitch = p.ttsPitch,
                ttsVolume = p.ttsVolume,
                ttsVoiceName = p.ttsVoiceName,
                ttsSleepTimerMode = p.ttsSleepTimerMode.storedValue,
                tapZoneLeftAction = p.tapZoneLeft,
                tapZoneCenterAction = p.tapZoneCenter,
                tapZoneRightAction = p.tapZoneRight,
                headerLeftSlot = p.headerLeftSlot.name,
                headerCenterSlot = p.headerCenterSlot.name,
                headerRightSlot = p.headerRightSlot.name,
                footerLeftSlot = p.footerLeftSlot.name,
                footerCenterSlot = p.footerCenterSlot.name,
                footerRightSlot = p.footerRightSlot.name,
                headerFooterFontSize = p.headerFooterFontSize,
                headerFooterVerticalPadding = p.headerFooterVerticalPadding,
                headerFooterLeftPadding = p.headerFooterLeftPadding,
                headerFooterRightPadding = p.headerFooterRightPadding,
                readerPreset = p.readerPreset.name,
                eyeRestEnabled = p.eyeRestEnabled,
                eyeRestMinutes = p.eyeRestMinutes,
                mascotUiEnabled = p.mascotUiEnabled,
                chromeIconOrder = p.chromeIconOrder,
                chromeShowTocIcon = p.chromeShowTocIcon,
                chromeShowStyleIcon = p.chromeShowStyleIcon,
                chromeShowAudioIcon = p.chromeShowAudioIcon,
                chromeShowDirectionIcon = p.chromeShowDirectionIcon,
                chromeShowTranslateIcon = p.chromeShowTranslateIcon,
                chromeShowBrightnessIcon = p.chromeShowBrightnessIcon,
                chromeShowAutoScrollIcon = p.chromeShowAutoScrollIcon,
                chromeShowCropIcon = p.chromeShowCropIcon
            )
        }
    }

    private suspend fun readPreferencesSnapshot(context: Context): Preferences =
        context.dataStore.data
            .catch { exception ->
                if (exception is IOException) emit(emptyPreferences()) else throw exception
            }
            .first()
}
