package com.example.feature.library

import android.content.ComponentName
import android.content.Context
import android.net.Uri
import android.os.SystemClock
import androidx.media3.common.MediaItem
import androidx.media3.common.MediaMetadata
import androidx.media3.common.Player
import androidx.media3.session.MediaController
import androidx.media3.session.SessionToken
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.data.repository.AudiobookRepository
import com.example.core.model.Audiobook
import com.google.common.util.concurrent.ListenableFuture
import java.util.concurrent.Executor
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Job
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import kotlin.math.abs
import javax.inject.Inject

data class AudiobookPlayerUiState(
    val audiobook: Audiobook? = null,
    val isPlaying: Boolean = false,
    val currentChapterIndex: Int = 0,
    val positionMs: Long = 0L,
    val durationMs: Long = 0L,
    val speed: Float = 1f,
    val isConnected: Boolean = false,
    val sleepTimerRemainingMs: Long? = null,
    val bookmarkChapterIndex: Int? = null,
    val bookmarkPositionMs: Long? = null
)

@HiltViewModel
class AudiobookPlayerViewModel @Inject constructor(
    private val audiobookRepository: AudiobookRepository,
    @ApplicationContext private val context: Context
) : ViewModel() {

    private val _uiState = MutableStateFlow(AudiobookPlayerUiState())
    val uiState: StateFlow<AudiobookPlayerUiState> = _uiState.asStateFlow()
    private val preferences = UserPreferences(context.dataStore)

    private var controllerFuture: ListenableFuture<MediaController>? = null
    private var controller: MediaController? = null
    private var positionPollingJob: Job? = null
    private var sleepTimerJob: Job? = null
    private var sleepTimerEndAtMs: Long? = null
    private var lastPersistedChapterIndex: Int? = null
    private var lastPersistedPositionMs: Long = -1L

    private val playerListener = object : Player.Listener {
        override fun onIsPlayingChanged(isPlaying: Boolean) {
            _uiState.value = _uiState.value.copy(isPlaying = isPlaying)
            if (isPlaying) {
                startPositionPolling()
            } else {
                stopPositionPolling()
                persistProgress(force = true)
            }
        }

        override fun onMediaItemTransition(mediaItem: androidx.media3.common.MediaItem?, reason: Int) {
            val index = controller?.currentMediaItemIndex ?: 0
            val duration = controller?.duration?.coerceAtLeast(0L) ?: 0L
            _uiState.value = _uiState.value.copy(
                currentChapterIndex = index,
                durationMs = duration,
                positionMs = 0L
            )
        }

        override fun onPlaybackParametersChanged(playbackParameters: androidx.media3.common.PlaybackParameters) {
            _uiState.value = _uiState.value.copy(speed = playbackParameters.speed)
        }
    }

    fun connect() {
        if (controller != null) return
        val sessionToken = SessionToken(
            context,
            ComponentName(context.packageName, "com.example.mrcomic.media.AudiobookPlaybackService")
        )
        controllerFuture = MediaController.Builder(context, sessionToken).buildAsync()
        controllerFuture?.addListener({
            try {
                val ctrl = controllerFuture?.get() ?: return@addListener
                controller = ctrl
                ctrl.addListener(playerListener)
                _uiState.value = _uiState.value.copy(
                    isConnected = true,
                    isPlaying = ctrl.isPlaying,
                    currentChapterIndex = ctrl.currentMediaItemIndex,
                    positionMs = ctrl.currentPosition.coerceAtLeast(0L),
                    durationMs = ctrl.duration.coerceAtLeast(0L),
                    speed = ctrl.playbackParameters.speed
                )
                if (ctrl.isPlaying) startPositionPolling()
            } catch (_: Exception) {}
        }, Executor { it.run() })
    }

    fun loadAndPlay(audiobookId: String) {
        viewModelScope.launch {
            val audiobook = audiobookRepository.getById(audiobookId) ?: return@launch
            val displayAudiobook = resolveAudiobookCover(audiobook)
            lastPersistedChapterIndex = null
            lastPersistedPositionMs = -1L
            _uiState.value = _uiState.value.copy(audiobook = displayAudiobook)
            loadBookmark(displayAudiobook.id)
            // Wait for controller if not yet connected
            var retries = 0
            while (controller == null && retries < 20) {
                delay(100)
                retries++
            }
            val ctrl = controller ?: return@launch
            val items = buildMediaItems(displayAudiobook)
            val startIndex = displayAudiobook.lastChapterIndex.coerceIn(0, (items.size - 1).coerceAtLeast(0))
            ctrl.setMediaItems(items, startIndex, displayAudiobook.lastPositionMs)
            ctrl.setPlaybackSpeed(displayAudiobook.speed.coerceIn(0.75f, 2.5f))
            ctrl.prepare()
            ctrl.play()
        }
    }

    fun loadAudiobook(audiobookId: String) {
        viewModelScope.launch {
            val audiobook = audiobookRepository.getById(audiobookId) ?: return@launch
            val displayAudiobook = resolveAudiobookCover(audiobook)
            lastPersistedChapterIndex = null
            lastPersistedPositionMs = -1L
            _uiState.value = _uiState.value.copy(audiobook = displayAudiobook)
            loadBookmark(displayAudiobook.id)
        }
    }

    fun play() { controller?.play() }
    fun pause() { controller?.pause() }

    fun seekTo(positionMs: Long) {
        controller?.seekTo(positionMs)
        _uiState.value = _uiState.value.copy(positionMs = positionMs)
        persistProgress(force = true)
    }

    fun seekBy(deltaMs: Long) {
        val ctrl = controller ?: return
        val duration = ctrl.duration.coerceAtLeast(0L)
        val target = (ctrl.currentPosition + deltaMs).coerceAtLeast(0L).let { candidate ->
            if (duration > 0L) candidate.coerceAtMost(duration) else candidate
        }
        ctrl.seekTo(target)
        _uiState.value = _uiState.value.copy(positionMs = target, durationMs = duration)
        persistProgress(force = true)
    }

    fun seekToChapter(index: Int) {
        controller?.seekTo(index, 0L)
        _uiState.value = _uiState.value.copy(currentChapterIndex = index, positionMs = 0L)
        persistProgress(force = true)
    }

    fun skipPreviousChapter() {
        val prev = (_uiState.value.currentChapterIndex - 1).coerceAtLeast(0)
        seekToChapter(prev)
    }

    fun skipNextChapter() {
        val maxIndex = ((_uiState.value.audiobook?.chapters?.size ?: 1) - 1).coerceAtLeast(0)
        val next = (_uiState.value.currentChapterIndex + 1).coerceAtMost(maxIndex)
        seekToChapter(next)
    }

    fun setSpeed(speed: Float) {
        controller?.setPlaybackSpeed(speed)
        _uiState.value = _uiState.value.copy(speed = speed)
        val id = _uiState.value.audiobook?.id ?: return
        viewModelScope.launch {
            audiobookRepository.saveSpeed(id, speed)
        }
    }

    fun setSleepTimer(durationMs: Long?) {
        sleepTimerJob?.cancel()
        sleepTimerJob = null
        sleepTimerEndAtMs = durationMs?.let { SystemClock.elapsedRealtime() + it }
        _uiState.value = _uiState.value.copy(sleepTimerRemainingMs = durationMs)
        if (durationMs == null) return
        sleepTimerJob = viewModelScope.launch {
            while (isActive) {
                val remaining = (sleepTimerEndAtMs ?: break) - SystemClock.elapsedRealtime()
                if (remaining <= 0L) {
                    pause()
                    _uiState.value = _uiState.value.copy(sleepTimerRemainingMs = null)
                    sleepTimerEndAtMs = null
                    break
                }
                _uiState.value = _uiState.value.copy(sleepTimerRemainingMs = remaining)
                delay(1000)
            }
        }
    }

    fun saveProgress() {
        val state = _uiState.value
        val id = state.audiobook?.id ?: return
        viewModelScope.launch {
            audiobookRepository.saveProgress(id, state.currentChapterIndex, state.positionMs)
        }
    }

    /**
     * Close the mini-player: persist progress, stop playback and clear the loaded audiobook so the
     * strip (shown while `uiState.audiobook != null`) actually disappears. Previously the X button
     * only paused, leaving the strip stuck on screen with no way to dismiss it.
     */
    fun dismiss() {
        saveProgress()
        stopPositionPolling()
        controller?.stop()
        controller?.clearMediaItems()
        _uiState.value = _uiState.value.copy(
            audiobook = null,
            isPlaying = false,
            positionMs = 0L,
            durationMs = 0L,
            currentChapterIndex = 0
        )
    }

    fun saveBookmark() {
        val state = _uiState.value
        val audiobookId = state.audiobook?.id ?: return
        val chapterIndex = state.currentChapterIndex
        val positionMs = state.positionMs
        viewModelScope.launch {
            preferences.set(PreferencesKeys.audiobookBookmarkChapter(audiobookId), chapterIndex)
            preferences.set(PreferencesKeys.audiobookBookmarkPosition(audiobookId), positionMs)
            _uiState.value = _uiState.value.copy(
                bookmarkChapterIndex = chapterIndex,
                bookmarkPositionMs = positionMs
            )
        }
    }

    fun seekToBookmark() {
        val state = _uiState.value
        val chapterIndex = state.bookmarkChapterIndex ?: return
        val positionMs = state.bookmarkPositionMs ?: 0L
        controller?.seekTo(chapterIndex, positionMs)
        _uiState.value = _uiState.value.copy(
            currentChapterIndex = chapterIndex,
            positionMs = positionMs
        )
    }

    private fun startPositionPolling() {
        positionPollingJob?.cancel()
        positionPollingJob = viewModelScope.launch {
            while (isActive) {
                val ctrl = controller ?: break
                val pos = ctrl.currentPosition.coerceAtLeast(0L)
                val dur = ctrl.duration.coerceAtLeast(0L)
                _uiState.value = _uiState.value.copy(positionMs = pos, durationMs = dur)
                persistProgress()
                delay(500)
            }
        }
    }

    private fun stopPositionPolling() {
        positionPollingJob?.cancel()
        positionPollingJob = null
    }

    override fun onCleared() {
        persistProgress(force = true)
        stopPositionPolling()
        sleepTimerJob?.cancel()
        controller?.removeListener(playerListener)
        controllerFuture?.let(MediaController::releaseFuture)
        super.onCleared()
    }

    private suspend fun loadBookmark(audiobookId: String) {
        val chapterIndex = preferences
            .get(PreferencesKeys.audiobookBookmarkChapter(audiobookId), -1)
            .first()
            .takeIf { it >= 0 }
        val positionMs = preferences
            .get(PreferencesKeys.audiobookBookmarkPosition(audiobookId), 0L)
            .first()
            .takeIf { chapterIndex != null }
        _uiState.value = _uiState.value.copy(
            bookmarkChapterIndex = chapterIndex,
            bookmarkPositionMs = positionMs
        )
    }

    private suspend fun resolveAudiobookCover(audiobook: Audiobook): Audiobook = withContext(Dispatchers.IO) {
        // Cover resolution uses MediaMetadataRetriever + file copy; must stay off the main thread.
        // The caller's launch runs on Main.immediate because it drives the MediaController afterwards.
        val resolvedCover = AudiobookCoverResolver.resolvePersistedCoverUri(context, audiobook)
            ?: return@withContext audiobook
        if (resolvedCover == audiobook.coverUri) return@withContext audiobook
        val updated = audiobook.copy(coverUri = resolvedCover)
        audiobookRepository.upsert(updated)
        updated
    }

    private fun persistProgress(force: Boolean = false) {
        val state = _uiState.value
        val id = state.audiobook?.id ?: return
        val sameChapter = lastPersistedChapterIndex == state.currentChapterIndex
        val movedEnough = abs(state.positionMs - lastPersistedPositionMs) >= 5_000L
        if (!force && sameChapter && !movedEnough) return
        lastPersistedChapterIndex = state.currentChapterIndex
        lastPersistedPositionMs = state.positionMs
        viewModelScope.launch {
            audiobookRepository.saveProgress(id, state.currentChapterIndex, state.positionMs)
        }
    }

    // ── Helpers ───────────────────────────────────────────────────────────────

    private fun buildMediaItems(audiobook: Audiobook): List<MediaItem> =
        audiobook.chapters.map { chapter ->
            MediaItem.Builder()
                .setMediaId(chapter.uri)
                .setUri(chapter.uri)
                .setMediaMetadata(
                    MediaMetadata.Builder()
                        .setTitle(chapter.title)
                        .setArtist(audiobook.title)
                        .setAlbumTitle(audiobook.title)
                        .setArtworkUri(audiobook.coverUri?.let { Uri.parse(it) })
                        .build()
                )
                .build()
        }
}
