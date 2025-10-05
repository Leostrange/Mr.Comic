package com.example.core.ui.theme

import android.app.Activity
import android.os.Build
import android.view.View
import android.view.WindowInsetsController
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.SideEffect
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.platform.LocalView
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat

/**
 * Менеджер для управления системными панелями (статус-бар и навигационная панель)
 * Обеспечивает правильное применение темы к системным элементам интерфейса
 */
object SystemBarManager {
    
    /**
     * Применяет тему к системным панелям
     * @param activity активность
     * @param darkTheme использовать тёмную тему
     * @param statusBarColor цвет статус-бара (если null - прозрачный)
     * @param navigationBarColor цвет навигационной панели (если null - прозрачный)
     */
    fun applyTheme(
        activity: Activity,
        darkTheme: Boolean,
        statusBarColor: Color? = null,
        navigationBarColor: Color? = null
    ) {
        val window = activity.window
        val insetsController = WindowCompat.getInsetsController(window, window.decorView)
        
        // Устанавливаем цвета панелей
        window.statusBarColor = (statusBarColor ?: Color.Transparent).toArgb()
        window.navigationBarColor = (navigationBarColor ?: Color.Transparent).toArgb()
        
        // Настраиваем внешний вид иконок в зависимости от темы
        insetsController.isAppearanceLightStatusBars = !darkTheme
        insetsController.isAppearanceLightNavigationBars = !darkTheme
        
        // Для Android 11+ включаем edge-to-edge если цвета прозрачные
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            if (statusBarColor == null && navigationBarColor == null) {
                window.setDecorFitsSystemWindows(false)
            }
        }
    }
    
    /**
     * Применяет полноэкранный режим (для видео-сплэша и ридера)
     */
    fun applyFullscreenMode(activity: Activity, enable: Boolean) {
        val window = activity.window
        val insetsController = WindowCompat.getInsetsController(window, window.decorView)
        
        if (enable) {
            // Скрываем системные панели
            insetsController.hide(WindowInsetsCompat.Type.systemBars())
            insetsController.systemBarsBehavior = WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
            
            // Делаем панели полностью прозрачными
            window.statusBarColor = Color.Transparent.toArgb()
            window.navigationBarColor = Color.Transparent.toArgb()
        } else {
            // Показываем системные панели
            insetsController.show(WindowInsetsCompat.Type.systemBars())
        }
    }
    
    /**
     * Определяет, нужно ли использовать светлые иконки на основе цвета фона
     */
    private fun shouldUseLightIcons(backgroundColor: Color): Boolean {
        return backgroundColor.luminance() > 0.5f
    }
}

/**
 * Composable для автоматического управления системными панелями
 * Используется для применения темы к системным панелям
 */
@Composable
fun SystemBarsTheme(
    darkTheme: Boolean = isSystemInDarkTheme(),
    statusBarColor: Color? = null,
    navigationBarColor: Color? = null
) {
    val view = LocalView.current
    
    SideEffect {
        val activity = view.context as? Activity
        activity?.let {
            SystemBarManager.applyTheme(
                activity = it,
                darkTheme = darkTheme,
                statusBarColor = statusBarColor,
                navigationBarColor = navigationBarColor
            )
        }
    }
}

/**
 * Composable для полноэкранного режима
 */
@Composable
fun FullscreenMode(enable: Boolean = true) {
    val view = LocalView.current
    
    LaunchedEffect(enable) {
        val activity = view.context as? Activity
        activity?.let {
            SystemBarManager.applyFullscreenMode(it, enable)
        }
    }
}

/**
 * Composable для режима чтения с оптимизированными системными панелями
 */
@Composable
fun ReaderSystemBars(
    darkTheme: Boolean = true,
    hideSystemBars: Boolean = false
) {
    val view = LocalView.current
    
    SideEffect {
        val activity = view.context as? Activity
        activity?.let {
            if (hideSystemBars) {
                SystemBarManager.applyFullscreenMode(it, true)
            } else {
                SystemBarManager.applyTheme(
                    activity = it,
                    darkTheme = darkTheme,
                    statusBarColor = Color.Black.copy(alpha = 0.3f),
                    navigationBarColor = Color.Black.copy(alpha = 0.3f)
                )
            }
        }
    }
}
