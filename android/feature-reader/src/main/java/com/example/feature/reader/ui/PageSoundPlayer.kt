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
 *
 * SoundPool.load() is async — the first play() call after init() was previously silent
 * because the sound had not finished loading yet. We now track loaded IDs via
 * OnLoadCompleteListener and skip playback until each sound is ready.
 */
object PageSoundPlayer {
    private const val VOLUME_PAPER = 0.92f
    private const val VOLUME_CRISP = 1.00f
    private const val VOLUME_SOFT  = 1.00f

    private var soundPool: SoundPool? = null
    private var paperSoundId: Int = 0
    private var crispSoundId: Int  = 0
    private var softSoundId: Int   = 0

    /** IDs of sounds that have finished loading and are ready to play. */
    private val loadedIds = mutableSetOf<Int>()

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
        pool.setOnLoadCompleteListener { _, sampleId, status ->
            if (status == 0) {
                synchronized(this) { loadedIds.add(sampleId) }
            }
        }
        paperSoundId = pool.load(context, R.raw.page_flip_paper, 1)
        crispSoundId = pool.load(context, R.raw.page_flip_crisp, 1)
        softSoundId  = pool.load(context, R.raw.page_flip_soft,  1)
        soundPool = pool
    }

    @Synchronized
    fun play(context: Context, style: PageSoundStyle = PageSoundStyle.PAPER) {
        init(context.applicationContext)
        val (soundId, volume) = when (style) {
            PageSoundStyle.PAPER -> paperSoundId to VOLUME_PAPER
            PageSoundStyle.CRISP -> crispSoundId to VOLUME_CRISP
            PageSoundStyle.SOFT  -> softSoundId  to VOLUME_SOFT
        }
        // Do not play until the sample has finished loading — prevents silent first turn.
        if (soundId == 0 || soundId !in loadedIds) return
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
        softSoundId  = 0
        loadedIds.clear()
    }
}
