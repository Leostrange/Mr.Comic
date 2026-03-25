package com.example.core.ui.splash

import android.net.Uri
import androidx.annotation.RawRes
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.ui.AspectRatioFrameLayout
import androidx.media3.ui.PlayerView
import com.example.core.ui.locale.LocalStrings
import kotlinx.coroutines.delay

@Composable
fun VideoSplashScreen(
    @RawRes videoResId: Int,
    @RawRes horizontalVideoResId: Int? = null,
    onSplashFinished: () -> Unit,
    modifier: Modifier = Modifier,
    showSkip: Boolean = true
) {
    val context = LocalContext.current
    val configuration = LocalConfiguration.current
    val strings = LocalStrings.current
    val selectedRes = remember(configuration.screenWidthDp, configuration.screenHeightDp, videoResId, horizontalVideoResId) {
        val isLandscape = configuration.screenWidthDp > configuration.screenHeightDp
        if (isLandscape && horizontalVideoResId != null) horizontalVideoResId else videoResId
    }
    val finished = remember { mutableStateOf(false) }

    val player = remember(selectedRes) {
        runCatching {
            ExoPlayer.Builder(context).build().apply {
                val videoUri = Uri.parse("android.resource://${context.packageName}/$selectedRes")
                setMediaItem(MediaItem.fromUri(videoUri))
                repeatMode = Player.REPEAT_MODE_OFF
                playWhenReady = true
                volume = 0f
                prepare()
            }
        }.getOrNull()
    }

    DisposableEffect(player) {
        val listener = object : Player.Listener {
            override fun onPlaybackStateChanged(state: Int) {
                if (state == Player.STATE_ENDED && !finished.value) {
                    finished.value = true
                    onSplashFinished()
                }
            }

            override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
                if (!finished.value) {
                    finished.value = true
                    onSplashFinished()
                }
            }
        }
        player?.addListener(listener)
        onDispose {
            player?.removeListener(listener)
            player?.release()
        }
    }

    if (player == null && !finished.value) {
        LaunchedEffect(Unit) {
            delay(600)
            finished.value = true
            onSplashFinished()
        }
    }

    Box(
        modifier = modifier
            .fillMaxSize()
            .background(Color.Black),
        contentAlignment = Alignment.Center
    ) {
        if (player != null) {
            AndroidView(
                factory = { viewContext ->
                    PlayerView(viewContext).apply {
                        useController = false
                        resizeMode = AspectRatioFrameLayout.RESIZE_MODE_FILL
                        this.player = player
                    }
                },
                modifier = Modifier.fillMaxSize()
            )
        }

        if (showSkip) {
            TextButton(
                onClick = {
                    if (!finished.value) {
                        finished.value = true
                        onSplashFinished()
                    }
                },
                modifier = Modifier
                    .align(Alignment.TopEnd)
                    .padding(16.dp)
            ) {
                Text(
                    text = splashSkipLabel(strings.languageCode),
                    color = Color.White,
                    style = MaterialTheme.typography.labelLarge
                )
            }
        }
    }
}

private fun splashSkipLabel(language: String): String = when (language) {
    "en" -> "Skip"
    "ja" -> "スキップ"
    "zh" -> "跳过"
    "ko" -> "건너뛰기"
    else -> "Пропустить"
}
