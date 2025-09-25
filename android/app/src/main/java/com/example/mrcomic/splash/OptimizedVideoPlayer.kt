package com.example.mrcomic.splash

import android.content.Context
import android.net.Uri
import android.util.Log
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.common.VideoSize
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector
import androidx.media3.exoplayer.trackselection.TrackSelector
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Оптимизированный видео-плеер для сплэш-экрана с аппаратным ускорением
 */
class OptimizedVideoPlayer(
    private val context: Context
) {
    
    companion object {
        private const val TAG = "OptimizedVideoPlayer"
        private const val PRELOAD_BUFFER_MS = 500 // 0.5 секунды предзагрузки
        private const val MIN_BUFFER_MS = 1000 // 1 секунда минимального буфера
        private const val MAX_BUFFER_MS = 3000 // 3 секунды максимального буфера
    }
    
    private var exoPlayer: ExoPlayer? = null
    private val _playerState = MutableStateFlow(VideoPlayerState.IDLE)
    val playerState: StateFlow<VideoPlayerState> = _playerState.asStateFlow()
    
    private val _isReady = MutableStateFlow(false)
    val isReady: StateFlow<Boolean> = _isReady.asStateFlow()
    
    /**
     * Инициализация плеера с оптимизациями
     */
    fun initialize(videoUri: Uri, onVideoEnded: () -> Unit, onError: (Exception) -> Unit) {
        try {
            _playerState.value = VideoPlayerState.INITIALIZING
            
            // Создаем оптимизированный track selector
            val trackSelector = createOptimizedTrackSelector()
            
            // Создаем ExoPlayer с оптимизациями
            exoPlayer = ExoPlayer.Builder(context)
                .setTrackSelector(trackSelector)
                .build()
                .apply {
                    // Растягиваем видео по высоте, убирая полосы
                    setVideoScalingMode(androidx.media3.common.C.VIDEO_SCALING_MODE_SCALE_TO_FIT)
                    setHandleAudioBecomingNoisy(false) // Отключаем обработку аудио
                    volume = 0f // Отключаем звук для сплэш-видео
                    
                    // Добавляем listener для отслеживания состояния
                    addListener(object : Player.Listener {
                        override fun onPlaybackStateChanged(playbackState: Int) {
                            when (playbackState) {
                                Player.STATE_BUFFERING -> {
                                    _playerState.value = VideoPlayerState.BUFFERING
                                    Log.d(TAG, "Video buffering")
                                }
                                Player.STATE_READY -> {
                                    _playerState.value = VideoPlayerState.READY
                                    _isReady.value = true
                                    Log.d(TAG, "Video ready to play")
                                }
                                Player.STATE_ENDED -> {
                                    _playerState.value = VideoPlayerState.ENDED
                                    Log.d(TAG, "Video playback ended")
                                    onVideoEnded()
                                }
                                Player.STATE_IDLE -> {
                                    _playerState.value = VideoPlayerState.IDLE
                                    Log.d(TAG, "Video player idle")
                                }
                            }
                        }
                        
                        override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
                            _playerState.value = VideoPlayerState.ERROR
                            Log.e(TAG, "Video playback error", error)
                            onError(Exception("Video playback failed: ${error.message}", error))
                        }
                        
                        override fun onVideoSizeChanged(videoSize: VideoSize) {
                            Log.d(TAG, "Video size: ${videoSize.width}x${videoSize.height}")
                        }
                    })
                    
                    // Устанавливаем медиа-элемент и подготавливаем к воспроизведению
                    val mediaItem = MediaItem.fromUri(videoUri)
                    setMediaItem(mediaItem)
                    prepare()
                    
                    // Начинаем воспроизведение
                    playWhenReady = true
                }
            
            Log.d(TAG, "Video player initialized successfully")
            
        } catch (e: Exception) {
            _playerState.value = VideoPlayerState.ERROR
            Log.e(TAG, "Failed to initialize video player", e)
            onError(e)
        }
    }
    
    /**
     * Создание оптимизированного track selector
     */
    private fun createOptimizedTrackSelector(): TrackSelector {
        return DefaultTrackSelector(context).apply {
            // Настройки для оптимизации производительности
            setParameters(
                buildUponParameters()
                    .setMaxVideoSizeSd() // Ограничиваем качество видео для быстрой загрузки
                    .setForceLowestBitrate(false)
                    .setAllowVideoMixedMimeTypeAdaptiveness(false)
                    .setAllowAudioMixedMimeTypeAdaptiveness(false)
                    .build()
            )
        }
    }
    
    /**
     * Предзагрузка видео
     */
    fun preload(videoUri: Uri) {
        try {
            Log.d(TAG, "Preloading video")
            
            if (exoPlayer == null) {
                val trackSelector = createOptimizedTrackSelector()
                exoPlayer = ExoPlayer.Builder(context)
                    .setTrackSelector(trackSelector)
                    .build()
            }
            
            exoPlayer?.apply {
                val mediaItem = MediaItem.fromUri(videoUri)
                setMediaItem(mediaItem)
                prepare()
                // Не начинаем воспроизведение, только подготавливаем
                playWhenReady = false
            }
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to preload video", e)
        }
    }
    
    /**
     * Начать воспроизведение (после предзагрузки)
     */
    fun startPlayback() {
        exoPlayer?.playWhenReady = true
        _playerState.value = VideoPlayerState.PLAYING
        Log.d(TAG, "Started video playback")
    }
    
    /**
     * Приостановить воспроизведение
     */
    fun pause() {
        exoPlayer?.playWhenReady = false
        _playerState.value = VideoPlayerState.PAUSED
        Log.d(TAG, "Paused video playback")
    }
    
    /**
     * Остановить воспроизведение
     */
    fun stop() {
        exoPlayer?.stop()
        _playerState.value = VideoPlayerState.IDLE
        Log.d(TAG, "Stopped video playback")
    }
    
    /**
     * Получить ExoPlayer для использования в UI
     */
    fun getPlayer(): ExoPlayer? = exoPlayer
    
    /**
     * Освободить ресурсы
     */
    fun release() {
        try {
            exoPlayer?.release()
            exoPlayer = null
            _playerState.value = VideoPlayerState.IDLE
            _isReady.value = false
            Log.d(TAG, "Video player resources released")
        } catch (e: Exception) {
            Log.e(TAG, "Error releasing video player", e)
        }
    }
    
    /**
     * Проверить, готов ли плеер к воспроизведению
     */
    fun isPlayerReady(): Boolean = _isReady.value
    
    /**
     * Получить текущее состояние плеера
     */
    fun getCurrentState(): VideoPlayerState = _playerState.value
}

/**
 * Состояния видео-плеера
 */
enum class VideoPlayerState {
    IDLE,
    INITIALIZING,
    BUFFERING,
    READY,
    PLAYING,
    PAUSED,
    ENDED,
    ERROR
}