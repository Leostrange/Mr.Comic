package com.example.mrcomic.splash

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.media3.common.util.UnstableApi
import com.example.core.ui.eink.isEInkDevice
import com.example.core.ui.splash.VideoSplashScreen
import com.example.core.ui.theme.MrComicTheme
import com.example.core.ui.theme.ThemeConfig
import com.example.mrcomic.ComicApplication
import com.example.mrcomic.MainActivity
import com.example.mrcomic.R

@UnstableApi
class VideoSplashActivity : ComponentActivity() {

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
                    onSplashFinished = { navigateToMain() }
                )
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

    // isEInkDevice() is a Context extension from com.example.core.ui.eink.EInkUtils
}
