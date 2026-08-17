package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReadingMode
import kotlinx.coroutines.delay
import kotlinx.coroutines.CancellationException

/**
 * Classifies a deferred page-count attempt without treating a failed count as an
 * authoritative page total.
 */
internal sealed interface DeferredPageCountResolution {
    data class Resolved(val totalPages: Int) : DeferredPageCountResolution

    data class RetryRequired(val provisionalPages: Int) : DeferredPageCountResolution
}

/**
 * Keeps retry decisions independent from the reader, coroutine and UI lifecycles.
 */
internal fun resolveDeferredPageCount(
    provisionalPages: Int,
    pageCountResult: Result<Int>
): DeferredPageCountResolution {
    val totalPages = pageCountResult.getOrNull()
    return if (totalPages != null && totalPages > 0) {
        DeferredPageCountResolution.Resolved(totalPages)
    } else {
        DeferredPageCountResolution.RetryRequired(provisionalPages.coerceAtLeast(1))
    }
}

internal data class DeferredPageCountRetryResult(
    val resolution: DeferredPageCountResolution,
    val attempts: Int,
    val lastFailure: Throwable?
)

/**
 * Retries a page-count operation without coupling retry timing to a ViewModel lifecycle.
 * Cancellation from [waitBeforeRetry] is deliberately allowed to propagate to the caller.
 */
internal suspend fun resolveDeferredPageCountWithRetries(
    provisionalPages: Int,
    maxRetries: Int,
    retryDelayMillis: Long,
    pageCount: suspend () -> Int,
    waitBeforeRetry: suspend (Long) -> Unit = { delay(it) }
): DeferredPageCountRetryResult {
    var attempts = 0
    var lastFailure: Throwable? = null
    while (true) {
        attempts += 1
        val pageCountResult = try {
            Result.success(pageCount())
        } catch (error: Throwable) {
            if (error is CancellationException) throw error
            Result.failure(error)
        }
        val resolution = resolveDeferredPageCount(provisionalPages, pageCountResult)
        if (resolution is DeferredPageCountResolution.Resolved) {
            return DeferredPageCountRetryResult(
                resolution = resolution,
                attempts = attempts,
                lastFailure = null
            )
        }

        lastFailure = pageCountResult.exceptionOrNull()
        if (attempts > maxRetries.coerceAtLeast(0)) {
            return DeferredPageCountRetryResult(
                resolution = resolution,
                attempts = attempts,
                lastFailure = lastFailure
            )
        }
        waitBeforeRetry(retryDelayMillis)
    }
}

internal fun shouldApplyDeferredPageCount(
    openRequestCurrent: Boolean,
    readerCurrent: Boolean,
    currentTotalPages: Int,
    provisionalPages: Int,
    resolvedTotalPages: Int
): Boolean {
    if (!openRequestCurrent || !readerCurrent) return false
    if (resolvedTotalPages <= 0 || resolvedTotalPages == provisionalPages) return false
    return currentTotalPages <= 1 || currentTotalPages == provisionalPages
}

/**
 * Restores the reader's original location only after the authoritative total is known.
 * A provisional one-page model must never clamp a saved EPUB position to the cover.
 */
internal fun deferredResolvedStartPage(
    requestedPage: Int,
    mode: ReadingMode,
    resolvedTotalPages: Int
): Int = ReaderNavigationPolicy.normalizePage(
    page = requestedPage,
    mode = mode,
    totalPages = resolvedTotalPages
)

/**
 * A resumed reader whose page count is still being resolved must not flash the
 * provisional cover page before jumping to the saved page. Hold the loading shell
 * until the authoritative total is known and the saved page can be applied atomically.
 */
internal fun shouldHoldLoadingForDeferredRestore(
    shouldDeferCount: Boolean,
    requestedStartPage: Int
): Boolean = shouldDeferCount && requestedStartPage > 0
