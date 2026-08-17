package io.leostrange.mrcomic.feature.settings.ui

import android.net.ConnectivityManager
import android.net.Network
import android.net.NetworkCapabilities
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.model.TranslationServiceConfig
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.core.ui.locale.normalizeAppLanguageCode
import kotlinx.coroutines.channels.awaitClose
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.callbackFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.mapLatest

// Phase W-Z (2026-08-07): Translation config, network, and availability flows
// extracted from SettingsViewModelFlows.

internal fun SettingsUiStateFlowBuilder.createTranslationConfigFlow() = combine(
        preferences.get(PreferencesKeys.TRANSLATION_MODE, "OFF"),
        preferences.get(PreferencesKeys.TRANSLATION_SOURCE_LANGUAGE, "AUTO"),
        preferences.get(PreferencesKeys.TRANSLATION_TARGET_LANGUAGE, "APP"),
        preferences.get(PreferencesKeys.TRANSLATION_TRANSPORT, TranslationTransportPreference.AUTO.name),
        preferences.get(PreferencesKeys.TRANSLATION_EXPLAIN_ENABLED, false),
        preferences.get(PreferencesKeys.TRANSLATION_EXPLAIN_PROVIDER, "LOCAL")
    ) { values: Array<Any> ->
        TranslationServiceConfig.fromStored(
            mode = values[0] as String,
            sourceLanguage = values[1] as String,
            targetLanguage = values[2] as String,
            preferredTransport = values[3] as String,
            explainEnabled = values[4] as Boolean,
            explainProvider = values[5] as String
        )
    }

internal fun SettingsUiStateFlowBuilder.createAppLanguageFlow() = preferences.get(PreferencesKeys.APP_LANGUAGE, "ru")
        .map(::normalizeAppLanguageCode)

internal fun SettingsUiStateFlowBuilder.createNetworkAvailableFlow(): Flow<Boolean> = callbackFlow {
        val connectivityManager = context.getSystemService(ConnectivityManager::class.java)
        if (connectivityManager == null) {
            trySend(false)
            close()
            return@callbackFlow
        }

        fun emitCurrent() {
            trySend(resolveSettingsNetworkAvailable(connectivityManager))
        }

        val callback = object : ConnectivityManager.NetworkCallback() {
            override fun onAvailable(network: Network) = emitCurrent()

            override fun onLost(network: Network) = emitCurrent()

            override fun onCapabilitiesChanged(network: Network, networkCapabilities: NetworkCapabilities) =
                emitCurrent()

            override fun onUnavailable() = emitCurrent()
        }

        emitCurrent()
        val registered = runCatching {
            connectivityManager.registerDefaultNetworkCallback(callback)
        }.isSuccess
        if (!registered) {
            close()
            return@callbackFlow
        }
        awaitClose {
            runCatching { connectivityManager.unregisterNetworkCallback(callback) }
        }
    }.distinctUntilChanged()

internal fun SettingsUiStateFlowBuilder.createTranslationAvailabilityFlow(): Flow<SettingsTranslationAvailabilityState> = combine(
        createTranslationConfigFlow(),
        createAppLanguageFlow(),
        createNetworkAvailableFlow()
    ) { translationConfig, appLanguage, networkAvailable ->
        Triple(translationConfig, appLanguage, networkAvailable)
    }.mapLatest { (translationConfig, appLanguage, networkAvailable) ->
        resolveSettingsTranslationAvailabilityState(
            translationConfig = translationConfig,
            appLanguage = appLanguage,
            networkAvailable = networkAvailable
        )
    }
