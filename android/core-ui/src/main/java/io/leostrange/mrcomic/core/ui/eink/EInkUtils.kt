package io.leostrange.mrcomic.core.ui.eink

import android.content.Context
import android.hardware.display.DisplayManager
import android.os.Build
import android.view.Display
import androidx.compose.runtime.compositionLocalOf

/**
 * CompositionLocal providing whether the device has an e-ink / e-paper display.
 * Default value is false (normal display).
 * Set in MrComicApp via CompositionLocalProvider.
 */
val LocalEInkMode = compositionLocalOf { false }

/**
 * Returns true if this device appears to use an e-ink / e-paper display.
 *
 * Detection uses two independent signals:
 *  1. Display refresh rate < 2 Hz — e-ink typically reports 0–1 Hz.
 *  2. Known e-ink device manufacturer / brand names as a secondary signal.
 *
 * Result should be cached with [remember] at the call site.
 */
fun Context.isEInkDevice(): Boolean {
    val dm = getSystemService(DisplayManager::class.java)
    val display = dm?.getDisplay(Display.DEFAULT_DISPLAY)
    if (display != null && display.refreshRate in 0f..15f) return true

    if (packageManager.hasSystemFeature("android.hardware.type.eink")) return true

    val signatures = listOf(
        Build.BRAND,
        Build.MANUFACTURER,
        Build.DEVICE,
        Build.MODEL,
        Build.HARDWARE,
        Build.PRODUCT
    ).joinToString(" ").lowercase()

    val knownEinkVendors = listOf(
        "onyx",
        "boox",
        "pocketbook",
        "remarkable",
        "kobo",
        "boyue",
        "tolino",
        "inkbook",
        "hisense"
    )

    return knownEinkVendors.any { signatures.contains(it) } || signatures.contains("eink")
}
