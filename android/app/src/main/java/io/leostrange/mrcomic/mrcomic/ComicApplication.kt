package io.leostrange.mrcomic

import android.app.Application
import android.content.ComponentCallbacks2
import io.leostrange.mrcomic.core.data.preferences.PerformanceDefaults
import io.leostrange.mrcomic.core.data.preferences.PerformancePreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.ui.sound.UIFeedback
import io.leostrange.mrcomic.engine.rendering.preload.PagePreloader
import io.leostrange.mrcomic.crash.CrashLogger
import io.leostrange.mrcomic.backup.AutoBackupManager
import io.leostrange.mrcomic.home.ContinueStartupWarmStore
import io.leostrange.mrcomic.icons.AppIconManager
import dagger.hilt.android.HiltAndroidApp
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltAndroidApp
class ComicApplication : Application() {

    var splashPlayedInProcess: Boolean = false

    @Inject
    lateinit var appIconManager: AppIconManager

    @Inject
    lateinit var autoBackupManager: AutoBackupManager

    @Inject
    lateinit var pagePreloader: PagePreloader

    @Inject
    lateinit var continueStartupWarmStore: ContinueStartupWarmStore

    private val applicationScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

    override fun onCreate() {
        super.onCreate()
        CrashLogger.install(this)
        UIFeedback.init(this)
        applicationScope.launch {
            val preloadEnabled = runCatching {
                UserPreferences(dataStore)
                    .get(
                        PerformancePreferencesKeys.PERF_STARTUP_PRELOAD_ENABLED,
                        PerformanceDefaults.STARTUP_PRELOAD
                    )
                    .first()
            }.getOrDefault(true)
            if (preloadEnabled) {
                try { continueStartupWarmStore.warmUp() } catch (_: Exception) {}
            }
        }
        applicationScope.launch {
            try { appIconManager.ensureIconConsistency() } catch (_: Exception) {}
            try { autoBackupManager.maybeBackupOnStartup() } catch (_: Exception) {}
        }
    }

    override fun onTerminate() {
        super.onTerminate()
        applicationScope.cancel()
    }

    override fun onTrimMemory(level: Int) {
        super.onTrimMemory(level)
        pagePreloader.trimMemory(level)
    }

    @Suppress("DEPRECATION")
    override fun onLowMemory() {
        super.onLowMemory()
        pagePreloader.trimMemory(ComponentCallbacks2.TRIM_MEMORY_COMPLETE)
    }
}
