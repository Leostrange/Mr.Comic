package io.leostrange.mrcomic.engine.api

import android.app.ActivityManager
import android.content.Context
import android.graphics.Bitmap
import android.hardware.display.DisplayManager
import android.os.Build
import android.view.Display
import android.view.WindowManager
import kotlin.math.max

enum class RenderDeviceTier {
    LOW_END,
    MID_RANGE,
    HIGH_END,
    EINK
}

data class RenderDeviceProfile(
    val tier: RenderDeviceTier,
    val defaultPreloadPages: Int,
    val maxPreloadPages: Int,
    val preloadBehindPages: Int,
    val memoryCacheFractionDivisor: Int,
    val bitmapPoolEntries: Int,
    val imageDecodeBoost: Float,
    val imageTargetLongEdgePx: Int,
    val imageMaxPixels: Long,
    val imagePreferredConfig: Bitmap.Config,
    val pdfViewportMultiplier: Float,
    val pdfMaxScale: Float,
    val pdfMaxRenderPixels: Long,
    val disableAnimations: Boolean
)

fun Context.resolveRenderDeviceProfile(): RenderDeviceProfile {
    if (isLikelyEInkDevice()) {
        return RenderDeviceProfile(
            tier = RenderDeviceTier.EINK,
            defaultPreloadPages = 2,
            maxPreloadPages = 2,
            preloadBehindPages = 0,
            memoryCacheFractionDivisor = 20,
            bitmapPoolEntries = 2,
            imageDecodeBoost = 1.0f,
            imageTargetLongEdgePx = 1600,
            imageMaxPixels = 3_200_000L,
            imagePreferredConfig = Bitmap.Config.RGB_565,
            pdfViewportMultiplier = 1.0f,
            pdfMaxScale = 1.35f,
            pdfMaxRenderPixels = 3_800_000L,
            disableAnimations = true
        )
    }

    val activityManager = getSystemService(Context.ACTIVITY_SERVICE) as? ActivityManager
    val memoryClassMb = activityManager?.memoryClass ?: 192
    val lowRam = activityManager?.isLowRamDevice ?: false
    val runtimeHeapMb = (Runtime.getRuntime().maxMemory() / (1024 * 1024)).toInt()
    val cpuCount = Runtime.getRuntime().availableProcessors()
    val lowResourceSignals = listOf(
        lowRam,
        memoryClassMb <= 192,
        runtimeHeapMb <= 256,
        cpuCount <= 4
    ).count { it }
    val highResourceSignals = listOf(
        !lowRam,
        memoryClassMb >= 320,
        runtimeHeapMb >= 512,
        cpuCount >= 8
    ).count { it }

    return when {
        lowResourceSignals >= 2 -> RenderDeviceProfile(
            tier = RenderDeviceTier.LOW_END,
            defaultPreloadPages = 2,
            maxPreloadPages = 2,
            preloadBehindPages = 0,
            memoryCacheFractionDivisor = 16,
            bitmapPoolEntries = 4,
            imageDecodeBoost = 1.0f,
            imageTargetLongEdgePx = 1600,
            imageMaxPixels = 4_200_000L,
            imagePreferredConfig = Bitmap.Config.RGB_565,
            pdfViewportMultiplier = 1.0f,
            pdfMaxScale = 1.55f,
            pdfMaxRenderPixels = 4_400_000L,
            disableAnimations = false
        )

        highResourceSignals >= 3 -> RenderDeviceProfile(
            tier = RenderDeviceTier.HIGH_END,
            defaultPreloadPages = 4,
            maxPreloadPages = 6,
            preloadBehindPages = 1,
            memoryCacheFractionDivisor = 8,
            bitmapPoolEntries = 14,
            imageDecodeBoost = 1.35f,
            imageTargetLongEdgePx = 3200,
            imageMaxPixels = 12_000_000L,
            imagePreferredConfig = Bitmap.Config.ARGB_8888,
            pdfViewportMultiplier = 1.35f,
            pdfMaxScale = 3.0f,
            pdfMaxRenderPixels = 12_000_000L,
            disableAnimations = false
        )

        else -> RenderDeviceProfile(
            tier = RenderDeviceTier.MID_RANGE,
            defaultPreloadPages = 3,
            maxPreloadPages = 4,
            preloadBehindPages = 1,
            memoryCacheFractionDivisor = 12,
            bitmapPoolEntries = 8,
            imageDecodeBoost = 1.15f,
            imageTargetLongEdgePx = 2400,
            imageMaxPixels = 7_200_000L,
            imagePreferredConfig = Bitmap.Config.ARGB_8888,
            pdfViewportMultiplier = 1.18f,
            pdfMaxScale = 2.25f,
            pdfMaxRenderPixels = 7_500_000L,
            disableAnimations = false
        )
    }
}

private fun Context.isLikelyEInkDevice(): Boolean {
    val refreshRate = safeRefreshRate()
    if (refreshRate != null && refreshRate in 0f..15f) return true
    if (packageManager.hasSystemFeature("android.hardware.type.eink")) return true

    val signatures = listOfNotNull(
        Build.MANUFACTURER,
        Build.BRAND,
        Build.DEVICE,
        Build.MODEL,
        Build.PRODUCT
    ).joinToString(" ").lowercase()

    val knownEinkVendors = listOf(
        "onyx",
        "boox",
        "pocketbook",
        "remarkable",
        "kobo",
        "tolino",
        "boyue",
        "inkbook",
        "eink"
    )
    return knownEinkVendors.any { signatures.contains(it) }
}

private fun Context.safeRefreshRate(): Float? = runCatching {
    val appCtx = applicationContext ?: this
    val displayManager = appCtx.getSystemService(Context.DISPLAY_SERVICE) as? DisplayManager
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
        displayManager?.getDisplay(Display.DEFAULT_DISPLAY)?.refreshRate
    } else {
        @Suppress("DEPRECATION")
        (appCtx.getSystemService(Context.WINDOW_SERVICE) as? WindowManager)
            ?.defaultDisplay
            ?.refreshRate
            ?: displayManager?.getDisplay(Display.DEFAULT_DISPLAY)?.refreshRate
    }
}.getOrNull()

fun Context.renderViewportTarget(): Pair<Int, Int> {
    val metrics = resources.displayMetrics
    return max(metrics.widthPixels, 1) to max(metrics.heightPixels, 1)
}
