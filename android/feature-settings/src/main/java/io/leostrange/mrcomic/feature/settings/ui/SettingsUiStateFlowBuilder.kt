// 4.1 (2026-08-09):
// Explicit-dependency holder for the SettingsUiState flow composition.
// The create*Flow builders (SettingsViewModelBaseStates / ReaderFlows /
// TranslationFlows / Flows) are extension functions on this class; the
// ViewModel only wires preferences/context/statusState/engines and calls
// createCombinedSettingsUiState().

package io.leostrange.mrcomic.feature.settings.ui

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.TranslationAvailabilitySnapshot
import io.leostrange.mrcomic.core.model.TranslationServiceConfig
import io.leostrange.mrcomic.core.ui.locale.normalizeTranslationLanguageCode
import io.leostrange.mrcomic.core.ui.theme.ThemePreferencesRepository
import kotlinx.coroutines.flow.StateFlow
import java.util.Locale

/**
 * Builds the combined [SettingsUiState] flow from DataStore preferences,
 * status state and translation engines. Extracted from SettingsViewModel
 * (4.1) so the flow composition is testable without the ViewModel.
 */
internal class SettingsUiStateFlowBuilder(
    internal val preferences: UserPreferences,
    internal val context: Context,
    internal val statusState: StateFlow<StatusState>,
    internal val themePreferencesRepository: ThemePreferencesRepository,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val dictionaryEngine: DictionaryEngine,
) {

    internal suspend fun resolveSettingsTranslationAvailabilityState(
        translationConfig: TranslationServiceConfig,
        appLanguage: String,
        networkAvailable: Boolean
    ): SettingsTranslationAvailabilityState {
        val sourceLanguage = translationConfig.sourceLanguage
            .takeUnless { it.equals("AUTO", ignoreCase = true) }
            ?.let(::normalizeTranslationLanguageCode)
        val targetLanguage = when (translationConfig.targetLanguage.uppercase(Locale.US)) {
            "APP" -> normalizeTranslationLanguageCode(appLanguage)
            else -> normalizeTranslationLanguageCode(translationConfig.targetLanguage)
        }
        val onlineConfigured = when (val configured = onlineTranslationEngine.isConfigured()) {
            is Result.Success -> configured.data
            is Result.Error -> false
            Result.Loading -> false
        }

        if (sourceLanguage == null || targetLanguage == null || sourceLanguage == targetLanguage) {
            return SettingsTranslationAvailabilityState(
                snapshot = TranslationAvailabilitySnapshot(
                    networkAvailable = networkAvailable,
                    onlineConfigured = onlineConfigured,
                    explainToggleEnabled = translationConfig.explainEnabled
                ),
                pairKnown = false
            )
        }

        val dictionaryAvailable = when (
            val availability = dictionaryEngine.isLookupAvailable(
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> availability.data
            is Result.Error -> false
            Result.Loading -> false
        }

        val offlineModelInstalled = when (
            val availability = offlineTranslationEngine.isLanguagePairAvailable(
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> availability.data
            is Result.Error -> false
            Result.Loading -> false
        }

        return SettingsTranslationAvailabilityState(
            snapshot = TranslationAvailabilitySnapshot(
                dictionaryAvailable = dictionaryAvailable,
                offlinePairSupported = true,
                offlineModelInstalled = offlineModelInstalled,
                networkAvailable = networkAvailable,
                onlineConfigured = onlineConfigured,
                explainToggleEnabled = translationConfig.explainEnabled
            ),
            pairKnown = true
        )
    }

    internal fun resolveSettingsNetworkAvailable(
        connectivityManager: ConnectivityManager
    ): Boolean {
        val network = connectivityManager.activeNetwork ?: return false
        val capabilities = connectivityManager.getNetworkCapabilities(network) ?: return false
        return capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
    }
}
