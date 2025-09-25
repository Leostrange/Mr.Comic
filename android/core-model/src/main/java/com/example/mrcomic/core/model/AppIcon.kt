package com.example.mrcomic.core.model

/**
 * Represents different app icon options
 */
enum class AppIcon(
    val displayName: String,
    val activityAlias: String,
    val iconRes: String
) {
    DEFAULT("Default", "com.example.mrcomic.MainActivity", "ic_launcher"),
    ALTERNATIVE_1("Alternative 1", "com.example.mrcomic.MainActivityAlt1", "ic_launcher_alt1"),
    ALTERNATIVE_2("Alternative 2", "com.example.mrcomic.MainActivityAlt2", "ic_launcher_alt2"),
    ALTERNATIVE_3("Alternative 3", "com.example.mrcomic.MainActivityAlt3", "ic_launcher_alt3");

    companion object {
        fun fromActivityAlias(alias: String): AppIcon {
            return values().find { it.activityAlias == alias } ?: DEFAULT
        }
    }
}