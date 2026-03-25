package com.example.mrcomic

import android.os.Bundle
import android.view.KeyEvent
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp
import androidx.navigation.compose.rememberNavController
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.ui.sound.UIFeedback
import com.example.core.ui.theme.MrComicTheme
import com.example.core.ui.theme.ThemeConfig
import com.example.core.ui.theme.ThemePreferencesRepository
import com.example.mrcomic.crash.CrashLogger
import com.example.mrcomic.navigation.AppNavHost
import com.example.mrcomic.navigation.Screen
import com.example.mrcomic.ui.CrashReportScreen
import com.example.feature.reader.ui.ReaderHardwareKeyHost
import androidx.lifecycle.lifecycleScope
import com.example.core.ui.eink.LocalEInkMode
import com.example.core.ui.eink.isEInkDevice
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.locale.appStringsForCode
import com.example.core.ui.locale.normalizeAppLanguageCode
import com.example.core.ui.performance.LocalPerformanceUiHints
import com.example.core.ui.performance.PerformanceUiHints
import com.example.engine.formats.base.RenderDeviceTier
import com.example.engine.formats.base.resolveRenderDeviceProfile
import com.example.mrcomic.icons.AppIconManager
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.launch
import javax.inject.Inject

@AndroidEntryPoint
class MainActivity : ComponentActivity(), ReaderHardwareKeyHost {

    @Inject lateinit var appIconManager: AppIconManager
    private var readerHardwareKeyHandler: ((KeyEvent) -> Boolean)? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        actionBar?.hide()
        // Restore correct launcher icon alias if PM state was reset (e.g., after app update)
        lifecycleScope.launch { appIconManager.ensureIconConsistency() }
        val deepLink = when (intent?.action) {
            android.content.Intent.ACTION_VIEW -> intent?.dataString
            else -> null
        }
        setContent {
            val themeRepo = remember { ThemePreferencesRepository(this) }
            MrComicApp(themeRepo, initialDeepLinkUri = deepLink)
        }
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (readerHardwareKeyHandler?.invoke(event) == true) {
            return true
        }
        return super.dispatchKeyEvent(event)
    }

    override fun setReaderHardwareKeyHandler(handler: ((KeyEvent) -> Boolean)?) {
        readerHardwareKeyHandler = handler
    }
}

@Composable
fun MrComicApp(
    themePreferencesRepository: ThemePreferencesRepository,
    initialDeepLinkUri: String? = null
) {
    val themeConfig by themePreferencesRepository.themeConfig.collectAsState(initial = ThemeConfig())
    val context = LocalContext.current
    val isEInk = remember { context.isEInkDevice() }
    val renderProfile = remember { context.resolveRenderDeviceProfile() }
    val performanceHints = remember(renderProfile, isEInk) {
        PerformanceUiHints(
            reducedMotion = isEInk || renderProfile.tier == RenderDeviceTier.LOW_END,
            reducedVisualEffects = isEInk || renderProfile.tier == RenderDeviceTier.LOW_END
        )
    }
    val userPreferences = remember { UserPreferences(context.dataStore) }
    val fontScale by userPreferences.get(PreferencesKeys.UI_FONT_SCALE, 1.0f)
        .collectAsState(initial = 1.0f)
    val uiDensityScale by userPreferences.get(PreferencesKeys.UI_DENSITY_SCALE, 1.0f)
        .collectAsState(initial = 1.0f)
    val cornerRadius by userPreferences.get(PreferencesKeys.UI_CORNER_RADIUS, 12)
        .collectAsState(initial = 12)
    val appLanguage by userPreferences.get(PreferencesKeys.APP_LANGUAGE, "ru")
        .collectAsState(initial = "ru")
    val normalizedAppLanguage = remember(appLanguage) { normalizeAppLanguageCode(appLanguage) }
    val uiSoundEnabled by userPreferences.get(PreferencesKeys.UI_SOUND_ENABLED, false)
        .collectAsState(initial = false)
    val uiSoundsVolume by userPreferences.get(PreferencesKeys.UI_SOUNDS_VOLUME, 0.6f)
        .collectAsState(initial = 0.6f)
    LaunchedEffect(uiSoundEnabled) { UIFeedback.enabled = uiSoundEnabled }
    LaunchedEffect(uiSoundsVolume)  { UIFeedback.volume  = uiSoundsVolume }
    val baseDensity = LocalDensity.current

    CompositionLocalProvider(
        LocalDensity provides Density(
            density = baseDensity.density * uiDensityScale.coerceIn(0.82f, 1.18f),
            fontScale = fontScale
        ),
        LocalEInkMode provides isEInk,
        LocalPerformanceUiHints provides performanceHints,
        LocalStrings provides appStringsForCode(normalizedAppLanguage)
    ) {
    MrComicTheme(themeConfig = themeConfig, cornerRadius = cornerRadius) {
        Surface(modifier = Modifier.fillMaxSize(), color = MaterialTheme.colorScheme.background) {
            val crashLog = remember {
                runCatching { CrashLogger.getCrashText(context) }.getOrNull()
            }
            var showCrashReport by rememberSaveable { mutableStateOf(crashLog != null) }
            val dismissCrashReport: () -> Unit = {
                CrashLogger.clear(context)
                showCrashReport = false
            }

            when {
                showCrashReport && crashLog != null -> {
                    CrashReportScreen(
                        log = crashLog,
                        onContinue = dismissCrashReport,
                        onClear = dismissCrashReport
                    )
                }
                else -> {
                    val navController = rememberNavController()

                    LaunchedEffect(initialDeepLinkUri) {
                        initialDeepLinkUri?.let { raw ->
                            try {
                                val uri = android.net.Uri.parse(raw)
                                if (uri.scheme == "content") {
                                    context.contentResolver.takePersistableUriPermission(
                                        uri,
                                        android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                                    )
                                }
                            } catch (e: Exception) {
                                android.util.Log.w("MainActivity", "Could not take persistable permission: ${e.message}")
                            }
                            val encoded = android.net.Uri.encode(raw)
                            navController.navigate(Screen.Reader.createForUri(encoded))
                        }
                    }

                    AppNavHost(navController = navController)
                }
            }
        }
    }
    } // CompositionLocalProvider
}
