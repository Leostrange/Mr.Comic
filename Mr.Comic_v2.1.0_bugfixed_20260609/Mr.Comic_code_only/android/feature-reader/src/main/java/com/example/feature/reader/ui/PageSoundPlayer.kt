package com.example.feature.reader.ui

import android.content.Context
import android.media.AudioAttributes
import android.media.SoundPool
import com.example.core.ui.R

enum class PageSoundStyle {
    PAPER,
    CRISP,
    SOFT;

    companion object {
        fun fromStored(value: String?): PageSoundStyle = entries.firstOrNull { it.name == value } ?: PAPER
    }
}

/**
 * Plays short bundled page-flip sounds.
 * Three styles: PAPER, CRISP, SOFT.
 */
object PageSoundPlayer {
    private const val VOLUME_PAPER = 0.92f
    private const val VOLUME_CRISP = 1.00f
    private const val VOLUME_SOFT = 1.00f

    private var soundPool: SoundPool? = null
    private var paperSoundId: Int = 0
    private var crispSoundId: Int = 0
    private var softSoundId: Int = 0

    @Synchronized
    fun init(context: Context) {
        if (soundPool != null) return
        val pool = SoundPool.Builder()
            .setMaxStreams(2)
            .setAudioAttributes(
                AudioAttributes.Builder()
                    .setUsage(AudioAttributes.USAGE_ASSISTANCE_SONIFICATION)
                    .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
                    .build()
            )
            .build()
        paperSoundId = pool.load(context, R.raw.page_flip_paper, 1)
        crispSoundId = pool.load(context, R.raw.page_flip_crisp, 1)
        softSoundId = pool.load(context, R.raw.page_flip_soft, 1)
        soundPool = pool
    }

    fun play(context: Context, style: PageSoundStyle = PageSoundStyle.PAPER) {
        init(context.applicationContext)
        val (soundId, volume) = when (style) {
            PageSoundStyle.PAPER -> paperSoundId to VOLUME_PAPER
            PageSoundStyle.CRISP -> crispSoundId to VOLUME_CRISP
            PageSoundStyle.SOFT -> softSoundId to VOLUME_SOFT
        }
        if (soundId == 0) return
        runCatching {
            soundPool?.play(soundId, volume, volume, 1, 0, 1f)
        }
    }

    @Synchronized
    fun release() {
        soundPool?.release()
        soundPool = null
        paperSoundId = 0
        crispSoundId = 0
        softSoundId = 0
    }
}
