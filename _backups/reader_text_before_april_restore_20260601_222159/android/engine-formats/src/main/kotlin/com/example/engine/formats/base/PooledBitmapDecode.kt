package com.example.engine.formats.base

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import java.io.InputStream

fun decodeBitmapFromStream(
    context: Context,
    openStream: () -> InputStream?,
    deviceProfile: RenderDeviceProfile,
    bitmapAllocator: BitmapAllocator,
    renderQuality: Int = 1
): Bitmap? {
    val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
    openStream()?.use { input ->
        BitmapFactory.decodeStream(input, null, bounds)
    } ?: return null

    if (bounds.outWidth <= 0 || bounds.outHeight <= 0) return null

    val decodeRequest = context.buildDecodeRequest(
        sourceWidth = bounds.outWidth,
        sourceHeight = bounds.outHeight,
        deviceProfile = deviceProfile,
        renderQuality = renderQuality
    )

    val targetWidth = sampledDimension(bounds.outWidth, decodeRequest.sampleSize)
    val targetHeight = sampledDimension(bounds.outHeight, decodeRequest.sampleSize)
    val candidate = bitmapAllocator.acquire(
        width = targetWidth,
        height = targetHeight,
        config = deviceProfile.imagePreferredConfig
    )

    val pooledOptions = BitmapFactory.Options().apply {
        inPreferredConfig = deviceProfile.imagePreferredConfig
        inMutable = true
        inSampleSize = decodeRequest.sampleSize
        inBitmap = candidate
    }

    return try {
        openStream()?.use { input ->
            BitmapFactory.decodeStream(input, null, pooledOptions)
        } ?: run {
            bitmapAllocator.release(candidate)
            null
        }
    } catch (_: IllegalArgumentException) {
        bitmapAllocator.release(candidate)
        openStream()?.use { input ->
            BitmapFactory.decodeStream(
                input,
                null,
                BitmapFactory.Options().apply {
                    inPreferredConfig = deviceProfile.imagePreferredConfig
                    inMutable = true
                    inSampleSize = decodeRequest.sampleSize
                }
            )
        }
    }
}

fun decodeBitmapFromByteArray(
    context: Context,
    bytes: ByteArray,
    deviceProfile: RenderDeviceProfile,
    bitmapAllocator: BitmapAllocator,
    renderQuality: Int = 1
): Bitmap? {
    val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
    BitmapFactory.decodeByteArray(bytes, 0, bytes.size, bounds)
    if (bounds.outWidth <= 0 || bounds.outHeight <= 0) return null

    val decodeRequest = context.buildDecodeRequest(
        sourceWidth = bounds.outWidth,
        sourceHeight = bounds.outHeight,
        deviceProfile = deviceProfile,
        renderQuality = renderQuality
    )

    val targetWidth = sampledDimension(bounds.outWidth, decodeRequest.sampleSize)
    val targetHeight = sampledDimension(bounds.outHeight, decodeRequest.sampleSize)
    val candidate = bitmapAllocator.acquire(
        width = targetWidth,
        height = targetHeight,
        config = deviceProfile.imagePreferredConfig
    )

    val pooledOptions = BitmapFactory.Options().apply {
        inPreferredConfig = deviceProfile.imagePreferredConfig
        inMutable = true
        inSampleSize = decodeRequest.sampleSize
        inBitmap = candidate
    }

    return try {
        BitmapFactory.decodeByteArray(bytes, 0, bytes.size, pooledOptions).also { decoded ->
            if (decoded == null) bitmapAllocator.release(candidate)
        }
    } catch (_: IllegalArgumentException) {
        bitmapAllocator.release(candidate)
        BitmapFactory.decodeByteArray(
            bytes,
            0,
            bytes.size,
            BitmapFactory.Options().apply {
                inPreferredConfig = deviceProfile.imagePreferredConfig
                inMutable = true
                inSampleSize = decodeRequest.sampleSize
            }
        )
    }
}

private fun sampledDimension(size: Int, sampleSize: Int): Int =
    ((size + sampleSize - 1) / sampleSize).coerceAtLeast(1)
