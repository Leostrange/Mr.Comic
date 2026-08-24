package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.domain.util.LibraryViewModeKey
import io.leostrange.mrcomic.core.domain.util.normalizeLibraryViewModeKey
import io.leostrange.mrcomic.core.domain.util.normalizeTapZoneActionName
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderInfoSlot
import io.leostrange.mrcomic.core.model.ReaderTapZoneAction
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.model.ReaderTtsConfig
import io.leostrange.mrcomic.core.model.TranslationServiceConfig
import io.leostrange.mrcomic.core.ui.eink.isEInkDevice
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_BLUR
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_STYLE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_VEIL
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKDROP_STRENGTH
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_CARD_CORNER_RADIUS
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_CARD_SHADOW
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_CARD_STROKE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_CARD_STYLE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_COVER_SCALE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_SHELF_DEPTH
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_SHELF_STYLE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_THUMBNAIL_MODE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_TITLE_LINES
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_TITLE_PANEL_OPACITY
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_TITLE_SCALE
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryBackgroundStyle
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryGraphicCoverStyle
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryShelfStyle
import io.leostrange.mrcomic.core.ui.locale.normalizeAppLanguageCode
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.map

// Phase W-Z (2026-08-07): Extras flow blocks + combined UI state.
// Base states → SettingsViewModelBaseStates.kt
// Translation config/network → SettingsViewModelTranslationFlows.kt
// Reader TTS/presets/perf → SettingsViewModelReaderFlows.kt

    // Extras 1: библиотека + базовые настройки ридера
internal fun SettingsUiStateFlowBuilder.createExtrasFlow1a() = combine(
        preferences.get(PreferencesKeys.LIBRARY_GRID_COLUMNS, 3).map { it.coerceIn(2, 4) },
        preferences.get(PreferencesKeys.LIBRARY_VIEW_MODE, ""),
        preferences.get(PreferencesKeys.LIBRARY_VIEW_GRID, true)
    ) { columns, viewMode, viewGrid ->
        listOf<Any>(
            columns,
            normalizeLibraryViewModeKey(viewMode, if (viewGrid) LibraryViewModeKey.GRID else LibraryViewModeKey.LIST).name
        )
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow1() = combine(
        createExtrasFlow1a(),
        preferences.get(PreferencesKeys.READER_PRELOAD_PAGES, 3).map { it.coerceIn(2, 8) },
        preferences.get(PreferencesKeys.READER_IMMERSIVE_MODE, false),
        preferences.get(PreferencesKeys.READER_PAGE_ANIMATION, "SLIDE")
    ) { libraryLayout, preload, immersive, animation ->
        listOf<Any>(
            libraryLayout[0] as Int,
            libraryLayout[1] as String,
            preload,
            immersive,
            animation
        )
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow1b() = combine(
        preferences.get(PreferencesKeys.READER_CHROME_AUTO_HIDE, true),
        preferences.get(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, 0.86f).map { it.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f) },
        preferences.get(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, 0.9f).map { it.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f) },
        preferences.get(PreferencesKeys.READER_TOOLBAR_BLUR, SETTINGS_READER_DEFAULT_TOOLBAR_BLUR).map { it.coerceIn(0f, 1f) }
    ) { autoHide, topOpacity, bottomOpacity, toolbarBlur ->
        listOf<Any>(autoHide, topOpacity, bottomOpacity, toolbarBlur)
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow2a() = combine(
        preferences.get(PreferencesKeys.APP_LANGUAGE, "ru").map(::normalizeAppLanguageCode),
        preferences.get(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            .map { ReadingPreset.fromStored(it).name },
        preferences.get(PreferencesKeys.UI_FONT_SCALE, 1.0f),
        preferences.get(PreferencesKeys.UI_DENSITY_SCALE, 1.0f).map { it.coerceIn(0.82f, 1.18f) },
        preferences.get(PreferencesKeys.UI_CORNER_RADIUS, 12).map { it.coerceIn(0, 32) }
    ) { lang, readerPreset, fontScale, uiDensityScale, cornerRadius ->
        listOf<Any>(lang, readerPreset, fontScale, uiDensityScale, cornerRadius)
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow2b() = combine(
        preferences.get(PreferencesKeys.UI_REDUCED_MOTION, false),
        preferences.get(PreferencesKeys.UI_REDUCED_VISUAL_EFFECTS, false)
    ) { reducedMotion, reducedEffects ->
        listOf<Any>(reducedMotion, reducedEffects)
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow2() = combine(createExtrasFlow2a(), createExtrasFlow2b()) { left, right -> left + right }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow12() = combine(createExtrasFlow1(), createExtrasFlow1b(), createExtrasFlow2()) { e1, e1b, e2 -> e1 + e1b + e2 }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow3a2() = combine(
        preferences.get(PreferencesKeys.OCR_DIALOGUES_ONLY, false),
        preferences.get(PreferencesKeys.OCR_INCLUDE_SFX, true)
    ) { ocrDialoguesOnly, ocrIncludeSfx ->
        listOf<Any>(
            ocrDialoguesOnly,
            ocrIncludeSfx
        )
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow3a3() = combine(
        preferences.get(PreferencesKeys.OCR_OVERLAY_OPACITY, 0.85f).map { it.coerceIn(0.45f, 1.0f) },
        preferences.get(PreferencesKeys.OCR_OVERLAY_FONT_SCALE, 1.0f).map { it.coerceIn(0.85f, 1.3f) },
        preferences.get(PreferencesKeys.OCR_OVERLAY_STYLE, "AUTO")
    ) { overlayOpacity, overlayFontScale, overlayStyle ->
        listOf<Any>(overlayOpacity, overlayFontScale, overlayStyle)
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow3b() = combine(
        preferences.get(PreferencesKeys.OCR_LANGUAGE, "JA"),
        preferences.get(PreferencesKeys.AUTO_BACKUP_ENABLED, false),
        preferences.get(PreferencesKeys.READER_PAGE_SOUND, false),
        preferences.get(PreferencesKeys.LIBRARY_TILE_SIZE_DP, 150)
    ) { ocrLanguage, autoBackup, pageSound, tileSize ->
        listOf<Any>(ocrLanguage, autoBackup, pageSound, tileSize)
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow3() = combine(createTranslationConfigFlow(), createExtrasFlow3a2(), createExtrasFlow3a3(), createExtrasFlow3b()) { translationConfig, middle, overlay, right ->
        listOf<Any>(translationConfig) + middle + overlay + right
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow4() = combine(
        preferences.get(PreferencesKeys.READER_PAGE_SOUND_STYLE, "PAPER"),
        preferences.get(PreferencesKeys.UI_SOUND_ENABLED, false),
        preferences.get(PreferencesKeys.UI_SOUNDS_VOLUME, 0.6f).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_CARD_STYLE, DEFAULT_LIBRARY_CARD_STYLE),
        preferences.get(PreferencesKeys.LIBRARY_RECENT_STRIP_POSITION, "TOP")
    ) { soundStyle, uiSoundEnabled, uiSoundsVolume, libraryCardStyle, libraryRecentStripPosition ->
        listOf<Any>(soundStyle, uiSoundEnabled, uiSoundsVolume, libraryCardStyle, libraryRecentStripPosition)
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow5() = combine(
        preferences.get(PreferencesKeys.LIBRARY_SHOW_PROGRESS, true),
        preferences.get(PreferencesKeys.LIBRARY_COVER_SCALE, DEFAULT_LIBRARY_COVER_SCALE),
        preferences.get(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, DEFAULT_LIBRARY_BACKDROP_STRENGTH).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_SORT_ORDER, "DATE_ADDED_DESC"),
        preferences.get(PreferencesKeys.LIBRARY_GROUP_BY, "FOLDER")
    ) { libraryShowProgress, libraryCoverScale, libraryBackdropStrength, librarySortOrder, libraryGroupBy ->
        listOf<Any>(
            libraryShowProgress,
            libraryCoverScale,
            libraryBackdropStrength,
            librarySortOrder,
            libraryGroupBy
        )
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow6a() = combine(
        preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, DEFAULT_LIBRARY_BACKGROUND_STYLE),
        preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_IMAGE_URI, ""),
        preferences.get(PreferencesKeys.LIBRARY_SHELF_STYLE, DEFAULT_LIBRARY_SHELF_STYLE),
        preferences.get(PreferencesKeys.LIBRARY_THUMBNAIL_MODE, DEFAULT_LIBRARY_THUMBNAIL_MODE),
        preferences.get(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE)
    ) { backgroundStyle, backgroundImageUri, shelfStyle, thumbnailMode, graphicCoverStyle ->
        listOf<Any>(backgroundStyle, backgroundImageUri, shelfStyle, thumbnailMode, graphicCoverStyle)
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow6b() = combine(
        preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, DEFAULT_LIBRARY_BACKGROUND_BLUR).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, DEFAULT_LIBRARY_BACKGROUND_VEIL).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_SHELF_DEPTH, DEFAULT_LIBRARY_SHELF_DEPTH).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_CARD_SHADOW, DEFAULT_LIBRARY_CARD_SHADOW).map { it.coerceIn(0f, 1f) }
    ) { backgroundBlur, backgroundVeil, shelfDepth, cardShadow ->
        listOf<Any>(backgroundBlur, backgroundVeil, shelfDepth, cardShadow)
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow6e() = combine(
        preferences.get(PreferencesKeys.LIBRARY_TITLE_SCALE, DEFAULT_LIBRARY_TITLE_SCALE).map { it.coerceIn(0.85f, 1.3f) },
        preferences.get(PreferencesKeys.LIBRARY_TITLE_LINES, DEFAULT_LIBRARY_TITLE_LINES).map { it.coerceIn(1, 3) },
        preferences.get(PreferencesKeys.LIBRARY_CARD_STROKE, DEFAULT_LIBRARY_CARD_STROKE).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_CARD_CORNER_RADIUS, DEFAULT_LIBRARY_CARD_CORNER_RADIUS).map { it.coerceIn(6, 24) },
        preferences.get(PreferencesKeys.LIBRARY_TITLE_PANEL_OPACITY, DEFAULT_LIBRARY_TITLE_PANEL_OPACITY).map { it.coerceIn(0.18f, 0.78f) }
    ) { titleScale, titleLines, cardStroke, cardCornerRadius, titlePanelOpacity ->
        listOf<Any>(titleScale, titleLines, cardStroke, cardCornerRadius, titlePanelOpacity)
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow6c() = combine(
        preferences.get(PreferencesKeys.LIBRARY_THEME_PRESET_1, ""),
        preferences.get(PreferencesKeys.LIBRARY_THEME_PRESET_2, ""),
        preferences.get(PreferencesKeys.LIBRARY_THEME_PRESET_3, "")
    ) { preset1, preset2, preset3 ->
        listOf<Any>(
            LibraryThemePresetSlot(index = 1, serialized = preset1.ifBlank { null }),
            LibraryThemePresetSlot(index = 2, serialized = preset2.ifBlank { null }),
            LibraryThemePresetSlot(index = 3, serialized = preset3.ifBlank { null })
        )
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow345() = combine(createExtrasFlow3(), createExtrasFlow4(), createExtrasFlow5()) { e3, e4, e5 -> e3 + e4 + e5 }
internal fun SettingsUiStateFlowBuilder.createExtrasFlow6() = combine(createExtrasFlow6a(), createExtrasFlow6b(), createExtrasFlow6c(), createExtrasFlow6e()) { left, middle, right, style ->
        left + middle + right + style
    }
internal fun SettingsUiStateFlowBuilder.createExtrasFlow3456() = combine(createExtrasFlow345(), createExtrasFlow6()) { left, right ->
        left + right
    }
internal fun SettingsUiStateFlowBuilder.createExtrasFlow7a() = combine(
        preferences.get(PreferencesKeys.READER_EYE_REST_ENABLED, false),
        preferences.get(PreferencesKeys.READER_EYE_REST_MINUTES, 20).map { it.coerceIn(10, 60) },
        preferences.get(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, true),
        preferences.get(PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED, true)
    ) { eyeRestEnabled, eyeRestMinutes, mascotRecapEnabled, questPromptsEnabled ->
        listOf<Any>(
            eyeRestEnabled,
            eyeRestMinutes,
            mascotRecapEnabled,
            questPromptsEnabled
        )
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow7b1a() = combine(
        preferences.get(PreferencesKeys.TEXT_FONT_SIZE, 18).map { it.coerceIn(12, 32) },
        preferences.get(PreferencesKeys.TEXT_COLOR_SCHEME, "DAY"),
        preferences.get(PreferencesKeys.TEXT_FONT_FAMILY, "Georgia")
    ) { textFontSize, textColorScheme, textFontFamily ->
        listOf<Any>(
            textFontSize,
            textColorScheme,
            textFontFamily
        )
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow7b1b() = combine(
        preferences.get(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, Long.MIN_VALUE),
        preferences.get(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, Long.MIN_VALUE),
        preferences.get(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, Long.MIN_VALUE)
    ) { textCustomTextColor: Long, textCustomBackgroundColor: Long, textCustomAccentColor: Long ->
        listOf<Any?>(
            textCustomTextColor.takeUnless { it == Long.MIN_VALUE },
            textCustomBackgroundColor.takeUnless { it == Long.MIN_VALUE },
            textCustomAccentColor.takeUnless { it == Long.MIN_VALUE }
        )
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow7b1() = combine(createExtrasFlow7b1a(), createExtrasFlow7b1b()) { left: List<Any>, right: List<Any?> ->
        left + right
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow7b2a() = combine(
        preferences.get(PreferencesKeys.TEXT_LINE_HEIGHT, 1.8f).map { it.coerceIn(1.0f, 3.0f) },
        preferences.get(PreferencesKeys.TEXT_LETTER_SPACING, 0f).map { it.coerceIn(0f, 0.2f) },
        preferences.get(PreferencesKeys.TEXT_WORD_SPACING, 0f).map { it.coerceIn(0f, 0.6f) }
    ) { textLineHeight, textLetterSpacing, textWordSpacing ->
        listOf<Any>(
            textLineHeight,
            textLetterSpacing,
            textWordSpacing
        )
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow7b2b() = combine(
        preferences.get(PreferencesKeys.TEXT_PARAGRAPH_SPACING, 0.2f).map { it.coerceIn(0.1f, 1.2f) },
        preferences.get(PreferencesKeys.TEXT_ALIGNMENT, "justify"),
        preferences.get(PreferencesKeys.TEXT_BOLD, false)
    ) { textParagraphSpacing, textAlignment, textBold ->
        listOf<Any>(
            textParagraphSpacing,
            textAlignment,
            textBold
        )
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow7b2() = combine(createExtrasFlow7b2a(), createExtrasFlow7b2b()) { left, right -> left + right }
internal fun SettingsUiStateFlowBuilder.createExtrasFlow7b() = combine(createExtrasFlow7b1(), createExtrasFlow7b2()) { left: List<Any?>, right: List<Any> -> left + right }
internal fun SettingsUiStateFlowBuilder.createExtrasFlow7c1a() = combine(
        preferences.get(PreferencesKeys.READER_TAP_ZONE_MODE, ReaderTapZoneMode.SIMPLE.name)
            .map { ReaderTapZoneMode.fromStored(it).name },
        preferences.get(PreferencesKeys.READER_TAP_ZONE_SWAP, false),
        preferences.get(PreferencesKeys.READER_VOLUME_KEYS_PAGING, false)
    ) { mode, swap, volumeKeysPaging ->
        listOf<Any>(mode, swap, volumeKeysPaging)
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow7c1b() = combine(
        preferences.get(PreferencesKeys.READER_TAP_ZONE_LEFT, ReaderTapZoneAction.PREVIOUS_PAGE.name)
            .map { normalizeTapZoneActionName(it) },
        preferences.get(PreferencesKeys.READER_TAP_ZONE_CENTER, ReaderTapZoneAction.MENU.name)
            .map { normalizeTapZoneActionName(it) },
        preferences.get(PreferencesKeys.READER_TAP_ZONE_RIGHT, ReaderTapZoneAction.NEXT_PAGE.name)
            .map { normalizeTapZoneActionName(it) }
    ) { leftAction, centerAction, rightAction ->
        listOf<Any>(leftAction, centerAction, rightAction)
    }
internal fun SettingsUiStateFlowBuilder.createExtrasFlow7c1() = combine(createExtrasFlow7c1a(), createExtrasFlow7c1b()) { left, right -> left + right }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow7c2a() = combine(
        preferences.get(PreferencesKeys.READER_HEADER_LEFT_SLOT, ReaderInfoSlot.BOOK_TITLE.name)
            .map { ReaderInfoSlot.fromStored(it).name },
        preferences.get(PreferencesKeys.READER_HEADER_CENTER_SLOT, ReaderInfoSlot.NONE.name)
            .map { ReaderInfoSlot.fromStored(it).name },
        preferences.get(PreferencesKeys.READER_HEADER_RIGHT_SLOT, ReaderInfoSlot.TIME.name)
            .map { ReaderInfoSlot.fromStored(it).name },
    ) { headerLeft, headerCenter, headerRight ->
        listOf<Any>(headerLeft, headerCenter, headerRight)
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow7c2b() = combine(
        preferences.get(PreferencesKeys.READER_FOOTER_LEFT_SLOT, ReaderInfoSlot.CHAPTER_TITLE.name)
            .map { ReaderInfoSlot.fromStored(it).name },
        preferences.get(PreferencesKeys.READER_FOOTER_CENTER_SLOT, ReaderInfoSlot.PAGE.name)
            .map { ReaderInfoSlot.fromStored(it).name },
        preferences.get(PreferencesKeys.READER_FOOTER_RIGHT_SLOT, ReaderInfoSlot.PROGRESS.name)
            .map { ReaderInfoSlot.fromStored(it).name }
    ) { footerLeft, footerCenter, footerRight ->
        listOf<Any>(footerLeft, footerCenter, footerRight)
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow7c3() = combine(
        preferences.get(PreferencesKeys.READER_HEADER_FOOTER_FONT_SIZE, 12).map { it.coerceIn(10, 20) },
        preferences.get(PreferencesKeys.READER_HEADER_FOOTER_VERTICAL_PADDING, 6).map { it.coerceIn(4, 20) },
        preferences.get(PreferencesKeys.READER_HEADER_FOOTER_LEFT_PADDING, 16).map { it.coerceIn(8, 32) },
        preferences.get(PreferencesKeys.READER_HEADER_FOOTER_RIGHT_PADDING, 16).map { it.coerceIn(8, 32) }
    ) { fontSize, verticalPadding, leftPadding, rightPadding ->
        listOf<Any>(fontSize, verticalPadding, leftPadding, rightPadding)
    }

internal fun SettingsUiStateFlowBuilder.createExtrasFlow7c2() = combine(createExtrasFlow7c2a(), createExtrasFlow7c2b()) { left, right -> left + right }
internal fun SettingsUiStateFlowBuilder.createExtrasFlow7c() = combine(createExtrasFlow7c1(), createExtrasFlow7c2(), createExtrasFlow7c3()) { left, middle, right ->
        left + middle + right
    }
internal fun SettingsUiStateFlowBuilder.createExtrasFlow7() = combine(createExtrasFlow7a(), createExtrasFlow7b(), createExtrasFlow7c()) { left: List<Any>, middle: List<Any?>, right: List<Any> ->
        left + middle + right
    }

internal fun SettingsUiStateFlowBuilder.createCombinedSettingsUiState(): Flow<SettingsUiState> = combine(
        createBaseUiState(),
        createExtrasFlow12(),
        createExtrasFlow3456(),
        createExtrasFlow7(),
        statusState,
    ) { state: SettingsUiState, e12: List<Any>, e345: List<Any>, e7: List<Any?>, status: StatusState ->
        state.copy(
            libraryGridColumns   = e12[0] as Int,
            libraryViewMode      = e12[1] as String,
            libraryViewGrid      = (e12[1] as String) == "GRID",
            readerPreloadPages   = e12[2] as Int,
            readerImmersiveMode  = e12[3] as Boolean,
            readerPageAnimation  = e12[4] as String,
            readerChromeAutoHide = e12[5] as Boolean,
            readerTopToolbarOpacity = e12[6] as Float,
            readerBottomToolbarOpacity = e12[7] as Float,
            readerToolbarBlur    = e12[8] as Float,
            appLanguage          = e12[9] as String,
            readerPreset         = e12[10] as String,
            uiFontScale          = e12[11] as Float,
            uiDensityScale       = e12[12] as Float,
            uiCornerRadius       = e12[13] as Int,
            performanceReducedMotion = e12[14] as Boolean,
            performanceReducedVisualEffects = e12[15] as Boolean,
            translationConfig    = e345[0] as TranslationServiceConfig,
            ocrDialoguesOnly     = e345[1] as Boolean,
            ocrIncludeSfx        = e345[2] as Boolean,
            ocrOverlayOpacity    = e345[3] as Float,
            ocrOverlayFontScale  = e345[4] as Float,
            ocrOverlayStyle      = e345[5] as String,
            ocrLanguage          = e345[6] as String,
            autoBackupEnabled    = e345[7] as Boolean,
            isClearingCache      = status.isClearingCache,
            isExporting          = status.isExporting,
            isImporting          = status.isImporting,
            isRepairingLibraryAccess = status.isRepairingLibraryAccess,
            pendingLibraryRepairLaunchToken = status.pendingLibraryRepairLaunchToken,
            cacheMessage         = status.message,
            readerPageSound      = e345[8] as Boolean,
            libraryTileSize      = e345[9] as Int,
            readerPageSoundStyle = e345[10] as String,
            uiSoundEnabled       = e345[11] as Boolean,
            uiSoundsVolume       = e345[12] as Float,
            libraryCardStyle     = e345[13] as String,
            libraryRecentStripPosition = e345[14] as String,
            libraryShowProgress  = e345[15] as Boolean,
            libraryCoverScale    = e345[16] as String,
            libraryBackdropStrength = e345[17] as Float,
            librarySortOrder     = e345[18] as String,
            libraryGroupBy       = e345[19] as String,
            libraryBackgroundStyle = normalizeLibraryBackgroundStyle(e345[20] as String),
            libraryBackgroundImageUri = (e345[21] as String).ifBlank { null },
            libraryShelfStyle    = normalizeLibraryShelfStyle(e345[22] as String),
            libraryThumbnailMode = e345[23] as String,
            libraryGraphicCoverStyle = normalizeLibraryGraphicCoverStyle(e345[24] as String),
            libraryBackgroundBlur = e345[25] as Float,
            libraryBackgroundVeil = e345[26] as Float,
            libraryShelfDepth = e345[27] as Float,
            libraryCardShadow = e345[28] as Float,
            libraryTitleScale = e345[32] as Float,
            libraryTitleLines = e345[33] as Int,
            libraryCardStroke = e345[34] as Float,
            libraryCardCornerRadius = e345[35] as Int,
            libraryTitlePanelOpacity = e345[36] as Float,
            libraryThemePresetSlots = listOf(
                e345[29] as LibraryThemePresetSlot,
                e345[30] as LibraryThemePresetSlot,
                e345[31] as LibraryThemePresetSlot
            ),
            readerEyeRestEnabled = e7[0] as Boolean,
            readerEyeRestMinutes = e7[1] as Int,
            mascotRecapEnabled = e7[2] as Boolean,
            questPromptsEnabled = e7[3] as Boolean,
            textFontSize = e7[4] as Int,
            textColorScheme = e7[5] as String,
            textFontFamily = e7[6] as String,
            textCustomTextColor = e7[7] as Long?,
            textCustomBackgroundColor = e7[8] as Long?,
            textCustomAccentColor = e7[9] as Long?,
            textLineHeight = e7[10] as Float,
            textLetterSpacing = e7[11] as Float,
            textWordSpacing = e7[12] as Float,
            textParagraphSpacing = e7[13] as Float,
            textAlignment = e7[14] as String,
            textBold = e7[15] as Boolean,
            readerTapZoneMode = e7[16] as String,
            readerTapZoneSwap = e7[17] as Boolean,
            readerVolumeKeysPaging = e7[18] as Boolean,
            readerTapZoneLeftAction = e7[19] as String,
            readerTapZoneCenterAction = e7[20] as String,
            readerTapZoneRightAction = e7[21] as String,
            readerHeaderLeftSlot = e7[22] as String,
            readerHeaderCenterSlot = e7[23] as String,
            readerHeaderRightSlot = e7[24] as String,
            readerFooterLeftSlot = e7[25] as String,
            readerFooterCenterSlot = e7[26] as String,
            readerFooterRightSlot = e7[27] as String,
            readerHeaderFooterFontSize = e7[28] as Int,
            readerHeaderFooterVerticalPadding = e7[29] as Int,
            readerHeaderFooterLeftPadding = e7[30] as Int,
            readerHeaderFooterRightPadding = e7[31] as Int
        )
    }.combine(createReaderTtsFlow()) { state: SettingsUiState, tts: ReaderTtsConfig ->
        state.copy(
            readerTtsConfig = tts
        )
    }.combine(
        preferences.get(PreferencesKeys.TRANSLATION_OPENROUTER_API_KEY, "")
    ) { state: SettingsUiState, storedOpenRouterApiKey: String ->
        state.copy(openRouterApiKey = SettingsSecretStore.decryptOrLegacy(storedOpenRouterApiKey))
    }.combine(
        preferences.get(PreferencesKeys.TRANSLATION_OPENROUTER_MODEL, "openrouter/auto")
    ) { state: SettingsUiState, openRouterModel: String ->
        state.copy(openRouterModel = openRouterModel.ifBlank { "openrouter/auto" })
    }.combine(
        preferences.get(PreferencesKeys.TRANSLATION_DEEPL_API_KEY, "")
    ) { state: SettingsUiState, storedDeepLKey: String ->
        state.copy(deeplApiKey = SettingsSecretStore.decryptOrLegacy(storedDeepLKey))
    }.combine(
        preferences.get(PreferencesKeys.TRANSLATION_DEEPL_USE_FREE, true)
    ) { state: SettingsUiState, deeplUseFree: Boolean ->
        state.copy(deeplUseFreeApi = deeplUseFree)
    }.combine(
        preferences.get(PreferencesKeys.TRANSLATION_GOOGLE_API_KEY, "")
    ) { state: SettingsUiState, storedGoogleKey: String ->
        state.copy(googleApiKey = SettingsSecretStore.decryptOrLegacy(storedGoogleKey))
    }.combine(
        preferences.get(PreferencesKeys.TRANSLATION_YANDEX_API_KEY, "")
    ) { state: SettingsUiState, storedYandexKey: String ->
        state.copy(yandexApiKey = SettingsSecretStore.decryptOrLegacy(storedYandexKey))
    }.combine(
        preferences.get(PreferencesKeys.TRANSLATION_YANDEX_FOLDER_ID, "")
    ) { state: SettingsUiState, yandexFolderId: String ->
        state.copy(yandexFolderId = yandexFolderId)
    }.combine(
        preferences.get(PreferencesKeys.TRANSLATION_WIFI_ONLY, false)
    ) { state: SettingsUiState, wifiOnly: Boolean ->
        state.copy(translationWifiOnly = wifiOnly)
    }.combine(
        preferences.get(PreferencesKeys.TRANSLATION_DAILY_CHAR_LIMIT, 100_000)
    ) { state: SettingsUiState, dailyLimit: Int ->
        state.copy(translationDailyCharLimit = dailyLimit)
    }.combine(preferences.get(PreferencesKeys.LIBRARY_SHOW_COVER_TITLES, true)) { state: SettingsUiState, showCoverTitles: Boolean ->
        state.copy(libraryShowCoverTitles = showCoverTitles)
    }.combine(preferences.get(PreferencesKeys.LIBRARY_SHOW_STATUS_CHIPS, true)) { state: SettingsUiState, showStatusChips: Boolean ->
        state.copy(libraryShowStatusChips = showStatusChips)
    }.combine(
        preferences.get(PreferencesKeys.APP_VIDEO_SPLASH_ENABLED, !context.isEInkDevice())
    ) { state: SettingsUiState, appVideoSplashEnabled: Boolean ->
        state.copy(appVideoSplashEnabled = appVideoSplashEnabled)
    }.combine(createPerfFlow()) { state: SettingsUiState, applyPerf: (SettingsUiState) -> SettingsUiState ->
        applyPerf(state)
    }.combine(
        preferences.get(
            PreferencesKeys.READER_IMAGE_SCALE_MODE,
            ReaderImageScaleMode.defaultFor(null).storedValue
        ).map { ReaderImageScaleMode.fromStored(it).storedValue }
    ) { state: SettingsUiState, imageScaleMode: String ->
        state.copy(readerImageScaleMode = imageScaleMode)
    }.combine(
        preferences.get(
            PreferencesKeys.READER_PAGE_MARGIN_CROP_HORIZONTAL,
            0f
        ).map { it.coerceIn(0f, 0.22f) }
    ) { state: SettingsUiState, horizontalCrop: Float ->
        state.copy(readerImageMarginCropHorizontal = horizontalCrop)
    }.combine(
        preferences.get(
            PreferencesKeys.READER_PAGE_MARGIN_CROP_VERTICAL,
            0f
        ).map { it.coerceIn(0f, 0.22f) }
    ) { state: SettingsUiState, verticalCrop: Float ->
        state.copy(readerImageMarginCropVertical = verticalCrop)
    }.combine(
        preferences.get(PreferencesKeys.APP_NAV_TRANSITION_STYLE, "FADE")
    ) { state: SettingsUiState, appNavTransitionStyle: String ->
        state.copy(appNavTransitionStyle = appNavTransitionStyle)
    }.combine(createReaderStylePresetEntriesFlow()) { state: SettingsUiState, readerStylePresetEntries: List<ReaderStylePresetEntry> ->
        state.copy(
            readerStylePresetEntries = readerStylePresetEntries,
            readerStylePresetSlots = (1..3).map { index ->
                ReaderStylePresetSlot(
                    index = index,
                    serialized = readerStylePresetEntries.getOrNull(index - 1)?.snapshot?.serialize()
                )
            }
        )
    }.combine(
        preferences.get(
            PreferencesKeys.SETTINGS_IMPORT_ERROR_PRESENTATION,
            SettingsImportErrorPresentation.TEXT
        )
    ) { state: SettingsUiState, presentation: String ->
        state.copy(
            settingsImportErrorPresentation = normalizeSettingsImportErrorPresentation(presentation)
        )
    }.combine(
        preferences.get(
            PreferencesKeys.IMAGE_MESSAGE_POPUP_POSITION,
            SettingsImageMessagePopupPosition.CENTER
        )
    ) { state: SettingsUiState, position: String ->
        state.copy(
            imageMessagePopupPosition = normalizeSettingsImageMessagePopupPosition(position)
        )
    }.combine(
        preferences.get(PreferencesKeys.IMAGE_MESSAGE_POPUP_FREE_MOVE, false)
    ) { state: SettingsUiState, freeMove: Boolean ->
        state.copy(imageMessagePopupFreeMove = freeMove)
    }.combine(
        preferences.get(PreferencesKeys.IMAGE_MESSAGE_POPUP_SIZE_SCALE, 1f)
            .map(::clampSettingsImageMessagePopupScale)
    ) { state: SettingsUiState, scale: Float ->
        state.copy(imageMessagePopupSizeScale = scale)
    }.combine(
        preferences.get(PreferencesKeys.IMAGE_MESSAGE_POPUP_DURATION_SECONDS, 0)
            .map(::clampSettingsImageMessagePopupDurationSeconds)
    ) { state: SettingsUiState, durationSeconds: Int ->
        state.copy(imageMessagePopupDurationSeconds = durationSeconds)
    }.combine(
        createTranslationAvailabilityFlow()
    ) { state: SettingsUiState, availabilityState: SettingsTranslationAvailabilityState ->
        state.copy(
            translationAvailability = availabilityState.snapshot,
            translationAvailabilityPairKnown = availabilityState.pairKnown
        )
    }


