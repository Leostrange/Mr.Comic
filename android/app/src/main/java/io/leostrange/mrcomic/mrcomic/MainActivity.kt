package io.leostrange.mrcomic

import android.Manifest
import android.content.ActivityNotFoundException
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Bundle
import android.os.Build
import android.os.Parcelable
import android.provider.OpenableColumns
import android.provider.Settings
import android.view.KeyEvent
import android.webkit.MimeTypeMap
import androidx.activity.ComponentActivity
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.WindowCompat
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.Density
import androidx.navigation.compose.rememberNavController
import androidx.core.content.ContextCompat
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.PerformanceDefaults
import io.leostrange.mrcomic.core.data.preferences.PerformancePreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.ui.sound.UIFeedback
import io.leostrange.mrcomic.core.ui.theme.MrComicTheme
import io.leostrange.mrcomic.core.ui.theme.ThemeConfig
import io.leostrange.mrcomic.core.ui.theme.ThemePreferencesRepository
import io.leostrange.mrcomic.crash.CrashLogger
import io.leostrange.mrcomic.navigation.AppNavHost
import io.leostrange.mrcomic.navigation.Screen
import io.leostrange.mrcomic.ui.CrashReportScreen
import io.leostrange.mrcomic.feature.reader.ui.ReaderHardwareKeyHost
import androidx.lifecycle.lifecycleScope
import io.leostrange.mrcomic.core.ui.eink.LocalEInkMode
import io.leostrange.mrcomic.core.ui.eink.isEInkDevice
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.locale.appStringsForCode
import io.leostrange.mrcomic.core.ui.locale.normalizeAppLanguageCode
import io.leostrange.mrcomic.core.ui.performance.LocalPerformanceUiHints
import io.leostrange.mrcomic.core.ui.performance.PerformanceUiHints
import io.leostrange.mrcomic.engine.formats.base.RenderDeviceTier
import io.leostrange.mrcomic.engine.formats.base.resolveRenderDeviceProfile
import io.leostrange.mrcomic.icons.AppIconManager
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject

@AndroidEntryPoint
class MainActivity : AppCompatActivity(), ReaderHardwareKeyHost {

    @Inject lateinit var appIconManager: AppIconManager
    private var readerHardwareKeyHandler: ((KeyEvent) -> Boolean)? = null
    internal val pendingOpenUri = mutableStateOf<String?>(null)
    internal var incomingOpenJob: Job? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        // Ensure the app always draws behind system bars; edge-to-edge layout
        // prevents the bottom nav jump when system bars reappear after leaving the reader.
        WindowCompat.setDecorFitsSystemWindows(window, false)
        supportActionBar?.hide()
        // Restore correct launcher icon alias if PM state was reset (e.g., after app update)
        lifecycleScope.launch { appIconManager.ensureIconConsistency() }
        setContent {
            val themeRepo = remember { ThemePreferencesRepository(this) }
            MrComicApp(
                themePreferencesRepository = themeRepo,
                pendingOpenUri = pendingOpenUri.value,
                onPendingOpenUriConsumed = { consumed ->
                    if (pendingOpenUri.value == consumed) {
                        pendingOpenUri.value = null
                    }
                }
            )
        }
        handleIncomingOpenIntent(intent)
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        handleIncomingOpenIntent(intent)
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

private fun MainActivity.handleIncomingOpenIntent(intent: Intent?) {
    val incomingUri = extractIncomingOpenUri(intent) ?: return
    tryPersistIncomingUriPermission(intent, incomingUri)
    pendingOpenUri.value = null
    incomingOpenJob?.cancel()
    incomingOpenJob = lifecycleScope.launch {
        val preparedPath = prepareIncomingOpenPath(intent, incomingUri) ?: incomingUri.toString()
        pendingOpenUri.value = preparedPath
    }
}

@Composable
fun MrComicApp(
    themePreferencesRepository: ThemePreferencesRepository,
    pendingOpenUri: String? = null,
    onPendingOpenUriConsumed: (String) -> Unit = {}
) {
    val themeConfig by themePreferencesRepository.themeConfig.collectAsState(initial = ThemeConfig())
    val context = LocalContext.current
    val isEInk = remember { context.isEInkDevice() }
    val renderProfile = remember { context.resolveRenderDeviceProfile() }
    val userPreferences = remember { UserPreferences(context.dataStore) }
    val fontScale by userPreferences.get(PreferencesKeys.UI_FONT_SCALE, 1.0f)
        .collectAsState(initial = 1.0f)
    val uiDensityScale by userPreferences.get(PreferencesKeys.UI_DENSITY_SCALE, 1.0f)
        .collectAsState(initial = 1.0f)
    val cornerRadius by userPreferences.get(PreferencesKeys.UI_CORNER_RADIUS, 12)
        .collectAsState(initial = 12)
    val reducedMotionPref by userPreferences.get(PreferencesKeys.UI_REDUCED_MOTION, false)
        .collectAsState(initial = false)
    val reducedVisualEffectsPref by userPreferences.get(PreferencesKeys.UI_REDUCED_VISUAL_EFFECTS, false)
        .collectAsState(initial = false)
    val perfReducedAnimationsPref by userPreferences.get(
        PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS,
        PerformanceDefaults.REDUCED_ANIM
    ).collectAsState(initial = PerformanceDefaults.REDUCED_ANIM)
    val performanceHints = remember(
        renderProfile,
        isEInk,
        reducedMotionPref,
        reducedVisualEffectsPref,
        perfReducedAnimationsPref
    ) {
        PerformanceUiHints(
            reducedMotion = reducedMotionPref || perfReducedAnimationsPref || isEInk || renderProfile.tier == RenderDeviceTier.LOW_END,
            reducedVisualEffects = reducedVisualEffectsPref || isEInk || renderProfile.tier == RenderDeviceTier.LOW_END
        )
    }
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
                        LegacyFileAccessPermissionRequester()
                        NotificationPermissionRequester()

                        LaunchedEffect(pendingOpenUri) {
                            pendingOpenUri?.let { raw ->
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
                                withFrameNanos { }
                                val encoded = android.net.Uri.encode(raw)
                                navController.navigate(Screen.Reader.createForUri(encoded)) {
                                    launchSingleTop = true
                                }
                                onPendingOpenUriConsumed(raw)
                            }
                        }

                        AppNavHost(navController = navController)
                    }
                }
            }
        }
    } // CompositionLocalProvider
}

@Composable
private fun LegacyFileAccessPermissionRequester() {
    if (Build.VERSION.SDK_INT > Build.VERSION_CODES.S_V2) return

    val context = LocalContext.current
    val activity = context as? ComponentActivity ?: return
    val strings = LocalStrings.current
    val permission = Manifest.permission.READ_EXTERNAL_STORAGE
    var hasPermission by remember {
        mutableStateOf(
            ContextCompat.checkSelfPermission(context, permission) == PackageManager.PERMISSION_GRANTED
        )
    }
    var requestedOnce by rememberSaveable { mutableStateOf(false) }
    var showPermissionDialog by rememberSaveable { mutableStateOf(false) }

    val permissionLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.RequestPermission()
    ) { granted ->
        hasPermission = granted || ContextCompat.checkSelfPermission(
            context,
            permission
        ) == PackageManager.PERMISSION_GRANTED
        requestedOnce = true
        showPermissionDialog = !hasPermission
    }

    LaunchedEffect(hasPermission) {
        if (!hasPermission && !requestedOnce) {
            permissionLauncher.launch(permission)
        }
    }

    if (!hasPermission && showPermissionDialog) {
        val shouldShowRationale = activity.shouldShowRequestPermissionRationale(permission)
        AlertDialog(
            onDismissRequest = { showPermissionDialog = false },
            title = {
                Text(
                    when (strings.languageCode) {
                        "en" -> "File access"
                        else -> "Доступ к файлам"
                    }
                )
            },
            text = {
                Text(
                    when (strings.languageCode) {
                        "en" -> "On Android 12L and below, Mr.Comic needs storage access to open local books, comics, DjVu files and audiobooks from device memory."
                        else -> "На Android 12L и ниже Mr.Comic нужен доступ к памяти, чтобы открывать локальные книги, комиксы, DjVu-файлы и аудиокниги из памяти устройства."
                    }
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        showPermissionDialog = false
                        permissionLauncher.launch(permission)
                    }
                ) {
                    Text(
                        when (strings.languageCode) {
                            "en" -> "Allow"
                            else -> "Разрешить"
                        }
                    )
                }
            },
            dismissButton = {
                TextButton(
                    onClick = {
                        showPermissionDialog = false
                        if (shouldShowRationale) return@TextButton
                        val intent = Intent(
                            Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                            Uri.fromParts("package", context.packageName, null)
                        ).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        try {
                            context.startActivity(intent)
                        } catch (_: ActivityNotFoundException) {
                        }
                    }
                ) {
                    Text(
                        when {
                            shouldShowRationale && strings.languageCode == "en" -> "Later"
                            shouldShowRationale -> "Позже"
                            strings.languageCode == "en" -> "Settings"
                            else -> "Настройки"
                        }
                    )
                }
            }
        )
    }
}

@Composable
private fun NotificationPermissionRequester() {
    if (Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU) return

    val context = LocalContext.current
    val activity = context as? ComponentActivity ?: return
    val strings = LocalStrings.current
    val permission = Manifest.permission.POST_NOTIFICATIONS
    var hasPermission by remember {
        mutableStateOf(
            ContextCompat.checkSelfPermission(context, permission) == PackageManager.PERMISSION_GRANTED
        )
    }
    var requestedOnce by rememberSaveable { mutableStateOf(false) }
    var showPermissionDialog by rememberSaveable { mutableStateOf(false) }

    val permissionLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.RequestPermission()
    ) { granted ->
        hasPermission = granted || ContextCompat.checkSelfPermission(
            context,
            permission
        ) == PackageManager.PERMISSION_GRANTED
        requestedOnce = true
        showPermissionDialog = !hasPermission
    }

    LaunchedEffect(hasPermission) {
        if (!hasPermission && !requestedOnce) {
            permissionLauncher.launch(permission)
        }
    }

    if (!hasPermission && showPermissionDialog) {
        val shouldShowRationale = activity.shouldShowRequestPermissionRationale(permission)
        AlertDialog(
            onDismissRequest = { showPermissionDialog = false },
            title = {
                Text(
                    when (strings.languageCode) {
                        "en" -> "Notifications"
                        else -> "Уведомления"
                    }
                )
            },
            text = {
                Text(
                    when (strings.languageCode) {
                        "en" -> "Mr.Comic needs notification permission so Android can show the mini-player, lockscreen controls and background playback status for audiobooks and text-to-speech."
                        else -> "Mr.Comic нужен доступ к уведомлениям, чтобы Android показывал мини-плеер, элементы управления на экране блокировки и фоновое воспроизведение для аудиокниг и озвучивания текста."
                    }
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        showPermissionDialog = false
                        permissionLauncher.launch(permission)
                    }
                ) {
                    Text(
                        when (strings.languageCode) {
                            "en" -> "Allow"
                            else -> "Разрешить"
                        }
                    )
                }
            },
            dismissButton = {
                TextButton(
                    onClick = {
                        showPermissionDialog = false
                        if (shouldShowRationale) return@TextButton
                        val intent = Intent(
                            Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                            Uri.fromParts("package", context.packageName, null)
                        ).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        try {
                            context.startActivity(intent)
                        } catch (_: ActivityNotFoundException) {
                        }
                    }
                ) {
                    Text(
                        when {
                            shouldShowRationale && strings.languageCode == "en" -> "Later"
                            shouldShowRationale -> "Позже"
                            strings.languageCode == "en" -> "Settings"
                            else -> "Настройки"
                        }
                    )
                }
            }
        )
    }
}

private fun extractIncomingOpenUri(intent: Intent?): Uri? {
    if (intent == null) return null
    val candidateUris = mutableListOf<Uri>()
    when (intent.action) {
        Intent.ACTION_VIEW -> {
            intent.data?.let(candidateUris::add)
        }
        Intent.ACTION_SEND -> {
            intent.parcelableExtraCompat<Uri>(Intent.EXTRA_STREAM)?.let(candidateUris::add)
            intent.data?.let(candidateUris::add)
        }
        Intent.ACTION_SEND_MULTIPLE -> {
            candidateUris += intent.parcelableArrayListExtraCompat(Intent.EXTRA_STREAM)
        }
    }
    val clipData = intent.clipData
    if (clipData != null) {
        for (index in 0 until clipData.itemCount) {
            clipData.getItemAt(index).uri?.let(candidateUris::add)
        }
    }
    return candidateUris.firstOrNull()
}

private fun MainActivity.tryPersistIncomingUriPermission(intent: Intent?, uri: Uri) {
    if (uri.scheme != "content") return
    val hasPersistableGrant =
        ((intent?.flags ?: 0) and Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION) != 0
    if (!hasPersistableGrant) return
    val readFlags = (intent?.flags ?: 0) and (
        Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION
    )
    if (readFlags == 0) return
    try {
        when (readFlags) {
            Intent.FLAG_GRANT_READ_URI_PERMISSION ->
                contentResolver.takePersistableUriPermission(uri, Intent.FLAG_GRANT_READ_URI_PERMISSION)
            Intent.FLAG_GRANT_WRITE_URI_PERMISSION ->
                contentResolver.takePersistableUriPermission(uri, Intent.FLAG_GRANT_WRITE_URI_PERMISSION)
            Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION ->
                contentResolver.takePersistableUriPermission(
                    uri,
                    Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION
                )
        }
    } catch (_: Exception) {
    }
}

private suspend fun MainActivity.prepareIncomingOpenPath(intent: Intent?, uri: Uri): String? =
    withContext(Dispatchers.IO) {
        when (uri.scheme) {
            null, "file" -> uri.path ?: uri.toString()
            "content" -> {
                val targetDir = File(filesDir, "incoming_open").apply { mkdirs() }
                val displayName = resolveIncomingDisplayName(uri)
                val extension = resolveIncomingExtension(intent, uri, displayName)
                val baseName = displayName
                    ?.substringBeforeLast('.')
                    ?.takeIf { it.isNotBlank() }
                    ?: "shared_document"
                val safeBaseName = baseName
                    .replace(Regex("[^A-Za-z0-9._-]+"), "_")
                    .trim('_')
                    .ifBlank { "shared_document" }
                val fileName = buildString {
                    append(System.currentTimeMillis())
                    append('_')
                    append(safeBaseName.take(48))
                    if (!extension.isNullOrBlank()) {
                        append('.')
                        append(extension)
                    }
                }
                val stagedFile = File(targetDir, fileName)
                return@withContext try {
                    contentResolver.openInputStream(uri)?.use { input ->
                        stagedFile.outputStream().use { output -> input.copyTo(output) }
                        stagedFile.absolutePath
                    }
                } catch (_: Exception) {
                    null
                }
            }
            else -> uri.toString()
        }
    }

private fun MainActivity.resolveIncomingDisplayName(uri: Uri): String? {
    val queriedName = runCatching {
        contentResolver.query(uri, arrayOf(OpenableColumns.DISPLAY_NAME), null, null, null)
            ?.use { cursor ->
                if (cursor.moveToFirst()) cursor.getString(0) else null
            }
    }.getOrNull()
    if (!queriedName.isNullOrBlank()) return queriedName
    val lastSegment = runCatching { Uri.decode(uri.lastPathSegment ?: "") }.getOrDefault("")
    return lastSegment.substringAfterLast('/').takeIf { it.isNotBlank() }
}

private fun MainActivity.resolveIncomingExtension(
    intent: Intent?,
    uri: Uri,
    displayName: String?
): String? {
    val mimeType = runCatching { intent?.type ?: contentResolver.getType(uri) }
        .getOrNull()
        ?.lowercase()
    // Single-sourced via the format catalog (core-model). The previous hand-maintained when()
    // had drifted from the catalog (missing AZW3/FB2/7z/tar/chm/xps), staging some incoming files
    // with a blank/wrong extension. Keep the generic MimeTypeMap fallback for unknown types.
    return IncomingOpenFormatPolicy.resolveExtension(displayName, mimeType)
        ?: mimeType?.let { MimeTypeMap.getSingleton().getExtensionFromMimeType(it) }
}

private inline fun <reified T : Parcelable> Intent.parcelableExtraCompat(name: String): T? {
    return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
        getParcelableExtra(name, T::class.java)
    } else {
        @Suppress("DEPRECATION")
        getParcelableExtra(name)
    }
}

private fun Intent.parcelableArrayListExtraCompat(name: String): List<Uri> {
    return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
        getParcelableArrayListExtra(name, Uri::class.java).orEmpty()
    } else {
        @Suppress("DEPRECATION")
        getParcelableArrayListExtra<Uri>(name).orEmpty()
    }
}
