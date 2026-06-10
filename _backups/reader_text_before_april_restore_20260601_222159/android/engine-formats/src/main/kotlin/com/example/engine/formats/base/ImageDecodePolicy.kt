package com.example.engine.formats.base

import android.content.Context
import kotlin.math.max
import kotlin.math.roundToInt

data class DecodeRequest(
    val width: Int,
    val height: Int,
    val sampleSize: Int
)

fun Context.buildDecodeRequest(
    sourceWidth: Int,
    sourceHeight: Int,
    deviceProfile: RenderDeviceProfile,
    renderQuality: Int = 1
): DecodeRequest {
    val metrics = resources.displayMetrics
    val rawWidth = max(metrics.widthPixels, 1)
    val rawHeight = max(metrics.heightPixels, 1)
    val qualityBoost = when (renderQuality.coerceIn(1, 3)) {
        3 -> 2.2f
        2 -> 1.55f
        else -> 1.0f
    }
    val targetWidth = (rawWidth * deviceProfile.imageDecodeBoost * qualityBoost).roundToInt()
    val targetHeight = (rawHeight * deviceProfile.imageDecodeBoost * qualityBoost).roundToInt()
    val longEdge = max(targetWidth, targetHeight).coerceAtMost(deviceProfile.imageTargetLongEdgePx)
    val aspect = if (targetWidth >= targetHeight) {
        targetHeight.toFloat() / targetWidth.toFloat()
    } else {
        targetWidth.toFloat() / targetHeight.toFloat()
    }

    val requestedWidth: Int
    val requestedHeight: Int
    if (targetWidth >= targetHeight) {
        requestedWidth = longEdge
        requestedHeight = (longEdge * aspect).roundToInt().coerceAtLeast(1)
    } else {
        requestedWidth = (longEdge * aspect).roundToInt().coerceAtLeast(1)
        requestedHeight = longEdge
    }

    return DecodeRequest(
        width = requestedWidth,
        height = requestedHeight,
        sampleSize = calculateInSampleSize(
            width = sourceWidth,
            height = sourceHeight,
            reqWidth = requestedWidth,
            reqHeight = requestedHeight,
            maxPixels = deviceProfile.imageMaxPixels
        )
    )
}

fun calculateInSampleSize(
    width: Int,
    height: Int,
    reqWidth: Int,
    reqHeight: Int,
    maxPixels: Long
): Int {
    var sampleSize = 1
    if (height > reqHeight || width > reqWidth) {
        val halfHeight = height / 2
        val halfWidth = width / 2
        while ((halfHeight / sampleSize) >= reqHeight && (halfWidth / sampleSize) >= reqWidth) {
            sampleSize *= 2
        }
    }
    while ((width.toLong() / sampleSize) * (height.toLong() / sampleSize) > maxPixels) {
        sampleSize *= 2
    }
    return sampleSize.coerceAtLeast(1)
}
