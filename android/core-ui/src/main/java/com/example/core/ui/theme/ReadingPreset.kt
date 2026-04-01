package com.example.core.ui.theme

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
    val backgroundColor: Long?
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
        backgroundColor = null
    )
    ReadingPreset.PAPER -> ReadingPresetStyle(
        textColorScheme = "DAY",
        fontFamily = "Literata",
        lineHeight = 1.76f,
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
        primaryColor = 0xFF26415FL,
        secondaryColor = 0xFF9A7241L,
        backgroundColor = 0xFFF6F1E7L
    )
    ReadingPreset.SEPIA_BOOK -> ReadingPresetStyle(
        textColorScheme = "SEPIA",
        fontFamily = "Merriweather",
        lineHeight = 1.84f,
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
        primaryColor = 0xFF7B5C34L,
        secondaryColor = 0xFFB1844DL,
        backgroundColor = 0xFFF4ECD8L
    )
    ReadingPreset.NEWSPAPER -> ReadingPresetStyle(
        textColorScheme = "DAY",
        fontFamily = "Roboto Slab",
        lineHeight = 1.58f,
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
        primaryColor = 0xFF2F3F4FL,
        secondaryColor = 0xFF6A7684L,
        backgroundColor = 0xFFF1EEE7L
    )
    ReadingPreset.NIGHT_INK -> ReadingPresetStyle(
        textColorScheme = "NIGHT",
        fontFamily = "PT Serif",
        lineHeight = 1.7f,
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
        primaryColor = 0xFFAEC8EFL,
        secondaryColor = 0xFFD4B384L,
        backgroundColor = 0xFF10161DL
    )
    ReadingPreset.OLED_BLACK -> ReadingPresetStyle(
        textColorScheme = "NIGHT",
        fontFamily = "Open Sans",
        lineHeight = 1.68f,
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
        primaryColor = 0xFFB8D3FFL,
        secondaryColor = 0xFF7E8A99L,
        backgroundColor = 0xFF000000L
    )
    ReadingPreset.EINK -> ReadingPresetStyle(
        textColorScheme = "DAY",
        fontFamily = "Merriweather",
        lineHeight = 1.9f,
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
        primaryColor = 0xFF111111L,
        secondaryColor = 0xFF555555L,
        backgroundColor = 0xFFFFFFFFL
    )
}
