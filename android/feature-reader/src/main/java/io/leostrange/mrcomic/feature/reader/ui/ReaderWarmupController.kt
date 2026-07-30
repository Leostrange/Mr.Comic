package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.RenderDeviceTier
import io.leostrange.mrcomic.engine.rendering.preload.PagePreloader
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/**
 * Manages high-quality bitmap warmup scheduling and retention.
 *
 * Extracted from [ReaderViewModel] to reduce its size.
 */
internal class ReaderWarmupController(
    private val scope: CoroutineScope,
    private val pagePreloader: PagePreloader
) {
    private var warmupJob: Job? = null
    private var lastRetainedPages: Set<Int> = emptySet()

    /**
     * Schedules high-res warmup for visible pages if the format supports it.
     */
    fun scheduleWarmup(
        page: Int,
        renderTier: RenderDeviceTier,
        getFormatReader: () -> FormatReader?,
        supportsBitmapPreload: () -> Boolean,
        getComicId: () -> String?,
        getReadingMode: () -> ReadingMode,
        getCurrentPage: () -> Int,
        visiblePagesFor: (Int, ReadingMode) -> List<Int>
    ) {
        val warmupTier = when (renderTier) {
            RenderDeviceTier.HIGH_END -> 3
            RenderDeviceTier.MID_RANGE -> 2
            else -> null
        } ?: return

        if (!supportsBitmapPreload()) return
        val reader = getFormatReader() ?: return
        val comicId = getComicId() ?: return
        val readingMode = getReadingMode()
        val targetPages = visiblePagesFor(page, readingMode)

        warmupJob?.cancel()
        warmupJob = scope.launch {
            delay(180)
            if (getFormatReader() !== reader) return@launch
            if (getComicId() != comicId) return@launch
            if (getReadingMode() != readingMode) return@launch
            if (visiblePagesFor(getCurrentPage(), getReadingMode()) != targetPages) return@launch
            targetPages.forEach { targetPage ->
                if (pagePreloader.getPage(targetPage, warmupTier) == null) {
                    pagePreloader.loadPage(reader, targetPage, warmupTier)
                }
            }
        }
    }

    /**
     * Retains high-quality bitmaps for the given page indices.
     * Returns true if the set changed.
     */
    fun applyRetention(indices: Set<Int>): Boolean {
        if (indices == lastRetainedPages) return false
        pagePreloader.retainHighQualityPages(indices)
        lastRetainedPages = indices
        return true
    }

    /**
     * Cancels any pending warmup and resets retention state.
     */
    fun cancel() {
        warmupJob?.cancel()
        lastRetainedPages = emptySet()
    }
}
