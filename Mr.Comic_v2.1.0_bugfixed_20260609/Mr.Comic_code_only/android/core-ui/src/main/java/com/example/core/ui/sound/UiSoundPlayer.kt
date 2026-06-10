package com.example.core.ui.sound

import android.media.AudioAttributes
import android.media.AudioFormat
import android.media.AudioManager
import android.media.AudioTrack
import kotlin.math.PI
import kotlin.math.sin
import kotlin.random.Random

/**
 * Plays short UI feedback sounds for button taps, toggle switches, and navigation.
 * Set [enabled] = true (driven by UI_SOUND_ENABLED preference) to activate.
 */
object UiSoundPlayer {

    @Volatile var enabled: Boolean = false

    private const val SAMPLE_RATE = 22050

    private val clickSamples: ShortArray by lazy { buildClickSamples() }
    private val toggleSamples: ShortArray by lazy { buildToggleSamples() }
    private val navSamples: ShortArray by lazy { buildNavSamples() }

    /** Short noise burst for button/chip presses */
    fun playClick() { if (enabled) playBuffer(clickSamples) }

    /** Tonal tick for Switch/toggle changes */
    fun playToggle() { if (enabled) playBuffer(toggleSamples) }

    /** Rising-pitch sweep for screen navigation transitions */
    fun playNav() { if (enabled) playBuffer(navSamples) }

    private fun playBuffer(samples: ShortArray) {
        Thread {
            try {
                val bufferSize = maxOf(
                    samples.size * 2,
                    AudioTrack.getMinBufferSize(
                        SAMPLE_RATE,
                        AudioFormat.CHANNEL_OUT_MONO,
                        AudioFormat.ENCODING_PCM_16BIT
                    )
                )
                val track = AudioTrack(
                    AudioAttributes.Builder()
                        .setUsage(AudioAttributes.USAGE_ASSISTANCE_SONIFICATION)
                        .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
                        .build(),
                    AudioFormat.Builder()
                        .setEncoding(AudioFormat.ENCODING_PCM_16BIT)
                        .setSampleRate(SAMPLE_RATE)
                        .setChannelMask(AudioFormat.CHANNEL_OUT_MONO)
                        .build(),
                    bufferSize,
                    AudioTrack.MODE_STATIC,
                    AudioManager.AUDIO_SESSION_ID_GENERATE
                )
                track.write(samples, 0, samples.size)
                track.play()
                val durationMs = samples.size * 1000L / SAMPLE_RATE
                Thread.sleep(durationMs + 20)
                track.stop()
                track.release()
            } catch (_: Exception) {
                // Audio is non-critical; silently ignore all errors
            }
        }.apply { isDaemon = true; name = "UiSoundThread" }.start()
    }

    /** 25ms short noise burst — button tap */
    private fun buildClickSamples(): ShortArray {
        val n = SAMPLE_RATE * 25 / 1000
        val buf = ShortArray(n)
        val rng = Random(0xC1CC)
        for (i in 0 until n) {
            val t = i.toFloat() / n
            val env = (1f - t) * (1f - t) * (1f - t)
            val sample = (rng.nextFloat() * 2f - 1f) * env * 0.28f
            buf[i] = (sample * Short.MAX_VALUE).toInt()
                .coerceIn(Short.MIN_VALUE.toInt(), Short.MAX_VALUE.toInt()).toShort()
        }
        return buf
    }

    /** 35ms tonal tick — switch/toggle */
    private fun buildToggleSamples(): ShortArray {
        val n = SAMPLE_RATE * 35 / 1000
        val buf = ShortArray(n)
        val rng = Random(0x7054)
        for (i in 0 until n) {
            val t = i.toFloat() / n
            val env = (1f - t) * (1f - t)
            val noise = (rng.nextFloat() * 2f - 1f) * 0.4f
            val tone = sin(2.0 * PI * 900.0 * i / SAMPLE_RATE).toFloat() * 0.6f
            val sample = (noise + tone) * env * 0.22f
            buf[i] = (sample * Short.MAX_VALUE).toInt()
                .coerceIn(Short.MIN_VALUE.toInt(), Short.MAX_VALUE.toInt()).toShort()
        }
        return buf
    }

    /** 60ms rising-pitch sweep — screen navigation */
    private fun buildNavSamples(): ShortArray {
        val n = SAMPLE_RATE * 60 / 1000
        val buf = ShortArray(n)
        val rng = Random(0xF4A1)
        var phase = 0.0
        for (i in 0 until n) {
            val t = i.toFloat() / n
            val env = if (t < 0.2f) (t / 0.2f) else ((1f - t) * (1f - t))
            // Frequency sweeps 280 Hz → 560 Hz; accumulate phase to avoid discontinuities
            val freq = 280.0 + 280.0 * t
            phase += 2.0 * PI * freq / SAMPLE_RATE
            val tone = sin(phase).toFloat()
            val noise = (rng.nextFloat() * 2f - 1f) * 0.15f
            val sample = (tone * 0.85f + noise) * env * 0.16f
            buf[i] = (sample * Short.MAX_VALUE).toInt()
                .coerceIn(Short.MIN_VALUE.toInt(), Short.MAX_VALUE.toInt()).toShort()
        }
        return buf
    }
}
