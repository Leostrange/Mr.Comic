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
import io.leostrange.mrcomic.core.domain.analytics.ReaderCheckpointStore
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.isHeavyReflowableFormat
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderProgressRecapType
import io.leostrange.mrcomic.feature.reader.domain.progress.EpubSectionPageCountStore
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderClosedSessionMetrics
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
    private val readerCheckpointStore: ReaderCheckpointStore,
    private val analyticsTracker: ReadingAnalyticsTracker,
    private val readerSessionCoordinator: ReaderSessionCoordinator,
    private val _readerProgressRecap: MutableSharedFlow<ReaderProgressRecap>,
) {

    internal var pendingProgressSave: PendingProgressSave? = null
    internal var progressSaveJob: Job? = null
    internal var lastPersistedProgress: PersistedProgressMarker? = null
    internal val lastChapterMilestone = AtomicReference<ChapterMilestoneMarker?>()

    // ── Progress persistence ───────────────────────────────────────────────

    fun saveProgress(
        page: Int,
        progressSource: ReaderNavigationProgressSource,
        epubAccumulatedPages: Int,
        sectionPageCountsSnapshot: Map<Int, Int>,
        totalBookSections: Int,
        calculateAccuratePage: (Int) -> Int,
    ) {
        val comic = _uiState.value.comic ?: return
        val totalPages = if (epubAccumulatedPages > 0) epubAccumulatedPages else _uiState.value.totalPages
        if (!ReaderProgressPolicy.shouldPersist(
                totalPages = totalPages,
                isHeavyReflowable = comic.format.isHeavyReflowableFormat(),
                isEpub = comic.format == ComicFormat.EPUB,
                epubAccumulatedPages = epubAccumulatedPages,
                paginatedSectionCount = sectionPageCountsSnapshot.size
            )
        ) return
        val accuratePage = ReaderProgressPolicy.pageForPersistence(
            format = comic.format,
            readerPage = page,
            epubAbsolutePage = calculateAccuratePage(page)
        )
        val pending = PendingProgressSave(
            comicId = comic.id,
            page = accuratePage,
            totalPages = totalPages,
            countsTowardReadingProgress = progressSource == ReaderNavigationProgressSource.READING
        )
        if (pending == pendingProgressSave || isProgressAlreadyPersisted(comic.id, accuratePage)) return
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
            val storedPageCount = libraryRepository.getComicById(pending.comicId)?.pageCount ?: 0
            val safeTotalPages = maxOf(pending.totalPages, storedPageCount).coerceAtLeast(1)
            libraryRepository.updateProgress(
                comicId = pending.comicId,
                currentPage = pending.page,
                totalPages = safeTotalPages
            )
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
            lastPersistedProgress = PersistedProgressMarker(
                comicId = pending.comicId,
                page = pending.page
            )
            val currentComic = _uiState.value.comic ?: return
            val authoritativeTotal = maxOf(pending.totalPages, storedPageCount)
            val reachedLastPageSafe = authoritativeTotal > 0 && pending.page >= authoritativeTotal - 1
            val titleCompletionPolicy = resolveTitleCompletionPolicy(
                reachedLastPage = reachedLastPageSafe,
                currentComicIdMatches = currentComic.id == pending.comicId,
                alreadyCompleted = currentComic.isCompleted,
                countsTowardReadingProgress = pending.countsTowardReadingProgress,
                sessionManualPageTurns = readerSessionCoordinator.currentManualPageTurns,
                goalProgressDelta = goalProgressDelta
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
        comicId != null && lastPersistedProgress == PersistedProgressMarker(comicId = comicId, page = page)

    // ── Chapter milestones ─────────────────────────────────────────────────

    fun rememberChapterMilestoneAnchor(
        page: Int = _uiState.value.currentPage,
        currentChapterFor: (Int) -> io.leostrange.mrcomic.engine.formats.base.TocEntry?
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
        currentChapterFor: (Int) -> io.leostrange.mrcomic.engine.formats.base.TocEntry?
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

    fun calculateAccuratePage(
        sectionIndex: Int,
        sectionPageCounts: EpubSectionPageCountStore,
        totalBookSections: Int
    ): Int {
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

    fun accumulatedTotalPagesForEpub(
        sectionPageCounts: EpubSectionPageCountStore,
        totalBookSections: Int
    ): Int {
        return EpubProgressCalculator.estimatedTotalPages(
            sectionPageCounts = sectionPageCounts.snapshot(),
            totalSections = totalBookSections
        )
    }

    // ── Session lifecycle ──────────────────────────────────────────────────

    fun emitReaderClosed(appScope: io.leostrange.mrcomic.core.domain.coroutines.AppCoroutineScope) {
        val state = _uiState.value
        val currentComic = state.comic
        val closedSession = readerSessionCoordinator.close(
            currentComicId = currentComic?.id,
            currentComicCompleted = currentComic?.isCompleted == true,
            currentPage = state.currentPage
        )
            ?: return
        val session = closedSession.session
        val sessionMetrics = closedSession.metrics
        val finishedAtMillis = System.currentTimeMillis()
        if (shouldRecordReaderSessionMinutes(sessionMetrics)) {
            appScope.launch {
                runCatching {
                    dailyReadingGoalStore.recordSessionMinutes(
                        durationMillis = finishedAtMillis - session.startedAtMillis,
                        nowMillis = finishedAtMillis
                    )
                }.onFailure { error ->
                    Log.e("ReaderProgressController", "Failed to record reading session minutes", error)
                }
            }
        }
        analyticsTracker.track(
            buildReaderClosedAnalyticsEvent(
                comicId = session.comicId,
                format = session.format,
                totalPages = session.totalPages,
                readingMode = state.readingMode.name,
                startedAtMillis = session.startedAtMillis,
                finishedAtMillis = finishedAtMillis,
                sessionMetrics = sessionMetrics
            )
        )
    }

    // ── Internal helpers ───────────────────────────────────────────────────
}
