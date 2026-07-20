package io.leostrange.mrcomic.core.ui.sound

import android.content.Context
import android.media.AudioAttributes
import android.media.SoundPool
import android.os.SystemClock
import io.leostrange.mrcomic.core.ui.R

/**
 * Real-audio UI tactile feedback using SoundPool.
 *
 * Assets (bundled in core-ui/res/raw):
 *   - ui_menu_select.mp3       → selection / button tap
 *   - ui_menu_transition.mp3   → screen / menu navigation
 *   - page_flip_soft_short.mp3 → reader page flip
 *
 * Call [init] once from Application.onCreate() before any sounds play.
 * Thread-safe for reads; init must be called from the main thread.
 */
object UIFeedback {

    /** Master on/off switch — driven by the "Звуки интерфейса" setting. */
    @Volatile var enabled: Boolean = false

    /** Global volume scalar [0.0 … 1.0]; default 0.6 (matches settings default). */
    @Volatile var volume: Float = 0.6f

    // ── Throttle constants ────────────────────────────────────────────────────
    private const val SELECT_THROTTLE_MS     = 80L
    private const val TRANSITION_THROTTLE_MS = 250L
    private const val PAGE_FLIP_THROTTLE_MS  = 120L

    // ── Per-sound relative amplitude scalars ──────────────────────────────────
    private const val VOL_SELECT     = 0.85f  // subtle click
    private const val VOL_TRANSITION = 0.90f  // menu sweep
    private const val VOL_PAGE_FLIP  = 1.00f  // page rustle

    // ── SoundPool state ───────────────────────────────────────────────────────
    private var soundPool: SoundPool? = null
    private var idSelect:     Int = 0
    private var idTransition: Int = 0
    private var idPageFlip:   Int = 0

    // ── Last-play timestamps for throttling (SystemClock.elapsedRealtime) ─────
    @Volatile private var lastSelectMs:     Long = 0L
    @Volatile private var lastTransitionMs: Long = 0L
    @Volatile private var lastPageFlipMs:   Long = 0L

    // ── Init / teardown ───────────────────────────────────────────────────────

    /**
     * Creates the SoundPool and loads the three sound assets.
     * Safe to call multiple times — no-ops after the first call.
     */
    fun init(context: Context) {
        if (soundPool != null) return
        val attrs = AudioAttributes.Builder()
            .setUsage(AudioAttributes.USAGE_ASSISTANCE_SONIFICATION)
            .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
            .build()
        val pool = SoundPool.Builder()
            .setMaxStreams(3)          // max 3 simultaneous streams (one per type)
            .setAudioAttributes(attrs)
            .build()
        idSelect     = pool.load(context, R.raw.ui_menu_select, 1)
        idTransition = pool.load(context, R.raw.ui_menu_transition, 1)
        idPageFlip   = pool.load(context, R.raw.page_flip_soft_short, 1)
        soundPool = pool
    }

    /** Release native resources. Call from Application.onTerminate() if needed. */
    fun release() {
        soundPool?.release()
        soundPool = null
        idSelect = 0; idTransition = 0; idPageFlip = 0
    }

    // ── Public play API ───────────────────────────────────────────────────────

    /** Short muted click — button/chip/list-item taps; throttled at 80 ms. */
    fun playSelect() {
        val now = SystemClock.elapsedRealtime()
        if (!enabled || now - lastSelectMs < SELECT_THROTTLE_MS) return
        lastSelectMs = now
        play(idSelect, VOL_SELECT)
    }

    /**
     * Rising sweep — screen navigation, opening/closing menus;
     * throttled at 250 ms to prevent rapid repetition.
     */
    fun playTransition() {
        val now = SystemClock.elapsedRealtime()
        if (!enabled || now - lastTransitionMs < TRANSITION_THROTTLE_MS) return
        lastTransitionMs = now
        play(idTransition, VOL_TRANSITION)
    }

    /**
     * Soft page-rustle — reader page flip (next / prev);
     * throttled at 120 ms to ignore accidental double-taps.
     */
    fun playPageFlip() {
        val now = SystemClock.elapsedRealtime()
        if (!enabled || now - lastPageFlipMs < PAGE_FLIP_THROTTLE_MS) return
        lastPageFlipMs = now
        play(idPageFlip, VOL_PAGE_FLIP)
    }

    // ── Internal ──────────────────────────────────────────────────────────────

    private fun play(soundId: Int, soundVol: Float) {
        if (soundId == 0) return           // not yet loaded (init not called yet)
        val v = (volume * soundVol).coerceIn(0f, 1f)
        // priority=1, loop=0 (no loop), rate=1.0 (normal pitch)
        soundPool?.play(soundId, v, v, 1, 0, 1.0f)
    }
}
