package io.leostrange.mrcomic.splash

import android.animation.ObjectAnimator
import android.content.Intent
import android.os.Build
import android.os.Bundle
import android.view.View
import android.view.animation.AnticipateInterpolator
import androidx.activity.ComponentActivity
import androidx.core.animation.doOnEnd
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import androidx.media3.common.util.UnstableApi
import io.leostrange.mrcomic.MainActivity
import io.leostrange.mrcomic.R

@UnstableApi
class ModernSplashActivity : ComponentActivity() {

    companion object {
        private const val TAG = "ModernSplashActivity"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        val splashScreen = installSplashScreen()
        super.onCreate(savedInstanceState)

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            setupModernSplashScreen(splashScreen)
        } else {
            setupLegacySplashScreen()
        }
    }

    private fun setupModernSplashScreen(splashScreen: androidx.core.splashscreen.SplashScreen) {
        splashScreen.setOnExitAnimationListener { splashScreenView ->
            val slideUp = ObjectAnimator.ofFloat(
                splashScreenView.view,
                View.TRANSLATION_Y,
                0f,
                -splashScreenView.view.height.toFloat()
            )
            slideUp.interpolator = AnticipateInterpolator()
            slideUp.duration = 500L
            slideUp.doOnEnd {
                splashScreenView.remove()
                navigateToStartupDestination()
            }
            slideUp.start()
        }
        splashScreen.setKeepOnScreenCondition { false }
    }

    private fun setupLegacySplashScreen() {
        val videoResourceId = resources.getIdentifier("splash_video", "raw", packageName)
        if (videoResourceId != 0 && isStartupVideoSplashEnabled()) {
            navigateToVideoSplash()
        } else {
            navigateToMainActivity()
        }
    }

    private fun navigateToStartupDestination() {
        if (isStartupVideoSplashEnabled()) {
            navigateToVideoSplash()
        } else {
            navigateToMainActivity()
        }
    }

    private fun navigateToVideoSplash() {
        startActivity(Intent(this, VideoSplashActivity::class.java))
        overridePendingTransition(0, 0)
        finish()
    }

    private fun navigateToMainActivity() {
        startActivity(Intent(this, MainActivity::class.java))
        overridePendingTransition(0, 0)
        finish()
    }
}
