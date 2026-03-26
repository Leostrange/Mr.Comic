package com.example.feature.reader.ui

import android.content.Context
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.speech.tts.TextToSpeech
import android.speech.tts.UtteranceProgressListener
import com.example.core.model.ReaderTtsSleepTimerMode
import com.example.core.ui.tts.SystemTtsVoiceOption
import com.example.core.ui.tts.mapSystemTtsVoiceOptions
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

internal data class ReaderTtsRuntimeState(
    val ready: Boolean = false,
    val availableVoices: List<SystemTtsVoiceOption> = emptyList(),
    val selectedVoiceName: String? = null,
    val currentChunkIndex: Int = 0,
    val totalChunks: Int = 0,
    val isSpeaking: Boolean = false,
    val isPaused: Boolean = false,
    val message: String? = null
)

internal class ReaderTextToSpeechController(
    context: Context
) {
    private val appContext = context.applicationContext
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private val mainHandler = Handler(Looper.getMainLooper())
    private val _state = MutableStateFlow(ReaderTtsRuntimeState())
    val state: StateFlow<ReaderTtsRuntimeState> = _state.asStateFlow()

    private var tts: TextToSpeech? = null
    private var playbackGeneration: Long = 0L
    private var sleepTimerJob: Job? = null
    private var currentChunks: List<String> = emptyList()
    private var currentRawHtml: String? = null
    private var speechRate: Float = 1.0f
    private var pitch: Float = 1.0f
    private var volume: Float = 1.0f
    private var sleepTimerMode: ReaderTtsSleepTimerMode = ReaderTtsSleepTimerMode.OFF

    init {
        val holder = arrayOfNulls<TextToSpeech>(1)
        holder[0] = TextToSpeech(appContext) { status ->
            val engine = holder[0]
            if (status == TextToSpeech.SUCCESS && engine != null) {
                engine.setOnUtteranceProgressListener(object : UtteranceProgressListener() {
                    override fun onStart(utteranceId: String?) = Unit

                    override fun onDone(utteranceId: String?) {
                        handleUtteranceDone(utteranceId)
                    }

                    @Deprecated("Deprecated in Java")
                    override fun onError(utteranceId: String?) {
                        handleUtteranceError(utteranceId)
                    }

                    override fun onError(utteranceId: String?, errorCode: Int) {
                        handleUtteranceError(utteranceId)
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
                _state.update { it.copy(ready = false) }
            }
        }
    }

    fun updateContent(
        rawHtml: String?,
        preferredVoiceName: String?,
        speed: Float,
        pitch: Float,
        volume: Float,
        sleepTimerMode: ReaderTtsSleepTimerMode
    ) {
        this.speechRate = speed.coerceIn(0.5f, 2.0f)
        this.pitch = pitch.coerceIn(0.5f, 2.0f)
        this.volume = volume.coerceIn(0f, 1f)
        this.sleepTimerMode = sleepTimerMode
        if (preferredVoiceName != _state.value.selectedVoiceName) {
            selectVoice(preferredVoiceName)
        }
        if (rawHtml == currentRawHtml) {
            if (_state.value.isSpeaking) {
                cancelSleepTimer()
                scheduleSleepTimer()
            }
            return
        }
        currentRawHtml = rawHtml
        currentChunks = buildReaderTtsChunks(rawHtml)
        playbackGeneration += 1L
        cancelSleepTimer()
        tts?.stop()
        _state.update {
            it.copy(
                currentChunkIndex = 0,
                totalChunks = currentChunks.size,
                isSpeaking = false,
                isPaused = false,
                message = null
            )
        }
    }

    fun togglePlayback() {
        if (_state.value.isSpeaking) {
            pause()
        } else {
            play()
        }
    }

    fun play() {
        if (!_state.value.ready || currentChunks.isEmpty()) return
        speakChunk(_state.value.currentChunkIndex.coerceIn(0, currentChunks.lastIndex))
    }

    fun pause() {
        if (!_state.value.isSpeaking) return
        playbackGeneration += 1L
        cancelSleepTimer()
        tts?.stop()
        _state.update {
            it.copy(isSpeaking = false, isPaused = true)
        }
    }

    fun stop() {
        playbackGeneration += 1L
        cancelSleepTimer()
        tts?.stop()
        _state.update {
            it.copy(
                currentChunkIndex = 0,
                isSpeaking = false,
                isPaused = false
            )
        }
    }

    fun nextChunk() {
        if (currentChunks.isEmpty()) return
        val nextIndex = (_state.value.currentChunkIndex + 1).coerceAtMost(currentChunks.lastIndex)
        jumpToChunk(nextIndex)
    }

    fun previousChunk() {
        if (currentChunks.isEmpty()) return
        val previousIndex = (_state.value.currentChunkIndex - 1).coerceAtLeast(0)
        jumpToChunk(previousIndex)
    }

    fun selectVoice(voiceName: String?) {
        val engine = tts ?: run {
            _state.update { it.copy(selectedVoiceName = voiceName) }
            return
        }
        if (voiceName.isNullOrBlank()) {
            engine.defaultVoice?.let { engine.voice = it }
            _state.update { it.copy(selectedVoiceName = null) }
            return
        }
        val voice = engine.voices
            ?.firstOrNull { it.name == voiceName }
        if (voice != null) {
            engine.voice = voice
            _state.update { it.copy(selectedVoiceName = voice.name) }
        } else {
            _state.update { it.copy(selectedVoiceName = null) }
        }
    }

    fun release() {
        playbackGeneration += 1L
        cancelSleepTimer()
        tts?.stop()
        tts?.shutdown()
        tts = null
        scope.cancel()
    }

    private fun jumpToChunk(index: Int) {
        if (currentChunks.isEmpty()) return
        val wasActive = _state.value.isSpeaking || _state.value.isPaused
        playbackGeneration += 1L
        cancelSleepTimer()
        tts?.stop()
        _state.update {
            it.copy(
                currentChunkIndex = index,
                isSpeaking = false,
                isPaused = wasActive
            )
        }
        if (_state.value.isPaused || wasActive) {
            play()
        }
    }

    private fun speakChunk(index: Int) {
        val engine = tts ?: return
        val chunk = currentChunks.getOrNull(index) ?: return
        playbackGeneration += 1L
        val generation = playbackGeneration
        cancelSleepTimer()
        engine.setSpeechRate(speechRate)
        engine.setPitch(pitch)
        val bundle = Bundle().apply {
            putFloat(TextToSpeech.Engine.KEY_PARAM_VOLUME, volume)
        }
        _state.update {
            it.copy(
                currentChunkIndex = index,
                totalChunks = currentChunks.size,
                isSpeaking = true,
                isPaused = false,
                message = null
            )
        }
        scheduleSleepTimer()
        engine.speak(
            chunk,
            TextToSpeech.QUEUE_FLUSH,
            bundle,
            "reader-tts-$generation-$index"
        )
    }

    private fun scheduleSleepTimer() {
        val minutes = sleepTimerMode.minutes ?: return
        sleepTimerJob = scope.launch {
            delay(minutes * 60_000L)
            stop()
        }
    }

    private fun cancelSleepTimer() {
        sleepTimerJob?.cancel()
        sleepTimerJob = null
    }

    private fun handleUtteranceDone(utteranceId: String?) {
        val generation = utteranceId?.split("-")?.getOrNull(2)?.toLongOrNull() ?: return
        mainHandler.post {
            if (generation != playbackGeneration) return@post
            val currentIndex = _state.value.currentChunkIndex
            if (currentIndex < currentChunks.lastIndex) {
                speakChunk(currentIndex + 1)
            } else {
                cancelSleepTimer()
                _state.update {
                    it.copy(
                        currentChunkIndex = currentChunks.lastIndex.coerceAtLeast(0),
                        isSpeaking = false,
                        isPaused = false
                    )
                }
            }
        }
    }

    private fun handleUtteranceError(utteranceId: String?) {
        val generation = utteranceId?.split("-")?.getOrNull(2)?.toLongOrNull() ?: return
        mainHandler.post {
            if (generation != playbackGeneration) return@post
            cancelSleepTimer()
            _state.update {
                it.copy(
                    isSpeaking = false,
                    isPaused = false
                )
            }
        }
    }
}
