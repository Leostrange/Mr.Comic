package com.example.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class ServiceConfigModelsTest {

    @Test
    fun `translation config normalizes stored values`() {
        val config = TranslationServiceConfig.fromStored(
            mode = "off",
            sourceLanguage = "",
            targetLanguage = "ru",
            preferredTransport = "broken",
            explainEnabled = true
        )

        assertEquals("OFF", config.mode)
        assertEquals("AUTO", config.sourceLanguage)
        assertEquals("RU", config.targetLanguage)
        assertEquals(TranslationTransportPreference.AUTO, config.preferredTransport)
        assertEquals(true, config.explainEnabled)
        assertEquals("AUTO", config.storedTransport)
    }

    @Test
    fun `reader tts config normalizes provider voice and slider ranges`() {
        val config = ReaderTtsConfig.fromStored(
            provider = "broken",
            speed = 4.2f,
            pitch = 0.1f,
            volume = 1.8f,
            voiceName = "",
            sleepTimerMode = "broken"
        )

        assertEquals(ReaderTtsProviderType.SYSTEM, config.provider)
        assertEquals(2.0f, config.speed)
        assertEquals(0.5f, config.pitch)
        assertEquals(1.0f, config.volume)
        assertNull(config.voiceName)
        assertEquals(ReaderTtsSleepTimerMode.OFF, config.sleepTimerMode)
        assertEquals(ReaderTtsProviderType.SYSTEM.storedValue, config.storedProvider)
        assertEquals(ReaderTtsSleepTimerMode.OFF.storedValue, config.storedSleepTimerMode)
    }
}
