package com.example.mrcomic.splash

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.media3.ui.PlayerView
import androidx.compose.ui.viewinterop.AndroidView
// Temporarily disabled due to compilation issues
// import androidx.lifecycle.compose.collectAsState
import com.example.mrcomic.MainActivity
import com.example.mrcomic.R
import kotlinx.coroutines.delay

/**
 * Activity для воспроизведения видео-сплэшскрина на старых версиях Android
 */
class VideoSplashActivity : ComponentActivity() {
    
        companion object {
        private const val TAG = "VideoSplashActivity"
        private const val FALLBACK_DURATION_MS = Long.MAX_VALUE // Убираем таймаут для полного видео
    }
    
    private var optimizedVideoPlayer: OptimizedVideoPlayer? = null
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        setContent {
            VideoSplashScreen(
                onSplashFinished = {
                    navigateToNextActivity()
                },
                onError = {
                    // При ошибке показываем fallback и переходим к основному экрану
                    showFallbackAndFinish()
                }
            )
        }
    }
    
    @Composable
    private fun VideoSplashScreen(
        onSplashFinished: () -> Unit,
        onError: () -> Unit
    ) {
        val context = LocalContext.current
        var showFallback by remember { mutableStateOf(false) }
        var isVideoReady by remember { mutableStateOf(false) }
        
        // Создаем оптимизированный видео-плеер
        val optimizedPlayer = remember {
            OptimizedVideoPlayer(context)
        }
        
        // Инициализируем плеер
        LaunchedEffect(Unit) {
            val videoResourceId = context.resources.getIdentifier("splash_video", "raw", context.packageName)
            
            if (videoResourceId != 0) {
                val uri = Uri.parse("android.resource://${context.packageName}/$videoResourceId")
                
                optimizedPlayer.initialize(
                    videoUri = uri,
                    onVideoEnded = onSplashFinished,
                    onError = { 
                        android.util.Log.e(TAG, "Optimized video playback error", it)
                        showFallback = true
                        onError()
                    }
                )
            } else {
                // Видео-ресурс не найден
                showFallback = true
                onError()
            }
        }
        
        // Отслеживаем состояние плеера
        // Temporarily disabled due to compilation issues
        // val playerState by optimizedPlayer.playerState.collectAsState()
        // val playerReady by optimizedPlayer.isReady.collectAsState()
        var playerReady by remember { mutableStateOf(false) }
        
        LaunchedEffect(playerReady) {
            if (playerReady) {
                isVideoReady = true
            }
        }
        
        // Получаем ExoPlayer для UI
        val player = optimizedPlayer.getPlayer()
        
        // Сохраняем ссылку на optimizedPlayer для очистки
        DisposableEffect(Unit) {
            onDispose {
                optimizedPlayer.release()
            }
        }
        
        // Fallback таймер
        LaunchedEffect(Unit) {
            delay(FALLBACK_DURATION_MS)
            if (!isVideoReady) {
                showFallback = true
            }
        }
        
        // Автоматическое завершение при показе fallback (только если видео не готово)
        LaunchedEffect(showFallback) {
            if (showFallback) {
                delay(2000) // Показываем fallback 2 секунды, если видео не загрузилось
                onSplashFinished()
            }
        }
        
        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(Color.Black)
                .clickable { onSplashFinished() }, // Тап для пропуска
            contentAlignment = Alignment.Center
        ) {
            if (showFallback) {
                // Показываем fallback сплэш
                FallbackSplashContent()
            } else {
                // Показываем видео
                player?.let { exoPlayer ->
                    AndroidView(
                        factory = { context ->
                            PlayerView(context).apply {
                                this.player = exoPlayer
                                useController = false
                                setShowBuffering(PlayerView.SHOW_BUFFERING_NEVER)
                                // Оптимизации для производительности
                                setUseArtwork(false)
                                setDefaultArtwork(null)
                                setShowSubtitleButton(false)
                                setShowVrButton(false)
                            }
                        },
                        modifier = Modifier.fillMaxSize()
                    )
                }
            }
        }

    }
    
    @Composable
    private fun FallbackSplashContent() {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
            modifier = Modifier.padding(32.dp)
        ) {
            Text(
                text = "Mr.Comic",
                style = MaterialTheme.typography.headlineLarge,
                color = Color.White,
                textAlign = TextAlign.Center
            )
            
            Spacer(modifier = Modifier.height(16.dp))
            
            Text(
                text = "Loading...",
                style = MaterialTheme.typography.bodyLarge,
                color = Color.Gray,
                textAlign = TextAlign.Center
            )
        }
    }
    
    private fun navigateToNextActivity() {
        val nextActivityName = intent.getStringExtra("next_activity") ?: MainActivity::class.java.name
        
        try {
            val nextActivityClass = Class.forName(nextActivityName)
            val intent = Intent(this, nextActivityClass)
            startActivity(intent)
        } catch (e: ClassNotFoundException) {
            // Fallback к MainActivity
            val intent = Intent(this, MainActivity::class.java)
            startActivity(intent)
        }
        
        finish()
    }
    
    private fun showFallbackAndFinish() {
        // Показываем fallback и через короткое время переходим к основному экрану
        window.decorView.postDelayed({
            navigateToNextActivity()
        }, 2000)
    }
    
    override fun onDestroy() {
        super.onDestroy()
        optimizedVideoPlayer?.release()
        optimizedVideoPlayer = null
    }
}