package io.leostrange.mrcomic.feature.settings.ui

import androidx.datastore.preferences.core.Preferences
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.ui.theme.ThemePreferencesRepository
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import io.mockk.slot
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.TestScope
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@OptIn(ExperimentalCoroutinesApi::class)
@RunWith(RobolectricTestRunner::class)
class SettingsPresetsControllerTest {

    private val preferences = mockk<UserPreferences>()
    private val themePreferencesRepository = mockk<ThemePreferencesRepository>()
    private val persistedNullableColors = mutableListOf<Pair<Preferences.Key<Long>, Long?>>()

    private fun TestScope.createController(state: () -> SettingsUiState) = SettingsPresetsController(
        preferences = preferences,
        themePreferencesRepository = themePreferencesRepository,
        scope = this,
        uiState = state,
        persistNullableColor = { key, value -> persistedNullableColors += key to value },
    )

    private fun readerStyleSnapshot(displayName: String? = null) = ReaderStylePresetSnapshot(
        displayName = displayName,
        readerPreset = "DOCUMENT",
        textFontSize = 18,
        textColorScheme = "DAY",
        textFontFamily = "Georgia",
        textLineHeight = 1.8f,
        textLetterSpacing = 0f,
        textWordSpacing = 0f,
        textParagraphSpacing = 0.2f,
        textAlignment = "justify",
        textBold = false,
        brightness = 1f,
        immersiveMode = false,
        pageAnimation = "SLIDE",
    )

    @Test
    fun saveLibraryThemePresetPersistsSerializedSnapshot() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val controller = createController { SettingsUiState() }

        controller.saveLibraryThemePreset(1)
        advanceUntilIdle()

        coVerify(exactly = 1) { preferences.set(PreferencesKeys.LIBRARY_THEME_PRESET_1, any()) }
    }

    @Test
    fun clearLibraryThemePresetClearsSlotKey() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val controller = createController { SettingsUiState() }

        controller.clearLibraryThemePreset(2)
        advanceUntilIdle()

        coVerify(exactly = 1) { preferences.set(PreferencesKeys.LIBRARY_THEME_PRESET_2, "") }
    }

    @Test
    fun saveAppThemePresetPersistsSerializedSnapshot() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val controller = createController { SettingsUiState() }

        controller.saveAppThemePreset(3)
        advanceUntilIdle()

        coVerify(exactly = 1) { preferences.set(PreferencesKeys.APP_THEME_PRESET_3, any()) }
    }

    @Test
    fun applyLibraryZonePresetWritesDarkStudyChain() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val controller = createController { SettingsUiState() }

        controller.applyLibraryZonePreset("DARK_STUDY")
        advanceUntilIdle()

        coVerify(exactly = 1) { preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "DARK_STUDY") }
        coVerify(exactly = 1) { preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "WALNUT") }
        coVerify(exactly = 1) { preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "SHOWCASE") }
    }

    @Test
    fun applyReaderStylePresetByIdAppliesSnapshotAndPersistsColors() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val entry = ReaderStylePresetEntry(
            id = "r1",
            snapshot = readerStyleSnapshot(displayName = "Night"),
        )
        var state = SettingsUiState(readerStylePresetEntries = listOf(entry))
        val controller = createController { state }

        controller.applyReaderStylePreset("r1")
        advanceUntilIdle()

        coVerify(exactly = 1) { preferences.set(PreferencesKeys.READER_PRESET, "DOCUMENT") }
        coVerify(exactly = 1) { preferences.set(PreferencesKeys.TEXT_FONT_SIZE, 18) }
        assertEquals(3, persistedNullableColors.size)
        assertEquals(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, persistedNullableColors[0].first)
        assertEquals(null, persistedNullableColors[0].second)
        assertEquals(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, persistedNullableColors[1].first)
        assertEquals(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, persistedNullableColors[2].first)
    }

    @Test
    fun saveCurrentReaderStylePresetPersistsWithFallbackName() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val controller = createController { SettingsUiState() }

        controller.saveCurrentReaderStylePreset()
        advanceUntilIdle()

        val serialized = slot<String>()
        coVerify(exactly = 1) { preferences.set(PreferencesKeys.READER_STYLE_PRESET_LIST, capture(serialized)) }
        assertTrue(serialized.captured.contains("Style 1"))
    }

    @Test
    fun renameReaderStylePresetPersistsUpdatedName() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val entry = ReaderStylePresetEntry(id = "r1", snapshot = readerStyleSnapshot(displayName = "Old"))
        var state = SettingsUiState(readerStylePresetEntries = listOf(entry))
        val controller = createController { state }

        controller.renameReaderStylePreset("r1", "New Name")
        advanceUntilIdle()

        val serialized = slot<String>()
        coVerify(exactly = 1) { preferences.set(PreferencesKeys.READER_STYLE_PRESET_LIST, capture(serialized)) }
        assertTrue(serialized.captured.contains("New Name"))
        assertFalse(serialized.captured.contains("Old"))
    }

    @Test
    fun deleteReaderStylePresetRemovesEntry() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val entry = ReaderStylePresetEntry(id = "r1", snapshot = readerStyleSnapshot())
        var state = SettingsUiState(readerStylePresetEntries = listOf(entry))
        val controller = createController { state }

        controller.deleteReaderStylePreset("r1")
        advanceUntilIdle()

        val serialized = slot<String>()
        coVerify(exactly = 1) { preferences.set(PreferencesKeys.READER_STYLE_PRESET_LIST, capture(serialized)) }
        assertFalse(serialized.captured.contains("r1"))
    }
}
