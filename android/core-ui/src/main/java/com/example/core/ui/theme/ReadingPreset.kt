package com.example.core.ui.theme

import com.example.core.ui.designsystem.MrComicReadingPresetTokens

enum class ReadingPreset {
    CUSTOM,
    PAPER,
    SEPIA_BOOK,
    NEWSPAPER,
    NIGHT_INK,
    OLED_BLACK,
    EINK;

    companion object {
        fun fromStored(value: String): ReadingPreset = when (value.trim().uppercase()) {
            "PAPER", "NOVEL", "MANGA" -> PAPER
            "SEPIA_BOOK", "SEPIA", "WARM" -> SEPIA_BOOK
            "NEWSPAPER", "NEWSPAPER_MODE", "GAZETA" -> NEWSPAPER
            "NIGHT_INK", "NIGHT" -> NIGHT_INK
            "OLED_BLACK", "OLED", "AMOLED" -> OLED_BLACK
            "EINK", "STUDY" -> EINK
            else -> CUSTOM
        }
    }
}

fun readingPresetQuickChoices(): List<ReadingPreset> = listOf(
    ReadingPreset.PAPER,
    ReadingPreset.SEPIA_BOOK,
    ReadingPreset.NEWSPAPER,
    ReadingPreset.NIGHT_INK,
    ReadingPreset.OLED_BLACK,
    ReadingPreset.EINK
)

data class ReadingPresetStyle(
    val textColorScheme: String,
    val fontFamily: String,
    val lineHeight: Float,
    val letterSpacing: Float,
    val wordSpacing: Float,
    val paragraphSpacing: Float,
    val textAlignment: String,
    val textBold: Boolean,
    val brightness: Float,
    val immersiveMode: Boolean,
    val pageAnimation: String,
    val themeMode: ThemeMode,
    val useAmoledDark: Boolean,
    val primaryColor: Long?,
    val secondaryColor: Long?,
    val backgroundColor: Long?,
    val contentTopPaddingDp: Float = 16f,
    val contentBottomPaddingDp: Float = 44f,
    val contentHorizontalPaddingDp: Float = 16f,
    val maxWidthDp: Float = 720f
)

fun ReadingPreset.style(): ReadingPresetStyle = when (this) {
    ReadingPreset.CUSTOM -> ReadingPresetStyle(
        textColorScheme = "DAY",
        fontFamily = "Georgia",
        lineHeight = 1.8f,
        letterSpacing = 0f,
        wordSpacing = 0f,
        paragraphSpacing = 0.2f,
        textAlignment = "justify",
        textBold = false,
        brightness = 0.5f,
        immersiveMode = false,
        pageAnimation = "SLIDE",
        themeMode = ThemeMode.SYSTEM,
        useAmoledDark = false,
        primaryColor = null,
        secondaryColor = null,
        backgroundColor = null,
        contentTopPaddingDp = 16f,
        contentBottomPaddingDp = 44f,
        contentHorizontalPaddingDp = 16f,
        maxWidthDp = 720f
    )
    ReadingPreset.PAPER -> ReadingPresetStyle(
        textColorScheme = MrComicReadingPresetTokens.paper.textColorScheme,
        fontFamily = MrComicReadingPresetTokens.paper.fontFamily,
        lineHeight = MrComicReadingPresetTokens.paper.lineHeight,
        letterSpacing = 0.01f,
        wordSpacing = 0.02f,
        paragraphSpacing = 0.32f,
        textAlignment = "justify",
        textBold = false,
        brightness = 0.70f,
        immersiveMode = false,
        pageAnimation = "SLIDE",
        themeMode = ThemeMode.LIGHT,
        useAmoledDark = false,
        primaryColor = MrComicReadingPresetTokens.paper.primaryArgb,
        secondaryColor = MrComicReadingPresetTokens.paper.secondaryArgb,
        backgroundColor = MrComicReadingPresetTokens.paper.backgroundArgb,
        contentTopPaddingDp = 20f,
        contentBottomPaddingDp = 48f,
        contentHorizontalPaddingDp = 24f,
        maxWidthDp = 680f
    )
    ReadingPreset.SEPIA_BOOK -> ReadingPresetStyle(
        textColorScheme = MrComicReadingPresetTokens.sepiaBook.textColorScheme,
        fontFamily = MrComicReadingPresetTokens.sepiaBook.fontFamily,
        lineHeight = MrComicReadingPresetTokens.sepiaBook.lineHeight,
        letterSpacing = 0.01f,
        wordSpacing = 0.03f,
        paragraphSpacing = 0.42f,
        textAlignment = "justify",
        textBold = false,
        brightness = 0.64f,
        immersiveMode = false,
        pageAnimation = "SLIDE",
        themeMode = ThemeMode.LIGHT,
        useAmoledDark = false,
        primaryColor = MrComicReadingPresetTokens.sepiaBook.primaryArgb,
        secondaryColor = MrComicReadingPresetTokens.sepiaBook.secondaryArgb,
        backgroundColor = MrComicReadingPresetTokens.sepiaBook.backgroundArgb,
        contentTopPaddingDp = 24f,
        contentBottomPaddingDp = 52f,
        contentHorizontalPaddingDp = 28f,
        maxWidthDp = 640f
    )
    ReadingPreset.NEWSPAPER -> ReadingPresetStyle(
        textColorScheme = MrComicReadingPresetTokens.newspaper.textColorScheme,
        fontFamily = MrComicReadingPresetTokens.newspaper.fontFamily,
        lineHeight = MrComicReadingPresetTokens.newspaper.lineHeight,
        letterSpacing = 0.02f,
        wordSpacing = 0.06f,
        paragraphSpacing = 0.18f,
        textAlignment = "left",
        textBold = false,
        brightness = 0.76f,
        immersiveMode = false,
        pageAnimation = "SLIDE",
        themeMode = ThemeMode.LIGHT,
        useAmoledDark = false,
        primaryColor = MrComicReadingPresetTokens.newspaper.primaryArgb,
        secondaryColor = MrComicReadingPresetTokens.newspaper.secondaryArgb,
        backgroundColor = MrComicReadingPresetTokens.newspaper.backgroundArgb,
        contentTopPaddingDp = 12f,
        contentBottomPaddingDp = 36f,
        contentHorizontalPaddingDp = 12f,
        maxWidthDp = 760f
    )
    ReadingPreset.NIGHT_INK -> ReadingPresetStyle(
        textColorScheme = MrComicReadingPresetTokens.nightInk.textColorScheme,
        fontFamily = MrComicReadingPresetTokens.nightInk.fontFamily,
        lineHeight = MrComicReadingPresetTokens.nightInk.lineHeight,
        letterSpacing = 0.01f,
        wordSpacing = 0.03f,
        paragraphSpacing = 0.3f,
        textAlignment = "justify",
        textBold = false,
        brightness = 0.18f,
        immersiveMode = true,
        pageAnimation = "FADE",
        themeMode = ThemeMode.DARK,
        useAmoledDark = false,
        primaryColor = MrComicReadingPresetTokens.nightInk.primaryArgb,
        secondaryColor = MrComicReadingPresetTokens.nightInk.secondaryArgb,
        backgroundColor = MrComicReadingPresetTokens.nightInk.backgroundArgb,
        contentTopPaddingDp = 18f,
        contentBottomPaddingDp = 42f,
        contentHorizontalPaddingDp = 20f,
        maxWidthDp = 700f
    )
    ReadingPreset.OLED_BLACK -> ReadingPresetStyle(
        textColorScheme = MrComicReadingPresetTokens.oledBlack.textColorScheme,
        fontFamily = MrComicReadingPresetTokens.oledBlack.fontFamily,
        lineHeight = MrComicReadingPresetTokens.oledBlack.lineHeight,
        letterSpacing = 0.01f,
        wordSpacing = 0.04f,
        paragraphSpacing = 0.28f,
        textAlignment = "justify",
        textBold = false,
        brightness = 0.10f,
        immersiveMode = true,
        pageAnimation = "FADE",
        themeMode = ThemeMode.DARK,
        useAmoledDark = true,
        primaryColor = MrComicReadingPresetTokens.oledBlack.primaryArgb,
        secondaryColor = MrComicReadingPresetTokens.oledBlack.secondaryArgb,
        backgroundColor = MrComicReadingPresetTokens.oledBlack.backgroundArgb,
        contentTopPaddingDp = 14f,
        contentBottomPaddingDp = 38f,
        contentHorizontalPaddingDp = 16f,
        maxWidthDp = 720f
    )
    ReadingPreset.EINK -> ReadingPresetStyle(
        textColorScheme = MrComicReadingPresetTokens.eink.textColorScheme,
        fontFamily = MrComicReadingPresetTokens.eink.fontFamily,
        lineHeight = MrComicReadingPresetTokens.eink.lineHeight,
        letterSpacing = 0f,
        wordSpacing = 0.04f,
        paragraphSpacing = 0.34f,
        textAlignment = "justify",
        textBold = false,
        brightness = 0.82f,
        immersiveMode = false,
        pageAnimation = "NONE",
        themeMode = ThemeMode.LIGHT,
        useAmoledDark = false,
        primaryColor = MrComicReadingPresetTokens.eink.primaryArgb,
        secondaryColor = MrComicReadingPresetTokens.eink.secondaryArgb,
        backgroundColor = MrComicReadingPresetTokens.eink.backgroundArgb,
        contentTopPaddingDp = 22f,
        contentBottomPaddingDp = 50f,
        contentHorizontalPaddingDp = 26f,
        maxWidthDp = 660f
    )
}
