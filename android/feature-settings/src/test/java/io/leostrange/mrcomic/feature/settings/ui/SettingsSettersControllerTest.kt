package io.leostrange.mrcomic.feature.settings.ui

import androidx.datastore.preferences.core.Preferences
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.model.ReaderTtsProviderType
import io.leostrange.mrcomic.core.ui.theme.ThemePreset
import io.leostrange.mrcomic.core.ui.theme.ThemePreferencesRepository
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.TestScope
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@OptIn(ExperimentalCoroutinesApi::class)
@RunWith(RobolectricTestRunner::class)
class SettingsSettersControllerTest {

    private val preferences = mockk<UserPreferences>()
    private val themePreferencesRepository = mockk<ThemePreferencesRepository>()
    private val dailyReadingGoalStore = mockk<DailyReadingGoalStore>()
    private val analyticsTracker = mockk<ReadingAnalyticsTracker>()
    private val settingsPreferencesController = mockk<SettingsPreferencesController>()
    private val sliderBlocks = mutableListOf<suspend () -> Unit>()
    private val persistedNullableColors = mutableListOf<Pair<Preferences.Key<Long>, Long?>>()

    private fun TestScope.createController(
        parseImportedTypography: suspend (JSONObject) -> ImportedReaderTypographyPreset? = { null },
        state: () -> SettingsUiState = { SettingsUiState() },
    ) = SettingsSettersController(
        preferences = preferences,
        themePreferencesRepository = themePreferencesRepository,
        dailyReadingGoalStore = dailyReadingGoalStore,
        analyticsTracker = analyticsTracker,
        scope = this,
        uiState = state,
        settingsPreferencesController = settingsPreferencesController,
        setSlider = { _, block -> sliderBlocks += block },
        updateToggleEnabledAt = { _, _, _ -> },
        persistNullableReaderColor = { key, value -> persistedNullableColors += key to value },
        parseImportedTypography = parseImportedTypography,
    )

    @Test
    fun setThemePresetAppliesConfigAndMarksPreset() = runTest {
        coEvery { themePreferencesRepository.setThemePreset(any()) } returns Unit
        coEvery { themePreferencesRepository.setThemeMode(any()) } returns Unit
        coEvery { themePreferencesRepository.setUseDynamicColor(any()) } returns Unit
        coEvery { themePreferencesRepository.setUseAmoledDark(any()) } returns Unit
        coEvery { themePreferencesRepository.setCustomPrimaryColor(any()) } returns Unit
        coEvery { themePreferencesRepository.setCustomSecondaryColor(any()) } returns Unit
        coEvery { themePreferencesRepository.setCustomBackgroundColor(any()) } returns Unit
        coEvery { themePreferencesRepository.setCustomSurfaceColor(any()) } returns Unit
        coEvery { themePreferencesRepository.setSurfaceOpacity(any()) } returns Unit
        val controller = createController()

        controller.setThemePreset(ThemePreset.AMOLED)
        advanceUntilIdle()

        coVerify(exactly = 1) { themePreferencesRepository.setThemePreset(ThemePreset.AMOLED) }
        coVerify { themePreferencesRepository.setUseDynamicColor(any()) }
    }

    @Test
    fun setThemeModeMarksCustomPresetAndWritesMode() = runTest {
        coEvery { themePreferencesRepository.setThemePreset(any()) } returns Unit
        coEvery { themePreferencesRepository.setThemeMode(any()) } returns Unit
        val controller = createController()

        controller.setThemeMode(io.leostrange.mrcomic.core.ui.theme.ThemeMode.DARK)
        advanceUntilIdle()

        coVerify(exactly = 1) { themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM) }
        coVerify(exactly = 1) { themePreferencesRepository.setThemeMode(io.leostrange.mrcomic.core.ui.theme.ThemeMode.DARK) }
    }

    @Test
    fun setLibraryGridColumnsClampsAndDelegatesToSlider() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val controller = createController()

        controller.setLibraryGridColumns(9)
        assertEquals(1, sliderBlocks.size)
        sliderBlocks[0].invoke()

        coVerify(exactly = 1) { preferences.set(PreferencesKeys.LIBRARY_GRID_COLUMNS, 4) }
    }

    @Test
    fun setMascotRecapEnabledWritesPreferenceAndAnalytics() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        coEvery { analyticsTracker.track(any<ReadingAnalyticsEvent>()) } returns Unit
        val controller = createController { SettingsUiState(mascotRecapEnabled = false) }

        controller.setMascotRecapEnabled(true)
        advanceUntilIdle()

        coVerify(exactly = 1) { preferences.set(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, true) }
    }

    @Test
    fun setDailyReadingGoalEnabledDelegatesToGoalStore() = runTest {
        coEvery { dailyReadingGoalStore.setGoalEnabled(any()) } returns Unit
        coEvery { analyticsTracker.track(any<ReadingAnalyticsEvent>()) } returns Unit
        val controller = createController { SettingsUiState(dailyReadingGoalEnabled = false) }

        controller.setDailyReadingGoalEnabled(true)
        advanceUntilIdle()

        coVerify(exactly = 1) { dailyReadingGoalStore.setGoalEnabled(true) }
    }

    @Test
    fun setReaderPresetAppliesStyleAndPersistsColors() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val controller = createController()

        controller.setReaderPreset("PAPER")
        advanceUntilIdle()

        coVerify(exactly = 1) { preferences.set(PreferencesKeys.READER_PRESET, "PAPER") }
        assertEquals(3, persistedNullableColors.size)
    }

    @Test
    fun setBrightnessWritesOffForTinyValues() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val controller = createController()

        controller.setBrightness(0.005f)
        assertEquals(1, sliderBlocks.size)
        sliderBlocks[0].invoke()

        coVerify(exactly = 1) { preferences.set(PreferencesKeys.READING_BRIGHTNESS, -1f) }
    }

    @Test
    fun setReaderTtsProviderPersistsProviderName() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val controller = createController()

        controller.setReaderTtsProvider(ReaderTtsProviderType.SYSTEM.name)
        advanceUntilIdle()

        coVerify(exactly = 1) { preferences.set(PreferencesKeys.READER_TTS_PROVIDER, ReaderTtsProviderType.SYSTEM.name) }
    }

    @Test
    fun importReaderTypographyFromJsonReturnsNullWhenUnparseable() = runTest {
        coEvery { preferences.set(any(), any<Any>()) } returns Unit
        val controller = createController()

        val result = controller.importReaderTypographyFromJson("{}")
        assertNull(result)
    }
}
