package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.domain.util.normalizeTapZoneActionName
import io.leostrange.mrcomic.core.model.ReaderInfoSlot
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.model.ReaderTtsProviderType
import kotlinx.coroutines.launch

internal fun SettingsSettersController.setReaderTapZoneMode(mode: String) {
        scope.launch {
            preferences.set(PreferencesKeys.READER_TAP_ZONE_MODE, ReaderTapZoneMode.fromStored(mode).name)
        }
    }

internal fun SettingsSettersController.setReaderTapZoneSwap(enabled: Boolean) {
        scope.launch {
            preferences.set(PreferencesKeys.READER_TAP_ZONE_SWAP, enabled)
        }
    }

internal fun SettingsSettersController.setReaderVolumeKeysPaging(enabled: Boolean) {
        scope.launch {
            preferences.set(PreferencesKeys.READER_VOLUME_KEYS_PAGING, enabled)
        }
    }

internal fun SettingsSettersController.setReaderTtsSpeed(value: Float) {
        setSlider("reader_tts_speed") {
            preferences.set(PreferencesKeys.READER_TTS_SPEED, value.coerceIn(0.5f, 2.0f))
        }
    }

internal fun SettingsSettersController.setReaderTtsProvider(value: String) {
        scope.launch {
            preferences.set(
                PreferencesKeys.READER_TTS_PROVIDER,
                ReaderTtsProviderType.fromStored(value).storedValue
            )
        }
    }

internal fun SettingsSettersController.setReaderTtsPitch(value: Float) {
        setSlider("reader_tts_pitch") {
            preferences.set(PreferencesKeys.READER_TTS_PITCH, value.coerceIn(0.5f, 2.0f))
        }
    }

internal fun SettingsSettersController.setReaderTtsVolume(value: Float) {
        setSlider("reader_tts_volume") {
            preferences.set(PreferencesKeys.READER_TTS_VOLUME, value.coerceIn(0f, 1.0f))
        }
    }

internal fun SettingsSettersController.setReaderTtsVoiceName(value: String?) {
        scope.launch {
            preferences.set(PreferencesKeys.READER_TTS_VOICE_NAME, value.orEmpty())
        }
    }

internal fun SettingsSettersController.setReaderTtsSleepTimerMode(value: String) {
        val resolved = ReaderTtsSleepTimerMode.fromStored(value)
        scope.launch {
            preferences.set(PreferencesKeys.READER_TTS_SLEEP_TIMER_MODE, resolved.storedValue)
        }
    }

internal fun SettingsSettersController.setAppVideoSplashEnabled(enabled: Boolean) {
        scope.launch {
            preferences.set(PreferencesKeys.APP_VIDEO_SPLASH_ENABLED, enabled)
        }
    }

internal fun SettingsSettersController.setReaderTapZoneAction(position: String, action: String) {
        val normalizedAction = normalizeTapZoneActionName(action)
        val key = when (position.uppercase()) {
            "LEFT" -> PreferencesKeys.READER_TAP_ZONE_LEFT
            "CENTER" -> PreferencesKeys.READER_TAP_ZONE_CENTER
            else -> PreferencesKeys.READER_TAP_ZONE_RIGHT
        }
        scope.launch {
            preferences.set(PreferencesKeys.READER_TAP_ZONE_MODE, ReaderTapZoneMode.CUSTOM.name)
            preferences.set(key, normalizedAction)
        }
    }

internal fun SettingsSettersController.setReaderHeaderSlot(position: String, slot: String) {
        val normalizedSlot = ReaderInfoSlot.fromStored(slot).name
        val key = when (position.uppercase()) {
            "LEFT" -> PreferencesKeys.READER_HEADER_LEFT_SLOT
            "CENTER" -> PreferencesKeys.READER_HEADER_CENTER_SLOT
            else -> PreferencesKeys.READER_HEADER_RIGHT_SLOT
        }
        scope.launch { preferences.set(key, normalizedSlot) }
    }

internal fun SettingsSettersController.setReaderFooterSlot(position: String, slot: String) {
        val normalizedSlot = ReaderInfoSlot.fromStored(slot).name
        val key = when (position.uppercase()) {
            "LEFT" -> PreferencesKeys.READER_FOOTER_LEFT_SLOT
            "CENTER" -> PreferencesKeys.READER_FOOTER_CENTER_SLOT
            else -> PreferencesKeys.READER_FOOTER_RIGHT_SLOT
        }
        scope.launch { preferences.set(key, normalizedSlot) }
    }

internal fun SettingsSettersController.setReaderHeaderFooterFontSize(size: Int) {
        setSlider("readerHeaderFooterFontSize") {
            preferences.set(PreferencesKeys.READER_HEADER_FOOTER_FONT_SIZE, size.coerceIn(10, 20))
        }
    }

internal fun SettingsSettersController.setReaderHeaderFooterVerticalPadding(padding: Int) {
        setSlider("readerHeaderFooterVerticalPadding") {
            preferences.set(PreferencesKeys.READER_HEADER_FOOTER_VERTICAL_PADDING, padding.coerceIn(4, 20))
        }
    }

internal fun SettingsSettersController.setReaderHeaderFooterLeftPadding(padding: Int) {
        setSlider("readerHeaderFooterLeftPadding") {
            preferences.set(PreferencesKeys.READER_HEADER_FOOTER_LEFT_PADDING, padding.coerceIn(8, 32))
        }
    }

internal fun SettingsSettersController.setReaderHeaderFooterRightPadding(padding: Int) {
        setSlider("readerHeaderFooterRightPadding") {
            preferences.set(PreferencesKeys.READER_HEADER_FOOTER_RIGHT_PADDING, padding.coerceIn(8, 32))
        }
    }
