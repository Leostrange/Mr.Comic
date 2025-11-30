package com.example.core.ui.splash

import androidx.compose.runtime.LaunchedEffect
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.background
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.runtime.Composable
import kotlinx.coroutines.delay

/**
 * Полноэкранный сплэш без какого-либо верхнего бара и без текста "Mr.Comic".
 * Через [onFinished] сигнализируем, что пора навигироваться дальше.
 */
@Composable
fun SplashScreen(
    onFinished: () -> Unit,
    // если у тебя есть анимированный фон/видео — отрисуй его внутри Box
) {
    LaunchedEffect(Unit) {
        // имитация короткой паузы сплэша; подставь свою длительность/условие
        delay(1200)
        onFinished()
    }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black) // или любой фон под видео/картинку
    ) {
        // НИКАКИХ Text("Mr.Comic") тут нет.
        // Помести здесь плеер/анимацию/логотип, если нужно (без AppBar).
    }
}
