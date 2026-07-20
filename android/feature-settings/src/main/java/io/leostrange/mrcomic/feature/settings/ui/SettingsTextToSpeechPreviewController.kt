package io.leostrange.mrcomic.feature.settings.ui

import android.content.Context
import android.os.Bundle
import android.speech.tts.TextToSpeech
import android.speech.tts.UtteranceProgressListener
import io.leostrange.mrcomic.core.model.ReaderTtsProviderType
import io.leostrange.mrcomic.core.ui.tts.SystemTtsVoiceOption
import io.leostrange.mrcomic.core.ui.tts.mapSystemTtsVoiceOptions
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update

internal data class SettingsTtsPreviewState(
    val ready: Boolean = false,
    val provider: ReaderTtsProviderType = ReaderTtsProviderType.SYSTEM,
    val availableVoices: List<SystemTtsVoiceOption> = emptyList(),
    val selectedVoiceName: String? = null,
    val isSpeaking: Boolean = false
)

internal class SettingsTextToSpeechPreviewController(
    context: Context
) {
    private val appContext = context.applicationContext
    private val _state = MutableStateFlow(SettingsTtsPreviewState())
    val state: StateFlow<SettingsTtsPreviewState> = _state.asStateFlow()

    private var tts: TextToSpeech? = null
    private var speed: Float = 1.0f
    private var pitch: Float = 1.0f
    private var volume: Float = 1.0f

    init {
        val holder = arrayOfNulls<TextToSpeech>(1)
        holder[0] = TextToSpeech(appContext) { status ->
            val engine = holder[0]
            if (status == TextToSpeech.SUCCESS && engine != null) {
                engine.setOnUtteranceProgressListener(object : UtteranceProgressListener() {
                    override fun onStart(utteranceId: String?) {
                        _state.update { it.copy(isSpeaking = true) }
                    }

                    override fun onDone(utteranceId: String?) {
                        _state.update { it.copy(isSpeaking = false) }
                    }

                    @Deprecated("Deprecated in Java")
                    override fun onError(utteranceId: String?) {
                        _state.update { it.copy(isSpeaking = false) }
                    }

                    override fun onError(utteranceId: String?, errorCode: Int) {
                        _state.update { it.copy(isSpeaking = false) }
                    }
                })
                tts = engine
                _state.update {
                    it.copy(
                        ready = true,
                        availableVoices = mapSystemTtsVoiceOptions(engine.voices)
                    )
                }
                selectVoice(_state.value.selectedVoiceName)
            } else {
                _state.update { it.copy(ready = false, isSpeaking = false) }
            }
        }
    }

    fun updateConfig(
        provider: ReaderTtsProviderType,
        voiceName: String?,
        speed: Float,
        pitch: Float,
        volume: Float
    ) {
        this.speed = speed.coerceIn(0.5f, 2.0f)
        this.pitch = pitch.coerceIn(0.5f, 2.0f)
        this.volume = volume.coerceIn(0f, 1.0f)
        _state.update { it.copy(provider = provider) }
        selectVoice(voiceName)
        if (provider != ReaderTtsProviderType.SYSTEM) {
            stop()
        }
    }

    fun togglePreview(sampleText: String) {
        if (_state.value.isSpeaking) {
            stop()
            return
        }
        if (_state.value.provider != ReaderTtsProviderType.SYSTEM) return
        val engine = tts ?: return
        engine.setSpeechRate(speed)
        engine.setPitch(pitch)
        val bundle = Bundle().apply {
            putFloat(TextToSpeech.Engine.KEY_PARAM_VOLUME, volume)
        }
        engine.speak(
            sampleText,
            TextToSpeech.QUEUE_FLUSH,
            bundle,
            "settings-tts-preview"
        )
    }

    fun stop() {
        tts?.stop()
        _state.update { it.copy(isSpeaking = false) }
    }

    fun release() {
        stop()
        tts?.shutdown()
        tts = null
    }

    private fun selectVoice(voiceName: String?) {
        val engine = tts ?: run {
            _state.update { it.copy(selectedVoiceName = voiceName) }
            return
        }
        if (voiceName.isNullOrBlank()) {
            engine.defaultVoice?.let { engine.voice = it }
            _state.update { it.copy(selectedVoiceName = null) }
            return
        }
        val voice = engine.voices?.firstOrNull { it.name == voiceName }
        if (voice != null) {
            engine.voice = voice
            _state.update { it.copy(selectedVoiceName = voice.name) }
        } else {
            _state.update { it.copy(selectedVoiceName = null) }
        }
    }
}
