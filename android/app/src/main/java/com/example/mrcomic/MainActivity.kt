package com.example.mrcomic

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.navigation.compose.rememberNavController
import com.example.core.ui.splash.VideoSplash
import com.example.core.ui.theme.MrComicTheme
import com.example.mrcomic.navigation.AppNavHost
import dagger.hilt.android.AndroidEntryPoint

/**
 * Главная активность приложения Mr.Comic
 */
@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        // Edge-to-edge mode для современного UI
        enableEdgeToEdge()
        
        setContent {
            MrComicApp()
        }
    }
    
    override fun onResume() {
        super.onResume()
        
        // Отслеживаем активацию приложения
        // TODO: добавить аналитику активации приложения
    }
    
    override fun onPause() {
        super.onPause()
        
        // Отслеживаем переход в фон
        // TODO: добавить аналитику перехода в фон
    }
}

/**
 * Главный компонент приложения с современным видео-сплэшем
 */
@Composable
fun MrComicApp() {
    var showVideoSplash by remember { mutableStateOf(true) }
    
    // Применяем тему и запускаем навигацию
    MrComicTheme {
        Surface(
            modifier = Modifier.fillMaxSize(),
            color = MaterialTheme.colorScheme.background
        ) {
            if (showVideoSplash) {
                VideoSplash(
                    videoResId = R.raw.splash_video,
                    onFinished = { 
                        showVideoSplash = false
                    }
                )
            } else {
                val navController = rememberNavController()
                AppNavHost(
                    navController = navController,
                    onOnboardingComplete = { /* no-op */ }
                )
            }
        }
    }
}

/**
 * Preview для разработки
 */
@androidx.compose.ui.tooling.preview.Preview(showBackground = true)
@Composable
fun MrComicAppPreview() {
    MrComicTheme {
        // Для preview показываем упрощенную версию
        Surface(
            modifier = Modifier.fillMaxSize(),
            color = MaterialTheme.colorScheme.background
        ) {
            // Можно добавить mock навигацию для preview
        }
    }
}


