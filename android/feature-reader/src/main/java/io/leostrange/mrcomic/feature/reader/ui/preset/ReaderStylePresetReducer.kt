package io.leostrange.mrcomic.feature.reader.ui.preset

import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderChromeState
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSnapshot
import io.leostrange.mrcomic.feature.reader.ui.ReaderUiState

/**
 * Pure state reducer for reader style presets.
 *
 * Every function takes the current [ReaderUiState] and returns a new state
 * without side effects. The ViewModel is responsible for persisting the
 * resulting state to preferences and for triggering any CSS/WebView updates.
 *
 * This class extracts the preset logic from ReaderViewModel so it can be
 * tested in isolation and reused without coupling to the ViewModel lifecycle.
 */
object ReaderStylePresetReducer {

    // ── Default typography values ──────────────────────────────────────────
    // These mirror the private constants that were in ReaderViewModel.
    // Changing them here changes the reset target for all callers.

    const val DEFAULT_FONT_SIZE = 18
    const val DEFAULT_COLOR_SCHEME = "DAY"
    const val DEFAULT_FONT_FAMILY = "Georgia"
    const val DEFAULT_LINE_HEIGHT = 1.6f
    const val DEFAULT_LETTER_SPACING = 0f
    const val DEFAULT_WORD_SPACING = 0f
    const val DEFAULT_PARAGRAPH_SPACING = 0.2f
    const val DEFAULT_ALIGNMENT = "left"
    const val DEFAULT_BOLD = false

    // ── Apply a built-in preset ────────────────────────────────────────────

    /**
     * Applies a built-in [ReadingPreset] to the state.
     *
     * For non-CUSTOM presets, all typography fields are replaced with the
     * preset's values and custom colors are cleared. Chrome is expanded.
     *
     * For [ReadingPreset.CUSTOM], only the preset name is updated (the user
     * keeps their current typography values).
     */
    fun applyBuiltInPreset(
        state: ReaderUiState,
        preset: ReadingPreset
    ): ReaderUiState {
        if (preset == ReadingPreset.CUSTOM) {
            return state.copy(readerPreset = ReadingPreset.CUSTOM.name)
        }
        val style = preset.style()
        return state.copy(
            readerPreset = preset.name,
            textColorScheme = style.textColorScheme,
            textCustomTextColor = null,
            textCustomBackgroundColor = null,
            textCustomAccentColor = null,
            textFontFamily = style.fontFamily,
            textLineHeight = style.lineHeight,
            textLetterSpacing = style.letterSpacing,
            textWordSpacing = style.wordSpacing,
            textParagraphSpacing = style.paragraphSpacing,
            textAlignment = style.textAlignment,
            textBold = style.textBold,
            immersiveMode = style.immersiveMode,
            readerPageAnimation = style.pageAnimation,
            chromeState = ReaderChromeState.EXPANDED
        )
    }

    // ── Mark as custom ─────────────────────────────────────────────────────

    /**
     * Marks the current state as [ReadingPreset.CUSTOM] without changing
     * any typography values. Called when the user tweaks an individual setting.
     */
    fun markCustom(state: ReaderUiState): ReaderUiState =
        state.copy(readerPreset = ReadingPreset.CUSTOM.name)

    // ── Reset to defaults ──────────────────────────────────────────────────

    /**
     * Resets all typography fields to their default values and marks the
     * preset as [ReadingPreset.CUSTOM]. Unrelated state (page, progress,
     * bookmarks, brightness) is preserved.
     */
    fun resetTextSettings(state: ReaderUiState): ReaderUiState =
        state.copy(
            readerPreset = ReadingPreset.CUSTOM.name,
            textFontSize = DEFAULT_FONT_SIZE,
            textColorScheme = DEFAULT_COLOR_SCHEME,
            textCustomTextColor = null,
            textCustomBackgroundColor = null,
            textCustomAccentColor = null,
            textFontFamily = DEFAULT_FONT_FAMILY,
            textLineHeight = DEFAULT_LINE_HEIGHT,
            textLetterSpacing = DEFAULT_LETTER_SPACING,
            textWordSpacing = DEFAULT_WORD_SPACING,
            textParagraphSpacing = DEFAULT_PARAGRAPH_SPACING,
            textAlignment = DEFAULT_ALIGNMENT,
            textBold = DEFAULT_BOLD
        )

    // ── Apply a saved preset snapshot ──────────────────────────────────────

    /**
     * Applies a [ReaderStylePresetSnapshot] to the state. This is used for
     * saved user presets and JSON imports. Chrome is expanded.
     */
    fun applySnapshot(
        state: ReaderUiState,
        snapshot: ReaderStylePresetSnapshot
    ): ReaderUiState = state.applyReaderStylePreset(snapshot)

    // ── Individual field setters ────────────────────────────────────────────
    // Each marks the preset as CUSTOM and updates the single field.

    fun setFontSize(state: ReaderUiState, size: Int): ReaderUiState =
        state.copy(readerPreset = ReadingPreset.CUSTOM.name, textFontSize = size)

    fun setColorScheme(state: ReaderUiState, scheme: String): ReaderUiState =
        state.copy(readerPreset = ReadingPreset.CUSTOM.name, textColorScheme = scheme)

    fun setFontFamily(state: ReaderUiState, family: String): ReaderUiState =
        state.copy(readerPreset = ReadingPreset.CUSTOM.name, textFontFamily = family)

    fun setLineHeight(state: ReaderUiState, height: Float): ReaderUiState =
        state.copy(readerPreset = ReadingPreset.CUSTOM.name, textLineHeight = height)

    fun setLetterSpacing(state: ReaderUiState, spacing: Float): ReaderUiState =
        state.copy(readerPreset = ReadingPreset.CUSTOM.name, textLetterSpacing = spacing)

    fun setWordSpacing(state: ReaderUiState, spacing: Float): ReaderUiState =
        state.copy(readerPreset = ReadingPreset.CUSTOM.name, textWordSpacing = spacing)

    fun setParagraphSpacing(state: ReaderUiState, spacing: Float): ReaderUiState =
        state.copy(readerPreset = ReadingPreset.CUSTOM.name, textParagraphSpacing = spacing)

    fun setAlignment(state: ReaderUiState, align: String): ReaderUiState =
        state.copy(readerPreset = ReadingPreset.CUSTOM.name, textAlignment = align)

    fun setBold(state: ReaderUiState, bold: Boolean): ReaderUiState =
        state.copy(readerPreset = ReadingPreset.CUSTOM.name, textBold = bold)

    fun setCustomTextColor(state: ReaderUiState, color: Long?): ReaderUiState =
        state.copy(readerPreset = ReadingPreset.CUSTOM.name, textCustomTextColor = color)

    fun setCustomBackgroundColor(state: ReaderUiState, color: Long?): ReaderUiState =
        state.copy(readerPreset = ReadingPreset.CUSTOM.name, textCustomBackgroundColor = color)

    fun setCustomAccentColor(state: ReaderUiState, color: Long?): ReaderUiState =
        state.copy(readerPreset = ReadingPreset.CUSTOM.name, textCustomAccentColor = color)
}
