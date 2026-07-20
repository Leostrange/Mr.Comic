package io.leostrange.mrcomic.feature.settings.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class SettingsImportValidationTest {

    @Test
    fun jsonMimeTypeIsAccepted() {
        val metadata = SettingsImportMetadata(
            mimeType = "application/json",
            displayName = "backup.bin",
            sizeBytes = 1024
        )

        assertTrue(metadata.isAcceptedJsonImport())
    }

    @Test
    fun jsonExtensionIsAcceptedWhenMimeTypeIsGeneric() {
        val metadata = SettingsImportMetadata(
            mimeType = "application/octet-stream",
            displayName = "progress-export.json",
            sizeBytes = 1024
        )

        assertTrue(metadata.isAcceptedJsonImport())
    }

    @Test
    fun nonJsonFileIsRejected() {
        val metadata = SettingsImportMetadata(
            mimeType = "image/jpeg",
            displayName = "cover.jpg",
            sizeBytes = 2048
        )

        assertFalse(metadata.isAcceptedJsonImport())
    }

    @Test
    fun oversizedJsonFileIsRejected() {
        val metadata = SettingsImportMetadata(
            mimeType = "application/json",
            displayName = "progress-export.json",
            sizeBytes = 20L * 1024L * 1024L
        )

        assertFalse(metadata.isAcceptedJsonImport())
    }

    @Test
    fun jsonContentMustBeObject() {
        assertTrue("""{"entries":[]}""".isAcceptedSettingsJsonContent())
        assertFalse("not-json".isAcceptedSettingsJsonContent())
        assertFalse("""["array", "is", "not", "backup"]""".isAcceptedSettingsJsonContent())
    }
}
