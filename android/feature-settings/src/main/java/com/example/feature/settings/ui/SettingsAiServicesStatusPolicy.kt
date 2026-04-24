package com.example.feature.settings.ui

import com.example.core.model.TranslationTransportPreference

internal enum class SettingsMachineTranslationStatusKind {
    DISABLED,
    ONLINE_READY,
    ONLINE_MISSING,
    ONLINE_NEEDS_NETWORK,
    OFFLINE_GENERIC,
    OFFLINE_READY,
    OFFLINE_MODEL_MISSING,
    OFFLINE_MODEL_NEEDS_NETWORK,
    OFFLINE_PAIR_UNSUPPORTED,
    AUTO_LOCAL_FIRST,
    AUTO_OFFLINE_MODEL_MISSING,
    AUTO_OFFLINE_MODEL_NEEDS_NETWORK,
    AUTO_PAIR_UNSUPPORTED
}

internal enum class SettingsProvidersStatusKind {
    READY,
    NEEDS_NETWORK,
    NOT_CONFIGURED
}

internal fun resolveSettingsMachineTranslationStatusKind(
    uiState: SettingsUiState
): SettingsMachineTranslationStatusKind {
    if (uiState.translationMode == "OFF") return SettingsMachineTranslationStatusKind.DISABLED

    val transport = runCatching {
        TranslationTransportPreference.valueOf(uiState.translationTransport.uppercase())
    }.getOrDefault(TranslationTransportPreference.AUTO)
    val availability = uiState.translationAvailability
    val pairKnown = uiState.translationAvailabilityPairKnown

    return when (transport) {
        TranslationTransportPreference.ONLINE -> when {
            !availability.onlineConfigured -> SettingsMachineTranslationStatusKind.ONLINE_MISSING
            !availability.networkAvailable -> SettingsMachineTranslationStatusKind.ONLINE_NEEDS_NETWORK
            else -> SettingsMachineTranslationStatusKind.ONLINE_READY
        }

        TranslationTransportPreference.OFFLINE -> when {
            !pairKnown -> SettingsMachineTranslationStatusKind.OFFLINE_GENERIC
            !availability.offlinePairSupported -> SettingsMachineTranslationStatusKind.OFFLINE_PAIR_UNSUPPORTED
            availability.offlineModelInstalled -> SettingsMachineTranslationStatusKind.OFFLINE_READY
            availability.networkAvailable -> SettingsMachineTranslationStatusKind.OFFLINE_MODEL_MISSING
            else -> SettingsMachineTranslationStatusKind.OFFLINE_MODEL_NEEDS_NETWORK
        }

        TranslationTransportPreference.AUTO -> when {
            availability.canUseMachineTranslation -> SettingsMachineTranslationStatusKind.AUTO_LOCAL_FIRST
            availability.onlineConfigured && !availability.networkAvailable ->
                SettingsMachineTranslationStatusKind.ONLINE_NEEDS_NETWORK
            pairKnown && availability.offlinePairSupported && availability.networkAvailable ->
                SettingsMachineTranslationStatusKind.AUTO_OFFLINE_MODEL_MISSING
            pairKnown && availability.offlinePairSupported ->
                SettingsMachineTranslationStatusKind.AUTO_OFFLINE_MODEL_NEEDS_NETWORK
            pairKnown -> SettingsMachineTranslationStatusKind.AUTO_PAIR_UNSUPPORTED
            else -> SettingsMachineTranslationStatusKind.AUTO_LOCAL_FIRST
        }
    }
}

internal fun resolveSettingsProvidersStatusKind(
    uiState: SettingsUiState
): SettingsProvidersStatusKind = when {
    !uiState.translationAvailability.onlineConfigured -> SettingsProvidersStatusKind.NOT_CONFIGURED
    !uiState.translationAvailability.networkAvailable -> SettingsProvidersStatusKind.NEEDS_NETWORK
    else -> SettingsProvidersStatusKind.READY
}
