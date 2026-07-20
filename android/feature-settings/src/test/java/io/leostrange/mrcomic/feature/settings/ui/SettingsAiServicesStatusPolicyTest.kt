package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.model.TranslationAvailabilitySnapshot
import io.leostrange.mrcomic.core.model.TranslationServiceConfig
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import org.junit.Assert.assertEquals
import org.junit.Test

class SettingsAiServicesStatusPolicyTest {

    @Test
    fun `online transport reports ready when provider and network are available`() {
        val state = settingsState(
            transport = TranslationTransportPreference.ONLINE,
            availability = TranslationAvailabilitySnapshot(
                networkAvailable = true,
                onlineConfigured = true
            )
        )

        assertEquals(
            SettingsMachineTranslationStatusKind.ONLINE_READY,
            resolveSettingsMachineTranslationStatusKind(state)
        )
    }

    @Test
    fun `offline transport reports missing model when pair is known and network exists`() {
        val state = settingsState(
            transport = TranslationTransportPreference.OFFLINE,
            availability = TranslationAvailabilitySnapshot(
                offlinePairSupported = true,
                offlineModelInstalled = false,
                networkAvailable = true
            ),
            pairKnown = true
        )

        assertEquals(
            SettingsMachineTranslationStatusKind.OFFLINE_MODEL_MISSING,
            resolveSettingsMachineTranslationStatusKind(state)
        )
    }

    @Test
    fun `auto transport reports unsupported pair when no machine route is available`() {
        val state = settingsState(
            transport = TranslationTransportPreference.AUTO,
            availability = TranslationAvailabilitySnapshot(
                offlinePairSupported = false,
                offlineModelInstalled = false,
                networkAvailable = true,
                onlineConfigured = false
            ),
            pairKnown = true
        )

        assertEquals(
            SettingsMachineTranslationStatusKind.AUTO_PAIR_UNSUPPORTED,
            resolveSettingsMachineTranslationStatusKind(state)
        )
    }

    @Test
    fun `providers status reports network requirement for configured external route`() {
        val state = settingsState(
            availability = TranslationAvailabilitySnapshot(
                networkAvailable = false,
                onlineConfigured = true
            )
        )

        assertEquals(
            SettingsProvidersStatusKind.NEEDS_NETWORK,
            resolveSettingsProvidersStatusKind(state)
        )
    }

    @Test
    fun `providers status reports validation needed for malformed openrouter credentials`() {
        val state = settingsState(
            availability = TranslationAvailabilitySnapshot(
                networkAvailable = true,
                onlineConfigured = true
            ),
            openRouterApiKey = "not-a-real-openrouter-key",
            openRouterModel = "openrouter/auto"
        )

        assertEquals(
            SettingsProvidersStatusKind.NEEDS_VALIDATION,
            resolveSettingsProvidersStatusKind(state)
        )
    }

    @Test
    fun `providers status reports not configured when no external route exists`() {
        val state = settingsState(
            availability = TranslationAvailabilitySnapshot(
                networkAvailable = true,
                onlineConfigured = false
            )
        )

        assertEquals(
            SettingsProvidersStatusKind.NOT_CONFIGURED,
            resolveSettingsProvidersStatusKind(state)
        )
    }

    private fun settingsState(
        transport: TranslationTransportPreference = TranslationTransportPreference.AUTO,
        availability: TranslationAvailabilitySnapshot = TranslationAvailabilitySnapshot(),
        pairKnown: Boolean = false,
        openRouterApiKey: String = "",
        openRouterModel: String = "openrouter/auto"
    ): SettingsUiState = SettingsUiState(
        translationConfig = TranslationServiceConfig(
            mode = "AUTO",
            sourceLanguage = if (pairKnown) "PL" else "AUTO",
            targetLanguage = "RU",
            preferredTransport = transport,
            explainEnabled = false
        ),
        translationAvailability = availability,
        translationAvailabilityPairKnown = pairKnown,
        openRouterApiKey = openRouterApiKey,
        openRouterModel = openRouterModel
    )
}
