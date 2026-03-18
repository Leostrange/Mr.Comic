package com.example.feature.reader.ui

import android.media.AudioAttributes
import android.media.AudioFormat
import android.media.AudioManager
import android.media.AudioTrack
import kotlin.math.PI
import kotlin.math.sin
import kotlin.random.Random

enum class PageSoundStyle { PAPER, CRISP, SOFT }

/**
 * Plays a brief algorithmically-generated page-flip sound effect.
 * Three styles: PAPER (classic rustle), CRISP (sharp snap), SOFT (gentle whisper).
 * Samples are pre-computed lazily and reused for every page flip.
 */
object PageSoundPlayer {

    private const val SAMPLE_RATE = 22050

    private val paperSamples: ShortArray by lazy { buildPaperSamples() }
    private val crispSamples: ShortArray by lazy { buildCrispSamples() }
    private val softSamples:  ShortArray by lazy { buildSoftSamples()  }

    fun play(style: PageSoundStyle = PageSoundStyle.PAPER) {
        val buf = when (style) {
            PageSoundStyle.PAPER -> paperSamples
            PageSoundStyle.CRISP -> crispSamples
            PageSoundStyle.SOFT  -> softSamples
        }
        playBuffer(buf)
    }

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
                        .setUsage(AudioAttributes.USAGE_GAME)
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
                Thread.sleep(durationMs + 40)
                track.stop()
                track.release()
            } catch (_: Exception) {
                // Audio is non-critical; silently ignore all errors
            }
        }.apply { isDaemon = true; name = "PageSoundThread" }.start()
    }

    /** PAPER: 110ms white noise with fast attack + quadratic decay — classic page rustle */
    private fun buildPaperSamples(): ShortArray {
        val n = SAMPLE_RATE * 110 / 1000
        val buf = ShortArray(n)
        val rng = Random(0x1337)
        for (i in 0 until n) {
            val t = i.toFloat() / n
            val env = if (t < 0.10f) (t / 0.10f) else (1f - t).let { it * it }
            val noise = (rng.nextFloat() * 2f - 1f) * env * 0.22f
            buf[i] = (noise * Short.MAX_VALUE).toInt()
                .coerceIn(Short.MIN_VALUE.toInt(), Short.MAX_VALUE.toInt()).toShort()
        }
        return buf
    }

    /** CRISP: 60ms noise burst + high-frequency tone — sharp, snappy flip */
    private fun buildCrispSamples(): ShortArray {
        val n = SAMPLE_RATE * 60 / 1000
        val buf = ShortArray(n)
        val rng = Random(0xC21C)
        for (i in 0 until n) {
            val t = i.toFloat() / n
            val env = (1f - t).let { it * it * it }
            val noise = (rng.nextFloat() * 2f - 1f) * 0.5f
            val tone = sin(2.0 * PI * 1500.0 * i / SAMPLE_RATE).toFloat() * 0.5f
            val sample = (noise + tone) * env * 0.18f
            buf[i] = (sample * Short.MAX_VALUE).toInt()
                .coerceIn(Short.MIN_VALUE.toInt(), Short.MAX_VALUE.toInt()).toShort()
        }
        return buf
    }

    /** SOFT: 150ms low-pass filtered noise with slow attack + slow decay — gentle whisper */
    private fun buildSoftSamples(): ShortArray {
        val n = SAMPLE_RATE * 150 / 1000
        val buf = ShortArray(n)
        val rng = Random(0xA4B2)
        var prev = 0f
        for (i in 0 until n) {
            val t = i.toFloat() / n
            val env = if (t < 0.20f) (t / 0.20f) else (1f - t)
            val rawNoise = (rng.nextFloat() * 2f - 1f)
            // One-pole low-pass (alpha ≈ 0.15 → heavily smoothed)
            prev = prev + 0.15f * (rawNoise - prev)
            val sample = prev * env * 0.20f
            buf[i] = (sample * Short.MAX_VALUE).toInt()
                .coerceIn(Short.MIN_VALUE.toInt(), Short.MAX_VALUE.toInt()).toShort()
        }
        return buf
    }
}
