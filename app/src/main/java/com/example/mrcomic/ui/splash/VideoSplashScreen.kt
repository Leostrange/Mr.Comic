package com.example.mrcomic.ui.splash

import android.net.Uri
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeOut
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.media3.common.MediaItem
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.ui.PlayerView
import androidx.media3.common.Player
import androidx.media3.ui.AspectRatioFrameLayout
import com.example.mrcomic.R
import kotlinx.coroutines.delay

@Composable
fun VideoSplashScreen(
    onVideoEnd: () -> Unit
) {
    val context = LocalContext.current
    val configuration = LocalConfiguration.current
    val screenWidth = configuration.screenWidthDp.dp
    val screenHeight = configuration.screenHeightDp.dp

    var visible by remember { mutableStateOf(true) }
    var showSkip by remember { mutableStateOf(false) }

    // Показываем кнопку Skip через 1.5 секунды
    LaunchedEffect(Unit) {
        delay(1500)
        showSkip = true
    }

    val exoPlayer = remember {
        ExoPlayer.Builder(context).build().apply {
            setMediaItem(MediaItem.fromUri(Uri.parse("android.resource://" + context.packageName + "/" + R.raw.splash_video)))
            playWhenReady = true
            prepare()
            addListener(object : Player.Listener {
                override fun onPlaybackStateChanged(playbackState: Int) {
                    if (playbackState == Player.STATE_ENDED) {
                        visible = false
                    }
                }
            })
        }
    }

    AnimatedVisibility(
        visible = visible,
        exit = fadeOut()
    ) {
        Box(
            modifier = Modifier
                .fillMaxSize()
        ) {
            // Видео
            AndroidView(
                modifier = Modifier.fillMaxSize(),
                factory = {
                    PlayerView(context).apply {
                        player = exoPlayer
                        useController = false
                        setResizeMode(AspectRatioFrameLayout.RESIZE_MODE_ZOOM)
                    }
                }
            )
            // Кнопка Skip
            if (showSkip) {
                Button(
                    onClick = { visible = false },
                    modifier = Modifier
                        .align(Alignment.TopEnd)
                        .padding(top = 32.dp, end = 24.dp)
                ) {
                    Text("Пропустить")
                }
            }
        }
    }

    // После fade-out вызываем onVideoEnd
    LaunchedEffect(visible) {
        if (!visible) {
            delay(350) // Дать анимации завершиться
            onVideoEnd()
        }
    }

    DisposableEffect(Unit) {
        onDispose {
            exoPlayer.release()
        }
    }
} 