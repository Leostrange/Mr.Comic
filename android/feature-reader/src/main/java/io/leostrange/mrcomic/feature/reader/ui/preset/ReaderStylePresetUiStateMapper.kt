package io.leostrange.mrcomic.feature.reader.ui.preset

import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderChromeState
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSnapshot
import io.leostrange.mrcomic.feature.reader.ui.ReaderUiState
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset

internal fun ReaderUiState.toReaderStylePresetSnapshot(
    displayName: String? = null
): ReaderStylePresetSnapshot = ReaderStylePresetSnapshot(
    displayName = displayName?.trim()?.takeIf { it.isNotEmpty() },
    readerPreset = ReadingPreset.fromStored(readerPreset).name,
    textFontSize = textFontSize,
    textColorScheme = textColorScheme,
    textFontFamily = textFontFamily,
    textLineHeight = textLineHeight,
    textLetterSpacing = textLetterSpacing,
    textWordSpacing = textWordSpacing,
    textParagraphSpacing = textParagraphSpacing,
    textAlignment = textAlignment,
    textBold = textBold,
    textCustomTextColor = textCustomTextColor,
    textCustomBackgroundColor = textCustomBackgroundColor,
    textCustomAccentColor = textCustomAccentColor,
    brightness = brightness,
    immersiveMode = immersiveMode,
    pageAnimation = readerPageAnimation
)

internal fun ReaderUiState.applyReaderStylePreset(
    snapshot: ReaderStylePresetSnapshot
): ReaderUiState = copy(
    readerPreset = snapshot.readerPreset,
    textFontSize = snapshot.textFontSize,
    textColorScheme = snapshot.textColorScheme,
    textCustomTextColor = snapshot.textCustomTextColor,
    textCustomBackgroundColor = snapshot.textCustomBackgroundColor,
    textCustomAccentColor = snapshot.textCustomAccentColor,
    textFontFamily = snapshot.textFontFamily,
    textLineHeight = snapshot.textLineHeight,
    textLetterSpacing = snapshot.textLetterSpacing,
    textWordSpacing = snapshot.textWordSpacing,
    textParagraphSpacing = snapshot.textParagraphSpacing,
    textAlignment = snapshot.textAlignment,
    textBold = snapshot.textBold,
    brightness = snapshot.brightness,
    immersiveMode = snapshot.immersiveMode,
    readerPageAnimation = snapshot.pageAnimation,
    chromeState = ReaderChromeState.EXPANDED
)
