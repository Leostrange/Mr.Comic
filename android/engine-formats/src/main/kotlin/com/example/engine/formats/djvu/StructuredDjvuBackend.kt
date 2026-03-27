package com.example.engine.formats.djvu

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.provider.OpenableColumns
import dagger.hilt.android.qualifiers.ApplicationContext
import java.io.EOFException
import java.io.File
import java.io.InputStream
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class StructuredDjvuBackend @Inject constructor(
    @ApplicationContext private val context: Context
) : DjvuBackend {

    override val status: DjvuBackendStatus = DjvuBackendStatus.Unavailable(
        backendName = "structured-partial-render",
        summary = "Clean-room DjVu partial render mode",
        details = "This build parses DjVu containers and per-page INFO chunks, and already renders simple BGjp-based pages. More complex DjVu pages still fall back to the structured placeholder path."
    )

    override suspend fun open(path: String): DjvuDocument? {
        val probe = openInputStream(path)?.use(DjvuProbe::probe) ?: return null
        return StructuredDjvuDocument(
            fileName = resolveFileName(path),
            probe = probe,
            backendStatus = status,
            pageSourceLoader = { page ->
                loadPageSource(path, probe, page)
            }
        )
    }

    private fun openInputStream(path: String) = when {
        path.startsWith("content://") -> context.contentResolver.openInputStream(Uri.parse(path))
        else -> File(path).takeIf(File::exists)?.inputStream()
    }

    private fun resolveFileName(path: String): String = runCatching {
        if (path.startsWith("content://")) {
            context.contentResolver.query(
                Uri.parse(path),
                arrayOf(OpenableColumns.DISPLAY_NAME),
                null,
                null,
                null
            )?.use { cursor ->
                if (cursor.moveToFirst()) cursor.getString(0) else null
            }
        } else {
            File(path).name
        }
    }.getOrNull().orEmpty().ifBlank { "DjVu document" }

    private fun loadPageSource(
        path: String,
        probe: DjvuProbeResult,
        page: DjvuPlaceholderPage
    ): DjvuPageSource? {
        val offset = page.fileOffset ?: return null
        val byteLength = page.byteLength ?: return null
        val rawBytes = readRange(path, offset, byteLength) ?: return null
        val standaloneBytes = when {
            probe.formType == "DJVU" && page.index == 0 -> rawBytes
            else -> buildStandaloneDjvuDocumentBytes(rawBytes)
        } ?: return null
        return DjvuPageSource(
            index = page.index,
            documentBytes = standaloneBytes,
            info = page.info,
            fileOffset = offset,
            byteLength = byteLength
        )
    }

    private fun readRange(path: String, offset: Long, byteLength: Long): ByteArray? {
        if (offset < 0 || byteLength <= 0 || byteLength > Int.MAX_VALUE) return null
        return openInputStream(path)?.use { input ->
            if (!input.skipFully(offset)) return@use null
            input.readExactBytes(byteLength.toInt())
        }
    }
}

private class StructuredDjvuDocument(
    private val fileName: String,
    private val probe: DjvuProbeResult,
    private val backendStatus: DjvuBackendStatus,
    private val pageSourceLoader: suspend (DjvuPlaceholderPage) -> DjvuPageSource?
) : DjvuDocument {

    private val pageSourceCache = mutableMapOf<Int, DjvuPageSource?>()
    private val renderPlanCache = mutableMapOf<Int, DjvuSimpleRenderPlan?>()
    private val renderPlanViabilityCache = mutableMapOf<Int, Boolean>()
    private val visualLayerPlanCache = mutableMapOf<Int, DjvuVisualLayerPlan?>()
    private val textLayerCache = mutableMapOf<Int, DjvuTextLayer?>()
    private val compressedTextLayerCache = mutableMapOf<Int, Boolean>()
    private val annotationsCache = mutableMapOf<Int, DjvuAnnotations?>()

    override suspend fun getPageCount(): Int = probe.pageCount.coerceAtLeast(1)

    override suspend fun renderPage(index: Int, renderQuality: Int): Bitmap? {
        val renderPlan = loadRenderableRenderPlan(index) ?: return null
        return decodeJpegBitmap(renderPlan.jpegPayload, renderQuality)
    }

    override suspend fun getHtmlPage(index: Int): String? {
        val totalPages = probe.pageCount.coerceAtLeast(1)
        if (index !in 0 until totalPages) return null
        if (loadRenderableRenderPlan(index) != null) return null
        val textLayer = loadTextLayer(index)
        val hasCompressedTextLayer = hasCompressedTextLayer(index)
        val annotations = loadAnnotations(index)
        val visualLayerPlan = loadVisualLayerPlan(index)
        if (textLayer != null) {
            return buildDjvuTextLayerHtml(
                fileName = fileName,
                pageIndex = index,
                totalPages = totalPages,
                textLayer = textLayer,
                hasCompressedFallback = hasCompressedTextLayer,
                annotations = annotations
            )
        }
        if (annotations?.text?.isNotBlank() == true) {
            return buildDjvuAnnotationsHtml(
                fileName = fileName,
                pageIndex = index,
                totalPages = totalPages,
                annotations = annotations
            )
        }
        if (hasCompressedTextLayer || annotations?.hasCompressedChunks == true) {
            return buildDjvuCompressedLayerHtml(
                fileName = fileName,
                pageIndex = index,
                totalPages = totalPages,
                hasCompressedTextLayer = hasCompressedTextLayer,
                hasCompressedAnnotations = annotations?.hasCompressedChunks == true,
                pageInfo = probe.pages.getOrNull(index),
                visualLayerPlan = visualLayerPlan
            )
        }
        if (visualLayerPlan != null) {
            return buildDjvuVisualLayerHtml(
                fileName = fileName,
                pageIndex = index,
                totalPages = totalPages,
                visualLayerPlan = visualLayerPlan,
                pageInfo = probe.pages.getOrNull(index)
            )
        }
        return buildDjvuPlaceholderHtml(
            fileName = fileName,
            pageIndex = index,
            totalPages = totalPages,
            backendStatus = backendStatus,
            structure = probe
        )
    }

    override suspend fun getPageSource(index: Int): DjvuPageSource? {
        val page = probe.pages.getOrNull(index) ?: return null
        pageSourceCache[index]?.let { return it }
        val loaded = pageSourceLoader(page)
        pageSourceCache[index] = loaded
        return loaded
    }

    override suspend fun getMetadata(): Map<String, String> = buildMap {
        put("djvuFormType", probe.formType)
        put("djvuPageCount", probe.pageCount.toString())
        if (probe.topLevelChunkIds.isNotEmpty()) {
            put("djvuTopLevelChunks", probe.topLevelChunkIds.joinToString(","))
        }
        probe.pages.firstOrNull()?.let { firstPage ->
            firstPage.info?.width?.let { put("djvuFirstPageWidth", it.toString()) }
            firstPage.info?.height?.let { put("djvuFirstPageHeight", it.toString()) }
            firstPage.info?.dpi?.let { put("djvuFirstPageDpi", it.toString()) }
            firstPage.fileOffset?.let { put("djvuFirstPageOffset", it.toString()) }
            firstPage.byteLength?.let { put("djvuFirstPageLength", it.toString()) }
        }
        put("djvuFirstPageHasSimpleBitmapRender", (loadRenderableRenderPlan(0) != null).toString())
        put("djvuFirstPageHasUndecodableSimpleBitmapPlan", hasUndecodableRenderPlan(0).toString())
        loadVisualLayerPlan(0)?.let { visualLayerPlan ->
            put("djvuFirstPageHasVisualLayerPlan", true.toString())
            visualLayerPlan.backgroundLayer?.let { put("djvuFirstPageBackgroundLayer", it) }
            visualLayerPlan.foregroundLayer?.let { put("djvuFirstPageForegroundLayer", it) }
            visualLayerPlan.maskLayer?.let { put("djvuFirstPageMaskLayer", it) }
            visualLayerPlan.paletteChunk?.let { put("djvuFirstPagePaletteChunk", it) }
            put("djvuFirstPageIncludedChunkCount", visualLayerPlan.includedChunkCount.toString())
            put("djvuFirstPageUsesIw44", visualLayerPlan.usesIw44.toString())
            put("djvuFirstPageUsesJb2", visualLayerPlan.usesJb2.toString())
            put(
                "djvuFirstPageRequiresCompositeDecode",
                visualLayerPlan.requiresCompositeDecode.toString()
            )
        } ?: put("djvuFirstPageHasVisualLayerPlan", false.toString())
        put("djvuFirstPageHasTextLayer", (loadTextLayer(0) != null).toString())
        put("djvuFirstPageHasCompressedTextLayer", hasCompressedTextLayer(0).toString())
        loadAnnotations(0)?.let { annotations ->
            put("djvuFirstPageHasAnnotations", annotations.text.isNotBlank().toString())
            put("djvuFirstPageHasCompressedAnnotations", annotations.hasCompressedChunks.toString())
        } ?: run {
            put("djvuFirstPageHasAnnotations", false.toString())
            put("djvuFirstPageHasCompressedAnnotations", false.toString())
        }
        put(
                "djvuFirstPageUsesCompressedLayerFallback",
                (
                loadRenderableRenderPlan(0) == null &&
                    loadTextLayer(0) == null &&
                    (
                        hasCompressedTextLayer(0) ||
                            loadAnnotations(0)?.hasCompressedChunks == true
                        )
                ).toString()
        )
    }

    override fun close() = Unit

    private suspend fun loadRenderPlan(index: Int): DjvuSimpleRenderPlan? {
        if (index !in 0 until probe.pageCount.coerceAtLeast(1)) return null
        if (renderPlanCache.containsKey(index)) return renderPlanCache[index]
        val source = getPageSource(index)
        val renderPlan = source?.let { extractSimpleRenderPlan(it.documentBytes) }
        renderPlanCache[index] = renderPlan
        return renderPlan
    }

    private suspend fun loadRenderableRenderPlan(index: Int): DjvuSimpleRenderPlan? {
        val renderPlan = loadRenderPlan(index) ?: return null
        val isRenderable = isRenderableRenderPlan(index, renderPlan)
        return renderPlan.takeIf { isRenderable }
    }

    private suspend fun hasUndecodableRenderPlan(index: Int): Boolean {
        val renderPlan = loadRenderPlan(index) ?: return false
        return !isRenderableRenderPlan(index, renderPlan)
    }

    private fun isRenderableRenderPlan(index: Int, renderPlan: DjvuSimpleRenderPlan): Boolean {
        renderPlanViabilityCache[index]?.let { return it }
        val isRenderable = canDecodeJpegPayload(renderPlan.jpegPayload)
        renderPlanViabilityCache[index] = isRenderable
        return isRenderable
    }

    private suspend fun loadTextLayer(index: Int): DjvuTextLayer? {
        if (index !in 0 until probe.pageCount.coerceAtLeast(1)) return null
        if (textLayerCache.containsKey(index)) return textLayerCache[index]
        val source = getPageSource(index)
        val textLayer = source?.let { extractDjvuTextLayer(it.documentBytes) }
        textLayerCache[index] = textLayer
        return textLayer
    }

    private suspend fun loadVisualLayerPlan(index: Int): DjvuVisualLayerPlan? {
        if (index !in 0 until probe.pageCount.coerceAtLeast(1)) return null
        if (visualLayerPlanCache.containsKey(index)) return visualLayerPlanCache[index]
        val source = getPageSource(index)
        val visualLayerPlan = source?.let { extractDjvuVisualLayerPlan(it.documentBytes) }
        visualLayerPlanCache[index] = visualLayerPlan
        return visualLayerPlan
    }

    private suspend fun hasCompressedTextLayer(index: Int): Boolean {
        if (index !in 0 until probe.pageCount.coerceAtLeast(1)) return false
        compressedTextLayerCache[index]?.let { return it }
        val source = getPageSource(index)
        val hasCompressed = source?.let { hasCompressedDjvuTextLayer(it.documentBytes) } == true
        compressedTextLayerCache[index] = hasCompressed
        return hasCompressed
    }

    private suspend fun loadAnnotations(index: Int): DjvuAnnotations? {
        if (index !in 0 until probe.pageCount.coerceAtLeast(1)) return null
        if (annotationsCache.containsKey(index)) return annotationsCache[index]
        val source = getPageSource(index)
        val annotations = source?.let { extractDjvuAnnotations(it.documentBytes) }
        annotationsCache[index] = annotations
        return annotations
    }

    private fun decodeJpegBitmap(jpegPayload: ByteArray, renderQuality: Int): Bitmap? {
        val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeByteArray(jpegPayload, 0, jpegPayload.size, bounds)
        val sampleSize = calculateSampleSize(
            width = bounds.outWidth,
            height = bounds.outHeight,
            renderQuality = renderQuality
        )
        val options = BitmapFactory.Options().apply {
            inPreferredConfig = Bitmap.Config.ARGB_8888
            inSampleSize = sampleSize
        }
        return BitmapFactory.decodeByteArray(jpegPayload, 0, jpegPayload.size, options)
    }

    private fun canDecodeJpegPayload(jpegPayload: ByteArray): Boolean {
        val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeByteArray(jpegPayload, 0, jpegPayload.size, bounds)
        return bounds.outWidth > 0 && bounds.outHeight > 0
    }

    private fun calculateSampleSize(width: Int, height: Int, renderQuality: Int): Int {
        val maxDimension = maxOf(width, height)
        if (maxDimension <= 0) return 1
        val targetMaxDimension = when {
            renderQuality >= 3 -> Int.MAX_VALUE
            renderQuality == 2 -> 3200
            else -> 2200
        }
        var sampleSize = 1
        while (sampleSize < Int.MAX_VALUE / 2 && maxDimension / sampleSize > targetMaxDimension) {
            sampleSize *= 2
        }
        return sampleSize.coerceAtLeast(1)
    }
}

private fun InputStream.readExactBytes(byteCount: Int): ByteArray? {
    if (byteCount < 0) return null
    val buffer = ByteArray(byteCount)
    var offset = 0
    return try {
        while (offset < buffer.size) {
            val read = read(buffer, offset, buffer.size - offset)
            if (read <= 0) throw EOFException("Unexpected end of DjVu page stream")
            offset += read
        }
        buffer
    } catch (_: EOFException) {
        null
    }
}

private fun InputStream.skipFully(byteCount: Long): Boolean {
    var remaining = byteCount.coerceAtLeast(0)
    while (remaining > 0) {
        val skipped = skip(remaining)
        if (skipped > 0) {
            remaining -= skipped
            continue
        }
        if (read() == -1) return false
        remaining--
    }
    return true
}
