package com.example.mrcomic

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.lifecycleScope
import com.example.core.analytics.AnalyticsHelper
import com.example.core.analytics.PerformanceProfiler
import com.example.mrcomic.navigation.MrComicNavigation
import com.example.mrcomic.ui.theme.MrComicTheme
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.launch

/**
 * Главная активность приложения Mr.Comic
 */
@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    
    override fun onCreate(savedInstanceState: Bundle?) {
        // Устанавливаем Splash Screen
        val splashScreen = installSplashScreen()
        
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
 * Главный компонент приложения
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MrComicApp(
    analyticsHelper: AnalyticsHelper = hiltViewModel(),
    performanceProfiler: PerformanceProfiler = hiltViewModel()
) {
    val context = LocalContext.current
    
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
            MrComicNavigation(
                analyticsHelper = analyticsHelper,
                performanceProfiler = performanceProfiler
            )
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


