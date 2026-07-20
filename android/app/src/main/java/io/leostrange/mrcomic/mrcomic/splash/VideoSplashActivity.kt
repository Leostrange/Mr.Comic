package io.leostrange.mrcomic.splash

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.lifecycle.lifecycleScope
import androidx.media3.common.util.UnstableApi
import io.leostrange.mrcomic.core.ui.eink.isEInkDevice
import io.leostrange.mrcomic.core.ui.splash.VideoSplashScreen
import io.leostrange.mrcomic.core.ui.theme.MrComicTheme
import io.leostrange.mrcomic.core.ui.theme.ThemeConfig
import io.leostrange.mrcomic.ComicApplication
import io.leostrange.mrcomic.MainActivity
import io.leostrange.mrcomic.R
import io.leostrange.mrcomic.home.ContinueWarmState
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import kotlinx.coroutines.withTimeoutOrNull

@UnstableApi
class VideoSplashActivity : ComponentActivity() {

    private var navigationJob: Job? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val app = application as ComicApplication

        if (app.splashPlayedInProcess) {
            navigateToMain()
            return
        }

        if (!isStartupVideoSplashEnabled()) {
            app.splashPlayedInProcess = true
            navigateToMain()
            return
        }

        // E-ink / e-paper screens have no GPU animation pipeline and near-zero refresh rate.
        // Playing video on such a display causes severe ghosting — skip straight to main.
        if (isEInkDevice()) {  // uses Context.isEInkDevice() from core-ui
            app.splashPlayedInProcess = true
            navigateToMain()
            return
        }

        app.splashPlayedInProcess = true

        setContent {
            MrComicTheme(themeConfig = ThemeConfig()) {
                VideoSplashScreen(
                    videoResId = R.raw.splash_video,
                    horizontalVideoResId = R.raw.splash_video_horizontal,
                    onSplashFinished = { navigateToMainWhenReady() }
                )
            }
        }
    }

    private fun navigateToMainWhenReady() {
        if (navigationJob != null) return
        val app = application as ComicApplication
        if (!isStartupPreloadEnabled()) {
            navigateToMain()
            return
        }
        // Kick off warmUp immediately — don't wait for the coroutine body to reach it.
        if (app.continueStartupWarmStore.state.value == ContinueWarmState.Idle) {
            lifecycleScope.launch(Dispatchers.IO) {
                runCatching { app.continueStartupWarmStore.warmUp() }
            }
        }
        navigationJob = lifecycleScope.launch {
            // Wait up to 4 s for a warm snapshot; if it times out — navigate anyway
            // (ContinueScreen will show a loading spinner while Room catches up).
            withTimeoutOrNull(4_000L) {
                app.continueStartupWarmStore.state.first { state ->
                    state !is ContinueWarmState.Idle && state !is ContinueWarmState.Loading
                }
            }
            if (!isFinishing && !isDestroyed) {
                navigateToMain()
            }
        }
    }

    private fun navigateToMain() {
        startActivity(
            Intent(this, MainActivity::class.java).apply {
                addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP)
            }
        )
        overridePendingTransition(0, 0)
        finish()
    }

    // isEInkDevice() is a Context extension from io.leostrange.mrcomic.core.ui.eink.EInkUtils
}
