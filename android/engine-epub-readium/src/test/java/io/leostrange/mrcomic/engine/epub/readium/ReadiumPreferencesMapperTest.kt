package io.leostrange.mrcomic.engine.epub.readium

import io.leostrange.mrcomic.core.model.ReaderPreferenceSnapshot
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.readium.r2.navigator.preferences.ColumnCount
import org.readium.r2.navigator.preferences.Spread
import org.readium.r2.navigator.preferences.TextAlign
import org.readium.r2.navigator.preferences.Theme
import org.readium.r2.shared.ExperimentalReadiumApi
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@OptIn(ExperimentalReadiumApi::class)
@RunWith(RobolectricTestRunner::class)
class ReadiumPreferencesMapperTest {

    @Test
    fun defaultSnapshotMapsToSafeEpubPreferences() {
        val snapshot = ReaderPreferenceSnapshot()
        val prefs = snapshot.toReadiumEpubPreferences()

        assertEquals(ColumnCount.AUTO, prefs.columnCount)
        assertEquals(Spread.NEVER, prefs.spread)
        assertEquals(TextAlign.JUSTIFY, prefs.textAlign)
        assertEquals(Theme.LIGHT, prefs.theme)
        assertTrue(prefs.hyphens == true)
    }

    @Test
    fun themePresetMapsCorrectly() {
        assertEquals(Theme.DARK, ReaderPreferenceSnapshot(themePreset = "NIGHT").toReadiumEpubPreferences().theme)
        assertEquals(Theme.DARK, ReaderPreferenceSnapshot(themePreset = "OLED").toReadiumEpubPreferences().theme)
        assertEquals(Theme.DARK, ReaderPreferenceSnapshot(themePreset = "AMOLED").toReadiumEpubPreferences().theme)
        assertEquals(Theme.SEPIA, ReaderPreferenceSnapshot(themePreset = "SEPIA").toReadiumEpubPreferences().theme)
        assertEquals(Theme.LIGHT, ReaderPreferenceSnapshot(themePreset = "DAY").toReadiumEpubPreferences().theme)
        assertEquals(Theme.LIGHT, ReaderPreferenceSnapshot(themePreset = "LIGHT").toReadiumEpubPreferences().theme)
    }

    @Test
    fun textAlignmentsMapCorrectly() {
        assertEquals(TextAlign.LEFT, ReaderPreferenceSnapshot(textAlignment = "left").toReadiumEpubPreferences().textAlign)
        assertEquals(TextAlign.RIGHT, ReaderPreferenceSnapshot(textAlignment = "right").toReadiumEpubPreferences().textAlign)
        assertEquals(TextAlign.CENTER, ReaderPreferenceSnapshot(textAlignment = "center").toReadiumEpubPreferences().textAlign)
        assertEquals(TextAlign.START, ReaderPreferenceSnapshot(textAlignment = "start").toReadiumEpubPreferences().textAlign)
        assertEquals(TextAlign.END, ReaderPreferenceSnapshot(textAlignment = "end").toReadiumEpubPreferences().textAlign)
        assertEquals(TextAlign.JUSTIFY, ReaderPreferenceSnapshot(textAlignment = "justify").toReadiumEpubPreferences().textAlign)
        assertEquals(TextAlign.JUSTIFY, ReaderPreferenceSnapshot(textAlignment = "unknown").toReadiumEpubPreferences().textAlign)
    }

    @Test
    fun boundedNumericValuesAreClamped() {
        val snapshot = ReaderPreferenceSnapshot(
            fontScale = 5.0,
            lineHeight = 4.0,
            letterSpacing = 1.0,
            wordSpacing = 2.0,
            paragraphSpacing = 5.0,
            pageMargins = 3.0,
            fontWeight = 900.0
        )
        val prefs = snapshot.toReadiumEpubPreferences()

        assertEquals(3.2, prefs.fontSize ?: 0.0, 0.001)
        assertEquals(2.0, prefs.lineHeight ?: 0.0, 0.001)
        assertEquals(0.5, prefs.letterSpacing ?: 0.0, 0.001)
        assertEquals(1.0, prefs.wordSpacing ?: 0.0, 0.001)
        assertEquals(2.0, prefs.paragraphSpacing ?: 0.0, 0.001)
        assertEquals(2.0, prefs.pageMargins ?: 0.0, 0.001)
        assertEquals(2.25, prefs.fontWeight ?: 0.0, 0.001) // 900 / 400 = 2.25
    }

    @Test
    fun fontFamilyTrimsAndNormalizes() {
        val snapshot = ReaderPreferenceSnapshot(fontFamily = "  Georgia  ")
        val prefs = snapshot.toReadiumEpubPreferences()

        assertNotNull(prefs.fontFamily)
        assertEquals("Georgia", prefs.fontFamily?.name)

        val emptySnapshot = ReaderPreferenceSnapshot(fontFamily = "   ")
        assertNull(emptySnapshot.toReadiumEpubPreferences().fontFamily)
    }
}
