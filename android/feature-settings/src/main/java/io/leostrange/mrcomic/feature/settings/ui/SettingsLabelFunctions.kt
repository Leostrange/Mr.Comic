package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import org.json.JSONObject
import java.util.Locale

/**
 * Settings label and export functions.
 *
 * Extracted from SettingsScreen to reduce its size.
 * Pure functions that map settings values to display strings.
 */

internal fun themeLabel(strings: AppStrings, mode: ThemeMode): String = when (mode) {
    ThemeMode.SYSTEM  -> strings.themeSystem
    ThemeMode.LIGHT   -> strings.themeLight
    ThemeMode.DARK    -> strings.themeDark
    ThemeMode.DYNAMIC -> strings.themeDynamic
}

internal fun fontScaleLabel(strings: AppStrings, scale: Float): String = when {
    scale <= 0.85f -> strings.fontScaleSmall
    scale <= 1.0f  -> strings.fontScaleNormal
    scale <= 1.15f -> strings.fontScaleLarge
    else           -> strings.fontScaleXL
}

internal fun readerTextFontSizeLabel(fontSize: Int, language: String): String = when (language) {
    "en" -> "Font size: $fontSize"
    "ja" -> "文字サイズ: $fontSize"
    "zh" -> "字号：$fontSize"
    "ko" -> "글자 크기: $fontSize"
    else -> "Размер шрифта: $fontSize"
}

internal fun readerTextLineHeightLabel(percent: Int, language: String): String = when (language) {
    "en" -> "Line height: $percent%"
    "ja" -> "行間: $percent%"
    "zh" -> "行距：$percent%"
    "ko" -> "줄 간격: $percent%"
    else -> "Межстрочный интервал: $percent%"
}

internal fun readerTextSchemeLabel(language: String, scheme: String): String = when (scheme.uppercase()) {
    "SEPIA" -> when (language) {
        "en" -> "Sepia"
        "ja" -> "セピア"
        "zh" -> "棕褐"
        "ko" -> "세피아"
        else -> "Сепия"
    }
    "NIGHT" -> when (language) {
        "en" -> "Night"
        "ja" -> "夜"
        "zh" -> "夜间"
        "ko" -> "밤"
        else -> "Ночь"
    }
    else -> when (language) {
        "en" -> "Day"
        "ja" -> "昼"
        "zh" -> "日间"
        "ko" -> "낮"
        else -> "День"
    }
}

internal fun readingPresetQuickLabel(strings: AppStrings, preset: ReadingPreset): String = when (preset) {
    ReadingPreset.PAPER -> strings.themePresetPaper
    ReadingPreset.SEPIA_BOOK -> strings.themePresetSepia
    ReadingPreset.NEWSPAPER -> when (strings.languageCode) {
        "en" -> "Newspaper"
        "ja" -> "新聞"
        "zh" -> "报刊"
        "ko" -> "신문"
        else -> "Газета"
    }
    ReadingPreset.NIGHT_INK -> when (strings.languageCode) {
        "en" -> "Night Ink"
        "ja" -> "ナイトインク"
        "zh" -> "夜墨"
        "ko" -> "나이트 잉크"
        else -> "Ночная тушь"
    }
    ReadingPreset.OLED_BLACK -> when (strings.languageCode) {
        "en" -> "OLED Black"
        "ja" -> "OLED ブラック"
        "zh" -> "OLED 纯黑"
        "ko" -> "OLED 블랙"
        else -> "OLED Black"
    }
    ReadingPreset.EINK -> when (strings.languageCode) {
        "en" -> "E-Ink"
        "ja" -> "E-Ink"
        "zh" -> "电子墨水"
        "ko" -> "E-Ink"
        else -> "E-Ink"
    }
    else -> strings.readerPresetCustom
}

internal fun appearanceDensityLabel(language: String): String = when (language) {
    "en" -> "Interface density"
    "ja" -> "インターフェース密度"
    "zh" -> "界面密度"
    "ko" -> "인터페이스 밀도"
    else -> "Плотность интерфейса"
}

internal fun surfaceOpacityLabel(language: String): String = when (language) {
    "en" -> "Surface opacity"
    "ja" -> "サーフェス透明度"
    "zh" -> "表层透明度"
    "ko" -> "표면 투명도"
    else -> "Прозрачность поверхностей"
}

internal fun perfProfileLabel(profile: String, language: String): String = when (profile.uppercase()) {
    "QUALITY" -> when (language) {
        "en" -> "Quality"
        else -> "Качество"
    }
    "BALANCED" -> when (language) {
        "en" -> "Balanced"
        else -> "Баланс"
    }
    "ECONOMY" -> when (language) {
        "en" -> "Economy"
        else -> "Экономия"
    }
    else -> when (language) {
        "en" -> "Auto"
        else -> "Авто"
    }
}

internal fun libraryCardStyleLabel(style: String, language: String): String = when (style) {
    "COMPACT" -> when (language) {
        "en" -> "Compact"
        "ja" -> "コンパクト"
        "zh" -> "紧凑"
        "ko" -> "컴팩트"
        else -> "Компактно"
    }
    "BALANCED" -> when (language) {
        "en" -> "Balanced"
        "ja" -> "バランス"
        "zh" -> "均衡"
        "ko" -> "밸런스"
        else -> "Баланс"
    }
    "SHOWCASE" -> when (language) {
        "en" -> "Showcase"
        "ja" -> "ショーケース"
        "zh" -> "展陈"
        "ko" -> "쇼케이스"
        else -> "Витрина"
    }
    else -> style
}

internal fun libraryCoverScaleLabel(style: String, language: String): String = when (style) {
    "CROP" -> when (language) {
        "en" -> "Fill"
        "ja" -> "塗りつぶし"
        "zh" -> "铺满"
        "ko" -> "채우기"
        else -> "Заполнение"
    }
    "FIT" -> when (language) {
        "en" -> "Fit"
        "ja" -> "収める"
        "zh" -> "适应"
        "ko" -> "맞춤"
        else -> "Вписать"
    }
    else -> style
}

internal fun uiDensityLabel(language: String, scale: Float): String = when {
    scale < 0.96f -> when (language) {
        "en" -> "Compact"
        "ja" -> "コンパクト"
        "zh" -> "紧凑"
        "ko" -> "컴팩트"
        else -> "Компактно"
    }
    scale > 1.04f -> when (language) {
        "en" -> "Relaxed"
        "ja" -> "ゆったり"
        "zh" -> "宽松"
        "ko" -> "여유"
        else -> "Свободно"
    }
    else -> when (language) {
        "en" -> "Balanced"
        "ja" -> "バランス"
        "zh" -> "均衡"
        "ko" -> "균형"
        else -> "Баланс"
    }
}

internal fun buildReaderTypographyExportJson(uiState: SettingsUiState): String = JSONObject().apply {
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
    put("immersiveMode", uiState.readerImmersiveMode)
    put("pageAnimation", uiState.readerPageAnimation)
}.toString(2)

internal fun readerTypographyExportFileName(uiState: SettingsUiState): String {
    val base = uiState.readerPreset
        .ifBlank { "custom" }
        .lowercase(Locale.US)
        .replace(Regex("[^a-z0-9_-]+"), "_")
        .trim('_')
        .ifBlank { "style" }
    return "mr_comic_reader_style_${base}_${System.currentTimeMillis()}.json"
}
