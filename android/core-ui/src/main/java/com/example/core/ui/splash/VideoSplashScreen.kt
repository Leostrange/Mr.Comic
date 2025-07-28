package com.example.core.ui.splash

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
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.viewinterop.AndroidView
import com.google.android.exoplayer2.ExoPlayer
import com.google.android.exoplayer2.MediaItem
import com.google.android.exoplayer2.Player
import com.google.android.exoplayer2.ui.PlayerView
import kotlinx.coroutines.delay

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
    autoFinishDelayMs: Long = 3000L,
    showControls: Boolean = false
) {
    val context = LocalContext.current
    
    val exoPlayer = remember {
        ExoPlayer.Builder(context).build().apply {
            val uri = Uri.parse("android.resource://${context.packageName}/$videoResId")
            val mediaItem = MediaItem.fromUri(uri)
            setMediaItem(mediaItem)
            prepare()
            playWhenReady = true
            repeatMode = Player.REPEAT_MODE_OFF
            volume = 0f // Mute for better UX as recommended
        }
    }

    // Auto-finish splash after delay or video completion
    LaunchedEffect(exoPlayer) {
        val listener = object : Player.Listener {
            override fun onPlaybackStateChanged(playbackState: Int) {
                if (playbackState == Player.STATE_ENDED) {
                    onSplashFinished()
                }
            }
        }
        exoPlayer.addListener(listener)
        
        // Fallback timeout
        delay(autoFinishDelayMs)
        onSplashFinished()
    }

    DisposableEffect(exoPlayer) {
        onDispose {
            exoPlayer.release()
        }
    }

    Box(
        modifier = modifier
            .fillMaxSize()
            .background(MaterialTheme.colorScheme.surface),
        contentAlignment = Alignment.Center
    ) {
        AndroidView(
            factory = { context ->
                PlayerView(context).apply {
                    player = exoPlayer
                    useController = showControls
                    setShowBuffering(PlayerView.SHOW_BUFFERING_NEVER)
                }
            },
            modifier = Modifier.fillMaxSize()
        )
    }
}

/**
 * Simplified video splash with just resource ID
 */
@Composable
fun VideoSplash(
    @RawRes videoResId: Int,
    onFinished: () -> Unit
) {
    VideoSplashScreen(
        videoResId = videoResId,
        onSplashFinished = onFinished,
        autoFinishDelayMs = 2500L,
        showControls = false
    )
}

/**
 * Extension function to create video URI from raw resource
 */
fun Context.videoUriFromRaw(@RawRes resId: Int): Uri {
    return Uri.parse("android.resource://$packageName/$resId")
}