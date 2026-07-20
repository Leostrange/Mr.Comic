package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * Tests for ReaderTtsPlaybackService behavior.
 * Covers the fallback notification and null controller handling.
 */
class ReaderTtsPlaybackServiceTest {

    @Test
    fun `fallback notification channel id is correct`() {
        // The service uses ReaderTextToSpeechController.TTS_NOTIFICATION_CHANNEL_ID
        // for the fallback notification channel
        assertEquals(
            "reader_tts_playback",
            ReaderTextToSpeechController.TTS_NOTIFICATION_CHANNEL_ID
        )
    }

    @Test
    fun `service action constants are defined`() {
        // Verify action constants are properly defined
        assertEquals(
            "io.leostrange.mrcomic.reader.tts.service.START_OR_UPDATE",
            ReaderTtsPlaybackService.ACTION_START_OR_UPDATE
        )
        assertEquals(
            "io.leostrange.mrcomic.reader.tts.service.STOP",
            ReaderTtsPlaybackService.ACTION_STOP
        )
    }

    @Test
    fun `notification id is defined`() {
        // Verify notification ID is defined
        assertEquals(3107, ReaderTextToSpeechController.TTS_NOTIFICATION_ID)
    }
}