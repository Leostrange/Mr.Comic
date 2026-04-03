package com.example.engine.formats.djvu

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.os.ParcelFileDescriptor
import android.provider.OpenableColumns
import dagger.hilt.android.qualifiers.ApplicationContext
import java.io.EOFException
import java.io.File
import java.io.FileInputStream
import java.io.InputStream
import java.io.RandomAccessFile
import javax.inject.Inject
import javax.inject.Singleton

data class DjvuTableOfContents(val entries: List<DjvuTocEntry>)
data class DjvuTocEntry(val title: String, val pageIndex: Int, val children: List<DjvuTocEntry> = emptyList())

@Singleton
class StructuredDjvuBackend @Inject constructor(
    @ApplicationContext private val context: Context
) : DjvuBackend {

    override val status: DjvuBackendStatus = DjvuBackendStatus.Available(
        backendName = "structured-iw44-render"
    )

    override suspend fun open(path: String): DjvuDocument? {
        val inputStream = openInputStream(path)
        if (inputStream == null) {
            android.util.Log.w("DjvuBackend", "open: cannot open input stream for $path")
            return null
        }
        val probe = inputStream.use(DjvuProbe::probe)
        if (probe == null) {
            android.util.Log.w("DjvuBackend", "open: probe returned null for $path")
            return null
        }
        android.util.Log.d("DjvuBackend", "open: formType=${probe.formType} pageCount=${probe.pageCount} pages=${probe.pages.size} path=$path")
        val rangeReader = createRangeReader(path)
        return StructuredDjvuDocument(
            fileName = resolveFileName(path),
            probe = probe,
            backendStatus = status,
            pageSourceLoader = { page ->
                loadPageSource(probe, page, rangeReader)
            },
            closeAction = rangeReader::close
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
        probe: DjvuProbeResult,
        page: DjvuPlaceholderPage,
        rangeReader: DjvuRangeReader
    ): DjvuPageSource? {
        val offset = page.fileOffset ?: return null
        val byteLength = page.byteLength ?: return null
        val rawBytes = rangeReader.readRange(offset, byteLength) ?: return null
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

    private fun createRangeReader(path: String): DjvuRangeReader {
        val file = File(path)
        return if (!path.startsWith("content://") && file.exists()) {
            RandomAccessDjvuRangeReader(file)
        } else if (path.startsWith("content://")) {
            createContentUriRangeReader(path) ?: StreamDjvuRangeReader { openInputStream(path) }
        } else {
            StreamDjvuRangeReader { openInputStream(path) }
        }
    }

    private fun createContentUriRangeReader(path: String): DjvuRangeReader? = runCatching {
        val uri = Uri.parse(path)
        val descriptor = context.contentResolver.openFileDescriptor(uri, "r") ?: return null
        ContentUriSeekableDjvuRangeReader(descriptor)
    }.getOrNull()
}

private class StructuredDjvuDocument(
    private val fileName: String,
    private val probe: DjvuProbeResult,
    private val backendStatus: DjvuBackendStatus,
    private val pageSourceLoader: suspend (DjvuPlaceholderPage) -> DjvuPageSource?,
    private val closeAction: () -> Unit = {}
) : DjvuDocument {

    // Keep a wider warm window for long DjVu documents so quick browsing
    // does not immediately evict neighboring page analysis/results.
    private val pageSourceCache = IntLruCache<DjvuPageSource>(maxEntries = 4)
    private val renderPlanCache = IntLruCache<DjvuSimpleRenderPlan>(maxEntries = 16)
    private val renderPlanDecodeInfoCache = IntLruCache<DjvuJpegDecodeInfo>(maxEntries = 16)
    private val pageAnalysisCache = IntLruCache<DjvuPageAnalysis>(maxEntries = 16)
    private val iw44BackgroundCache = IntLruCache<Boolean>(maxEntries = 16)
    private val visualLayerPlanCache = IntLruCache<DjvuVisualLayerPlan>(maxEntries = 16)
    private val textLayerCache = IntLruCache<DjvuTextLayer>(maxEntries = 16)
    private val compressedTextLayerCache = IntLruCache<Boolean>(maxEntries = 16)
    private val annotationsCache = IntLruCache<DjvuAnnotations>(maxEntries = 16)
    private var metadataCache: Map<String, String>? = null

    override suspend fun getPageCount(): Int = probe.pageCount.coerceAtLeast(1)

    override suspend fun renderPage(index: Int, renderQuality: Int): Bitmap? {
        // ── Path 1: BGjp (JPEG background) — fast, no wavelet needed ─────────
        val bitmapRoute = loadBitmapRoute(index)
        val renderableRenderPlan = bitmapRoute?.renderableRenderPlan
        if (renderableRenderPlan != null) {
            return decodeJpegBitmap(
                renderableRenderPlan.renderPlan.jpegPayload,
                renderQuality,
                renderableRenderPlan.decodeInfo
            )
        }

        // ── Path 2: BG44 (IW44 wavelet background) ───────────────────────────
        if (bitmapRoute?.hasIw44Background == true) {
            val source = bitmapRoute.pageSource
            if (source == null) {
                android.util.Log.w("DjvuBackend", "Page $index: IW44 background detected but page source is null")
                return null
            }
            val bitmap = extractIw44Bitmap(source.documentBytes, renderQuality)
            if (bitmap == null) {
                android.util.Log.w("DjvuBackend", "Page $index: IW44 decode returned null (${source.documentBytes.size} bytes)")
            }
            return bitmap
        }
        return null
    }

    override suspend fun getHtmlPage(index: Int): String? {
        val totalPages = probe.pageCount.coerceAtLeast(1)
        if (index !in 0 until totalPages) return null
        // If BGjp or IW44 rendering is available, ReaderViewModel renders as Bitmap
        val bitmapRoute = loadBitmapRoute(index)
        if (bitmapRoute?.renderableRenderPlan != null) return null
        if (bitmapRoute?.hasIw44Background == true) return null
        val analysis = loadPageAnalysis(index)
        val textLayer = analysis.textLayer
        val hasCompressedTextLayer = analysis.hasCompressedTextLayer
        val annotations = analysis.annotations
        val visualLayerPlan = analysis.visualLayerPlan
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
        return getPageSourceInternal(index, warmNeighbors = true)
    }

    private suspend fun getPageSourceInternal(
        index: Int,
        warmNeighbors: Boolean
    ): DjvuPageSource? {
        val page = probe.pages.getOrNull(index) ?: return null
        if (pageSourceCache.containsKey(index)) {
            return pageSourceCache[index]
        }
        val loaded = pageSourceLoader(page)
        pageSourceCache[index] = loaded
        if (warmNeighbors) {
            warmAdjacentPageSources(index)
        }
        return loaded
    }

    override suspend fun getMetadata(): Map<String, String> {
        metadataCache?.let { return it }

        val firstPageAnalysis = loadPageAnalysis(0)
        val firstBitmapRoute = loadBitmapRoute(0)
        val firstRenderableRenderPlan = firstBitmapRoute?.renderableRenderPlan?.renderPlan
        val firstHasIw44 = firstBitmapRoute?.hasIw44Background == true
        val firstUndecodableSimpleBitmapPlan = firstBitmapRoute?.renderPlan != null && firstRenderableRenderPlan == null

        val metadata = buildMap {
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
            put("djvuFirstPageHasSimpleBitmapRender", (firstRenderableRenderPlan != null).toString())
            put("djvuFirstPageHasIw44Render", firstHasIw44.toString())
            put("djvuFirstPageHasUndecodableSimpleBitmapPlan", firstUndecodableSimpleBitmapPlan.toString())
            firstPageAnalysis.visualLayerPlan?.let { visualLayerPlan ->
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
            put("djvuFirstPageHasTextLayer", (firstPageAnalysis.textLayer != null).toString())
            put("djvuFirstPageHasCompressedTextLayer", firstPageAnalysis.hasCompressedTextLayer.toString())
            firstPageAnalysis.annotations?.let { annotations ->
                put("djvuFirstPageHasAnnotations", annotations.text.isNotBlank().toString())
                put("djvuFirstPageHasCompressedAnnotations", annotations.hasCompressedChunks.toString())
            } ?: run {
                put("djvuFirstPageHasAnnotations", false.toString())
                put("djvuFirstPageHasCompressedAnnotations", false.toString())
            }
            put(
                "djvuFirstPageUsesCompressedLayerFallback",
                (
                    firstRenderableRenderPlan == null &&
                        firstPageAnalysis.textLayer == null &&
                        (
                            firstPageAnalysis.hasCompressedTextLayer ||
                                firstPageAnalysis.annotations?.hasCompressedChunks == true
                        )
                ).toString()
            )
        }
        metadataCache = metadata
        return metadata
    }

    override fun close() {
        pageSourceCache.clear()
        renderPlanCache.clear()
        renderPlanDecodeInfoCache.clear()
        pageAnalysisCache.clear()
        iw44BackgroundCache.clear()
        visualLayerPlanCache.clear()
        textLayerCache.clear()
        compressedTextLayerCache.clear()
        annotationsCache.clear()
        metadataCache = null
        closeAction()
    }

    private suspend fun loadRenderPlan(index: Int): DjvuSimpleRenderPlan? {
        if (index !in 0 until probe.pageCount.coerceAtLeast(1)) return null
        if (renderPlanCache.containsKey(index)) return renderPlanCache[index]
        // The render-plan path only needs the current page, not neighbor warming.
        val source = getPageSourceInternal(index, warmNeighbors = false)
        val renderPlan = source?.let { extractSimpleRenderPlan(it.documentBytes) }
        renderPlanCache[index] = renderPlan
        return renderPlan
    }

    private suspend fun loadPageAnalysis(index: Int): DjvuPageAnalysis {
        pageAnalysisCache[index]?.let { return it }
        // Avoid recursive neighbor warming while we are already in an analysis warm path.
        val source = getPageSourceInternal(index, warmNeighbors = false)
        val analysis = DjvuPageAnalysis(
            source = source,
            textLayer = source?.let { extractDjvuTextLayer(it.documentBytes) },
            hasCompressedTextLayer = source?.let { hasCompressedDjvuTextLayer(it.documentBytes) } == true,
            annotations = source?.let { extractDjvuAnnotations(it.documentBytes) },
            visualLayerPlan = source?.let { extractDjvuVisualLayerPlan(it.documentBytes) }
        )
        pageAnalysisCache[index] = analysis
        return analysis
    }

    private suspend fun hasIw44Background(index: Int): Boolean {
        if (index !in 0 until probe.pageCount.coerceAtLeast(1)) return false
        iw44BackgroundCache[index]?.let { return it }
        // Only the page source is needed here; avoid full text/annotation/visual analysis.
        val result = getPageSourceInternal(index, warmNeighbors = false)?.let { hasIw44Background(it.documentBytes) } == true
        iw44BackgroundCache[index] = result
        return result
    }

    private suspend fun warmAdjacentPageSources(index: Int) {
        if (probe.pageCount <= 1) return
        val warmWindow = listOf(index - 1, index + 1)
        for (neighborIndex in warmWindow) {
            if (neighborIndex !in 0 until probe.pageCount) continue
            if (pageSourceCache.containsKey(neighborIndex)) continue
            val neighborPage = probe.pages.getOrNull(neighborIndex) ?: continue
            pageSourceCache[neighborIndex] = pageSourceLoader(neighborPage)
        }
    }

    private suspend fun loadRenderableRenderPlan(index: Int): DjvuSimpleRenderPlan? {
        return loadRenderableRenderPlanWithDecodeInfo(index)?.renderPlan
    }

    private suspend fun loadRenderableRenderPlanWithDecodeInfo(index: Int): DjvuRenderableRenderPlan? {
        val renderPlan = loadRenderPlan(index) ?: return null
        val decodeInfo = inspectRenderPlanDecodeInfo(index, renderPlan)
        return if (decodeInfo.isRenderable) {
            DjvuRenderableRenderPlan(renderPlan, decodeInfo)
        } else {
            null
        }
    }

    private suspend fun hasUndecodableRenderPlan(index: Int): Boolean {
        if (index !in 0 until probe.pageCount.coerceAtLeast(1)) return false
        val renderPlan = loadRenderPlan(index) ?: return false
        renderPlanDecodeInfoCache[index]?.let { return !it.isRenderable }
        return !inspectRenderPlanDecodeInfo(index, renderPlan).isRenderable
    }

    private fun inspectRenderPlanDecodeInfo(
        index: Int,
        renderPlan: DjvuSimpleRenderPlan
    ): DjvuJpegDecodeInfo {
        renderPlanDecodeInfoCache[index]?.let { return it }
        val info = inspectJpegPayload(renderPlan.jpegPayload)
        renderPlanDecodeInfoCache[index] = info
        return info
    }

    private suspend fun loadBitmapRoute(index: Int): DjvuBitmapRoute? {
        if (index !in 0 until probe.pageCount.coerceAtLeast(1)) return null
        val pageSource = getPageSourceInternal(index, warmNeighbors = false)
        val renderPlan = if (pageSource != null) {
            renderPlanCache[index] ?: extractSimpleRenderPlan(pageSource.documentBytes).also {
                renderPlanCache[index] = it
            }
        } else {
            null
        }
        val renderableRenderPlan = renderPlan?.let {
            val decodeInfo = inspectRenderPlanDecodeInfo(index, it)
            if (decodeInfo.isRenderable) DjvuRenderableRenderPlan(it, decodeInfo) else null
        }
        val hasIw44Background = if (renderableRenderPlan != null) {
            false
        } else {
            val cachedIw44 = iw44BackgroundCache[index]
            if (cachedIw44 != null) {
                cachedIw44
            } else {
                val computedIw44 = pageSource?.let { hasIw44Background(it.documentBytes) } == true
                iw44BackgroundCache[index] = computedIw44
                computedIw44
            }
        }
        return DjvuBitmapRoute(
            pageSource = pageSource,
            renderPlan = renderPlan,
            renderableRenderPlan = renderableRenderPlan,
            hasIw44Background = hasIw44Background
        )
    }

    private suspend fun loadTextLayer(index: Int): DjvuTextLayer? {
        if (index !in 0 until probe.pageCount.coerceAtLeast(1)) return null
        if (textLayerCache.containsKey(index)) return textLayerCache[index]
        val textLayer = loadPageAnalysis(index).textLayer
        textLayerCache[index] = textLayer
        return textLayer
    }

    private suspend fun loadVisualLayerPlan(index: Int): DjvuVisualLayerPlan? {
        if (index !in 0 until probe.pageCount.coerceAtLeast(1)) return null
        if (visualLayerPlanCache.containsKey(index)) return visualLayerPlanCache[index]
        val visualLayerPlan = loadPageAnalysis(index).visualLayerPlan
        visualLayerPlanCache[index] = visualLayerPlan
        return visualLayerPlan
    }

    private suspend fun hasCompressedTextLayer(index: Int): Boolean {
        if (index !in 0 until probe.pageCount.coerceAtLeast(1)) return false
        compressedTextLayerCache[index]?.let { return it }
        val hasCompressed = loadPageAnalysis(index).hasCompressedTextLayer
        compressedTextLayerCache[index] = hasCompressed
        return hasCompressed
    }

    private suspend fun loadAnnotations(index: Int): DjvuAnnotations? {
        if (index !in 0 until probe.pageCount.coerceAtLeast(1)) return null
        if (annotationsCache.containsKey(index)) return annotationsCache[index]
        val annotations = loadPageAnalysis(index).annotations
        annotationsCache[index] = annotations
        return annotations
    }

    private fun decodeJpegBitmap(
        jpegPayload: ByteArray,
        renderQuality: Int,
        decodeInfo: DjvuJpegDecodeInfo? = null
    ): Bitmap? {
        val info = decodeInfo ?: inspectJpegPayload(jpegPayload)
        if (!info.isRenderable) return null
        val sampleSize = calculateSampleSize(
            width = info.width,
            height = info.height,
            renderQuality = renderQuality
        )
        val options = BitmapFactory.Options().apply {
            inPreferredConfig = Bitmap.Config.ARGB_8888
            inSampleSize = sampleSize
        }
        return BitmapFactory.decodeByteArray(jpegPayload, 0, jpegPayload.size, options)
    }

    private fun inspectJpegPayload(jpegPayload: ByteArray): DjvuJpegDecodeInfo {
        val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeByteArray(jpegPayload, 0, jpegPayload.size, bounds)
        val width = bounds.outWidth
        val height = bounds.outHeight
        return DjvuJpegDecodeInfo(
            isRenderable = width > 0 && height > 0,
            width = width,
            height = height
        )
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

private data class DjvuBitmapRoute(
    val pageSource: DjvuPageSource?,
    val renderPlan: DjvuSimpleRenderPlan?,
    val renderableRenderPlan: DjvuRenderableRenderPlan?,
    val hasIw44Background: Boolean
)

private interface DjvuRangeReader {
    fun readRange(offset: Long, byteLength: Long): ByteArray?
    fun close() = Unit
}

private class StreamDjvuRangeReader(
    private val openStream: () -> InputStream?
) : DjvuRangeReader {
    override fun readRange(offset: Long, byteLength: Long): ByteArray? {
        if (offset < 0 || byteLength <= 0 || byteLength > Int.MAX_VALUE) return null
        return openStream()?.use { input ->
            if (!input.skipFully(offset)) return@use null
            input.readExactBytes(byteLength.toInt())
        }
    }
}

private class ContentUriSeekableDjvuRangeReader(
    private val descriptor: ParcelFileDescriptor
) : DjvuRangeReader {
    private val inputStream = FileInputStream(descriptor.fileDescriptor)
    private val channel = inputStream.channel

    override fun readRange(offset: Long, byteLength: Long): ByteArray? {
        if (offset < 0 || byteLength <= 0 || byteLength > Int.MAX_VALUE) return null
        return try {
            synchronized(channel) {
                val available = runCatching { channel.size() }.getOrNull()
                if (available != null && offset + byteLength > available) return null
                channel.position(offset)
                inputStream.readExactBytes(byteLength.toInt())
            }
        } catch (_: Exception) {
            null
        }
    }

    override fun close() {
        runCatching { inputStream.close() }
        runCatching { descriptor.close() }
    }
}

private class RandomAccessDjvuRangeReader(
    file: File
) : DjvuRangeReader {
    private val randomAccessFile = RandomAccessFile(file, "r")

    override fun readRange(offset: Long, byteLength: Long): ByteArray? {
        if (offset < 0 || byteLength <= 0 || byteLength > Int.MAX_VALUE) return null
        if (offset + byteLength > randomAccessFile.length()) return null
        val buffer = ByteArray(byteLength.toInt())
        return try {
            synchronized(randomAccessFile) {
                randomAccessFile.seek(offset)
                randomAccessFile.readFully(buffer)
            }
            buffer
        } catch (_: EOFException) {
            null
        }
    }

    override fun close() {
        runCatching { randomAccessFile.close() }
    }
}

private class IntLruCache<T>(
    private val maxEntries: Int
) : LinkedHashMap<Int, T?>(maxEntries + 1, 0.75f, true) {
    override fun removeEldestEntry(eldest: MutableMap.MutableEntry<Int, T?>?): Boolean {
        return size > maxEntries
    }
}

private data class DjvuPageAnalysis(
    val source: DjvuPageSource?,
    val textLayer: DjvuTextLayer?,
    val hasCompressedTextLayer: Boolean,
    val annotations: DjvuAnnotations?,
    val visualLayerPlan: DjvuVisualLayerPlan?
)

    private data class DjvuJpegDecodeInfo(
        val isRenderable: Boolean,
        val width: Int,
        val height: Int
    )

    private data class DjvuRenderableRenderPlan(
        val renderPlan: DjvuSimpleRenderPlan,
        val decodeInfo: DjvuJpegDecodeInfo
    )

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
