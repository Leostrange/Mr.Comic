package com.example.feature.settings.ui

import java.util.Locale

internal object SettingsImportErrorPresentation {
    const val TEXT = "TEXT"
    const val IMAGE = "IMAGE"
}

internal fun normalizeSettingsImportErrorPresentation(value: String?): String =
    when (value?.uppercase(Locale.ROOT)) {
        SettingsImportErrorPresentation.IMAGE -> SettingsImportErrorPresentation.IMAGE
        else -> SettingsImportErrorPresentation.TEXT
    }
