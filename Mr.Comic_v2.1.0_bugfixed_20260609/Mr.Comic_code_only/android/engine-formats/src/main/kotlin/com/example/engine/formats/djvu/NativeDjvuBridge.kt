package com.example.engine.formats.djvu

import android.graphics.Bitmap
import java.io.File
import kotlin.math.min
import kotlin.math.roundToInt

internal class DjvuLibreNativeRenderer {
    val isAvailable: Boolean
        get() = NativeDjvuBridge.isAvailable()

    fun open(path: String): DjvuLibreNativeDocument? {
        if (path.startsWith("content://")) return null
        val file = File(path)
        if (!file.exists()) return null
        return NativeDjvuBridge.open(file.absolutePath)?.let(::DjvuLibreNativeDocument)
    }
}

internal class DjvuLibreNativeDocument(
    private var handle: Long
) {
    val pageCount: Int
        get() = NativeDjvuBridge.pageCount(handle)

    fun renderPage(index: Int, renderQuality: Int): Bitmap? {
        if (index !in 0 until pageCount) return null
        val pageInfo = NativeDjvuBridge.pageInfo(handle, index) ?: return null
        val sourceWidth = pageInfo.getOrNull(0)?.coerceAtLeast(1) ?: return null
        val sourceHeight = pageInfo.getOrNull(1)?.coerceAtLeast(1) ?: return null
        val maxSide = when (renderQuality.coerceAtLeast(1)) {
            1 -> 1_800
            2 -> 2_400
            else -> 3_200
        }
        val scale = min(maxSide.toFloat() / sourceWidth, maxSide.toFloat() / sourceHeight)
            .coerceAtMost(1.0f)
            .coerceAtLeast(0.05f)
        val targetWidth = (sourceWidth * scale).roundToInt().coerceAtLeast(1)
        val targetHeight = (sourceHeight * scale).roundToInt().coerceAtLeast(1)
        val bitmap = Bitmap.createBitmap(targetWidth, targetHeight, Bitmap.Config.ARGB_8888)
        bitmap.eraseColor(android.graphics.Color.WHITE)
        return if (NativeDjvuBridge.renderPage(handle, index, bitmap, scale)) bitmap else {
            bitmap.recycle()
            null
        }
    }

    fun close() {
        val currentHandle = handle
        if (currentHandle == 0L) return
        handle = 0L
        NativeDjvuBridge.close(currentHandle)
    }
}

private object NativeDjvuBridge {
    private val loadResult: Result<Unit> by lazy {
        runCatching {
            System.loadLibrary("djvu")
            System.loadLibrary("mrcomic_djvu")
        }
    }

    fun isAvailable(): Boolean =
        loadResult.isSuccess && runCatching { nativeIsAvailable() }.getOrDefault(false)

    fun open(path: String): Long? {
        if (!isAvailable()) return null
        val handle = runCatching { nativeOpen(path) }.getOrDefault(0L)
        return handle.takeIf { it != 0L }
    }

    fun pageCount(handle: Long): Int =
        if (handle == 0L || !isAvailable()) 0 else runCatching { nativePageCount(handle) }.getOrDefault(0)

    fun pageInfo(handle: Long, index: Int): IntArray? =
        if (handle == 0L || !isAvailable()) null else runCatching { nativePageInfo(handle, index) }.getOrNull()

    fun renderPage(handle: Long, index: Int, bitmap: Bitmap, scale: Float): Boolean =
        handle != 0L && isAvailable() && runCatching {
            nativeRenderPage(handle, index, bitmap, scale)
        }.getOrDefault(false)

    fun close(handle: Long) {
        if (handle != 0L && isAvailable()) {
            runCatching { nativeClose(handle) }
        }
    }

    private external fun nativeIsAvailable(): Boolean
    private external fun nativeOpen(path: String): Long
    private external fun nativePageCount(handle: Long): Int
    private external fun nativePageInfo(handle: Long, index: Int): IntArray?
    private external fun nativeRenderPage(handle: Long, index: Int, bitmap: Bitmap, scale: Float): Boolean
    private external fun nativeClose(handle: Long)
}
