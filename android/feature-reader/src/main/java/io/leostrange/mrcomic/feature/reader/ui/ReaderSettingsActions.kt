package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.ui.theme.ReadingPreset

/**
 * Public API for reader settings mutations.
 *
 * Implemented by [ReaderSettingsController] and delegated by [ReaderViewModel]
 * via Kotlin `by` delegation to eliminate ~56 one-liner forwarding methods.
 */
interface ReaderSettingsActions {
    // ── Typography ────────────────────────────────────────────────────────
    fun setTextFontSize(size: Int)
    fun setTextColorScheme(scheme: String)
    fun setTextCustomTextColor(color: Long?)
    fun setTextCustomBackgroundColor(color: Long?)
    fun setTextCustomAccentColor(color: Long?)
    fun setTextFontFamily(family: String)
    fun setTextLineHeight(height: Float)
    fun setTextLetterSpacing(spacing: Float)
    fun setTextWordSpacing(spacing: Float)
    fun setTextParagraphSpacing(spacing: Float)
    fun setTextAlignment(align: String)
    fun setTextBold(bold: Boolean)
    fun resetTextSettings()

    // ── Presets ───────────────────────────────────────────────────────────
    fun markReaderPresetCustom()
    fun applyReadingPreset(preset: ReadingPreset)
    fun saveReaderStylePreset(slot: Int)
    fun saveCurrentReaderStylePreset(displayName: String? = null)
    fun overwriteReaderStylePreset(id: String)
    fun applyReaderStylePreset(slot: Int)
    fun applyReaderStylePreset(id: String)
    fun clearReaderStylePreset(slot: Int)
    fun deleteReaderStylePreset(id: String)
    fun renameReaderStylePreset(id: String, displayName: String)
    fun importReaderStyleFromJson(rawJson: String): String?

    // ── Display ───────────────────────────────────────────────────────────
    fun setBrightness(value: Float)
    fun setKeepScreenOn(enabled: Boolean)
    fun setScreenTimeoutMode(mode: String)
    fun setImmersiveMode(enabled: Boolean)
    fun setLandscapeSpreadEnabled(enabled: Boolean)
    fun setPreloadPages(count: Int)
    fun setPageAnimation(animation: String)
    fun setVolumeKeysPagingEnabled(enabled: Boolean)

    // ── Tap zones ─────────────────────────────────────────────────────────
    fun setTapZoneMode(value: String)
    fun setTapZoneSwap(enabled: Boolean)
    fun setTapZoneAction(position: String, action: String)
    fun toggleTapZoneDirectionShortcut()

    // ── Header/Footer ────────────────────────────────────────────────────
    fun setHeaderSlot(position: String, slot: String)
    fun setFooterSlot(position: String, slot: String)
    fun setHeaderFooterFontSize(size: Int)
    fun setHeaderFooterVerticalPadding(padding: Int)
    fun setHeaderFooterLeftPadding(padding: Int)
    fun setHeaderFooterRightPadding(padding: Int)

    // ── Chrome ────────────────────────────────────────────────────────────
    fun setChromeAutoHideEnabled(enabled: Boolean)
    fun setTopToolbarOpacity(value: Float)
    fun setBottomToolbarOpacity(value: Float)
    fun setToolbarOpacity(value: Float)
    fun setToolbarBlur(value: Float)
    fun setChromeIconVisible(icon: String, visible: Boolean)
    fun moveChromeIcon(icon: String, delta: Int)

    // ── Image ─────────────────────────────────────────────────────────────
    fun setImageScaleMode(value: String)

    /** Symmetric pair writes kept for the style tab / settings sliders. */
    fun setImageMarginCropHorizontal(value: Float)
    fun setImageMarginCropVertical(value: Float)

    /** Per-side crop write used by the margin-crop dialog. */
    fun setMarginCropSide(side: String, value: Float)

    /** Applies all four sides at once (used by the auto-detect preset). */
    fun applyMarginCropSides(left: Float, top: Float, right: Float, bottom: Float)
    fun setMarginCropEnabled(enabled: Boolean)
    fun setMarginCropSymmetric(symmetric: Boolean)
    fun setMarginCropShowWarning(show: Boolean)
    fun setMarginCropDialogVisible(visible: Boolean)

    // ── TTS ───────────────────────────────────────────────────────────────
    fun setTtsSpeed(value: Float)
    fun setTtsProvider(value: String)
    fun setTtsPitch(value: Float)
    fun setTtsVolume(value: Float)
    fun setTtsVoiceName(value: String?)
    fun setTtsSleepTimerMode(value: String)
}
