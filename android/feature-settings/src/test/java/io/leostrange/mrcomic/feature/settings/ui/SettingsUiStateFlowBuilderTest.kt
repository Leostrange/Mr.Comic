package io.leostrange.mrcomic.feature.settings.ui

import androidx.test.core.app.ApplicationProvider
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.TranslationServiceConfig
import io.leostrange.mrcomic.core.ui.theme.ThemePreferencesRepository
import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@OptIn(ExperimentalCoroutinesApi::class)
@RunWith(RobolectricTestRunner::class)
class SettingsUiStateFlowBuilderTest {

    private val preferences = mockk<UserPreferences>()
    private val themePreferencesRepository = mockk<ThemePreferencesRepository>()
    private val onlineTranslationEngine = mockk<OnlineTranslationEngine>()
    private val offlineTranslationEngine = mockk<OfflineTranslationEngine>()
    private val dictionaryEngine = mockk<DictionaryEngine>()

    private fun createBuilder() = SettingsUiStateFlowBuilder(
        preferences = preferences,
        context = ApplicationProvider.getApplicationContext(),
        statusState = MutableStateFlow(StatusState()),
        themePreferencesRepository = themePreferencesRepository,
        onlineTranslationEngine = onlineTranslationEngine,
        offlineTranslationEngine = offlineTranslationEngine,
        dictionaryEngine = dictionaryEngine,
    )

    @Test
    fun pairUnknownWhenSourceMissingOrEqualsTarget() = runTest {
        coEvery { onlineTranslationEngine.isConfigured() } returns Result.Success(true)
        val builder = createBuilder()

        val autoSource = builder.resolveSettingsTranslationAvailabilityState(
            translationConfig = TranslationServiceConfig.fromStored(
                mode = "ON",
                sourceLanguage = "AUTO",
                targetLanguage = "RU",
                preferredTransport = "AUTO",
                explainEnabled = false,
                explainProvider = "LOCAL",
            ),
            appLanguage = "ru",
            networkAvailable = false,
        )

        assertFalse(autoSource.pairKnown)
        assertEquals(false, autoSource.snapshot.networkAvailable)
        assertTrue(autoSource.snapshot.onlineConfigured)

        val samePair = builder.resolveSettingsTranslationAvailabilityState(
            translationConfig = TranslationServiceConfig.fromStored(
                mode = "ON",
                sourceLanguage = "JA",
                targetLanguage = "JA",
                preferredTransport = "AUTO",
                explainEnabled = false,
                explainProvider = "LOCAL",
            ),
            appLanguage = "ru",
            networkAvailable = true,
        )

        assertFalse(samePair.pairKnown)
    }

    @Test
    fun pairKnownReflectsEngineAvailability() = runTest {
        coEvery { onlineTranslationEngine.isConfigured() } returns Result.Success(true)
        coEvery { dictionaryEngine.isLookupAvailable("ja", "ru") } returns Result.Success(true)
        coEvery { offlineTranslationEngine.isLanguagePairAvailable("ja", "ru") } returns Result.Success(false)
        val builder = createBuilder()

        val state = builder.resolveSettingsTranslationAvailabilityState(
            translationConfig = TranslationServiceConfig.fromStored(
                mode = "ON",
                sourceLanguage = "JA",
                targetLanguage = "APP",
                preferredTransport = "AUTO",
                explainEnabled = true,
                explainProvider = "LOCAL",
            ),
            appLanguage = "ru",
            networkAvailable = true,
        )

        assertTrue(state.pairKnown)
        assertTrue(state.snapshot.dictionaryAvailable)
        assertFalse(state.snapshot.offlineModelInstalled)
        assertTrue(state.snapshot.networkAvailable)
        assertTrue(state.snapshot.onlineConfigured)
        assertTrue(state.snapshot.explainToggleEnabled)
    }

    @Test
    fun engineErrorsResolveToUnavailable() = runTest {
        coEvery { onlineTranslationEngine.isConfigured() } returns Result.Error(RuntimeException("boom"))
        coEvery { dictionaryEngine.isLookupAvailable("fr", "ru") } returns Result.Error(RuntimeException("boom"))
        coEvery { offlineTranslationEngine.isLanguagePairAvailable("fr", "ru") } returns Result.Error(RuntimeException("boom"))
        val builder = createBuilder()

        val state = builder.resolveSettingsTranslationAvailabilityState(
            translationConfig = TranslationServiceConfig.fromStored(
                mode = "ON",
                sourceLanguage = "FR",
                targetLanguage = "APP",
                preferredTransport = "AUTO",
                explainEnabled = false,
                explainProvider = "LOCAL",
            ),
            appLanguage = "ru",
            networkAvailable = false,
        )

        assertTrue(state.pairKnown)
        assertFalse(state.snapshot.dictionaryAvailable)
        assertFalse(state.snapshot.offlineModelInstalled)
        assertFalse(state.snapshot.onlineConfigured)
    }
}
