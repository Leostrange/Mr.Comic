package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReadingMode
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.runBlocking

class DeferredPageCountPolicyTest {

    @Test
    fun successfulCountResolvesToAuthoritativePageTotal() {
        val resolution = resolveDeferredPageCount(
            provisionalPages = 1,
            pageCountResult = Result.success(91)
        )

        assertEquals(DeferredPageCountResolution.Resolved(totalPages = 91), resolution)
    }

    @Test
    fun failedCountRequestsRetryInsteadOfSilentlyKeepingProvisionalTotal() {
        val resolution = resolveDeferredPageCount(
            provisionalPages = 1,
            pageCountResult = Result.failure(IllegalStateException("reader unavailable"))
        )

        assertTrue(resolution is DeferredPageCountResolution.RetryRequired)
        assertEquals(1, (resolution as DeferredPageCountResolution.RetryRequired).provisionalPages)
    }

    @Test
    fun nonPositiveCountRequestsRetryInsteadOfPublishingInvalidTotal() {
        val resolution = resolveDeferredPageCount(
            provisionalPages = 5,
            pageCountResult = Result.success(0)
        )

        assertEquals(
            DeferredPageCountResolution.RetryRequired(provisionalPages = 5),
            resolution
        )
    }

    @Test
    fun retriesFailedCountThenReturnsAuthoritativeTotal() = runBlocking {
        var attempts = 0
        val delays = mutableListOf<Long>()

        val result = resolveDeferredPageCountWithRetries(
            provisionalPages = 1,
            maxRetries = 2,
            retryDelayMillis = 25L,
            pageCount = {
                attempts += 1
                if (attempts == 1) error("reader still opening")
                91
            },
            waitBeforeRetry = { delays += it }
        )

        assertEquals(DeferredPageCountResolution.Resolved(totalPages = 91), result.resolution)
        assertEquals(2, result.attempts)
        assertEquals(listOf(25L), delays)
    }

    @Test
    fun stopsAfterConfiguredRetriesAndKeepsFailureForDiagnostics() = runBlocking {
        val delays = mutableListOf<Long>()

        val result = resolveDeferredPageCountWithRetries(
            provisionalPages = 5,
            maxRetries = 2,
            retryDelayMillis = 25L,
            pageCount = { error("reader unavailable") },
            waitBeforeRetry = { delays += it }
        )

        assertEquals(DeferredPageCountResolution.RetryRequired(provisionalPages = 5), result.resolution)
        assertEquals(3, result.attempts)
        assertEquals(listOf(25L, 25L), delays)
        assertTrue(result.lastFailure is IllegalStateException)
    }

    @Test(expected = CancellationException::class)
    fun cancellationDuringRetryDelayIsNotSwallowed() {
        runBlocking {
            resolveDeferredPageCountWithRetries(
                provisionalPages = 1,
                maxRetries = 2,
                retryDelayMillis = 25L,
                pageCount = { error("reader unavailable") },
                waitBeforeRetry = { throw CancellationException("reader closed") }
            )
        }
    }

    @Test
    fun doesNotApplyCountWhenAnotherBookOrRequestBecameCurrent() {
        val applies = shouldApplyDeferredPageCount(
            openRequestCurrent = false,
            readerCurrent = false,
            currentTotalPages = 1,
            provisionalPages = 1,
            resolvedTotalPages = 91
        )

        assertEquals(false, applies)
    }

    @Test
    fun doesNotOverwriteTotalAlreadyResolvedByAnotherCount() {
        val applies = shouldApplyDeferredPageCount(
            openRequestCurrent = true,
            readerCurrent = true,
            currentTotalPages = 91,
            provisionalPages = 1,
            resolvedTotalPages = 120
        )

        assertEquals(false, applies)
    }

    @Test
    fun appliesNewAuthoritativeTotalForCurrentProvisionalReader() {
        val applies = shouldApplyDeferredPageCount(
            openRequestCurrent = true,
            readerCurrent = true,
            currentTotalPages = 1,
            provisionalPages = 1,
            resolvedTotalPages = 91
        )

        assertEquals(true, applies)
    }

    @Test
    fun restoresSavedEpubPositionAfterProvisionalCoverPage() {
        val resolved = deferredResolvedStartPage(
            requestedPage = 16,
            mode = ReadingMode.PAGE_LTR,
            resolvedTotalPages = 26
        )

        assertEquals(16, resolved)
    }

    @Test
    fun clampsSavedPositionOnlyAgainstAuthoritativeTotal() {
        val resolved = deferredResolvedStartPage(
            requestedPage = 90,
            mode = ReadingMode.PAGE_LTR,
            resolvedTotalPages = 26
        )

        assertEquals(25, resolved)
    }
}
