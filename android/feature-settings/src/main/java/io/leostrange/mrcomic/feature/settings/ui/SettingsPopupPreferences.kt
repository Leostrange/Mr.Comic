package io.leostrange.mrcomic.feature.settings.ui

import java.util.Locale

internal object SettingsImageMessagePopupPosition {
    const val CENTER = "CENTER"
    const val TOP = "TOP"
    const val BOTTOM = "BOTTOM"
    const val TOP_START = "TOP_START"
    const val TOP_END = "TOP_END"
    const val BOTTOM_START = "BOTTOM_START"
    const val BOTTOM_END = "BOTTOM_END"
}

internal const val SETTINGS_IMAGE_MESSAGE_POPUP_MIN_SCALE = 0.55f
internal const val SETTINGS_IMAGE_MESSAGE_POPUP_MAX_SCALE = 1.35f
internal const val SETTINGS_IMAGE_MESSAGE_POPUP_MAX_DURATION_SECONDS = 30

internal fun normalizeSettingsImageMessagePopupPosition(value: String?): String =
    when (value?.trim()?.uppercase(Locale.ROOT)) {
        SettingsImageMessagePopupPosition.TOP -> SettingsImageMessagePopupPosition.TOP
        SettingsImageMessagePopupPosition.BOTTOM -> SettingsImageMessagePopupPosition.BOTTOM
        SettingsImageMessagePopupPosition.TOP_START -> SettingsImageMessagePopupPosition.TOP_START
        SettingsImageMessagePopupPosition.TOP_END -> SettingsImageMessagePopupPosition.TOP_END
        SettingsImageMessagePopupPosition.BOTTOM_START -> SettingsImageMessagePopupPosition.BOTTOM_START
        SettingsImageMessagePopupPosition.BOTTOM_END -> SettingsImageMessagePopupPosition.BOTTOM_END
        else -> SettingsImageMessagePopupPosition.CENTER
    }

internal fun clampSettingsImageMessagePopupScale(value: Float): Float =
    value.coerceIn(SETTINGS_IMAGE_MESSAGE_POPUP_MIN_SCALE, SETTINGS_IMAGE_MESSAGE_POPUP_MAX_SCALE)

internal fun clampSettingsImageMessagePopupDurationSeconds(value: Int): Int =
    value.coerceIn(0, SETTINGS_IMAGE_MESSAGE_POPUP_MAX_DURATION_SECONDS)
