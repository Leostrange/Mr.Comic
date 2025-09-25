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
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.Alignment
import androidx.compose.foundation.layout.Box
import androidx.compose.material3.Text
import androidx.navigation.compose.rememberNavController
import androidx.compose.ui.platform.LocalContext
import com.example.core.ui.splash.GifSplash
import com.example.core.ui.theme.MrComicTheme
import com.example.core.ui.theme.ThemePreferencesRepository
import javax.inject.Inject
import com.example.mrcomic.navigation.AppNavHost
import com.example.mrcomic.navigation.Screen
import com.example.mrcomic.crash.CrashLogger
import com.example.mrcomic.ui.CrashReportScreen
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.delay

/**
 * Главная активность приложения Mr.Comic
 */
@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    
    @Inject
    lateinit var themePreferencesRepository: ThemePreferencesRepository
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        // Edge-to-edge mode для современного UI
        enableEdgeToEdge()
        
        setContent {
            val deepLink = when (intent?.action) {
                android.content.Intent.ACTION_VIEW -> intent?.dataString
                else -> null
            }
            MrComicApp(themePreferencesRepository, initialDeepLinkUri = deepLink)
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
fun MrComicApp(themePreferencesRepository: ThemePreferencesRepository, initialDeepLinkUri: String? = null) {
    var showVideoSplash by remember { mutableStateOf(true) }
    val themeConfig by themePreferencesRepository.themeConfig.collectAsState(
        initial = com.example.core.ui.theme.ThemeConfig()
    )
    
    // Применяем тему и запускаем навигацию
    MrComicTheme(themeConfig = themeConfig) {
        Surface(
            modifier = Modifier.fillMaxSize(),
            color = MaterialTheme.colorScheme.background
        ) {
            if (showVideoSplash) {
                // Показываем видео-сплэшскрин
                com.example.core.ui.splash.VideoSplashScreen(
                    videoResId = R.raw.splash_video,
                    onSplashFinished = {
                        showVideoSplash = false
                    }
                )
            } else {
                val navController = rememberNavController()
                val context = LocalContext.current
                val crashLog = CrashLogger.getCrashText(context)
                if (crashLog != null) {
                    CrashReportScreen(
                        log = crashLog,
                        onContinue = {
                            CrashLogger.clear(context)
                        },
                        onClear = {
                            CrashLogger.clear(context)
                        }
                    )
                    return@Surface
                }
                // Если приложение запущено через интент с файлом, переходим сразу к ридеру
                LaunchedEffect(Unit) {
                    initialDeepLinkUri?.let { raw ->
                        val encoded = android.net.Uri.encode(raw)
                        navController.navigate(Screen.Reader.create(encoded))
                    }
                }
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


