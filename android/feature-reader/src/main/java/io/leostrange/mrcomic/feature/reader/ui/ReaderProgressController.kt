/*
 * Copyright 2026 Mr.Comic contributors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package io.leostrange.mrcomic.feature.reader.ui

import android.util.Log
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.interfaces.analytics.ReaderCheckpointRepository
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.isHeavyReflowableFormat
import io.leostrange.mrcomic.core.model.isTextReadingFormat
import io.leostrange.mrcomic.feature.reader.domain.progress.ReaderPosition
import io.leostrange.mrcomic.feature.reader.domain.progress.ReaderPositionCodec
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderProgressRecapType
import io.leostrange.mrcomic.feature.reader.domain.progress.EpubSectionPageCountStore
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderProgressRecap
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionCoordinator
import io.leostrange.mrcomic.feature.reader.domain.session.buildReaderClosedAnalyticsEvent
import io.leostrange.mrcomic.feature.reader.domain.session.shouldRecordReaderSessionMinutes
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import java.util.concurrent.atomic.AtomicReference

/**
 * Handles progress persistence, chapter milestones, and reading goal tracking.
 *
 * Extracted from [ReaderViewModel] to reduce its size.
 */
internal class ReaderProgressController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val libraryRepository: LibraryRepository,
    private val dailyReadingGoalStore: DailyReadingGoalStore,
    private val readerCheckpointStore: ReaderCheckpointRepository,
    private val analyticsTracker: ReadingAnalyticsTracker,
    private val readerSessionCoordinator: ReaderSessionCoordinator,
    private val _readerProgressRecap: MutableSharedFlow<ReaderProgressRecap>,
) {

    internal var pendingProgressSave: PendingProgressSave? = null
    internal var progressSaveJob: Job? = null
    internal var lastPersistedProgress: PersistedProgressMarker? = null
    internal var lastPersistedPositionJson: String? = null
    internal val lastChapterMilestone = AtomicReference<ChapterMilestoneMarker?>()

    /** Measured visual page counts per EPUB spine section. */
    internal val sectionPageCounts = EpubSectionPageCountStore()

    /**
     * Total number of sections (spine items) in the book. Set once when the book opens.
     * Used by [accumulatedTotalPagesForEpub] to estimate total visual pages including
     * unvisited sections, preventing premature 100% progress display.
     */
    internal var totalBookSections: Int = 0

    /** BUG-READER-03: periodic position save job — runs every 5 s while the reader is active. */
    private var periodicSaveJob: Job? = null

    /**
     * BUG-READER-03: Start periodic position snapshots so a process-kill between page turns
     * cannot lose more than ~5 seconds of reading progress. Only one periodic job runs at a time.
     */
    fun startPeriodicPositionSave() {
        periodicSaveJob?.cancel()
        periodicSaveJob = viewModelScope.launch {
            while (true) {
                delay(PERIODIC_SAVE_INTERVAL_MS)
                val comic = _uiState.value.comic ?: continue
                val positionJson = buildPositionJson(
                    _uiState.value, comic.format, _uiState.value.currentPage
                ) ?: continue
                // Only write when the position actually changed since the last persist.
                if (!isSamePersistedPosition(lastPersistedPositionJson, positionJson)) {
                    enqueuePositionOnlySave(comic, _uiState.value.currentPage, positionJson)
                }
            }
        }
    }

    /** Stop the periodic position save (called when the reader is closed). */
    fun stopPeriodicPositionSave() {
        periodicSaveJob?.cancel()
        periodicSaveJob = null
    }

    /** Returns a stable, section-ordered snapshot for EPUB progress accumulation. */
    internal fun snapshotSectionPageCounts(): Map<Int, Int> = sectionPageCounts.snapshot()

    // ── Progress persistence ───────────────────────────────────────────────

    fun saveProgress(
        page: Int,
        progressSource: ReaderNavigationProgressSource,
    ) {
        val comic = _uiState.value.comic ?: return
        val epubAccumulatedPages = accumulatedTotalPagesForEpub()
        val sectionSnapshot = sectionPageCounts.snapshot()
        val totalPages = if (epubAccumulatedPages > 0) epubAccumulatedPages else _uiState.value.totalPages
        val positionJson = buildPositionJson(_uiState.value, comic.format, page)
        if (!ReaderProgressPolicy.shouldPersist(
                totalPages = totalPages,
                isHeavyReflowable = comic.format.isHeavyReflowableFormat(),
                isEpub = comic.format == ComicFormat.EPUB,
                epubAccumulatedPages = epubAccumulatedPages,
                paginatedSectionCount = sectionSnapshot.size
            )
        ) {
            // Keep exact text position even while page-count/progress metrics are provisional.
            positionJson?.let { enqueuePositionOnlySave(comic, page, it) }
            return
        }
        val accuratePage = ReaderProgressPolicy.pageForPersistence(
            format = comic.format,
            readerPage = page,
            epubAbsolutePage = calculateAccuratePage(page)
        )
        val state = _uiState.value
        val pending = PendingProgressSave(
            comicId = comic.id,
            page = accuratePage,
            totalPages = totalPages,
            countsTowardReadingProgress = progressSource == ReaderNavigationProgressSource.READING,
            characterOffset = if (state.readingMode == ReadingMode.WEBTOON) {
                state.freeScrollCharacterOffset.takeIf { it >= 0 }
            } else {
                state.sectionCharacterOffset.takeIf { it > 0 }
            },
            positionJson = positionJson
        )
        if (
            pending == pendingProgressSave ||
            (
                isProgressAlreadyPersisted(comic.id, accuratePage) &&
                    isSamePersistedPosition(lastPersistedPositionJson, positionJson)
                )
        ) return
        pendingProgressSave = pending
        progressSaveJob?.cancel()
        progressSaveJob = viewModelScope.launch {
            delay(220)
            flushPendingProgressSave()
        }
    }

    /**
     * Debounced structured-position snapshot used by free-scroll Webtoon updates and close.
     * It intentionally bypasses page-progress/completion rules: a one-section EPUB can still
     * have a meaningful character cursor even when its global page metrics are provisional.
     */
    fun savePositionSnapshot() {
        val comic = _uiState.value.comic ?: return
        val positionJson = buildPositionJson(_uiState.value, comic.format, _uiState.value.currentPage)
            ?: return
        enqueuePositionOnlySave(comic, _uiState.value.currentPage, positionJson)
    }

    /**
     * Force-persists the current position on reader close, bypassing the dedup guard.
     *
     * BUG-READER-03: [savePositionSnapshot] skips the write when the position JSON matches
     * [lastPersistedPositionJson]. During a rapid exit the WebView may not have reported its
     * latest scroll back to [_uiState], so the snapshot looks identical — but the database
     * might actually be empty or stale (e.g. a previous flush was lost to a process kill).
     * This method always enqueues a position-only write so the close path is lossless.
     */
    private fun forceSavePositionOnClose() {
        val comic = _uiState.value.comic ?: return
        val positionJson = buildPositionJson(_uiState.value, comic.format, _uiState.value.currentPage)
            ?: return
        val normalizedPage = _uiState.value.currentPage.coerceAtLeast(0)
        val pending = PendingProgressSave(
            comicId = comic.id,
            page = normalizedPage,
            totalPages = _uiState.value.totalPages.coerceAtLeast(1),
            countsTowardReadingProgress = false,
            characterOffset = if (_uiState.value.readingMode == ReadingMode.WEBTOON) {
                _uiState.value.freeScrollCharacterOffset.takeIf { it >= 0 }
            } else {
                _uiState.value.sectionCharacterOffset.takeIf { it > 0 }
            },
            positionJson = positionJson,
            positionOnly = true
        )
        // Only skip if there is already an identical *pending* save queued (avoids duplicate work
        // within the same close sequence). We intentionally do NOT check lastPersistedPositionJson
        // because the close path must always write to the database even if it appears redundant.
        if (pending == pendingProgressSave) return
        pendingProgressSave = pending
    }

    /**
     * BUG-READER-02: Immediate position save used when the user explicitly changes reading mode.
     * Unlike [savePositionSnapshot] (debounced 220 ms) this flushes the pending write synchronously
     * so a rapid close after a mode switch cannot lose the new mode in the structured position.
     */
    fun savePositionImmediate() {
        val comic = _uiState.value.comic ?: return
        val positionJson = buildPositionJson(_uiState.value, comic.format, _uiState.value.currentPage)
            ?: return
        val normalizedPage = _uiState.value.currentPage.coerceAtLeast(0)
        val pending = PendingProgressSave(
            comicId = comic.id,
            page = normalizedPage,
            totalPages = _uiState.value.totalPages.coerceAtLeast(1),
            countsTowardReadingProgress = false,
            characterOffset = if (_uiState.value.readingMode == ReadingMode.WEBTOON) {
                _uiState.value.freeScrollCharacterOffset.takeIf { it >= 0 }
            } else {
                _uiState.value.sectionCharacterOffset.takeIf { it > 0 }
            },
            positionJson = positionJson,
            positionOnly = true
        )
        pendingProgressSave = pending
        progressSaveJob?.cancel()
        progressSaveJob = viewModelScope.launch {
            flushPendingProgressSave()
        }
    }

    private fun enqueuePositionOnlySave(
        comic: io.leostrange.mrcomic.core.model.Comic,
        page: Int,
        positionJson: String
    ) {
        val normalizedPage = page.coerceAtLeast(0)
        val pending = PendingProgressSave(
            comicId = comic.id,
            page = normalizedPage,
            totalPages = _uiState.value.totalPages.coerceAtLeast(1),
            countsTowardReadingProgress = false,
            characterOffset = if (_uiState.value.readingMode == ReadingMode.WEBTOON) {
                _uiState.value.freeScrollCharacterOffset.takeIf { it >= 0 }
            } else {
                _uiState.value.sectionCharacterOffset.takeIf { it > 0 }
            },
            positionJson = positionJson,
            positionOnly = true
        )
        if (
            pending == pendingProgressSave ||
            isSamePersistedPosition(lastPersistedPositionJson, positionJson)
        ) return
        pendingProgressSave = pending
        progressSaveJob?.cancel()
        progressSaveJob = viewModelScope.launch {
            delay(220)
            flushPendingProgressSave()
        }
    }

    suspend fun flushPendingProgressSave() {
        val pending = pendingProgressSave ?: return
        pendingProgressSave = null
        try {
            val previousPersistedPage = lastPersistedProgress
                ?.takeIf { it.comicId == pending.comicId }
                ?.page
            val safeTotalPages = pending.totalPages.coerceAtLeast(1)
            if (!pending.positionOnly) {
                libraryRepository.updateProgress(
                    comicId = pending.comicId,
                    currentPage = pending.page,
                    totalPages = safeTotalPages,
                    characterOffset = pending.characterOffset
                )
            }
            // TEXT-01: persist the structured position alongside the legacy fields. Null keeps
            // the stored record untouched (legacy-only) — never overwrite with a coarse fallback.
            pending.positionJson?.let { positionJson ->
                libraryRepository.updateReaderPosition(pending.comicId, positionJson)
            }
            lastPersistedPositionJson = pending.positionJson
            if (pending.positionOnly) return
            val goalStateBeforeProgress = dailyReadingGoalStore.goalState.first()
            val goalProgressDelta = navigationProgressDelta(
                previousPersistedPage = previousPersistedPage,
                newPage = pending.page,
                countsTowardReadingProgress = pending.countsTowardReadingProgress
            )
            if (goalProgressDelta > 0) {
                dailyReadingGoalStore.recordProgressDelta(goalProgressDelta)
                dailyReadingGoalStore.recordXpDelta(goalProgressDelta)
                resolveGoalCompletedAnalyticsEvent(
                    comicId = pending.comicId,
                    previousState = goalStateBeforeProgress,
                    currentState = dailyReadingGoalStore.goalState.first()
                )?.let(analyticsTracker::track)
                analyticsTracker.track(
                    ReadingAnalyticsEvent.XpAwarded(
                        comicId = pending.comicId,
                        amount = goalProgressDelta,
                        reason = "pages_read"
                    )
                )
            }
            analyticsTracker.track(
                ReadingAnalyticsEvent.ProgressPersisted(
                    comicId = pending.comicId,
                    page = pending.page,
                    totalPages = pending.totalPages
                )
            )
            lastPersistedProgress = persistedPageMarkerAfterFlush(lastPersistedProgress, pending)
            lastPersistedPositionJson = pending.positionJson
            val currentComic = _uiState.value.comic ?: return
            val reachedLastPageSafe = pending.totalPages > 0 && pending.page >= pending.totalPages - 1
            val isHeavy = currentComic.format.isHeavyReflowableFormat() || currentComic.format.isTextReadingFormat()
            val titleCompletionPolicy = resolveTitleCompletionPolicy(
                reachedLastPage = reachedLastPageSafe,
                currentComicIdMatches = currentComic.id == pending.comicId,
                alreadyCompleted = currentComic.isCompleted,
                countsTowardReadingProgress = pending.countsTowardReadingProgress,
                sessionManualPageTurns = readerSessionCoordinator.currentManualPageTurns,
                goalProgressDelta = goalProgressDelta,
                isHeavyReflowable = isHeavy,
                totalPages = pending.totalPages
            )
            if (titleCompletionPolicy.shouldComplete) {
                libraryRepository.markCompleted(pending.comicId, completed = true)
                _uiState.update { state ->
                    state.copy(
                        comic = state.comic?.copy(
                            isCompleted = true,
                            readingProgress = 1f
                        )
                    )
                }
                dailyReadingGoalStore.recordCompletedCheckpoint()
                analyticsTracker.track(
                    ReadingAnalyticsEvent.TitleCompleted(
                        comicId = pending.comicId,
                        totalPages = pending.totalPages
                    )
                )
                analyticsTracker.track(
                    ReadingAnalyticsEvent.XpAwarded(
                        comicId = pending.comicId,
                        amount = titleCompletionPolicy.bonusXpAwarded,
                        reason = "title_complete"
                    )
                )
                dailyReadingGoalStore.recordXpDelta(titleCompletionPolicy.bonusXpAwarded)
                emitProgressRecap(
                    type = ReaderProgressRecapType.TITLE_COMPLETE,
                    comicId = pending.comicId,
                    comicTitle = currentComic.title,
                    currentPage = pending.page,
                    totalPages = pending.totalPages,
                    pagesDelta = titleCompletionPolicy.recapPagesDelta,
                    xpAwarded = titleCompletionPolicy.recapXpAwarded,
                    projectedGoalPagesDelta = 0
                )
            }
        } catch (e: Exception) {
            Log.e("ReaderProgressController", "Failed to save progress", e)
        }
    }

    fun isProgressAlreadyPersisted(comicId: String?, page: Int): Boolean =
        isSamePersistedPage(lastPersistedProgress, comicId, page)

    // ── Chapter milestones ─────────────────────────────────────────────────

    fun rememberChapterMilestoneAnchor(
        page: Int = _uiState.value.currentPage,
        currentChapterFor: (Int) -> io.leostrange.mrcomic.engine.api.TocEntry?
    ) {
        val comicId = _uiState.value.comic?.id ?: return
        val chapter = currentChapterFor(page) ?: return
        lastChapterMilestone.set(
            ChapterMilestoneMarker(
                comicId = comicId,
                chapterPage = chapter.pageIndex
            )
        )
    }

    fun maybeEmitChapterMilestone(
        page: Int,
        progressSource: ReaderNavigationProgressSource,
        currentChapterFor: (Int) -> io.leostrange.mrcomic.engine.api.TocEntry?
    ) {
        val comic = _uiState.value.comic ?: return
        val chapter = currentChapterFor(page) ?: return
        val chapterTitle = chapter.title.trim()
        if (chapterTitle.isBlank()) return
        val totalPages = _uiState.value.totalPages
        val projectedPagesDelta = navigationProgressDelta(
            previousPersistedPage = lastPersistedProgress
                ?.takeIf { it.comicId == comic.id }
                ?.page,
            newPage = page,
            countsTowardReadingProgress = progressSource == ReaderNavigationProgressSource.READING
        )
        val marker = ChapterMilestoneMarker(
            comicId = comic.id,
            chapterPage = chapter.pageIndex
        )
        if (progressSource != ReaderNavigationProgressSource.READING) {
            lastChapterMilestone.set(marker)
            return
        }
        val previous = lastChapterMilestone.getAndSet(marker)
        if (previous == marker) return
        readerSessionCoordinator.recordChapterTransition()
        viewModelScope.launch {
            dailyReadingGoalStore.recordCompletedCheckpoint()
            readerCheckpointStore.recordChapterReached(
                comicId = comic.id,
                comicTitle = comic.title,
                chapterTitle = chapterTitle,
                page = page
            )
            analyticsTracker.track(
                ReadingAnalyticsEvent.ChapterReached(
                    comicId = comic.id,
                    page = page,
                    chapterTitle = chapterTitle
                )
            )
            if (shouldEmitChapterProgressRecap(page = page, totalPages = totalPages)) {
                emitProgressRecap(
                    type = ReaderProgressRecapType.CHAPTER,
                    comicId = comic.id,
                    comicTitle = comic.title,
                    chapterTitle = chapterTitle,
                    currentPage = page,
                    totalPages = totalPages,
                    pagesDelta = projectedPagesDelta,
                    xpAwarded = projectedPagesDelta,
                    projectedGoalPagesDelta = projectedPagesDelta
                )
            }
        }
    }

    // ── Progress recap ─────────────────────────────────────────────────────

    suspend fun emitProgressRecap(
        type: ReaderProgressRecapType,
        comicId: String,
        comicTitle: String,
        chapterTitle: String? = null,
        currentPage: Int,
        totalPages: Int,
        pagesDelta: Int,
        xpAwarded: Int,
        projectedGoalPagesDelta: Int
    ) {
        val goalState = dailyReadingGoalStore.goalState
            .first()
            .projectReaderProgressRecap(projectedGoalPagesDelta)
        _readerProgressRecap.emit(
            ReaderProgressRecap(
                type = type,
                comicId = comicId,
                comicTitle = comicTitle,
                chapterTitle = chapterTitle,
                currentPage = currentPage,
                totalPages = totalPages,
                pagesDelta = pagesDelta,
                xpAwarded = xpAwarded,
                goalEnabled = goalState.enabled,
                pagesReadToday = goalState.pagesReadToday,
                targetPages = goalState.targetPages,
                isDailyGoalComplete = goalState.isCompleted,
                pagesReadThisWeek = goalState.pagesReadThisWeek,
                weeklyTargetPages = goalState.weeklyTargetPages,
                isWeeklyPlanComplete = goalState.isWeeklyPlanCompleted,
                streakEnabled = goalState.streakEnabled,
                currentStreak = goalState.currentStreak
            )
        )
    }

    // ── Epub page calculation ──────────────────────────────────────────────

    fun calculateAccuratePage(sectionIndex: Int): Int {
        val state = _uiState.value
        val snapshot = sectionPageCounts.snapshot()
        if (snapshot.isNotEmpty()) {
            return EpubProgressCalculator.absolutePage(
                sectionPageCounts = snapshot,
                sectionIndex = sectionIndex,
                sectionPageIndex = state.sectionCurrentPage,
                totalSections = totalBookSections
            )
        }
        // No paginated data yet — return 0 to avoid storing a raw spine index
        // that would be misinterpreted as a visual page on reopen.
        return 0
    }

    fun accumulatedTotalPagesForEpub(): Int {
        return EpubProgressCalculator.estimatedTotalPages(
            sectionPageCounts = sectionPageCounts.snapshot(),
            totalSections = totalBookSections,
            stableEstimateOverride = sectionPageCounts.stableEstimate()
        )
    }

    // ── Session lifecycle ──────────────────────────────────────────────────

    /**
     * Prepare the reader-close snapshot and return the analytics payload.
     *
     * BUG-READER-03: The actual database flush is **not** done here — it is the caller's
     * responsibility to invoke [flushPendingProgressSave] synchronously *before* tearing down
     * reader resources. This two-phase design (prepare → flush) replaces the former
     * fire-and-forget `appScope.launch { flush }` that could lose the position on a fast
     * process kill after `onCleared`.
     */
    fun emitReaderClosed(): ReaderClosedAnalytics? {
        // Close can happen between scroll callbacks; enqueue one final semantic snapshot and
        // flush immediately so the 220ms debounce cannot lose the position on rapid exit.
        //
        // BUG-READER-03: use forceSavePositionOnClose instead of savePositionSnapshot.
        // The normal snapshot is a no-op when the position JSON matches lastPersistedPositionJson,
        // but during a rapid exit the WebView's scroll position may not have been reported back
        // to _uiState yet (the 120ms free-scroll debounce hasn't fired). By force-enqueuing
        // a position-only save and bypassing the dedup check, we guarantee the reader's last
        // known position is always persisted on close — even if it appears identical to the
        // previously stored value. The extra write is a single UPDATE on a single row and
        // only happens once per reader session close.
        forceSavePositionOnClose()
        progressSaveJob?.cancel()
        // NOTE: flush is NOT done here — caller must flush synchronously.
        val state = _uiState.value
        val currentComic = state.comic
        val closedSession = readerSessionCoordinator.close(
            currentComicId = currentComic?.id,
            currentComicCompleted = currentComic?.isCompleted == true,
            currentPage = state.currentPage
        )
            ?: return null
        val session = closedSession.session
        val sessionMetrics = closedSession.metrics
        val finishedAtMillis = System.currentTimeMillis()
        return ReaderClosedAnalytics(
            session = session,
            sessionMetrics = sessionMetrics,
            readingModeName = state.readingMode.name,
            finishedAtMillis = finishedAtMillis
        )
    }

    /**
     * BUG-READER-03: Record session minutes and track the reader-closed analytics event.
     * Called from [appScope] after the synchronous flush in [ReaderViewModel.onCleared].
     */
    fun trackReaderClosed(analytics: ReaderClosedAnalytics, appScope: io.leostrange.mrcomic.core.domain.coroutines.AppCoroutineScope) {
        if (shouldRecordReaderSessionMinutes(analytics.sessionMetrics)) {
            appScope.launch {
                runCatching {
                    dailyReadingGoalStore.recordSessionMinutes(
                        durationMillis = analytics.finishedAtMillis - analytics.session.startedAtMillis,
                        nowMillis = analytics.finishedAtMillis
                    )
                }.onFailure { error ->
                    Log.e("ReaderProgressController", "Failed to record reading session minutes", error)
                }
            }
        }
        analyticsTracker.track(
            buildReaderClosedAnalyticsEvent(
                comicId = analytics.session.comicId,
                format = analytics.session.format,
                totalPages = analytics.session.totalPages,
                readingMode = analytics.readingModeName,
                startedAtMillis = analytics.session.startedAtMillis,
                finishedAtMillis = analytics.finishedAtMillis,
                sessionMetrics = analytics.sessionMetrics
            )
        )
    }

    /** Data needed to fire the reader-closed analytics event outside the synchronous flush path. */
    internal data class ReaderClosedAnalytics(
        val session: io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionSnapshot,
        val sessionMetrics: io.leostrange.mrcomic.feature.reader.domain.session.ReaderClosedSessionMetrics,
        val readingModeName: String,
        val finishedAtMillis: Long,
    )

    // ── Structured position (TEXT-01) ──────────────────────────────────────

    /**
     * Builds the structured [ReaderPosition] JSON for the current UI state.
     * Text formats split engine section / visual sub-page / character offset; raster formats
     * map the page onto both section and visual index. Returns null when the record cannot be
     * represented meaningfully (e.g. before page-count resolution), so legacy fields are kept.
     */
    private fun buildPositionJson(
        state: ReaderUiState,
        format: ComicFormat,
        page: Int,
    ): String? {
        val mode = state.readingMode
        val isText = format.isTextReadingFormat()
        val webtoonFraction = if (mode == ReadingMode.WEBTOON) {
            state.freeScrollProgression.takeIf { it in 0.0..1.0 }?.toFloat()
        } else {
            null
        }
        val position = ReaderPosition(
            engineSectionIndex = if (isText) state.currentPage.coerceAtLeast(0) else page.coerceAtLeast(0),
            visualPageIndex = if (isText) state.sectionCurrentPage.coerceAtLeast(0) else page.coerceAtLeast(0),
            characterOffset = if (mode == ReadingMode.WEBTOON) {
                state.freeScrollCharacterOffset.takeIf { it >= 0 }
                    ?: state.sectionCharacterOffset.takeIf { it > 0 }
            } else {
                state.sectionCharacterOffset.takeIf { it > 0 }
            },
            domAnchor = state.pendingScrollToAnchor,
            mode = mode,
            webtoonScrollFraction = webtoonFraction,
            updatedAtMillis = System.currentTimeMillis(),
            schemaVersion = ReaderPosition.SCHEMA_VERSION
        )
        return ReaderPositionCodec.encode(position)
    }

    // ── Internal helpers ───────────────────────────────────────────────────

    private companion object {
        /** Interval between periodic position snapshots (BUG-READER-03). */
        const val PERIODIC_SAVE_INTERVAL_MS = 5_000L
    }
}
