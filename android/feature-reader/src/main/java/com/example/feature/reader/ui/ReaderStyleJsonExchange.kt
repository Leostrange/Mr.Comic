package com.example.feature.reader.ui

import org.json.JSONObject
import java.util.Locale

internal fun buildReaderTypographyExportJson(uiState: ReaderUiState): String = JSONObject().apply {
    val styleName = "Reader style ${uiState.readerPreset.lowercase(Locale.US)}"
    put("format", "mrcomic.readerTypography")
    put("version", 1)
    put("exportedAt", System.currentTimeMillis())
    put("name", styleName)
    put("displayName", styleName)
    put("readerPreset", uiState.readerPreset)
    put("textFontSize", uiState.textFontSize)
    put("textColorScheme", uiState.textColorScheme)
    put("textFontFamily", uiState.textFontFamily)
    put("textLineHeight", uiState.textLineHeight.toDouble())
    put("textLetterSpacing", uiState.textLetterSpacing.toDouble())
    put("textWordSpacing", uiState.textWordSpacing.toDouble())
    put("textParagraphSpacing", uiState.textParagraphSpacing.toDouble())
    put("textAlignment", uiState.textAlignment)
    put("textBold", uiState.textBold)
    uiState.textCustomTextColor?.let { put("textCustomTextColor", String.format(Locale.US, "#%08X", it)) }
    uiState.textCustomBackgroundColor?.let { put("textCustomBackgroundColor", String.format(Locale.US, "#%08X", it)) }
    uiState.textCustomAccentColor?.let { put("textCustomAccentColor", String.format(Locale.US, "#%08X", it)) }
    put("brightness", uiState.brightness.toDouble())
    put("immersiveMode", uiState.immersiveMode)
    put("pageAnimation", uiState.readerPageAnimation)
}.toString(2)

internal fun readerTypographyExportFileName(uiState: ReaderUiState): String {
    val base = uiState.readerPreset
        .ifBlank { "custom" }
        .lowercase(Locale.US)
        .replace(Regex("[^a-z0-9_-]+"), "_")
        .trim('_')
        .ifBlank { "style" }
    return "mrcomic_reader_style_${base}.json"
}
