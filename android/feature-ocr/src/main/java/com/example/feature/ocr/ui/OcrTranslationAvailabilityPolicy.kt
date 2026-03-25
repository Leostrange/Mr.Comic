package com.example.feature.ocr.ui

import com.example.core.model.TranslationTransportPreference

internal fun resolveOcrTranslationUnavailableMessage(
    language: String,
    preferredTransport: TranslationTransportPreference,
    availability: OcrTranslationAvailability,
    dictionaryRouteAvailable: Boolean = false,
    sourceLanguage: String? = null,
    targetLanguage: String? = null
): String = when (preferredTransport) {
    TranslationTransportPreference.OFFLINE -> when {
        !availability.offlinePairSupported -> ocrOfflinePairUnsupportedMessage(
            language = language,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
        !availability.offlineModelInstalled && availability.networkAvailable ->
            ocrOfflineModelMissingMessage(
                language = language,
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        !availability.offlineModelInstalled -> ocrOfflineModelNeedsNetworkMessage(
            language = language,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
        else -> ocrTranslationUnavailableMessage(
            language = language,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
    }

    TranslationTransportPreference.ONLINE -> when {
        !availability.onlineConfigured -> ocrOnlineRouteMissingMessage(
            language = language,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
        !availability.networkAvailable -> ocrOnlineRouteNeedsNetworkMessage(
            language = language,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
        else -> ocrTranslationUnavailableMessage(
            language = language,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
    }

    TranslationTransportPreference.AUTO -> when {
        dictionaryRouteAvailable && !availability.canUseMachineTranslation ->
            ocrDictionaryOnlyRouteMessage(
                language = language,
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        !availability.canUseMachineTranslation && availability.onlineConfigured && !availability.networkAvailable ->
            ocrOnlineRouteNeedsNetworkMessage(
                language = language,
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        !availability.canUseMachineTranslation && !availability.offlinePairSupported ->
            ocrMachineRouteUnsupportedMessage(
                language = language,
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        !availability.canUseMachineTranslation && !availability.onlineConfigured &&
            availability.offlinePairSupported && availability.networkAvailable ->
            ocrOfflineModelMissingMessage(
                language = language,
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        !availability.canUseMachineTranslation && !availability.onlineConfigured &&
            availability.offlinePairSupported ->
            ocrOfflineModelNeedsNetworkMessage(
                language = language,
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        !availability.canUseMachineTranslation -> ocrTranslationBackendUnavailableMessage(
            language = language,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
        else -> ocrTranslationUnavailableMessage(
            language = language,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
    }
}
