package com.example.mrcomic.splash

import android.content.Context
import android.net.Uri
import android.util.Log
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.common.util.UnstableApi
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

@UnstableApi
class OptimizedVideoPlayer(private val context: Context) {

    companion object {
        private const val TAG = "OptimizedVideoPlayer"
    }

    private var exoPlayer: ExoPlayer? = null
    private val _playerState = MutableStateFlow(VideoPlayerState.IDLE)
    val playerState: StateFlow<VideoPlayerState> = _playerState.asStateFlow()

    fun initialize(videoUri: Uri, onVideoEnded: () -> Unit, onError: (Exception) -> Unit) {
        try {
            _playerState.value = VideoPlayerState.INITIALIZING
            val trackSelector = DefaultTrackSelector(context).apply {
                setParameters(buildUponParameters().setMaxVideoSizeSd().build())
            }
            exoPlayer = ExoPlayer.Builder(context).setTrackSelector(trackSelector).build().apply {
                volume = 0f
                addListener(object : Player.Listener {
                    override fun onPlaybackStateChanged(state: Int) {
                        when (state) {
                            Player.STATE_READY     -> {
                                // If already playing keep PLAYING state, otherwise mark READY
                                if (_playerState.value != VideoPlayerState.PLAYING) {
                                    _playerState.value = VideoPlayerState.READY
                                }
                            }
                            Player.STATE_ENDED     -> { _playerState.value = VideoPlayerState.ENDED; onVideoEnded() }
                            Player.STATE_BUFFERING -> _playerState.value = VideoPlayerState.BUFFERING
                            else -> {}
                        }
                    }
                    override fun onIsPlayingChanged(isPlaying: Boolean) {
                        if (isPlaying) {
                            _playerState.value = VideoPlayerState.PLAYING
                        } else if (_playerState.value == VideoPlayerState.PLAYING) {
                            _playerState.value = VideoPlayerState.PAUSED
                        }
                    }
                    override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
                        _playerState.value = VideoPlayerState.ERROR
                        onError(Exception("Playback failed: ${error.message}", error))
                    }
                })
                setMediaItem(MediaItem.fromUri(videoUri))
                prepare()
                playWhenReady = true
            }
        } catch (e: Exception) {
            _playerState.value = VideoPlayerState.ERROR
            onError(e)
        }
    }

    fun getPlayer(): ExoPlayer? = exoPlayer

    fun release() {
        try { exoPlayer?.release(); exoPlayer = null; _playerState.value = VideoPlayerState.IDLE }
        catch (e: Exception) { Log.e(TAG, "Error releasing player", e) }
    }
}

enum class VideoPlayerState { IDLE, INITIALIZING, BUFFERING, READY, PLAYING, PAUSED, ENDED, ERROR }
