package com.example.mrcomic.splash

import android.animation.ObjectAnimator
import android.content.Intent
import android.os.Build
import android.os.Bundle
import android.view.View
import android.view.animation.AnticipateInterpolator
import androidx.activity.ComponentActivity
import androidx.core.animation.doOnEnd
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import com.example.mrcomic.MainActivity
import com.example.mrcomic.R

/**
 * Современный сплэш-экран с поддержкой Android 12+ SplashScreen API
 * и fallback для старых версий Android
 */
class ModernSplashActivity : ComponentActivity() {
    
    companion object {
        private const val TAG = "ModernSplashActivity"
        private const val SPLASH_DURATION_MS = Long.MAX_VALUE // Убираем ограничение для видео
    }
    
    override fun onCreate(savedInstanceState: Bundle?) {
        // Устанавливаем современный splash screen для Android 12+
        val splashScreen = installSplashScreen()
        
        super.onCreate(savedInstanceState)
        
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            // Android 12+ - используем системный SplashScreen API
            setupModernSplashScreen(splashScreen)
        } else {
            // Android < 12 - используем кастомный видео-сплэш
            setupLegacySplashScreen()
        }
    }
    
    /**
     * Настройка современного splash screen для Android 12+
     */
    private fun setupModernSplashScreen(splashScreen: androidx.core.splashscreen.SplashScreen) {
        // Настраиваем анимацию выхода
        splashScreen.setOnExitAnimationListener { splashScreenView ->
            // Создаем анимацию исчезновения
            val slideUp = ObjectAnimator.ofFloat(
                splashScreenView.view,
                View.TRANSLATION_Y,
                0f,
                -splashScreenView.view.height.toFloat()
            )
            slideUp.interpolator = AnticipateInterpolator()
            slideUp.duration = 500L
            
            // По завершении анимации удаляем splash screen и переходим к основному экрану
            slideUp.doOnEnd {
                splashScreenView.remove()
                navigateToMainActivity()
            }
            
            slideUp.start()
        }
        
        // Показываем splash screen в течение заданного времени
        splashScreen.setKeepOnScreenCondition {
            // Здесь можно добавить логику инициализации приложения
            false // Пока просто показываем и сразу переходим
        }
    }
    
    /**
     * Настройка кастомного splash screen для Android < 12
     */
    private fun setupLegacySplashScreen() {
        setContentView(R.layout.activity_splash)
        
        // Проверяем, есть ли видео-ресурс
        val videoResourceId = resources.getIdentifier("splash_video", "raw", packageName)
        
        if (videoResourceId != 0) {
            // Показываем видео-сплэш
            showVideoSplash()
        } else {
            // Показываем статический сплэш
            showStaticSplash()
        }
    }
    
    /**
     * Показать видео-сплэшскрин
     */
    private fun showVideoSplash() {
        // Запускаем VideoSplashActivity или Activity
        val intent = Intent(this, VideoSplashActivity::class.java)
        intent.putExtra("next_activity", MainActivity::class.java.name)
        startActivity(intent)
        finish()
    }
    
    /**
     * Показать статический сплэш
     */
    private fun showStaticSplash() {
        // Показываем статический сплэш на заданное время
        window.decorView.postDelayed({
            navigateToMainActivity()
        }, SPLASH_DURATION_MS)
    }
    
    /**
     * Переход к основному экрану приложения
     */
    private fun navigateToMainActivity() {
        val intent = Intent(this, MainActivity::class.java)
        startActivity(intent)
        finish()
    }
}