package com.example.core.ui.splash

import androidx.annotation.RawRes
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import coil.compose.rememberAsyncImagePainter
import coil.request.ImageRequest
import kotlinx.coroutines.delay

/**
 * Simple GIF splash screen component using Coil
 * More reliable than video-based splash screens
 */
@Composable
fun GifSplashScreen(
    @RawRes gifResId: Int,
    onSplashFinished: () -> Unit,
    modifier: Modifier = Modifier,
    autoFinishDelayMs: Long = 4000L
) {
    val context = LocalContext.current
    
    // Create image request for GIF
    val imageRequest = ImageRequest.Builder(context)
        .data("android.resource://${context.packageName}/$gifResId")
        .build()
    
    val painter = rememberAsyncImagePainter(model = imageRequest)
    
    // Auto-finish splash after delay
    LaunchedEffect(Unit) {
        delay(autoFinishDelayMs)
        onSplashFinished()
    }
    
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(MaterialTheme.colorScheme.surface),
        contentAlignment = Alignment.Center
    ) {
        Image(
            painter = painter,
            contentDescription = "Splash Screen",
            modifier = Modifier.fillMaxSize(),
            contentScale = ContentScale.Crop
        )
    }
}

/**
 * Simplified GIF splash with just resource ID
 */
@Composable
fun GifSplash(
    @RawRes gifResId: Int,
    onFinished: () -> Unit
) {
    GifSplashScreen(
        gifResId = gifResId,
        onSplashFinished = onFinished,
        autoFinishDelayMs = 4000L
    )
}
