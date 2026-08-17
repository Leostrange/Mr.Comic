package io.leostrange.mrcomic.feature.settings.ui

import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.longPreferencesKey
import androidx.test.core.app.ApplicationProvider
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

/**
 * Smoke tests for [SettingsViewModel]: the heavy flows are backed by
 * SharingStarted.WhileSubscribed, so constructing the VM with relaxed mocks is
 * safe and we can exercise the internal toggle/slider plumbing end-to-end
 * against the real DataStore.
 */
@OptIn(ExperimentalCoroutinesApi::class)
@RunWith(RobolectricTestRunner::class)
class SettingsViewModelSmokeTest {

    private val mainDispatcher = StandardTestDispatcher()

    @Before
    fun setUp() {
        Dispatchers.setMain(mainDispatcher)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    private fun buildViewModel(): SettingsViewModel = SettingsViewModel(
        context = ApplicationProvider.getApplicationContext(),
        themePreferencesRepository = mockk(relaxed = true),
        comicRepository = mockk(relaxed = true),
        quoteRepository = mockk(relaxed = true),
        dailyReadingGoalStore = mockk(relaxed = true),
        analyticsTracker = mockk(relaxed = true),
        dictionaryEngine = mockk(relaxed = true),
        dictionaryDownloader = mockk(relaxed = true),
        offlineTranslationEngine = mockk(relaxed = true),
        onlineTranslationEngine = mockk(relaxed = true)
    )

    @Test
    fun constructor_publishesInitialUiStateAndEmptyStatus() = runTest {
        val viewModel = buildViewModel()
        assertEquals(SettingsUiState(), viewModel.uiState.value)
        assertEquals(StatusState(), viewModel.statusState.value)
    }

    @Test
    fun updateToggleEnabledAt_writesTimestampWhenEnabled() = runTest {
        val viewModel = buildViewModel()
        val key: Preferences.Key<Long> = longPreferencesKey("smoke_enabled_at")
        viewModel.updateToggleEnabledAt(
            key = key,
            wasEnabled = false,
            enabled = true,
            nowMillis = 42L
        )
        assertEquals(42L, viewModel.preferences.get(key, 0L).first())
    }

    @Test
    fun updateToggleEnabledAt_clearsTimestampWhenDisabled() = runTest {
        val viewModel = buildViewModel()
        val key: Preferences.Key<Long> = longPreferencesKey("smoke_disabled_at")
        viewModel.preferences.set(key, 7L)
        viewModel.updateToggleEnabledAt(
            key = key,
            wasEnabled = true,
            enabled = false,
            nowMillis = 99L
        )
        assertEquals(0L, viewModel.preferences.get(key, 0L).first())
    }

    @Test
    fun updateToggleEnabledAt_doesNotWriteWhenStateUnchanged() = runTest {
        val viewModel = buildViewModel()
        val key: Preferences.Key<Long> = longPreferencesKey("smoke_noop_at")
        viewModel.updateToggleEnabledAt(
            key = key,
            wasEnabled = true,
            enabled = true,
            nowMillis = 5L
        )
        assertEquals(0L, viewModel.preferences.get(key, 0L).first())
    }

    @Test
    fun setSlider_debouncesBeforeRunningBlock() {
        val viewModel = buildViewModel()
        var executed = false
        viewModel.setSlider("smoke_slider") { executed = true }

        mainDispatcher.scheduler.advanceTimeBy(299)
        assertFalse("block must not run before the 300ms debounce", executed)

        // advanceTimeBy does not run tasks scheduled exactly at the target time,
        // so overshoot the 300ms debounce boundary by a small margin.
        mainDispatcher.scheduler.advanceTimeBy(2)
        assertTrue("block must run after the debounce elapses", executed)
    }
}
