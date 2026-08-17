package io.leostrange.mrcomic.feature.reader.ui

import androidx.datastore.preferences.core.floatPreferencesKey
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.model.ReadingMode
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * DataStore keys are divided into two generations:
 *
 * * legacy preset keys preserve values already saved by the previous ▶ cycle;
 * * precise keys store the exact integer Slider value separately for every reading mode.
 *
 * This needs no Room migration and does not overwrite earlier user preferences.
 */
internal object ReaderAutoScrollProfiles {
    const val DEFAULT_SPEED = ReaderAutoScrollPrecision.DEFAULT_SPEED
    val PRESET_SPEEDS = floatArrayOf(30f, 80f, 180f)

    private val LEGACY_PAGE_LTR = floatPreferencesKey("reader_auto_scroll_speed_page_ltr")
    private val LEGACY_PAGE_RTL = floatPreferencesKey("reader_auto_scroll_speed_page_rtl")
    private val LEGACY_DUAL_PAGE = floatPreferencesKey("reader_auto_scroll_speed_dual_page")
    private val LEGACY_WEBTOON = floatPreferencesKey("reader_auto_scroll_speed_webtoon")

    private val PRECISE_PAGE_LTR = floatPreferencesKey("reader_auto_scroll_precise_speed_page_ltr_v2")
    private val PRECISE_PAGE_RTL = floatPreferencesKey("reader_auto_scroll_precise_speed_page_rtl_v2")
    private val PRECISE_DUAL_PAGE = floatPreferencesKey("reader_auto_scroll_precise_speed_dual_page_v2")
    private val PRECISE_WEBTOON = floatPreferencesKey("reader_auto_scroll_precise_speed_webtoon_v2")

    fun legacyKeyFor(mode: ReadingMode) = when (mode) {
        ReadingMode.PAGE_LTR -> LEGACY_PAGE_LTR
        ReadingMode.PAGE_RTL -> LEGACY_PAGE_RTL
        ReadingMode.DUAL_PAGE -> LEGACY_DUAL_PAGE
        ReadingMode.WEBTOON -> LEGACY_WEBTOON
    }

    fun preciseKeyFor(mode: ReadingMode) = when (mode) {
        ReadingMode.PAGE_LTR -> PRECISE_PAGE_LTR
        ReadingMode.PAGE_RTL -> PRECISE_PAGE_RTL
        ReadingMode.DUAL_PAGE -> PRECISE_DUAL_PAGE
        ReadingMode.WEBTOON -> PRECISE_WEBTOON
    }

    /** Compatibility alias for callers that formerly asked for the only speed key. */
    fun keyFor(mode: ReadingMode) = preciseKeyFor(mode)

    /** Retained for the former three-state speed-cycle and its existing unit tests. */
    fun sanitize(speed: Float): Float =
        PRESET_SPEEDS.minByOrNull { kotlin.math.abs(it - speed) } ?: DEFAULT_SPEED

    fun next(speed: Float): Float {
        if (speed <= 0f) return PRESET_SPEEDS.first()
        val index = PRESET_SPEEDS.indexOfFirst { it == sanitize(speed) }
        return PRESET_SPEEDS[(index + 1).mod(PRESET_SPEEDS.size)]
    }

    fun sanitizePrecise(speed: Float): Float = ReaderAutoScrollPrecision.normalize(speed)
}

/**
 * Changes required in ReaderUiState:
 *
 * val autoScrollSpeed: Float = ReaderAutoScrollProfiles.DEFAULT_SPEED,
 * val autoScrollEnabled: Boolean = false,
 * val autoScrollCountdownProgress: Float = 0f,
 * val autoScrollPauseReasons: Set<ReaderAutoScrollPauseReason> = emptySet(),
 */
internal class ReaderAutoScrollSettingsController(
    private val uiState: MutableStateFlow<ReaderUiState>,
    private val scope: CoroutineScope,
    private val preferences: UserPreferences,
) {
    /** Called once after the effective initial mode is known. It never auto-starts playback. */
    fun restoreSpeedFor(mode: ReadingMode) {
        scope.launch {
            val exact = preferences
                .get(ReaderAutoScrollProfiles.preciseKeyFor(mode), -1f)
                .first()
            val restored = if (exact >= ReaderAutoScrollPrecision.MIN_SPEED) {
                ReaderAutoScrollProfiles.sanitizePrecise(exact)
            } else {
                // Existing installations retain the nearest former preset on their first update.
                val legacy = preferences
                    .get(ReaderAutoScrollProfiles.legacyKeyFor(mode), ReaderAutoScrollProfiles.DEFAULT_SPEED)
                    .first()
                ReaderAutoScrollProfiles.sanitize(legacy)
            }
            uiState.update { current ->
                if (current.readingMode != mode) current else current.copy(
                    autoScrollSpeed = restored,
                    autoScrollEnabled = false,
                    autoScrollCountdownProgress = 0f,
                    autoScrollPauseReasons = emptySet(),
                )
            }
        }
    }

    /** Call only after ReaderReadingModeController has updated ReaderUiState.readingMode. */
    fun switchMode(mode: ReadingMode) {
        uiState.update {
            it.copy(
                autoScrollEnabled = false,
                autoScrollCountdownProgress = 0f,
                autoScrollPauseReasons = emptySet(),
            )
        }
        restoreSpeedFor(mode)
    }

    /** Toolbar ▶/⏸. This starts/stops only; it does not change the selected speed. */
    fun toggle() {
        val state = uiState.value
        uiState.update {
            if (state.autoScrollEnabled) {
                it.copy(
                    autoScrollEnabled = false,
                    autoScrollCountdownProgress = 0f,
                    autoScrollPauseReasons = emptySet(),
                )
            } else {
                it.copy(autoScrollEnabled = true, autoScrollCountdownProgress = 0f)
            }
        }
    }

    /** Optional accessibility fallback for an overflow action. Slider is the primary precise control. */
    fun cycleSpeed() {
        val state = uiState.value
        commitSpeed(
            mode = state.readingMode,
            speed = ReaderAutoScrollProfiles.next(state.autoScrollSpeed),
        )
    }

    /** Called during Slider drag. It updates Chrome immediately and does not perform a DataStore write. */
    fun previewSpeed(speed: Float) {
        val exact = ReaderAutoScrollProfiles.sanitizePrecise(speed)
        uiState.update { it.copy(autoScrollSpeed = exact) }
    }

    /** Called by Slider.onValueChangeFinished. Exactly one DataStore write is made per completed drag. */
    fun commitSpeed(mode: ReadingMode, speed: Float) {
        val exact = ReaderAutoScrollProfiles.sanitizePrecise(speed)
        uiState.update { current ->
            if (current.readingMode == mode) current.copy(autoScrollSpeed = exact) else current
        }
        scope.launch { preferences.set(ReaderAutoScrollProfiles.preciseKeyFor(mode), exact) }
    }

    fun stop() {
        uiState.update {
            it.copy(
                autoScrollEnabled = false,
                autoScrollCountdownProgress = 0f,
                autoScrollPauseReasons = emptySet(),
            )
        }
    }
}
