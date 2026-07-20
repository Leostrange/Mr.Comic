package io.leostrange.mrcomic.engine.rendering.preload

import android.content.ComponentCallbacks2
import android.graphics.Bitmap
import android.util.Log
import io.leostrange.mrcomic.engine.formats.base.BitmapAllocator
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.resolveRenderDeviceProfile
import io.leostrange.mrcomic.engine.rendering.cache.TieredBitmapCache
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.update
import android.content.Context
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.Semaphore
import kotlinx.coroutines.sync.withPermit
import kotlinx.coroutines.sync.withLock
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class PagePreloader @Inject constructor(
    private val cache: TieredBitmapCache,
    private val bitmapAllocator: BitmapAllocator,
    @ApplicationContext context: Context
) {
    private data class PageCacheKey(val readerToken: Int, val index: Int, val renderQuality: Int = 1)
    private data class PreloadWindow(val readerToken: Int, val start: Int, val end: Int)

    companion object {
        private const val TAG = "PagePreloader"
        private const val DEFAULT_PRELOAD_AHEAD = 3
        private const val PRELOAD_BEHIND = 1
    }

    @Volatile private var preloadJob: Job? = null
    @Volatile private var activePreloadWindow: PreloadWindow? = null
    @Volatile private var activeReaderToken: Int? = null
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private val deviceProfile = context.resolveRenderDeviceProfile()
    private val inFlightMutex = Mutex()
    private val decodeSemaphore = Semaphore(permits = 2)
    private val inFlightLoads = mutableMapOf<PageCacheKey, Deferred<Bitmap?>>()

    // Reactive page cache — UI observes this instead of polling getPage()
    private val _loadedPages = MutableStateFlow<Map<PageCacheKey, Bitmap>>(emptyMap())

    /**
     * Returns a Flow that emits the bitmap for [index] as soon as it becomes available.
     *
     * When the entry is absent from [_loadedPages] (evicted from the reactive map after
     * scrolling away) we fall back to [TieredBitmapCache] before returning null. This
     * prevents the "already-seen page flashes back to a black placeholder" symptom that
     * occurs when the retention window is narrower than the visible area after a fling.
     */
    fun getPageFlow(index: Int, renderQuality: Int = 1): Flow<Bitmap?> =
        _loadedPages.map { map ->
            activeReaderToken?.let { readerToken ->
                map[PageCacheKey(readerToken, index, renderQuality)]
                    ?: cache.get(cacheKey(readerToken, index, renderQuality))
            }
        }.distinctUntilChanged()

    /**
     * Starts background preloading around [currentPage].
     * [preloadAhead] controls how many pages to preload forward (default 3, range 1..8).
     *
     * Pages outside the active window are evicted from [_loadedPages] so the StateFlow
     * does not hold strong Bitmap references for the entire session — the LRU cache in
     * [TieredBitmapCache] handles overall memory limits independently.
     */
    fun preloadAround(
        reader: FormatReader,
        currentPage: Int,
        totalPages: Int,
        preloadAhead: Int = DEFAULT_PRELOAD_AHEAD
    ) = preloadAround(
        reader = reader,
        visiblePages = listOf(currentPage),
        totalPages = totalPages,
        preloadAhead = preloadAhead
    )

    fun preloadAround(
        reader: FormatReader,
        visiblePages: List<Int>,
        totalPages: Int,
        preloadAhead: Int = DEFAULT_PRELOAD_AHEAD
    ) {
        val readerToken = System.identityHashCode(reader)
        activeReaderToken = readerToken
        val anchorPages = visiblePages
            .distinct()
            .filter { it in 0 until totalPages }
            .ifEmpty { listOf(0) }
        val ahead = preloadAhead.coerceIn(1, deviceProfile.maxPreloadPages)
        val behind = minOf(PRELOAD_BEHIND, deviceProfile.preloadBehindPages)
        val start = (anchorPages.first() - behind).coerceAtLeast(0)
        val end = (anchorPages.last() + ahead).coerceAtMost(totalPages - 1)
        val requestedWindow = PreloadWindow(
            readerToken = readerToken,
            start = start,
            end = end
        )
        warmVisiblePages(reader, readerToken, anchorPages)
        if (activePreloadWindow?.contains(requestedWindow) == true) {
            if (preloadJob?.isActive == true) return

            val hasAllBasePages = (start..end).all { cache.get(cacheKey(readerToken, it, 1)) != null }
            if (hasAllBasePages) {
                (start..end).forEach { pageIndex ->
                    cache.get(cacheKey(readerToken, pageIndex, 1))?.let { bitmap ->
                        val key = PageCacheKey(readerToken, pageIndex, 1)
                        _loadedPages.update { map -> if (key in map) map else map + (key to bitmap) }
                    }
                }
                return
            }
        }
        preloadJob?.cancel()
        activePreloadWindow = requestedWindow
        preloadJob = scope.launch {
            val window = start..end
            val retentionStart = (start - ahead - behind).coerceAtLeast(0)
            val retentionEnd = (end + ahead).coerceAtMost(totalPages - 1)
            val retentionWindow = retentionStart..retentionEnd

            // Keep a wider retention window than the active decode queue. Continuous
            // WEBTOON scrolling updates the visible item often; evicting exactly at
            // the decode window causes already-seen pages to flash back to loaders.
            val evictedPages = _loadedPages.value.filterKeys {
                it.readerToken == readerToken && it.index !in retentionWindow
            }
            _loadedPages.update { map ->
                map.filterKeys { key -> key.readerToken != readerToken || key.index in retentionWindow }
            }
            evictedPages.forEach { (key, bitmap) ->
                cache.remove(cacheKey(key.readerToken, key.index, key.renderQuality))
                releaseWithDelay(bitmap)
            }

            for (i in window) {
                if (!isActive) break
                if (cache.get(cacheKey(readerToken, i, 1)) == null) {
                    try {
                        loadPage(reader, i, 1)
                    } catch (e: Throwable) {
                        // Throwable: junrar может бросить AssertionError (не Exception)
                        Log.e(TAG, "Preload failed for page $i", e)
                    }
                } else {
                    // Already in the LRU cache — ensure the reactive map is up to date.
                    cache.get(cacheKey(readerToken, i, 1))?.let { bm ->
                        val key = PageCacheKey(readerToken, i, 1)
                        _loadedPages.update { map -> if (key in map) map else map + (key to bm) }
                    }
                }
            }
        }
    }

    suspend fun loadPage(
        reader: FormatReader,
        index: Int,
        renderQuality: Int = 1
    ): Bitmap? {
        val readerToken = System.identityHashCode(reader)
        activeReaderToken = readerToken
        val key = PageCacheKey(readerToken, index, renderQuality)
        cache.get(cacheKey(readerToken, index, renderQuality))?.let { cached ->
            _loadedPages.update { map -> if (key in map) map else map + (key to cached) }
            return cached
        }
        val deferred = inFlightMutex.withLock {
            inFlightLoads[key]?.takeIf { it.isActive } ?: scope.async(start = CoroutineStart.LAZY) {
                try {
                    decodeSemaphore.withPermit {
                        reader.getPage(index, renderQuality)?.also { bitmap ->
                            putPage(readerToken, index, bitmap, renderQuality)
                        }
                    }
                } finally {
                    inFlightMutex.withLock {
                        inFlightLoads.remove(key)
                    }
                }
            }.also { created ->
                inFlightLoads[key] = created
                created.start()
            }
        }
        return deferred.await()
    }

    fun cancelPreload() { preloadJob?.cancel() }

    fun getPage(index: Int, renderQuality: Int = 1): Bitmap? =
        activeReaderToken?.let { readerToken ->
            cache.get(cacheKey(readerToken, index, renderQuality))
        }

    private fun putPage(readerToken: Int, index: Int, bitmap: Bitmap, renderQuality: Int = 1) {
        if (activeReaderToken != readerToken) {
            releaseWithDelay(bitmap)
            return
        }
        val key = PageCacheKey(readerToken, index, renderQuality)
        val staleHighQuality = _loadedPages.value
            .filterKeys {
                it.readerToken == readerToken &&
                    it.index == index &&
                    it.renderQuality > 1 &&
                    it.renderQuality != renderQuality
            }
        staleHighQuality.forEach { (staleKey, staleBitmap) ->
            cache.remove(cacheKey(staleKey.readerToken, staleKey.index, staleKey.renderQuality))
            if (staleBitmap !== bitmap) {
                releaseWithDelay(staleBitmap)
            }
        }
        _loadedPages.value[key]?.takeIf { it !== bitmap }?.let { releaseWithDelay(it) }
        cache.put(cacheKey(readerToken, index, renderQuality), bitmap)
        _loadedPages.update {
            it
                .filterKeys { existing ->
                    existing.readerToken != readerToken ||
                        existing.index != index ||
                        existing.renderQuality <= 1 ||
                        existing.renderQuality == renderQuality
                } + (key to bitmap)
        }
    }

    fun clearPages() {
        activePreloadWindow = null
        activeReaderToken = null
        cancelInFlightLoads()
        val retained = _loadedPages.value.values.toSet()
        _loadedPages.update { emptyMap() }
        cache.clear()
        retained.forEach { releaseWithDelay(it) }
    }

    fun retainHighQualityPages(indices: Set<Int>) {
        if (indices.isEmpty()) {
            evictPages { it.renderQuality > 1 }
            return
        }
        evictPages { it.renderQuality > 1 && it.index !in indices }
    }

    @Suppress("DEPRECATION")
    fun trimMemory(level: Int) {
        if (level == ComponentCallbacks2.TRIM_MEMORY_UI_HIDDEN) {
            return
        }
        when {
            // MODERATE / COMPLETE / near-kill: release everything
            level >= ComponentCallbacks2.TRIM_MEMORY_MODERATE -> {
                cancelPreload()
                activePreloadWindow = null
                clearPages()
                bitmapAllocator.trimMemory(level)
            }

            // BACKGROUND: user briefly switched away — cancel speculative preload and
            // trim to 25 % of budget so we don't hog memory, but keep the current-page
            // bitmaps so the reader reappears without a blank flash.
            level >= ComponentCallbacks2.TRIM_MEMORY_BACKGROUND -> {
                cancelPreload()
                evictPages { it.renderQuality > 1 }
                cache.trimToSize(cache.maxBudgetKb() / 4)
                bitmapAllocator.trimMemory(level)
            }

            level in ComponentCallbacks2.TRIM_MEMORY_RUNNING_LOW..ComponentCallbacks2.TRIM_MEMORY_RUNNING_CRITICAL -> {
                cancelPreload()
                evictPages { it.renderQuality > 1 }
                cache.trimToSize(
                    when {
                        level >= ComponentCallbacks2.TRIM_MEMORY_RUNNING_CRITICAL -> cache.maxBudgetKb() / 4
                        else -> cache.maxBudgetKb() / 2
                    }
                )
                bitmapAllocator.trimMemory(level)
            }
        }
    }

    private fun cacheKey(readerToken: Int, index: Int, renderQuality: Int): String =
        "reader_${readerToken}_page_${index}_q$renderQuality"

    private fun PreloadWindow.contains(other: PreloadWindow): Boolean =
        readerToken == other.readerToken && start <= other.start && end >= other.end

    private fun warmVisiblePages(
        reader: FormatReader,
        readerToken: Int,
        visiblePages: List<Int>
    ) {
        visiblePages.forEach { pageIndex ->
            cache.get(cacheKey(readerToken, pageIndex, 1))?.let { bitmap ->
                val key = PageCacheKey(readerToken, pageIndex, 1)
                _loadedPages.update { map -> if (key in map) map else map + (key to bitmap) }
                return@forEach
            }
            scope.launch {
                try {
                    loadPage(reader, pageIndex, 1)
                } catch (cancelled: CancellationException) {
                    throw cancelled
                } catch (t: Throwable) {
                    Log.e(TAG, "Visible page warmup failed for page $pageIndex", t)
                }
            }
        }
    }

    /**
     * Releases a bitmap with a grace period delay. This prevents the "trying to use a recycled bitmap"
     * crash if a draw call is mid-execution when the page is evicted during scrolling.
     */
    private fun releaseWithDelay(bitmap: Bitmap) {
        scope.launch {
            withContext(NonCancellable) {
                delay(1000)
                bitmapAllocator.release(bitmap)
            }
        }
    }

    private fun evictPages(predicate: (PageCacheKey) -> Boolean) {
        val evictedPages = _loadedPages.value.filterKeys(predicate)
        _loadedPages.update { map -> map.filterKeys { key -> !predicate(key) } }
        evictedPages.forEach { (key, bitmap) ->
            cache.remove(cacheKey(key.readerToken, key.index, key.renderQuality))
            releaseWithDelay(bitmap)
        }
    }

    private fun cancelInFlightLoads() {
        scope.launch {
            inFlightMutex.withLock {
                inFlightLoads.values.forEach { it.cancel() }
                inFlightLoads.clear()
            }
        }
    }
}
