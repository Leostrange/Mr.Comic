package com.example.mrcomic

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Box
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.Alignment
import androidx.compose.ui.unit.dp
import androidx.navigation.compose.rememberNavController
import androidx.compose.ui.platform.LocalContext
import com.example.core.ui.splash.GifSplash
import com.example.core.ui.theme.MrComicTheme
import com.example.core.ui.theme.ThemePreferencesRepository
import com.example.core.ui.theme.FullscreenMode
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
    
    // ThemePreferencesRepository будет создан внутри Composable
    // @Inject
    // lateinit var themePreferencesRepository: ThemePreferencesRepository
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        // 🔥 КРИТИЧЕСКАЯ ДИАГНОСТИКА: Проверка входящих интентов
        logIncomingIntent(intent)
        
        // Edge-to-edge mode для современного UI
        enableEdgeToEdge()
        
        // Убираем системный ActionBar (на всякий случай, хотя используем ComponentActivity)
        actionBar?.hide()
        
        setContent {
            val deepLink = when (intent?.action) {
                android.content.Intent.ACTION_VIEW -> intent?.dataString
                else -> null
            }
            
            // 🔥 КРИТИЧЕСКАЯ ДИАГНОСТИКА: Тест CBR/CBZ при запуске
            // Закомментировано - может вызывать краш
            // runCBRCBZDiagnostics()
            
            // Создаем ThemePreferencesRepository внутри Composable
            val themeRepo = remember { com.example.core.ui.theme.ThemePreferencesRepository(this) }
            
            MrComicApp(themeRepo, initialDeepLinkUri = deepLink)
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
    
    /**
     * 🔥 КРИТИЧЕСКАЯ ДИАГНОСТИКА CBR/CBZ
     */
    private fun runCBRCBZDiagnostics() {
        Thread {
            try {
                android.util.Log.d("MainActivity", "🔥 === НАЧАЛО КРИТИЧЕСКОЙ ДИАГНОСТИКИ CBR/CBZ ===")
                
                // Тест 1: Проверка BookReaderFactory
                testBookReaderFactory()
                
                // Тест 2: Проверка определения расширений
                testExtensionDetection()
                
                // Тест 3: Поиск тестовых файлов
                searchForTestFiles()
                
                android.util.Log.d("MainActivity", "🔥 === КРИТИЧЕСКАЯ ДИАГНОСТИКА ЗАВЕРШЕНА ===")
                
            } catch (e: Exception) {
                android.util.Log.e("MainActivity", "❌ Ошибка в диагностике", e)
            }
        }.start()
    }
    
    private fun testBookReaderFactory() {
        try {
            val bitmapCache = com.example.core.reader.data.cache.BitmapCache()
            val thumbnailCache = com.example.core.reader.data.cache.ThumbnailCache(this)
            val cbrToCbzConverter = com.example.core.reader.data.CbrToCbzConverter(this)
            val factory = com.example.core.reader.domain.BookReaderFactory(this, bitmapCache, thumbnailCache, cbrToCbzConverter)
            android.util.Log.d("MainActivity", "✅ BookReaderFactory создан успешно: $factory")
        } catch (e: Exception) {
            android.util.Log.e("MainActivity", "❌ Ошибка создания BookReaderFactory", e)
        }
    }
    
    private fun testExtensionDetection() {
        val testUris = listOf(
            "file:///storage/emulated/0/Download/test.cbr",
            "file:///storage/emulated/0/Download/test.cbz",
            "content://test.cbz"
        )
        
        testUris.forEach { uriString ->
            try {
                val uri = android.net.Uri.parse(uriString)
                val extension = uri.lastPathSegment?.substringAfterLast('.', "")?.lowercase() ?: ""
                android.util.Log.d("MainActivity", "📄 URI: $uriString -> extension: '$extension'")
            } catch (e: Exception) {
                android.util.Log.e("MainActivity", "❌ Ошибка парсинга URI: $uriString", e)
            }
        }
    }
    
    private fun searchForTestFiles() {
        val testPath = "/storage/emulated/0/Download/"
        android.util.Log.d("MainActivity", "🔍 Поиск CBR/CBZ файлов в $testPath")
        
        try {
            val downloadDir = java.io.File(testPath)
            if (downloadDir.exists() && downloadDir.canRead()) {
                val files = downloadDir.listFiles { file ->
                    file.isFile && (file.name.endsWith(".cbz", true) || file.name.endsWith(".cbr", true))
                }
                
                if (files?.isNotEmpty() == true) {
                    android.util.Log.d("MainActivity", "📁 Найдено ${files.size} CBR/CBZ файлов:")
                    files.forEach { file ->
                        android.util.Log.d("MainActivity", "  📄 ${file.name} (${file.length()} bytes)")
                    }
                } else {
                    android.util.Log.d("MainActivity", "⚠️ CBR/CBZ файлы не найдены")
                }
            } else {
                android.util.Log.w("MainActivity", "⚠️ Нет доступа к директории $testPath")
            }
        } catch (e: Exception) {
            android.util.Log.e("MainActivity", "❌ Ошибка поиска файлов", e)
        }
    }
    
    /**
     * 🔥 КРИТИЧЕСКАЯ ДИАГНОСТИКА: Логирование входящих интентов
     */
    private fun logIncomingIntent(intent: android.content.Intent?) {
        if (intent == null) {
            android.util.Log.d("MainActivity", "🔥 INTENT DIAGNOSTIC: No intent received")
            return
        }
        
        android.util.Log.d("MainActivity", "🔥 === INTENT DIAGNOSTIC START ===")
        android.util.Log.d("MainActivity", "🔥 Action: ${intent.action}")
        android.util.Log.d("MainActivity", "🔥 Data: ${intent.data}")
        android.util.Log.d("MainActivity", "🔥 DataString: ${intent.dataString}")
        android.util.Log.d("MainActivity", "🔥 Type: ${intent.type}")
        android.util.Log.d("MainActivity", "🔥 Categories: ${intent.categories}")
        android.util.Log.d("MainActivity", "🔥 Scheme: ${intent.data?.scheme}")
        android.util.Log.d("MainActivity", "🔥 Path: ${intent.data?.path}")
        
        intent.extras?.let { extras ->
            android.util.Log.d("MainActivity", "🔥 Extras: ${extras.keySet().joinToString { "$it=${extras.get(it)}" }}")
        }
        
        // Особая диагностика для CBR/CBZ файлов
        intent.data?.let { uri ->
            val path = uri.path ?: ""
            val isComicFile = path.endsWith(".cbz", true) || path.endsWith(".cbr", true) || 
                             path.endsWith(".zip", true) || path.endsWith(".rar", true)
            if (isComicFile) {
                android.util.Log.d("MainActivity", "🔥 ✨ COMIC FILE DETECTED: $uri")
                android.util.Log.d("MainActivity", "🔥 ✨ File extension: ${path.substringAfterLast('.', "")}")
                android.util.Log.d("MainActivity", "🔥 ✨ Should open with reader!")
            }
        }
        
        android.util.Log.d("MainActivity", "🔥 === INTENT DIAGNOSTIC END ===")
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
                // Полноэкранный видео-сплэш с оптимизациями
                FullscreenMode(enable = true)
                com.example.core.ui.splash.VideoSplashScreen(
                    videoResId = R.raw.splash_video,
                    onSplashFinished = {
                        showVideoSplash = false
                    }
                )
            } else {
                val navController = rememberNavController()
                val context = LocalContext.current
                
                // Безопасная проверка краш-лога
                val crashLog = remember {
                    try {
                        CrashLogger.getCrashText(context)
                    } catch (e: Exception) {
                        android.util.Log.e("MainActivity", "Error reading crash log", e)
                        null
                    }
                }
                
                var showError by remember { mutableStateOf<String?>(null) }
                
                when {
                    crashLog != null -> {
                        CrashReportScreen(
                            log = crashLog,
                            onContinue = {
                                try {
                                    CrashLogger.clear(context)
                                } catch (e: Exception) {
                                    android.util.Log.e("MainActivity", "Error clearing crash log", e)
                                }
                            },
                            onClear = {
                                try {
                                    CrashLogger.clear(context)
                                } catch (e: Exception) {
                                    android.util.Log.e("MainActivity", "Error clearing crash log", e)
                                }
                            }
                        )
                    }
                    showError != null -> {
                        Box(
                            modifier = Modifier.fillMaxSize(),
                            contentAlignment = Alignment.Center
                        ) {
                            Column(
                                horizontalAlignment = Alignment.CenterHorizontally,
                                verticalArrangement = Arrangement.spacedBy(16.dp)
                            ) {
                                Text(
                                    text = "Ошибка загрузки приложения",
                                    style = MaterialTheme.typography.titleLarge
                                )
                                Text(
                                    text = showError ?: "Неизвестная ошибка",
                                    style = MaterialTheme.typography.bodyMedium
                                )
                            }
                        }
                    }
                    else -> {
                        // Если приложение запущено через интент с файлом, переходим сразу к ридеру
                        LaunchedEffect(Unit) {
                            try {
                                initialDeepLinkUri?.let { raw ->
                                    android.util.Log.d("MainActivity", "🔥 Processing deep link URI: $raw")
                                    
                                    // Пытаемся получить разрешения на чтение файла
                                    try {
                                        val uri = android.net.Uri.parse(raw)
                                        if (uri.scheme == "content") {
                                            context.contentResolver.takePersistableUriPermission(
                                                uri,
                                                android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                                            )
                                            android.util.Log.d("MainActivity", "✅ Persistable URI permission granted")
                                        }
                                    } catch (e: Exception) {
                                        android.util.Log.w("MainActivity", "⚠️ Could not take persistable permission (this is OK for some URIs): ${e.message}")
                                    }
                                    
                                    val encoded = android.net.Uri.encode(raw)
                                    android.util.Log.d("MainActivity", "🔥 Navigating to reader with encoded URI: $encoded")
                                    navController.navigate(Screen.Reader.create(encoded))
                                }
                            } catch (e: Exception) {
                                android.util.Log.e("MainActivity", "❌ Error navigating to reader", e)
                                showError = e.message
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


