package com.example.core.ui

import android.app.Activity
import android.os.Build
import android.view.WindowInsetsController
import androidx.compose.runtime.*
import androidx.compose.ui.platform.LocalView
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat

/**
 * Менеджер для управления системными барами (статус-бар и навигационная панель)
 * Обеспечивает единообразный полноэкранный режим
 */
class SystemUiManager {
    
    /**
     * Включить полноэкранный режим
     */
    fun enableFullscreen(activity: Activity) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            // Android 11+ (API 30+)
            val windowInsetsController = activity.window.insetsController
            windowInsetsController?.let { controller ->
                controller.hide(
                    android.view.WindowInsets.Type.statusBars() or 
                    android.view.WindowInsets.Type.navigationBars()
                )
                controller.systemBarsBehavior = 
                    WindowInsetsController.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
            }
        } else {
            // Android 10 и ниже
            @Suppress("DEPRECATION")
            activity.window.decorView.systemUiVisibility = (
                android.view.View.SYSTEM_UI_FLAG_FULLSCREEN or
                android.view.View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                android.view.View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            )
        }
        
        // Включить edge-to-edge
        WindowCompat.setDecorFitsSystemWindows(activity.window, false)
    }
    
    /**
     * Отключить полноэкранный режим
     */
    fun disableFullscreen(activity: Activity) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            // Android 11+ (API 30+)
            val windowInsetsController = activity.window.insetsController
            windowInsetsController?.let { controller ->
                controller.show(
                    android.view.WindowInsets.Type.statusBars() or 
                    android.view.WindowInsets.Type.navigationBars()
                )
            }
        } else {
            // Android 10 и ниже
            @Suppress("DEPRECATION")
            activity.window.decorView.systemUiVisibility = 0
        }
        
        // Отключить edge-to-edge
        WindowCompat.setDecorFitsSystemWindows(activity.window, true)
    }
    
    /**
     * Показать системные бары временно
     */
    fun showSystemBarsTemporarily(activity: Activity) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            val windowInsetsController = activity.window.insetsController
            windowInsetsController?.let { controller ->
                controller.show(
                    android.view.WindowInsets.Type.statusBars() or 
                    android.view.WindowInsets.Type.navigationBars()
                )
            }
        } else {
            @Suppress("DEPRECATION")
            activity.window.decorView.systemUiVisibility = (
                android.view.View.SYSTEM_UI_FLAG_LAYOUT_STABLE or
                android.view.View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                android.view.View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
            )
        }
    }
}

/**
 * Composable для управления системными барами
 */
@Composable
fun rememberSystemUiManager(): SystemUiManager {
    return remember { SystemUiManager() }
}

/**
 * Composable для автоматического управления полноэкранным режимом
 */
@Composable
fun FullscreenHandler(
    isFullscreen: Boolean,
    onSystemBarsVisibilityChanged: (Boolean) -> Unit = {}
) {
    val view = LocalView.current
    val systemUiManager = rememberSystemUiManager()
    
    LaunchedEffect(isFullscreen) {
        val activity = view.context as? Activity
        if (activity != null) {
            if (isFullscreen) {
                systemUiManager.enableFullscreen(activity)
            } else {
                systemUiManager.disableFullscreen(activity)
            }
            onSystemBarsVisibilityChanged(isFullscreen)
        }
    }
}
