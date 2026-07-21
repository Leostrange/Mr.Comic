package io.leostrange.mrcomic.feature.reader.ui

import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.feature.reader.ui.preset.toReaderStylePresetSnapshot
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderInfoSlot
import io.leostrange.mrcomic.core.model.ReaderScreenTimeoutMode
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.model.ReaderTtsProviderType
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import io.leostrange.mrcomic.core.domain.util.normalizeTapZoneActionName
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetEntries
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetEntry
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSnapshot
import io.leostrange.mrcomic.feature.reader.domain.preset.parseReaderStylePreset
import io.leostrange.mrcomic.feature.reader.domain.preset.serializeReaderStylePresetEntries
import io.leostrange.mrcomic.feature.reader.ui.preset.persistReaderStylePresetSnapshot
import io.leostrange.mrcomic.feature.reader.ui.preset.ReaderStylePresetReducer
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Handles all reader settings/preferences mutations.
 *
 * Extracted from ReaderViewModel to reduce its size.
 * Each setter updates [_uiState] immediately and persists to [readerPreferences] asynchronously.
 */
internal class ReaderSettingsController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val readerPreferences: UserPreferences,
    private val dataStore: androidx.datastore.core.DataStore<Preferences>
) {
    private var brightnessJob: Job? = null

    // ── Typography ────────────────────────────────────────────────────────

    fun setTextFontSize(size: Int) {
        _uiState.update { ReaderStylePresetReducer.setFontSize(it, size) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            readerPreferences.set(PreferencesKeys.TEXT_FONT_SIZE, size)
        }
    }

    fun setTextColorScheme(scheme: String) {
        _uiState.update { ReaderStylePresetReducer.setColorScheme(it, scheme) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            readerPreferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, scheme)
        }
    }

    fun setTextCustomTextColor(color: Long?) {
        _uiState.update { ReaderStylePresetReducer.setCustomTextColor(it, color) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            persistNullablePreference(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, color)
        }
    }

    fun setTextCustomBackgroundColor(color: Long?) {
        _uiState.update { ReaderStylePresetReducer.setCustomBackgroundColor(it, color) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            persistNullablePreference(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, color)
        }
    }

    fun setTextCustomAccentColor(color: Long?) {
        _uiState.update { ReaderStylePresetReducer.setCustomAccentColor(it, color) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            persistNullablePreference(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, color)
        }
    }

    fun setTextFontFamily(family: String) {
        _uiState.update { ReaderStylePresetReducer.setFontFamily(it, family) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            readerPreferences.set(PreferencesKeys.TEXT_FONT_FAMILY, family)
        }
    }

    fun setTextLineHeight(height: Float) {
        _uiState.update { ReaderStylePresetReducer.setLineHeight(it, height) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            readerPreferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, height)
        }
    }

    fun setTextLetterSpacing(spacing: Float) {
        _uiState.update { ReaderStylePresetReducer.setLetterSpacing(it, spacing) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            readerPreferences.set(PreferencesKeys.TEXT_LETTER_SPACING, spacing)
        }
    }

    fun setTextWordSpacing(spacing: Float) {
        _uiState.update { ReaderStylePresetReducer.setWordSpacing(it, spacing) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            readerPreferences.set(PreferencesKeys.TEXT_WORD_SPACING, spacing)
        }
    }

    fun setTextParagraphSpacing(spacing: Float) {
        _uiState.update { ReaderStylePresetReducer.setParagraphSpacing(it, spacing) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            readerPreferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, spacing)
        }
    }

    fun setTextAlignment(align: String) {
        _uiState.update { ReaderStylePresetReducer.setAlignment(it, align) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            readerPreferences.set(PreferencesKeys.TEXT_ALIGNMENT, align)
        }
    }

    fun setTextBold(bold: Boolean) {
        _uiState.update { ReaderStylePresetReducer.setBold(it, bold) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            readerPreferences.set(PreferencesKeys.TEXT_BOLD, bold)
        }
    }

    fun resetTextSettings() {
        _uiState.update { ReaderStylePresetReducer.resetTextSettings(it) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.TEXT_FONT_SIZE, DEFAULT_TEXT_FONT_SIZE)
            readerPreferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, DEFAULT_TEXT_COLOR_SCHEME)
            readerPreferences.set(PreferencesKeys.TEXT_FONT_FAMILY, DEFAULT_TEXT_FONT_FAMILY)
            readerPreferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, DEFAULT_TEXT_LINE_HEIGHT)
            readerPreferences.set(PreferencesKeys.TEXT_LETTER_SPACING, DEFAULT_TEXT_LETTER_SPACING)
            readerPreferences.set(PreferencesKeys.TEXT_WORD_SPACING, DEFAULT_TEXT_WORD_SPACING)
            readerPreferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, DEFAULT_TEXT_PARAGRAPH_SPACING)
            readerPreferences.set(PreferencesKeys.TEXT_ALIGNMENT, DEFAULT_TEXT_ALIGNMENT)
            readerPreferences.set(PreferencesKeys.TEXT_BOLD, DEFAULT_TEXT_BOLD)
            persistNullablePreference(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, null)
            persistNullablePreference(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, null)
            persistNullablePreference(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, null)
        }
    }

    // ── Style presets ─────────────────────────────────────────────────────

    fun markReaderPresetCustom() {
        _uiState.update { ReaderStylePresetReducer.markCustom(it) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name) }
    }

    fun applyReadingPreset(preset: ReadingPreset) {
        if (preset == ReadingPreset.CUSTOM) {
            markReaderPresetCustom()
            return
        }
        val style = preset.style()
        _uiState.update { ReaderStylePresetReducer.applyBuiltInPreset(it, preset) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, preset.name)
            readerPreferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, style.immersiveMode)
            readerPreferences.set(PreferencesKeys.READER_PAGE_ANIMATION, style.pageAnimation)
            readerPreferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, style.textColorScheme)
            readerPreferences.set(PreferencesKeys.TEXT_FONT_FAMILY, style.fontFamily)
            readerPreferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, style.lineHeight)
            readerPreferences.set(PreferencesKeys.TEXT_LETTER_SPACING, style.letterSpacing)
            readerPreferences.set(PreferencesKeys.TEXT_WORD_SPACING, style.wordSpacing)
            readerPreferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, style.paragraphSpacing)
            readerPreferences.set(PreferencesKeys.TEXT_ALIGNMENT, style.textAlignment)
            readerPreferences.set(PreferencesKeys.TEXT_BOLD, style.textBold)
            persistNullablePreference(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, null)
            persistNullablePreference(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, null)
            persistNullablePreference(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, null)
        }
    }

    fun saveReaderStylePreset(slot: Int) {
        val normalizedSlot = slot.coerceIn(1, 3)
        val existingEntry = ReaderStylePresetEntries.entryAtSlot(
            _uiState.value.readerStylePresetEntries,
            normalizedSlot
        )
        if (existingEntry != null) {
            overwriteReaderStylePreset(existingEntry.id)
        } else {
            val fallbackName = localizedReaderStyleFallbackName(normalizedSlot)
            saveCurrentReaderStylePreset(displayName = fallbackName)
        }
    }

    fun saveCurrentReaderStylePreset(displayName: String? = null) {
        val snapshot = _uiState.value.toReaderStylePresetSnapshot(
            displayName = displayName?.trim()?.takeIf { it.isNotEmpty() }
                ?: localizedReaderStyleFallbackName(_uiState.value.readerStylePresetEntries.size + 1)
        )
        val updatedEntries = ReaderStylePresetEntries.prepend(
            entries = _uiState.value.readerStylePresetEntries,
            entry = ReaderStylePresetEntry(
                id = "preset_${System.currentTimeMillis()}",
                snapshot = snapshot
            )
        )
        updateReaderStylePresetEntries(updatedEntries)
    }

    fun overwriteReaderStylePreset(id: String) {
        val currentEntries = _uiState.value.readerStylePresetEntries
        val existing = currentEntries.firstOrNull { it.id == id } ?: return
        val updatedEntries = ReaderStylePresetEntries.overwrite(
            entries = currentEntries,
            id = id,
            snapshot = _uiState.value.toReaderStylePresetSnapshot(
                displayName = existing.snapshot.displayName
            )
        )
        updateReaderStylePresetEntries(updatedEntries)
    }

    fun applyReaderStylePreset(slot: Int) {
        val normalizedSlot = slot.coerceIn(1, 3)
        ReaderStylePresetEntries.entryAtSlot(_uiState.value.readerStylePresetEntries, normalizedSlot)
            ?.let { applyReaderStylePreset(it.id) }
    }

    fun applyReaderStylePreset(id: String) {
        val snapshot = _uiState.value.readerStylePresetEntries
            .firstOrNull { it.id == id }
            ?.snapshot
            ?: return
        applyReaderStylePresetSnapshot(snapshot)
    }

    fun clearReaderStylePreset(slot: Int) {
        val normalizedSlot = slot.coerceIn(1, 3)
        ReaderStylePresetEntries.entryAtSlot(_uiState.value.readerStylePresetEntries, normalizedSlot)
            ?.let { deleteReaderStylePreset(it.id) }
    }

    fun deleteReaderStylePreset(id: String) {
        updateReaderStylePresetEntries(
            ReaderStylePresetEntries.delete(_uiState.value.readerStylePresetEntries, id)
        )
    }

    fun renameReaderStylePreset(id: String, displayName: String) {
        val updatedEntries = ReaderStylePresetEntries.rename(
            entries = _uiState.value.readerStylePresetEntries,
            id = id,
            displayName = displayName
        )
        updateReaderStylePresetEntries(updatedEntries)
    }

    fun importReaderStyleFromJson(rawJson: String): String? {
        val snapshot = parseReaderStylePreset(rawJson) ?: return null
        applyReaderStylePresetSnapshot(snapshot)
        return snapshot.displayName?.takeIf { it.isNotBlank() }
            ?: ReadingPreset.fromStored(snapshot.readerPreset).name
    }

    private fun localizedReaderStyleFallbackName(index: Int): String = "Style $index"

    private fun updateReaderStylePresetEntries(entries: List<ReaderStylePresetEntry>) {
        val normalizedEntries = ReaderStylePresetEntries.normalize(entries)
        _uiState.update { state ->
            state.copy(
                readerStylePresetEntries = normalizedEntries,
                readerStylePresetSlots = ReaderStylePresetEntries.toLegacySlots(normalizedEntries)
            )
        }
        viewModelScope.launch {
            persistReaderStylePresetEntries(normalizedEntries)
        }
    }

    private suspend fun persistReaderStylePresetEntries(entries: List<ReaderStylePresetEntry>) {
        val legacySlots = ReaderStylePresetEntries.toLegacySlots(entries)
        readerPreferences.set(
            PreferencesKeys.READER_STYLE_PRESET_LIST,
            serializeReaderStylePresetEntries(entries)
        )
        readerPreferences.set(PreferencesKeys.READER_STYLE_PRESET_1, legacySlots[0].serialized.orEmpty())
        readerPreferences.set(PreferencesKeys.READER_STYLE_PRESET_2, legacySlots[1].serialized.orEmpty())
        readerPreferences.set(PreferencesKeys.READER_STYLE_PRESET_3, legacySlots[2].serialized.orEmpty())
    }

    private suspend fun persistNullablePreference(key: Preferences.Key<Long>, value: Long?) {
        dataStore.edit { prefs ->
            if (value == null) prefs.remove(key) else prefs[key] = value
        }
    }

    private fun applyReaderStylePresetSnapshot(snapshot: ReaderStylePresetSnapshot) {
        _uiState.update { ReaderStylePresetReducer.applySnapshot(it, snapshot) }
        viewModelScope.launch {
            persistReaderStylePresetSnapshot(
                snapshot = snapshot,
                readerPreferences = readerPreferences,
                dataStore = dataStore
            )
        }
    }

    // ── Reader chrome ─────────────────────────────────────────────────────

    fun setBrightness(value: Float) {
        markReaderPresetCustom()
        val safe = if (value <= 0.01f) -1f else value.coerceIn(0.05f, 1f)
        _uiState.update { it.copy(brightness = safe) }
        brightnessJob?.cancel()
        brightnessJob = viewModelScope.launch {
            delay(300)
            readerPreferences.set(PreferencesKeys.READING_BRIGHTNESS, safe)
        }
    }

    fun setKeepScreenOn(enabled: Boolean) {
        _uiState.update { it.copy(keepScreenOn = enabled) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_KEEP_SCREEN_ON, enabled)
        }
    }

    fun setAutoScrollSpeed(speed: Float) {
        _uiState.update { it.copy(autoScrollSpeed = speed.coerceIn(0f, 500f)) }
    }

    fun cycleAutoScrollSpeed() {
        val current = _uiState.value.autoScrollSpeed
        val next = when {
            current <= 0f -> 30f
            current < 60f -> 80f
            current < 120f -> 180f
            else -> 0f
        }
        setAutoScrollSpeed(next)
    }

    fun setScreenTimeoutMode(mode: String) {
        val resolved = ReaderScreenTimeoutMode.fromStored(mode)
        _uiState.update { it.copy(screenTimeoutMode = resolved.storedValue) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_SCREEN_TIMEOUT_MODE, resolved.storedValue)
        }
    }

    fun setImmersiveMode(enabled: Boolean) {
        markReaderPresetCustom()
        _uiState.update { it.copy(immersiveMode = enabled) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, enabled)
        }
    }

    fun setLandscapeSpreadEnabled(enabled: Boolean) {
        _uiState.update { it.copy(landscapeSpreadEnabled = enabled) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_LANDSCAPE_SPREAD_ENABLED, enabled)
        }
    }

    fun setPreloadPages(count: Int) {
        val safe = count.coerceIn(2, 8)
        _uiState.update { it.copy(preloadPages = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRELOAD_PAGES, safe)
        }
    }

    fun setPageAnimation(animation: String) {
        markReaderPresetCustom()
        _uiState.update { it.copy(readerPageAnimation = animation) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PAGE_ANIMATION, animation)
        }
    }

    fun setVolumeKeysPagingEnabled(enabled: Boolean) {
        _uiState.update { it.copy(volumeKeysPagingEnabled = enabled) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_VOLUME_KEYS_PAGING, enabled)
        }
    }

    // ── Tap zones ─────────────────────────────────────────────────────────

    fun setTapZoneMode(value: String) {
        val resolved = ReaderTapZoneMode.fromStored(value)
        _uiState.update { it.copy(tapZoneMode = resolved.name) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TAP_ZONE_MODE, resolved.name)
        }
    }

    fun setTapZoneSwap(enabled: Boolean) {
        _uiState.update { it.copy(tapZoneSwap = enabled) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TAP_ZONE_SWAP, enabled)
        }
    }

    fun setTapZoneAction(position: String, action: String) {
        val normalizedActionName = normalizeTapZoneActionName(action)
        val normalizedPosition = position.uppercase()
        _uiState.update {
            when (normalizedPosition) {
                "LEFT" -> it.copy(tapZoneMode = ReaderTapZoneMode.CUSTOM.name, tapZoneLeftAction = normalizedActionName)
                "CENTER" -> it.copy(tapZoneMode = ReaderTapZoneMode.CUSTOM.name, tapZoneCenterAction = normalizedActionName)
                else -> it.copy(tapZoneMode = ReaderTapZoneMode.CUSTOM.name, tapZoneRightAction = normalizedActionName)
            }
        }
        val key = when (normalizedPosition) {
            "LEFT" -> PreferencesKeys.READER_TAP_ZONE_LEFT
            "CENTER" -> PreferencesKeys.READER_TAP_ZONE_CENTER
            else -> PreferencesKeys.READER_TAP_ZONE_RIGHT
        }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TAP_ZONE_MODE, ReaderTapZoneMode.CUSTOM.name)
            readerPreferences.set(key, normalizedActionName)
        }
    }

    fun toggleTapZoneDirectionShortcut() {
        val state = _uiState.value
        val mode = ReaderTapZoneMode.fromStored(state.tapZoneMode)
        if (mode == ReaderTapZoneMode.CUSTOM) {
            val left = state.tapZoneLeftAction
            val right = state.tapZoneRightAction
            _uiState.update { it.copy(tapZoneLeftAction = right, tapZoneRightAction = left) }
            viewModelScope.launch {
                readerPreferences.set(PreferencesKeys.READER_TAP_ZONE_LEFT, right)
                readerPreferences.set(PreferencesKeys.READER_TAP_ZONE_RIGHT, left)
            }
        } else {
            val nextSwap = !state.tapZoneSwap
            _uiState.update { it.copy(tapZoneSwap = nextSwap) }
            viewModelScope.launch {
                readerPreferences.set(PreferencesKeys.READER_TAP_ZONE_SWAP, nextSwap)
            }
        }
    }

    // ── Header/footer ─────────────────────────────────────────────────────

    fun setHeaderSlot(position: String, slot: String) {
        val normalizedSlot = ReaderInfoSlot.fromStored(slot).name
        val normalizedPosition = position.uppercase()
        _uiState.update {
            when (normalizedPosition) {
                "LEFT" -> it.copy(headerLeftSlot = normalizedSlot)
                "CENTER" -> it.copy(headerCenterSlot = normalizedSlot)
                else -> it.copy(headerRightSlot = normalizedSlot)
            }
        }
        val key = when (normalizedPosition) {
            "LEFT" -> PreferencesKeys.READER_HEADER_LEFT_SLOT
            "CENTER" -> PreferencesKeys.READER_HEADER_CENTER_SLOT
            else -> PreferencesKeys.READER_HEADER_RIGHT_SLOT
        }
        viewModelScope.launch { readerPreferences.set(key, normalizedSlot) }
    }

    fun setFooterSlot(position: String, slot: String) {
        val normalizedSlot = ReaderInfoSlot.fromStored(slot).name
        val normalizedPosition = position.uppercase()
        _uiState.update {
            when (normalizedPosition) {
                "LEFT" -> it.copy(footerLeftSlot = normalizedSlot)
                "CENTER" -> it.copy(footerCenterSlot = normalizedSlot)
                else -> it.copy(footerRightSlot = normalizedSlot)
            }
        }
        val key = when (normalizedPosition) {
            "LEFT" -> PreferencesKeys.READER_FOOTER_LEFT_SLOT
            "CENTER" -> PreferencesKeys.READER_FOOTER_CENTER_SLOT
            else -> PreferencesKeys.READER_FOOTER_RIGHT_SLOT
        }
        viewModelScope.launch { readerPreferences.set(key, normalizedSlot) }
    }

    fun setHeaderFooterFontSize(size: Int) {
        val safe = size.coerceIn(10, 20)
        _uiState.update { it.copy(headerFooterFontSize = safe) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_HEADER_FOOTER_FONT_SIZE, safe) }
    }

    fun setHeaderFooterVerticalPadding(padding: Int) {
        val safe = padding.coerceIn(4, 20)
        _uiState.update { it.copy(headerFooterVerticalPadding = safe) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_HEADER_FOOTER_VERTICAL_PADDING, safe) }
    }

    fun setHeaderFooterLeftPadding(padding: Int) {
        val safe = padding.coerceIn(8, 32)
        _uiState.update { it.copy(headerFooterLeftPadding = safe) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_HEADER_FOOTER_LEFT_PADDING, safe) }
    }

    fun setHeaderFooterRightPadding(padding: Int) {
        val safe = padding.coerceIn(8, 32)
        _uiState.update { it.copy(headerFooterRightPadding = safe) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_HEADER_FOOTER_RIGHT_PADDING, safe) }
    }

    // ── Chrome visibility ─────────────────────────────────────────────────

    fun setChromeAutoHideEnabled(enabled: Boolean) {
        _uiState.update { it.copy(chromeAutoHideEnabled = enabled) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_CHROME_AUTO_HIDE, enabled) }
    }

    fun setTopToolbarOpacity(value: Float) {
        val safe = value.coerceIn(0f, 1.0f)
        _uiState.update { it.copy(topToolbarOpacity = safe) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, safe) }
    }

    fun setBottomToolbarOpacity(value: Float) {
        val safe = value.coerceIn(0f, 1.0f)
        _uiState.update { it.copy(bottomToolbarOpacity = safe) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, safe) }
    }

    fun setToolbarOpacity(value: Float) {
        val safe = value.coerceIn(0f, 1.0f)
        _uiState.update { it.copy(topToolbarOpacity = safe, bottomToolbarOpacity = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, safe)
            readerPreferences.set(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, safe)
        }
    }

    fun setToolbarBlur(value: Float) {
        val safe = value.coerceIn(0f, 1.0f)
        _uiState.update { it.copy(toolbarBlur = safe) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_TOOLBAR_BLUR, safe) }
    }

    // ── Image settings ────────────────────────────────────────────────────

    fun setImageScaleMode(value: String) {
        val resolved = ReaderImageScaleMode.fromStored(value)
        _uiState.update { it.copy(imageScaleMode = resolved.storedValue) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_IMAGE_SCALE_MODE, resolved.storedValue) }
    }

    fun setImageMarginCropHorizontal(value: Float) {
        val safe = value.coerceIn(0f, 0.22f)
        _uiState.update { it.copy(imageMarginCropHorizontal = safe) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_PAGE_MARGIN_CROP_HORIZONTAL, safe) }
    }

    fun setImageMarginCropVertical(value: Float) {
        val safe = value.coerceIn(0f, 0.22f)
        _uiState.update { it.copy(imageMarginCropVertical = safe) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_PAGE_MARGIN_CROP_VERTICAL, safe) }
    }

    // ── TTS settings ──────────────────────────────────────────────────────

    fun setTtsSpeed(value: Float) {
        val safe = value.coerceIn(0.5f, 2.0f)
        _uiState.update { it.copy(ttsSpeed = safe) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_TTS_SPEED, safe) }
    }

    fun setTtsProvider(value: String) {
        val resolved = ReaderTtsProviderType.fromStored(value)
        _uiState.update { it.copy(ttsProvider = resolved.storedValue) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_TTS_PROVIDER, resolved.storedValue) }
    }

    fun setTtsPitch(value: Float) {
        val safe = value.coerceIn(0.5f, 2.0f)
        _uiState.update { it.copy(ttsPitch = safe) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_TTS_PITCH, safe) }
    }

    fun setTtsVolume(value: Float) {
        val safe = value.coerceIn(0f, 1.0f)
        _uiState.update { it.copy(ttsVolume = safe) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_TTS_VOLUME, safe) }
    }

    fun setTtsVoiceName(value: String?) {
        _uiState.update { it.copy(ttsVoiceName = value?.takeIf(String::isNotBlank)) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_TTS_VOICE_NAME, value.orEmpty()) }
    }

    fun setTtsSleepTimerMode(value: String) {
        val resolved = ReaderTtsSleepTimerMode.fromStored(value)
        _uiState.update { it.copy(ttsSleepTimerMode = resolved.storedValue) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_TTS_SLEEP_TIMER_MODE, resolved.storedValue) }
    }

    // ── Chrome icon order ─────────────────────────────────────────────────

    fun setChromeIconVisible(icon: String, visible: Boolean) {
        when (ReaderChromeButton.fromStored(icon) ?: return) {
            ReaderChromeButton.TOC -> {
                _uiState.update { it.copy(chromeShowTocIcon = visible) }
                viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_CHROME_SHOW_TOC, visible) }
            }
            ReaderChromeButton.STYLE -> {
                _uiState.update { it.copy(chromeShowStyleIcon = true) }
                viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_CHROME_SHOW_STYLE, true) }
            }
            ReaderChromeButton.AUDIO -> {
                _uiState.update { it.copy(chromeShowAudioIcon = visible) }
                viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_CHROME_SHOW_AUDIO, visible) }
            }
            ReaderChromeButton.DIRECTION -> {
                _uiState.update { it.copy(chromeShowDirectionIcon = visible) }
                viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_CHROME_SHOW_DIRECTION, visible) }
            }
            ReaderChromeButton.TRANSLATE -> {
                _uiState.update { it.copy(chromeShowTranslateIcon = visible) }
                viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_CHROME_SHOW_TRANSLATE, visible) }
            }
            ReaderChromeButton.BRIGHTNESS -> {
                _uiState.update { it.copy(chromeShowBrightnessIcon = visible) }
                viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_CHROME_SHOW_BRIGHTNESS, visible) }
            }
            ReaderChromeButton.AUTO_SCROLL -> { /* always visible, no preference */ }
        }
    }

    fun moveChromeIcon(icon: String, delta: Int) {
        if (delta == 0) return
        if (ReaderChromeButton.fromStored(icon) == ReaderChromeButton.STYLE) return
        val updatedOrder = ReaderChromeButton.move(_uiState.value.chromeIconOrder, icon, delta)
        _uiState.update { it.copy(chromeIconOrder = updatedOrder) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_CHROME_ICON_ORDER, updatedOrder) }
    }
}
