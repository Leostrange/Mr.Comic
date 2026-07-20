package io.leostrange.mrcomic.engine.formats.pdf

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Matrix
import android.graphics.pdf.PdfRenderer
import android.net.Uri
import android.os.ParcelFileDescriptor
import android.util.Log
import io.leostrange.mrcomic.engine.formats.base.BitmapAllocator
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.RenderDeviceProfile
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlin.math.min
import kotlin.math.roundToInt
import kotlin.math.sqrt

class PdfFormatReader(
    private val context: Context,
    private val path: String,
    private val deviceProfile: RenderDeviceProfile,
    private val bitmapAllocator: BitmapAllocator
) : FormatReader {

    companion object {
        private const val TAG = "PdfFormatReader"
        private const val MIN_SCALE = 1.0f
    }

    @Volatile private var isClosed = false
    private var pfd: ParcelFileDescriptor? = null
    private var pdfRenderer: PdfRenderer? = null
    private val renderMutex = Mutex()

    private fun ensureOpen() {
        if (isClosed || pdfRenderer != null) return
        try {
            val uri = Uri.parse(path)
            pfd = if (path.startsWith("content://")) {
                context.contentResolver.openFileDescriptor(uri, "r")
            } else {
                ParcelFileDescriptor.open(java.io.File(path), ParcelFileDescriptor.MODE_READ_ONLY)
            }
            pfd?.let { pdfRenderer = PdfRenderer(it) }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to open PDF", e)
        }
    }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        renderMutex.withLock {
            ensureOpen()
            pdfRenderer?.pageCount ?: 0
        }
    }

    override suspend fun getPage(index: Int): Bitmap? = renderPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? =
        renderPage(index, renderQuality)

    private suspend fun renderPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        renderMutex.withLock {
            if (isClosed) return@withContext null
            ensureOpen()
            val renderer = pdfRenderer ?: return@withContext null
            if (index < 0 || index >= renderer.pageCount) return@withContext null
            try {
                val page = renderer.openPage(index)
                try {
                    val displayMetrics = context.resources.displayMetrics
                    val rawWidth = displayMetrics.widthPixels
                    val rawHeight = displayMetrics.heightPixels
                    val qualityBoost = when (renderQuality.coerceIn(1, 3)) {
                        3 -> 2.2f
                        2 -> 1.6f
                        else -> 1.0f
                    }
                    val targetWidth = (
                        (if (rawWidth > 0) rawWidth.toFloat() else 1080f) *
                            deviceProfile.pdfViewportMultiplier *
                            qualityBoost
                        )
                    val targetHeight = (
                        (if (rawHeight > 0) rawHeight.toFloat() else 1920f) *
                            deviceProfile.pdfViewportMultiplier *
                            qualityBoost
                        )

                    val widthScale = targetWidth / page.width.toFloat()
                    val heightScale = targetHeight / page.height.toFloat()
                    var scale = min(widthScale, heightScale).coerceIn(MIN_SCALE, deviceProfile.pdfMaxScale)

                    var width = (page.width * scale).roundToInt().coerceAtLeast(1)
                    var height = (page.height * scale).roundToInt().coerceAtLeast(1)

                    val pixelCount = width.toLong() * height.toLong()
                    if (pixelCount > deviceProfile.pdfMaxRenderPixels) {
                        val downsample = sqrt(deviceProfile.pdfMaxRenderPixels.toDouble() / pixelCount.toDouble()).toFloat()
                        scale *= downsample
                        width = (page.width * scale).roundToInt().coerceAtLeast(1)
                        height = (page.height * scale).roundToInt().coerceAtLeast(1)
                    }

                    val bitmap = bitmapAllocator.acquire(width, height, Bitmap.Config.ARGB_8888)
                    try {
                        bitmap.eraseColor(android.graphics.Color.WHITE)
                        val matrix = Matrix().apply {
                            setScale(width.toFloat() / page.width.toFloat(), height.toFloat() / page.height.toFloat())
                        }
                        page.render(bitmap, null, matrix, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
                        bitmap
                    } catch (renderError: Exception) {
                        bitmapAllocator.release(bitmap)
                        throw renderError
                    }
                } finally {
                    page.close()
                }
            } catch (e: Exception) {
                Log.e(TAG, "Failed to render PDF page $index", e)
                null
            }
        }
    }

    override fun close() {
        isClosed = true
        try { pdfRenderer?.close() } catch (_: Exception) {}
        try { pfd?.close() } catch (_: Exception) {}
        pdfRenderer = null
        pfd = null
    }
}
