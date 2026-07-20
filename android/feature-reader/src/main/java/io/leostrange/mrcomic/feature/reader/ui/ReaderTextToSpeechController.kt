package io.leostrange.mrcomic.feature.reader.ui

import android.Manifest
import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.PackageManager
import android.graphics.drawable.Icon
import android.media.AudioAttributes
import android.media.AudioFocusRequest
import android.media.AudioManager
import android.os.Build
import android.os.SystemClock
import android.media.MediaMetadata
import android.media.session.MediaSession
import android.media.session.PlaybackState
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.speech.tts.TextToSpeech
import android.speech.tts.UtteranceProgressListener
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import io.leostrange.mrcomic.core.ui.tts.SystemTtsVoiceOption
import io.leostrange.mrcomic.core.ui.tts.mapSystemTtsVoiceOptions
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

internal object ReaderTextToSpeechControllerStore {
    @Volatile
    private var controller: ReaderTextToSpeechController? = null

    fun get(context: Context): ReaderTextToSpeechController =
        controller ?: synchronized(this) {
            controller ?: ReaderTextToSpeechController(context).also { controller = it }
        }

    fun peek(): ReaderTextToSpeechController? = controller
}

internal class ReaderTextToSpeechController(
    context: Context
) {
    private val appContext = context.applicationContext
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private val mainHandler = Handler(Looper.getMainLooper())
    private val _state = MutableStateFlow(ReaderTtsRuntimeState())
    val state: StateFlow<ReaderTtsRuntimeState> = _state.asStateFlow()
    private val audioManager = appContext.getSystemService(Context.AUDIO_SERVICE) as AudioManager

    private var tts: TextToSpeech? = null
    private var playbackGeneration: Long = 0L
    private var sleepTimerJob: Job? = null
    private var currentChunks: List<String> = emptyList()
    private var currentRawHtml: String? = null
    private var speechRate: Float = 1.0f
    private var pitch: Float = 1.0f
    private var volume: Float = 1.0f
    private var sleepTimerMode: ReaderTtsSleepTimerMode = ReaderTtsSleepTimerMode.OFF
    private var currentTitle: String? = null
    private var currentChapterTitle: String? = null
    private var hasAudioFocus: Boolean = false
    private val notificationManager = appContext.getSystemService(NotificationManager::class.java)
    private val audioFocusChangeListener = AudioManager.OnAudioFocusChangeListener { focusChange ->
        when (focusChange) {
            AudioManager.AUDIOFOCUS_LOSS,
            AudioManager.AUDIOFOCUS_LOSS_TRANSIENT,
            AudioManager.AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK -> {
                mainHandler.post {
                    if (_state.value.isSpeaking) {
                        pause()
                    }
                }
            }
            AudioManager.AUDIOFOCUS_GAIN -> Unit
        }
    }
    private val audioFocusRequest: AudioFocusRequest? =
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            AudioFocusRequest.Builder(AudioManager.AUDIOFOCUS_GAIN)
                .setAudioAttributes(
                    AudioAttributes.Builder()
                        .setUsage(AudioAttributes.USAGE_MEDIA)
                        .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
                        .build()
                )
                .setAcceptsDelayedFocusGain(false)
                .setWillPauseWhenDucked(true)
                .setOnAudioFocusChangeListener(audioFocusChangeListener)
                .build()
        } else {
            null
        }
    private val mediaSession: MediaSession = MediaSession(appContext, "MrComicReaderTts").apply {
        setFlags(MediaSession.FLAG_HANDLES_MEDIA_BUTTONS or MediaSession.FLAG_HANDLES_TRANSPORT_CONTROLS)
        appContext.packageManager.getLaunchIntentForPackage(appContext.packageName)?.let { launchIntent ->
            val pendingIntent = PendingIntent.getActivity(
                appContext,
                0,
                launchIntent.addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP),
                PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
            )
            setSessionActivity(pendingIntent)
        }
        setCallback(object : MediaSession.Callback() {
            override fun onPlay() = play()
            override fun onPause() = pause()
            override fun onSkipToNext() = nextChunk()
            override fun onSkipToPrevious() = previousChunk()
            override fun onStop() = stop()
        })
    }
    private val notificationReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            when (intent?.action) {
                ACTION_PREVIOUS -> previousChunk()
                ACTION_PLAY_PAUSE -> togglePlayback()
                ACTION_NEXT -> nextChunk()
                ACTION_STOP -> stop()
            }
        }
    }

    init {
        ensureNotificationChannel()
        registerNotificationReceiver()
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
        sleepTimerMode: ReaderTtsSleepTimerMode,
        title: String?,
        chapterTitle: String?
    ) {
        this.speechRate = speed.coerceIn(0.5f, 2.0f)
        this.pitch = pitch.coerceIn(0.5f, 2.0f)
        this.volume = volume.coerceIn(0f, 1f)
        this.sleepTimerMode = sleepTimerMode
        this.currentTitle = title?.takeIf { it.isNotBlank() }
        this.currentChapterTitle = chapterTitle?.takeIf { it.isNotBlank() }
        updateMediaSessionMetadata()
        if (preferredVoiceName != _state.value.selectedVoiceName) {
            selectVoice(preferredVoiceName)
        }
        if (rawHtml == currentRawHtml) {
            if (_state.value.isSpeaking) {
                cancelSleepTimer()
                scheduleSleepTimer()
            }
            updateMediaSessionPlaybackState()
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
        updateMediaSessionPlaybackState()
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
        if (!requestAudioFocus()) return
        updateMediaSessionMetadata()
        updateMediaSessionPlaybackState()
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
        updateMediaSessionPlaybackState()
        abandonAudioFocus()
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
        updateMediaSessionPlaybackState()
        abandonAudioFocus()
    }

    fun restartFromBeginning() {
        if (currentChunks.isEmpty()) return
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
        updateMediaSessionPlaybackState()
        play()
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
        abandonAudioFocus()
        cancelMediaNotification()
        unregisterNotificationReceiver()
        mediaSession.isActive = false
        mediaSession.release()
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
        updateMediaSessionPlaybackState()
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
        updateMediaSessionPlaybackState()
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
                updateMediaSessionPlaybackState()
                abandonAudioFocus()
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
            updateMediaSessionPlaybackState()
            abandonAudioFocus()
        }
    }

    private fun updateMediaSessionMetadata() {
        val displayTitle = currentChapterTitle ?: currentTitle ?: "Чтение голосом"
        mediaSession.setMetadata(
            MediaMetadata.Builder()
                .putString(MediaMetadata.METADATA_KEY_TITLE, displayTitle)
                .putString(MediaMetadata.METADATA_KEY_DISPLAY_TITLE, displayTitle)
                .putString(MediaMetadata.METADATA_KEY_ARTIST, currentTitle ?: "Mr.Comic")
                .putString(MediaMetadata.METADATA_KEY_ALBUM, "Mr.Comic")
                .build()
        )
        updateMediaNotification()
    }

    private fun updateMediaSessionPlaybackState() {
        val snapshot = _state.value
        val state = when {
            snapshot.isSpeaking -> PlaybackState.STATE_PLAYING
            snapshot.isPaused && currentChunks.isNotEmpty() -> PlaybackState.STATE_PAUSED
            else -> PlaybackState.STATE_STOPPED
        }
        mediaSession.setPlaybackState(
            PlaybackState.Builder()
                .setActions(
                    PlaybackState.ACTION_PLAY or
                        PlaybackState.ACTION_PLAY_PAUSE or
                        PlaybackState.ACTION_PAUSE or
                        PlaybackState.ACTION_SKIP_TO_NEXT or
                        PlaybackState.ACTION_SKIP_TO_PREVIOUS or
                        PlaybackState.ACTION_STOP
                )
                .setState(
                    state,
                    snapshot.currentChunkIndex.toLong().coerceAtLeast(0L),
                    if (snapshot.isSpeaking) speechRate else 0f,
                    SystemClock.elapsedRealtime()
                )
                .build()
        )
        mediaSession.isActive = state != PlaybackState.STATE_STOPPED
        updateMediaNotification()
        if (state == PlaybackState.STATE_PLAYING) {
            mainHandler.postDelayed(
                { if (_state.value.isSpeaking) updateMediaNotification() },
                350L
            )
        }
    }

    private fun updateMediaNotification() {
        val notification = currentNotificationOrNull()
        if (notification == null) {
            cancelMediaNotification()
            stopPlaybackService()
            return
        }
        runCatching {
            startOrUpdatePlaybackService()
            notificationManager.notify(TTS_NOTIFICATION_ID, notification)
        }
    }

    internal fun currentNotificationOrNull(): Notification? {
        val snapshot = _state.value
        val shouldShow = currentChunks.isNotEmpty() && (snapshot.isSpeaking || snapshot.isPaused)
        if (!shouldShow) return null
        if (!canPostNotifications()) return null
        return buildMediaNotification(snapshot)
    }

    private fun buildMediaNotification(snapshot: ReaderTtsRuntimeState): Notification {
        val chapterLabel = currentChapterTitle ?: "Глава ${snapshot.currentChunkIndex + 1}"
        val contentLabel = buildString {
            append(chapterLabel)
            if (snapshot.totalChunks > 0) {
                append(" • ")
                append(snapshot.currentChunkIndex + 1)
                append('/')
                append(snapshot.totalChunks)
            }
        }
        val launchIntent = appContext.packageManager.getLaunchIntentForPackage(appContext.packageName)
        val contentIntent = launchIntent?.let {
            PendingIntent.getActivity(
                appContext,
                0,
                it.addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP or Intent.FLAG_ACTIVITY_CLEAR_TOP),
                PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
            )
        }
        val isPlaying = snapshot.isSpeaking
        return Notification.Builder(appContext, TTS_NOTIFICATION_CHANNEL_ID)
            .setSmallIcon(android.R.drawable.ic_media_play)
            .setContentTitle(currentTitle ?: "Чтение голосом")
            .setContentText(contentLabel)
            .setSubText("Чтение голосом")
            .setContentIntent(contentIntent)
            .setVisibility(Notification.VISIBILITY_PUBLIC)
            .setCategory(Notification.CATEGORY_TRANSPORT)
            .setOnlyAlertOnce(true)
            .setOngoing(isPlaying)
            .setShowWhen(false)
            .addAction(
                Notification.Action.Builder(
                    Icon.createWithResource(appContext, android.R.drawable.ic_media_previous),
                    "Назад",
                    actionPendingIntent(ACTION_PREVIOUS, 101)
                ).build()
            )
            .addAction(
                Notification.Action.Builder(
                    Icon.createWithResource(
                        appContext,
                        if (isPlaying) android.R.drawable.ic_media_pause else android.R.drawable.ic_media_play
                    ),
                    if (isPlaying) "Пауза" else "Воспроизвести",
                    actionPendingIntent(ACTION_PLAY_PAUSE, 102)
                ).build()
            )
            .addAction(
                Notification.Action.Builder(
                    Icon.createWithResource(appContext, android.R.drawable.ic_media_next),
                    "Вперед",
                    actionPendingIntent(ACTION_NEXT, 103)
                ).build()
            )
            .addAction(
                Notification.Action.Builder(
                    Icon.createWithResource(appContext, android.R.drawable.ic_menu_close_clear_cancel),
                    "Стоп",
                    actionPendingIntent(ACTION_STOP, 104)
                ).build()
            )
            .setStyle(
                Notification.MediaStyle()
                    .setMediaSession(mediaSession.sessionToken)
                    .setShowActionsInCompactView(0, 1, 2)
            )
            .build()
    }

    private fun actionPendingIntent(action: String, requestCode: Int): PendingIntent =
        PendingIntent.getBroadcast(
            appContext,
            requestCode,
            Intent(action).setPackage(appContext.packageName),
            PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
        )

    private fun ensureNotificationChannel() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return
        val channel = NotificationChannel(
            TTS_NOTIFICATION_CHANNEL_ID,
            "Озвучивание книг",
            NotificationManager.IMPORTANCE_LOW
        ).apply {
            description = "Управление чтением голосом"
            lockscreenVisibility = Notification.VISIBILITY_PUBLIC
            setShowBadge(false)
        }
        notificationManager.createNotificationChannel(channel)
    }

    private fun registerNotificationReceiver() {
        val filter = IntentFilter().apply {
            addAction(ACTION_PREVIOUS)
            addAction(ACTION_PLAY_PAUSE)
            addAction(ACTION_NEXT)
            addAction(ACTION_STOP)
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            appContext.registerReceiver(notificationReceiver, filter, Context.RECEIVER_NOT_EXPORTED)
        } else {
            @Suppress("DEPRECATION")
            appContext.registerReceiver(notificationReceiver, filter)
        }
    }

    private fun unregisterNotificationReceiver() {
        runCatching { appContext.unregisterReceiver(notificationReceiver) }
    }

    private fun cancelMediaNotification() {
        notificationManager.cancel(TTS_NOTIFICATION_ID)
    }

    private fun canPostNotifications(): Boolean {
        return Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU ||
            appContext.checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) == PackageManager.PERMISSION_GRANTED
    }

    private fun requestAudioFocus(): Boolean {
        if (hasAudioFocus) return true
        val result = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            audioManager.requestAudioFocus(audioFocusRequest!!)
        } else {
            @Suppress("DEPRECATION")
            audioManager.requestAudioFocus(
                audioFocusChangeListener,
                AudioManager.STREAM_MUSIC,
                AudioManager.AUDIOFOCUS_GAIN
            )
        }
        hasAudioFocus = result == AudioManager.AUDIOFOCUS_REQUEST_GRANTED
        return hasAudioFocus
    }

    private fun abandonAudioFocus() {
        if (!hasAudioFocus) return
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            audioManager.abandonAudioFocusRequest(audioFocusRequest!!)
        } else {
            @Suppress("DEPRECATION")
            audioManager.abandonAudioFocus(audioFocusChangeListener)
        }
        hasAudioFocus = false
    }

    private fun startOrUpdatePlaybackService() {
        val intent = Intent(appContext, ReaderTtsPlaybackService::class.java)
            .setAction(ReaderTtsPlaybackService.ACTION_START_OR_UPDATE)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            appContext.startForegroundService(intent)
        } else {
            appContext.startService(intent)
        }
    }

    private fun stopPlaybackService() {
        val intent = Intent(appContext, ReaderTtsPlaybackService::class.java)
            .setAction(ReaderTtsPlaybackService.ACTION_STOP)
        appContext.startService(intent)
    }

    companion object {
        internal const val TTS_NOTIFICATION_ID = 3107
        internal const val TTS_NOTIFICATION_CHANNEL_ID = "reader_tts_playback"
        internal const val ACTION_PREVIOUS = "io.leostrange.mrcomic.reader.tts.PREVIOUS"
        internal const val ACTION_PLAY_PAUSE = "io.leostrange.mrcomic.reader.tts.PLAY_PAUSE"
        internal const val ACTION_NEXT = "io.leostrange.mrcomic.reader.tts.NEXT"
        internal const val ACTION_STOP = "io.leostrange.mrcomic.reader.tts.STOP"
    }
}
