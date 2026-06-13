package com.example.core.model

data class TranslationServiceConfig(
    val mode: String = "OFF",
    val sourceLanguage: String = "AUTO",
    val targetLanguage: String = "APP",
    val preferredTransport: TranslationTransportPreference = TranslationTransportPreference.AUTO,
    val explainEnabled: Boolean = false,
    val explainProvider: String = "LOCAL" // LOCAL or ONLINE
) {
    val storedTransport: String
        get() = preferredTransport.name

    companion object {
        fun fromStored(
            mode: String?,
            sourceLanguage: String?,
            targetLanguage: String?,
            preferredTransport: String?,
            explainEnabled: Boolean,
            explainProvider: String? = null
        ): TranslationServiceConfig {
            val normalizedTransport = runCatching {
                TranslationTransportPreference.valueOf(
                    preferredTransport?.uppercase() ?: TranslationTransportPreference.AUTO.name
                )
            }.getOrDefault(TranslationTransportPreference.AUTO)

            return TranslationServiceConfig(
                mode = mode?.ifBlank { "OFF" }?.uppercase() ?: "OFF",
                sourceLanguage = sourceLanguage?.ifBlank { "AUTO" }?.uppercase() ?: "AUTO",
                targetLanguage = targetLanguage?.ifBlank { "APP" }?.uppercase() ?: "APP",
                preferredTransport = normalizedTransport,
                explainEnabled = explainEnabled,
                explainProvider = explainProvider?.ifBlank { "LOCAL" }?.uppercase() ?: "LOCAL"
            )
        }
    }
}

data class ReaderTtsConfig(
    val provider: ReaderTtsProviderType = ReaderTtsProviderType.SYSTEM,
    val speed: Float = 1.0f,
    val pitch: Float = 1.0f,
    val volume: Float = 1.0f,
    val voiceName: String? = null,
    val sleepTimerMode: ReaderTtsSleepTimerMode = ReaderTtsSleepTimerMode.OFF
) {
    val storedProvider: String
        get() = provider.storedValue

    val storedSleepTimerMode: String
        get() = sleepTimerMode.storedValue

    companion object {
        fun fromStored(
            provider: String?,
            speed: Float,
            pitch: Float,
            volume: Float,
            voiceName: String?,
            sleepTimerMode: String?
        ): ReaderTtsConfig = ReaderTtsConfig(
            provider = ReaderTtsProviderType.fromStored(provider),
            speed = speed.coerceIn(0.5f, 2.0f),
            pitch = pitch.coerceIn(0.5f, 2.0f),
            volume = volume.coerceIn(0f, 1.0f),
            voiceName = voiceName?.ifBlank { null },
            sleepTimerMode = ReaderTtsSleepTimerMode.fromStored(sleepTimerMode)
        )
    }
}
