package io.leostrange.mrcomic.feature.reader.ui

import android.app.Activity
import android.content.Context
import android.os.Build
import android.view.View
import android.view.WindowInsetsController
import android.view.WindowManager
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver

/**
 * Window and lifecycle side effects for the reader: brightness, keep-screen-on,
 * immersive mode management and the position flush on stop.
 *
 * Extracted from [ReaderScreen] to reduce its composable size.
 */

@Composable
internal fun ReaderBrightnessEffect(brightness: Float, context: Context) {
    DisposableEffect(brightness, context) {
        val activity = context as? Activity
        val window = activity?.window
        window?.attributes = window?.attributes?.apply {
            screenBrightness = if (brightness >= 0f)
                brightness.coerceIn(0.01f, 1f)
            else
                WindowManager.LayoutParams.BRIGHTNESS_OVERRIDE_NONE
        }
        onDispose {
            window?.attributes = window?.attributes?.apply {
                screenBrightness = WindowManager.LayoutParams.BRIGHTNESS_OVERRIDE_NONE
            }
        }
    }
}

@Composable
internal fun ReaderKeepScreenOnEffect(keepScreenOn: Boolean, context: Context) {
    DisposableEffect(keepScreenOn, context) {
        val window = (context as? Activity)?.window
        if (keepScreenOn) {
            window?.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        } else {
            window?.clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        }
        onDispose {
            window?.clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        }
    }
}

@Composable
internal fun ReaderImmersiveModeEffect(immersiveMode: Boolean, context: Context) {
    DisposableEffect(immersiveMode, context) {
        val window = (context as? Activity)?.window
        if (immersiveMode) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                window?.insetsController?.apply {
                    hide(android.view.WindowInsets.Type.systemBars())
                    systemBarsBehavior = WindowInsetsController.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
                }
            } else {
                @Suppress("DEPRECATION")
                window?.decorView?.systemUiVisibility = (
                    View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
                    or View.SYSTEM_UI_FLAG_FULLSCREEN
                    or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                    or View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                    or View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                    or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                )
            }
        } else {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                window?.insetsController?.show(android.view.WindowInsets.Type.systemBars())
            } else {
                @Suppress("DEPRECATION")
                window?.decorView?.systemUiVisibility = View.SYSTEM_UI_FLAG_VISIBLE
            }
        }
        onDispose {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                window?.insetsController?.apply {
                    systemBarsBehavior = WindowInsetsController.BEHAVIOR_DEFAULT
                    show(android.view.WindowInsets.Type.systemBars())
                }
            } else {
                @Suppress("DEPRECATION")
                window?.decorView?.systemUiVisibility = View.SYSTEM_UI_FLAG_VISIBLE
            }
        }
    }
}

/**
 * Re-hide system bars after a ModalBottomSheet dismisses in immersive mode.
 * The sheet's scrim interaction can trigger transient system bar appearance.
 */
@Composable
internal fun ReaderImmersiveModeRehideEffect(
    immersiveMode: Boolean,
    showTocSheet: Boolean,
    showTextSettings: Boolean,
    context: Context
) {
    // Implemented as a LaunchedEffect in ReaderScreen — this signature
    // documents the contract for future callers.
    androidx.compose.runtime.LaunchedEffect(immersiveMode, showTocSheet, showTextSettings) {
        if (immersiveMode && !showTocSheet && !showTextSettings) {
            val window = (context as? Activity)?.window
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                window?.insetsController?.hide(android.view.WindowInsets.Type.systemBars())
            }
        }
    }
}

/** Persists the reading position when the app leaves the foreground (process may be killed). */
@Composable
internal fun ReaderStopFlushEffect(onStop: () -> Unit) {
    val lifecycleOwner = LocalLifecycleOwner.current
    val currentOnStop = rememberUpdatedState(onStop)
    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_STOP) currentOnStop.value()
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose { lifecycleOwner.lifecycle.removeObserver(observer) }
    }
}
