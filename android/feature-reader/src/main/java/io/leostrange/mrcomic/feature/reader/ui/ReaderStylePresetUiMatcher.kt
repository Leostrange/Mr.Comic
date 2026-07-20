package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSnapshot

internal fun ReaderStylePresetSnapshot.matchesUiState(uiState: ReaderUiState): Boolean =
    readerPreset == uiState.readerPreset &&
        textFontSize == uiState.textFontSize &&
        textColorScheme == uiState.textColorScheme &&
        textFontFamily == uiState.textFontFamily &&
        textLineHeight == uiState.textLineHeight &&
        textLetterSpacing == uiState.textLetterSpacing &&
        textWordSpacing == uiState.textWordSpacing &&
        textParagraphSpacing == uiState.textParagraphSpacing &&
        textAlignment == uiState.textAlignment &&
        textBold == uiState.textBold &&
        textCustomTextColor == uiState.textCustomTextColor &&
        textCustomBackgroundColor == uiState.textCustomBackgroundColor &&
        textCustomAccentColor == uiState.textCustomAccentColor &&
        brightness == uiState.brightness &&
        immersiveMode == uiState.immersiveMode &&
        pageAnimation == uiState.readerPageAnimation
