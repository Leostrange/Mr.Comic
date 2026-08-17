package io.leostrange.mrcomic.feature.reader.ui

import android.util.Log
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ReadingMode
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * Owns deferred/async scheduling tasks that were previously scattered
 * across ReaderViewModel. Each task has its own [Job] for cancellation.
 *
 * Extracted from [ReaderViewModel] to reduce its size and isolate
 * scheduling concerns.
 */
internal class ReaderDeferredTasks(
    private val scope: CoroutineScope,
    private val readerPreferences: UserPreferences
) {
    private var deferredTocWarmupJob: Job? = null
    private var deferredPageCountJob: Job? = null
    private var pageTranslationNoteJob: Job? = null

    /**
     * Schedules a deferred TOC warmup load.
     */
    fun scheduleDeferredTocWarmup(
        delayMillis: Long = 450L,
        getFormatReader: () -> io.leostrange.mrcomic.engine.api.FormatReader?,
        isTocEmpty: () -> Boolean,
        loadToc: () -> Unit
    ) {
        val reader = getFormatReader() ?: return
        deferredTocWarmupJob?.cancel()
        deferredTocWarmupJob = scope.launch {
            delay(delayMillis)
            if (getFormatReader() !== reader) return@launch
            if (!isTocEmpty()) return@launch
            loadToc()
        }
    }

    /**
     * Loads a per-page translation note from DataStore.
     */
    fun loadPageTranslationNote(
        comicId: String?,
        page: Int,
        currentComicId: () -> String?,
        currentPage: () -> Int,
        onLoaded: (String?) -> Unit,
        clearNote: () -> Unit
    ) {
        val resolvedComicId = comicId ?: return
        pageTranslationNoteJob?.cancel()
        clearNote()
        pageTranslationNoteJob = scope.launch {
            val note = readerPreferences.get(PreferencesKeys.translationNote(resolvedComicId, page), "").first()
            if (currentComicId() != resolvedComicId || currentPage() != page) return@launch
            onLoaded(note.ifBlank { null })
        }
    }

    /**
     * Schedules deferred page count resolution after initial book open.
     * Delegates actual resolution to [resolveAndApplyDeferredPageCount].
     */
    fun scheduleDeferredPageCountResolution(
        comic: Comic,
        reader: io.leostrange.mrcomic.engine.api.FormatReader,
        requestToken: Long,
        openingMode: ReadingMode,
        requestedStartPage: Int,
        initialPages: Int,
        openGuard: io.leostrange.mrcomic.feature.reader.domain.session.ReaderOpenGuard,
        isReaderCurrent: () -> Boolean,
        currentTotalPages: () -> Int,
        onResolved: suspend (Int, Int, Comic) -> Unit,
        onSkipped: () -> Unit = {}
    ) {
        deferredPageCountJob?.cancel()
        deferredPageCountJob = scope.launch(Dispatchers.IO) {
            val result = resolveDeferredPageCountAfterOpen(
                reader = reader,
                requestToken = requestToken,
                openingMode = openingMode,
                requestedStartPage = requestedStartPage,
                initialPages = initialPages,
                openGuard = openGuard,
                isReaderCurrent = isReaderCurrent,
                currentTotalPages = currentTotalPages,
                formatName = { comic.format?.name ?: "unknown" }
            )
            if (result == null) {
                withContext(Dispatchers.Main) { onSkipped() }
                return@launch
            }

            withContext(Dispatchers.Main) {
                onResolved(result.totalPages, result.normalizedStartPage, comic)
            }
        }
    }

    /**
     * Cancels all deferred tasks.
     */
    fun cancelAll() {
        deferredTocWarmupJob?.cancel()
        deferredPageCountJob?.cancel()
        pageTranslationNoteJob?.cancel()
    }
}

/**
 * Pure suspend function that resolves the real page count.
 * Returns null if resolution failed or should be skipped.
 */
internal data class DeferredPageCountResult(
    val totalPages: Int,
    val normalizedStartPage: Int
)

internal suspend fun resolveDeferredPageCountAfterOpen(
    reader: io.leostrange.mrcomic.engine.api.FormatReader,
    requestToken: Long,
    openingMode: ReadingMode,
    requestedStartPage: Int,
    initialPages: Int,
    openGuard: io.leostrange.mrcomic.feature.reader.domain.session.ReaderOpenGuard,
    isReaderCurrent: () -> Boolean,
    currentTotalPages: () -> Int,
    formatName: () -> String
): DeferredPageCountResult? {
    delay(DEFERRED_PAGE_COUNT_START_DELAY_MILLIS)
    val retryResult = resolveDeferredPageCountWithRetries(
        provisionalPages = initialPages,
        maxRetries = DEFERRED_PAGE_COUNT_MAX_RETRIES,
        retryDelayMillis = DEFERRED_PAGE_COUNT_RETRY_DELAY_MILLIS,
        pageCount = reader::getPageCount
    )
    val realPages = when (val resolution = retryResult.resolution) {
        is DeferredPageCountResolution.Resolved -> resolution.totalPages
        is DeferredPageCountResolution.RetryRequired -> {
            Log.w(
                "ReaderDeferredTasks",
                "Deferred page count failed after ${retryResult.attempts} attempts; " +
                    "keeping provisional=${resolution.provisionalPages}, " +
                    "format=${formatName()}",
                retryResult.lastFailure
            )
            return null
        }
    }
    if (!openGuard.isCurrent(requestToken)) return null
    if (!isReaderCurrent()) return null
    if (realPages <= 0) return null
    if (realPages == initialPages) return null
    val normalizedStartPage = deferredResolvedStartPage(
        requestedPage = requestedStartPage,
        mode = openingMode,
        resolvedTotalPages = realPages
    )
    if (!shouldApplyDeferredPageCount(
            openRequestCurrent = openGuard.isCurrent(requestToken),
            readerCurrent = isReaderCurrent(),
            currentTotalPages = currentTotalPages(),
            provisionalPages = initialPages,
            resolvedTotalPages = realPages
        )
    ) return null
    return DeferredPageCountResult(totalPages = realPages, normalizedStartPage = normalizedStartPage)
}
