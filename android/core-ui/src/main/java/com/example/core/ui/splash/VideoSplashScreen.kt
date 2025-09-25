package com.example.core.ui.splash

import android.app.Activity
import android.content.Context
import android.net.Uri
import androidx.annotation.RawRes
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.viewinterop.AndroidView
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.common.util.UnstableApi
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.ui.AspectRatioFrameLayout
import androidx.media3.ui.PlayerView
import kotlinx.coroutines.delay
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat

/**
 * Modern video splash screen component with ExoPlayer integration
 * Supports adaptive design and smooth transitions
 * 
 * Based on technical documentation from media/Videosplash.txt
 */
@Composable
fun VideoSplashScreen(
    @RawRes videoResId: Int,
    onSplashFinished: () -> Unit,
    modifier: Modifier = Modifier,
    autoFinishDelayMs: Long = Long.MAX_VALUE, // Убираем таймаут - видео играет полностью
    showControls: Boolean = false
) {
    val context = LocalContext.current
    val view = LocalView.current
    val window = remember(view) { (view.context as? Activity)?.window }

    DisposableEffect(window) {
        val controller = window?.let { win ->
            WindowCompat.setDecorFitsSystemWindows(win, false)
            WindowInsetsControllerCompat(win, win.decorView).apply {
                hide(WindowInsetsCompat.Type.systemBars())
                systemBarsBehavior = WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
            }
        }
        onDispose {
            controller?.show(WindowInsetsCompat.Type.systemBars())
            window?.let { WindowCompat.setDecorFitsSystemWindows(it, true) }
        }
    }

    val exoPlayer = remember {
        try {
            ExoPlayer.Builder(context).build().apply {
                val uri = Uri.parse("android.resource://${context.packageName}/$videoResId")
                val mediaItem = MediaItem.fromUri(uri)
                setMediaItem(mediaItem)
                prepare()
                playWhenReady = true
                repeatMode = Player.REPEAT_MODE_OFF
                volume = 0f // Mute for better UX as recommended
            }
        } catch (e: Exception) {
            // Если не удается создать плеер, возвращаем null
            null
        }
    }

    // Гарантируем одиночный вызов завершения
    val finishedOnce = remember { androidx.compose.runtime.mutableStateOf(false) }

    LaunchedEffect(exoPlayer) {
        if (exoPlayer != null) {
            val listener = object : Player.Listener {
                override fun onPlaybackStateChanged(playbackState: Int) {
                    if (playbackState == Player.STATE_ENDED && !finishedOnce.value) {
                        finishedOnce.value = true
                        onSplashFinished()
                    }
                }
                
                override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
                    if (!finishedOnce.value) {
                        finishedOnce.value = true
                        onSplashFinished()
                    }
                }
            }
            exoPlayer.addListener(listener)
        }
        
                // Fallback timeout – завершаем, только если ещё не завершили по видео
                // Но поскольку autoFinishDelayMs теперь Long.MAX_VALUE, таймаут не сработает
                delay(autoFinishDelayMs)
                if (!finishedOnce.value) {
                    finishedOnce.value = true
                    onSplashFinished()
                }
    }

    DisposableEffect(exoPlayer) {
        onDispose {
            exoPlayer?.release()
        }
    }

    Box(
        modifier = modifier
            .fillMaxSize()
            .background(Color.Black), // Чёрный фон вместо MaterialTheme
        contentAlignment = Alignment.Center
    ) {
        if (exoPlayer != null) {
            AndroidView(
                factory = { context ->
                    PlayerView(context).apply {
                        player = exoPlayer
                        useController = showControls
                        setShowBuffering(PlayerView.SHOW_BUFFERING_NEVER)
                        // Растягиваем видео по высоте, убирая полосы сверху и снизу
                        resizeMode = AspectRatioFrameLayout.RESIZE_MODE_FILL
                        setBackgroundColor(android.graphics.Color.BLACK)
                        // Отключаем системные insets для полного экрана
                        setSystemUiVisibility(
                            android.view.View.SYSTEM_UI_FLAG_FULLSCREEN or
                            android.view.View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                            android.view.View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
                        )
                    }
                },
                modifier = Modifier
                    .fillMaxSize()
                    .background(Color.Black) // Чёрные полосы вместо белых
            )
        } else {
                    // Если плеер не создался, показываем чёрный экран и завершаем
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .background(Color.Black)
                    )
                    LaunchedEffect(Unit) {
                        delay(1000L) // Короткая задержка для показа чёрного экрана
                        onSplashFinished()
                    }
        }
    }
}

/**
 * Simplified video splash with just resource ID
 */
@OptIn(UnstableApi::class)
@Composable
fun VideoSplash(
    @RawRes videoResId: Int,
    onFinished: () -> Unit
) {
    VideoSplashScreen(
        videoResId = videoResId,
        onSplashFinished = onFinished,
        autoFinishDelayMs = 4000L, // Увеличиваем время для нового видео
        showControls = false
    )
}

/**
 * Extension function to create video URI from raw resource
 */
fun Context.videoUriFromRaw(@RawRes resId: Int): Uri {
    return Uri.parse("android.resource://$packageName/$resId")
}