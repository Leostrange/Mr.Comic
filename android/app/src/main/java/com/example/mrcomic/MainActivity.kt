package com.example.mrcomic

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.lifecycleScope
import com.example.core.analytics.AnalyticsHelper
import com.example.core.analytics.PerformanceProfiler
import com.example.core.ui.splash.VideoSplash
import com.example.core.ui.theme.MrComicTheme
import com.example.mrcomic.navigation.AppNavHost
import androidx.navigation.compose.rememberNavController
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.launch

/**
 * Главная активность приложения Mr.Comic
 */
@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    
    override fun onCreate(savedInstanceState: Bundle?) {
        // АРХИТЕКТУРНАЯ ОТЛАДОЧНАЯ ИНФОРМАЦИЯ
        android.util.Log.d("MainActivity", "🏗️ RESTRUCTURED ANDROID PROJECT STARTED 🏗️")
        android.util.Log.d("MainActivity", "✅ Using modern UI components with video splash")
        android.util.Log.d("MainActivity", "✅ AppNavHost navigation (not MrComicNavigation)")
        android.util.Log.d("MainActivity", "✅ All modules properly namespaced under android:")
        println("🏗️🚀 CLEAN ANDROID ARCHITECTURE + MODERN UI ACTIVE 🚀🏗️")
        
        // Skip default splash for custom video splash
        // val splashScreen = installSplashScreen()
        
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
        lifecycleScope.launch {
            // TODO: добавить аналитику активации приложения
        }
    }
    
    override fun onPause() {
        super.onPause()
        
        // Отслеживаем переход в фон
        lifecycleScope.launch {
            // TODO: добавить аналитику перехода в фон
        }
    }
}

/**
 * Главный компонент приложения с современным видео-сплэшем
 */
@Composable
fun MrComicApp(
    analyticsHelper: AnalyticsHelper = hiltViewModel(),
    performanceProfiler: PerformanceProfiler = hiltViewModel()
) {
    val context = LocalContext.current
    var showVideoSplash by remember { mutableStateOf(true) }
    
    // Отслеживаем запуск приложения
    LaunchedEffect(Unit) {
        analyticsHelper.track(
            com.example.core.analytics.AnalyticsEvent.AppLaunched(
                sessionId = System.currentTimeMillis().toString()
            ),
            kotlinx.coroutines.CoroutineScope(kotlinx.coroutines.Dispatchers.Main)
        )
    }
    
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
                        android.util.Log.d("MainActivity", "🎬 Video splash finished, launching app")
                    }
                )
            } else {
                val navController = rememberNavController()
                AppNavHost(
                    navController = navController,
                    onOnboardingComplete = {
                        // Handle onboarding completion if needed
                    }
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


