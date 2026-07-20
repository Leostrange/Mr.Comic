package io.leostrange.mrcomic.feature.settings.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class SettingsImportErrorPresentationTest {

    @Test
    fun normalizeDefaultsToTextForUnknownValues() {
        assertEquals(
            SettingsImportErrorPresentation.TEXT,
            normalizeSettingsImportErrorPresentation("weird")
        )
    }

    @Test
    fun normalizeKeepsImageModeCaseInsensitive() {
        assertEquals(
            SettingsImportErrorPresentation.IMAGE,
            normalizeSettingsImportErrorPresentation("image")
        )
    }
}
