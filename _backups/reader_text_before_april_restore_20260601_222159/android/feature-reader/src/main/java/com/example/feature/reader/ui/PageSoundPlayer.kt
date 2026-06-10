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

    /**
     * Bug 9.а: a single deferred play request remembered while the SoundPool sample is
     * still loading.  Without this the very first page-flip after launch was silently
     * dropped because [play] returned early when the sample was not yet in [loadedIds].
     * We remember only the most recent request — older deferred turns no longer reflect
     * the current page state.
     */
    private var pendingPlay: Pair<Int, Float>? = null

    /**
     * Bug A1: After a system-initiated SoundPool release (e.g. screen rotation causing
     * the underlying native pool to become invalid), the old reference stays non-null
     * but play() silently fails. We track an initialization generation counter and
     * re-create the pool if a play attempt fails.
     */
    private var poolGeneration: Int = 0

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
            if (status != 0) return@setOnLoadCompleteListener
            val deferred = synchronized(this) {
                loadedIds.add(sampleId)
                pendingPlay?.takeIf { it.first == sampleId }?.also { pendingPlay = null }
            }
            if (deferred != null) {
                runCatching { pool.play(deferred.first, deferred.second, deferred.second, 1, 0, 1f) }
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
        if (soundId == 0) return
        if (soundId !in loadedIds) {
            // Sample still loading: remember the request so OnLoadCompleteListener can
            // play it as soon as the sample is ready.
            pendingPlay = soundId to volume
            return
        }
        val streamId = runCatching {
            soundPool?.play(soundId, volume, volume, 1, 0, 1f) ?: 0
        }.getOrDefault(0)
        // Bug A1: if play() returns 0 the native SoundPool is likely dead after a
        // system-initiated release. Reinitialize and queue the deferred play.
        if (streamId == 0 && soundPool != null) {
            poolGeneration++
            release()
            init(context.applicationContext)
            pendingPlay = when (style) {
                PageSoundStyle.PAPER -> paperSoundId to VOLUME_PAPER
                PageSoundStyle.CRISP -> crispSoundId to VOLUME_CRISP
                PageSoundStyle.SOFT  -> softSoundId  to VOLUME_SOFT
            }
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
        pendingPlay = null
    }
}
