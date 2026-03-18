package com.example.core.ui.theme

enum class ReadingPreset {
    CUSTOM,
    PAPER,
    NIGHT_INK,
    EINK;

    companion object {
        fun fromStored(value: String): ReadingPreset = when (value) {
            "PAPER", "NOVEL", "MANGA" -> PAPER
            "NIGHT_INK", "NIGHT" -> NIGHT_INK
            "EINK", "STUDY" -> EINK
            else -> CUSTOM
        }
    }
}

data class ReadingPresetStyle(
    val textColorScheme: String,
    val fontFamily: String,
    val lineHeight: Float,
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
        lineHeight = 1.75f,
        brightness = 0.70f,
        immersiveMode = false,
        pageAnimation = "SLIDE",
        themeMode = ThemeMode.LIGHT,
        useAmoledDark = false,
        primaryColor = 0xFF26415FL,
        secondaryColor = 0xFF9A7241L,
        backgroundColor = 0xFFF6F1E7L
    )
    ReadingPreset.NIGHT_INK -> ReadingPresetStyle(
        textColorScheme = "NIGHT",
        fontFamily = "PT Serif",
        lineHeight = 1.7f,
        brightness = 0.18f,
        immersiveMode = true,
        pageAnimation = "FADE",
        themeMode = ThemeMode.DARK,
        useAmoledDark = false,
        primaryColor = 0xFFAEC8EFL,
        secondaryColor = 0xFFD4B384L,
        backgroundColor = 0xFF10161DL
    )
    ReadingPreset.EINK -> ReadingPresetStyle(
        textColorScheme = "DAY",
        fontFamily = "Merriweather",
        lineHeight = 1.9f,
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
