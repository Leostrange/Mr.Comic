package com.example.feature.reader.ui

import android.graphics.Bitmap
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Progressive page loader with two-stage loading:
 * 1. Load low-res thumbnail quickly (fast preview)
 * 2. Load full-res bitmap in background (high quality)
 *
 * Improves perceived performance by showing something immediately.
 */
class ProgressivePageLoader(
    private val scope: CoroutineScope,
    private val thumbnailLoader: suspend (Int) -> Bitmap?,
    private val fullResLoader: suspend (Int) -> Bitmap?
) {
    companion object {
        private const val TAG = "ProgressivePageLoader"
        private const val PRELOAD_RANGE_FORWARD = 3 // Preload 3 pages ahead
        private const val PRELOAD_RANGE_BACKWARD = 1 // Preload 1 page behind
        private const val MAX_CONCURRENT_LOADS = 3 // Limit concurrent operations
    }

    data class PageState(
        val thumbnail: Bitmap? = null,
        val fullRes: Bitmap? = null,
        val isLoading: Boolean = false
    )

    private val _pageStates = MutableStateFlow<Map<Int, PageState>>(emptyMap())
    val pageStates: StateFlow<Map<Int, PageState>> = _pageStates.asStateFlow()

    private var currentLoadJobs = mutableMapOf<Int, Job>()
    private val loadingSemaphore = kotlinx.coroutines.sync.Semaphore(MAX_CONCURRENT_LOADS)

    /**
     * Load page progressively (thumbnail first, then full-res)
     */
    suspend fun loadPage(pageIndex: Int): PageState {
        // If already loaded, return immediately
        _pageStates.value[pageIndex]?.let { state ->
            if (state.fullRes != null) {
                android.util.Log.d(TAG, "✅ Page $pageIndex already loaded (full-res)")
                return state
            }
        }

        // Mark as loading
        updatePageState(pageIndex, PageState(isLoading = true))

        try {
            // Stage 1: Load thumbnail (fast)
            val thumbnail = withContext(Dispatchers.IO) {
                thumbnailLoader(pageIndex)
            }

            if (thumbnail != null) {
                updatePageState(pageIndex, PageState(
                    thumbnail = thumbnail,
                    fullRes = null,
                    isLoading = true
                ))
                android.util.Log.d(TAG, "📸 Thumbnail loaded: page $pageIndex")
            }

            // Stage 2: Load full-res (slower)
            val fullRes = withContext(Dispatchers.IO) {
                fullResLoader(pageIndex)
            }

            if (fullRes != null) {
                updatePageState(pageIndex, PageState(
                    thumbnail = thumbnail,
                    fullRes = fullRes,
                    isLoading = false
                ))
                android.util.Log.d(TAG, "🖼️ Full-res loaded: page $pageIndex")
                return PageState(thumbnail, fullRes, false)
            } else {
                // Fallback to thumbnail if full-res fails
                updatePageState(pageIndex, PageState(
                    thumbnail = thumbnail,
                    fullRes = null,
                    isLoading = false
                ))
                return PageState(thumbnail, null, false)
            }

        } catch (e: CancellationException) {
            android.util.Log.d(TAG, "⏸️ Loading cancelled: page $pageIndex")
            throw e
        } catch (e: Exception) {
            android.util.Log.e(TAG, "❌ Failed to load page $pageIndex", e)
            updatePageState(pageIndex, PageState(isLoading = false))
            return PageState(null, null, false)
        }
    }

    /**
     * Preload pages around current page with directional priority
     */
    fun preloadPagesProgressive(
        currentPage: Int,
        totalPages: Int,
        readingDirection: ReadingDirection = ReadingDirection.FORWARD
    ) {
        // Cancel old jobs for pages far from current
        cleanupDistantPages(currentPage)

        // Calculate pages to preload based on direction
        val pagesToPreload = calculatePreloadPages(currentPage, totalPages, readingDirection)

        // Start preload jobs
        pagesToPreload.forEach { pageIndex ->
            if (!currentLoadJobs.containsKey(pageIndex)) {
                currentLoadJobs[pageIndex] = scope.launch {
                    try {
                        loadingSemaphore.withPermit {
                            // Only preload if not already loading/loaded
                            val currentState = _pageStates.value[pageIndex]
                            if (currentState?.fullRes == null) {
                                loadPage(pageIndex)
                            }
                        }
                    } catch (e: CancellationException) {
                        // Expected when navigating quickly
                    } catch (e: Exception) {
                        android.util.Log.e(TAG, "Preload failed: page $pageIndex", e)
                    } finally {
                        currentLoadJobs.remove(pageIndex)
                    }
                }
            }
        }
    }

    /**
     * Calculate which pages to preload based on reading direction
     */
    private fun calculatePreloadPages(
        currentPage: Int,
        totalPages: Int,
        direction: ReadingDirection
    ): List<Int> {
        val pages = mutableListOf<Int>()

        when (direction) {
            ReadingDirection.FORWARD -> {
                // Priority: current, +1, +2, +3, -1
                pages.add(currentPage)
                for (i in 1..PRELOAD_RANGE_FORWARD) {
                    val nextPage = currentPage + i
                    if (nextPage < totalPages) pages.add(nextPage)
                }
                if (currentPage > 0) pages.add(currentPage - 1)
            }
            ReadingDirection.BACKWARD -> {
                // Priority: current, -1, -2, -3, +1
                pages.add(currentPage)
                for (i in 1..PRELOAD_RANGE_FORWARD) {
                    val prevPage = currentPage - i
                    if (prevPage >= 0) pages.add(prevPage)
                }
                if (currentPage < totalPages - 1) pages.add(currentPage + 1)
            }
        }

        return pages
    }

    /**
     * Clean up pages that are too far from current
     */
    private fun cleanupDistantPages(currentPage: Int) {
        val distantPages = currentLoadJobs.keys.filter { pageIndex ->
            kotlin.math.abs(pageIndex - currentPage) > PRELOAD_RANGE_FORWARD + 2
        }

        distantPages.forEach { pageIndex ->
            currentLoadJobs[pageIndex]?.cancel()
            currentLoadJobs.remove(pageIndex)

            // Remove from state and recycle bitmaps
            _pageStates.value[pageIndex]?.let { state ->
                state.thumbnail?.recycle()
                state.fullRes?.recycle()
            }
            _pageStates.value = _pageStates.value - pageIndex
        }

        if (distantPages.isNotEmpty()) {
            android.util.Log.d(TAG, "🧹 Cleaned up ${distantPages.size} distant pages")
        }
    }

    /**
     * Get current state of a page
     */
    fun getPageState(pageIndex: Int): PageState? {
        return _pageStates.value[pageIndex]
    }

    /**
     * Cancel all loading operations
     */
    fun cancelAll() {
        currentLoadJobs.values.forEach { it.cancel() }
        currentLoadJobs.clear()
    }

    /**
     * Clear all cached states
     */
    fun clearAll() {
        cancelAll()

        // Recycle all bitmaps
        _pageStates.value.values.forEach { state ->
            state.thumbnail?.recycle()
            state.fullRes?.recycle()
        }

        _pageStates.value = emptyMap()
        android.util.Log.d(TAG, "🧹 All states cleared")
    }

    private fun updatePageState(pageIndex: Int, state: PageState) {
        _pageStates.value = _pageStates.value + (pageIndex to state)
    }
}

/**
 * Reading direction for adaptive preloading
 */
enum class ReadingDirection {
    FORWARD,  // Left-to-right, top-to-bottom
    BACKWARD  // Right-to-left (manga), bottom-to-top
}
