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
import io.leostrange.mrcomic.core.model.Comic
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
import io.leostrange.mrcomic.feature.reader.domain.progress.ReaderBookProgress
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderProgressRecap
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionCoordinator
import io.leostrange.mrcomic.feature.reader.domain.session.buildReaderClosedAnalyticsEvent
import io.leostrange.mrcomic.feature.reader.domain.session.shouldRecordReaderSessionMinutes
import kotlinx.coroutines.CancellationException
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
    /** Mode a book owns; DUAL_PAGE is a transient landscape layout and is never persisted. */
    private val baseReadingMode: () -> ReadingMode = { ReadingMode.PAGE_LTR },
    private val sectionWeightsLoader: suspend (Comic, Int) -> List<Int>? = { _, _ -> null },
) {

    internal var pendingProgressSave: PendingProgressSave? = null
    internal var progressSaveJob: Job? = null
    internal var lastPersistedProgress: PersistedProgressMarker? = null
    internal var lastPersistedPositionJson: String? = null
    internal val lastChapterMilestone = AtomicReference<ChapterMilestoneMarker?>()

    /** Measured visual page counts per EPUB spine section. */
    internal val sectionPageCounts = EpubSectionPageCountStore()

    /** Total number of sections (spine items) in the book. Set once when the book opens. */
    internal var totalBookSections: Int = 0

    /**
     * False from open until the saved position is restored, and while a text WebView load or
     * restore is in flight. Nothing is persisted meanwhile, so a provisional cursor (cover,
     * section start, top of a reloading document) can never overwrite the saved position.
     */
    internal var positionSettled: Boolean = false
        private set

    private var sectionWeights: List<Int>? = null
    private var sectionWeightsResolved = false
    private var sectionWeightsJob: Job? = null

    /** Last settled progress counted for reading goals; null until this open's first settled save. */
    private var goalCursor: Float? = null
    private var goalPageCarry = 0.0
    /**
     * Source of a move whose progress is not known yet (a section loading, an in-place seek);
     * the next resolved save inherits it, so a reading turn into a new section still counts.
     */
    private var pendingGoalSource: ReaderNavigationProgressSource? = null

    /** Returns a stable, section-ordered snapshot for EPUB progress accumulation. */
    internal fun snapshotSectionPageCounts(): Map<Int, Int> = sectionPageCounts.snapshot()

    // ── Position lifecycle ─────────────────────────────────────────────────

    fun resetForOpen() {
        positionSettled = false
        sectionWeights = null
        sectionWeightsResolved = false
        sectionWeightsJob?.cancel()
        sectionWeightsJob = null
        goalCursor = null
        goalPageCarry = 0.0
        pendingGoalSource = null
    }

    /** Raster readers restore synchronously; their position is settled once the count is known. */
    fun markPositionSettled() {
        positionSettled = true
        goalCursor = refreshBookProgress()
    }

    fun onTextRuntimeSettledChanged(settled: Boolean) {
        positionSettled = settled
        if (settled && !_uiState.value.isLoading) {
            saveProgress(_uiState.value.currentPage, ReaderNavigationProgressSource.JUMP)
        }
    }

    /** An in-place seek (slider, TOC, quote) is a jump: its resulting position earns no goal pages. */
    fun markGoalJump() {
        pendingGoalSource = ReaderNavigationProgressSource.JUMP
    }

    fun loadSectionWeights(comic: Comic, sectionCount: Int) {
        sectionWeightsJob?.cancel()
        sectionWeightsJob = viewModelScope.launch {
            val weights = try {
                sectionWeightsLoader(comic, sectionCount)
            } catch (e: CancellationException) {
                throw e
            } catch (e: Exception) {
                Log.w("ReaderProgressController", "Section weights unavailable", e)
                null
            }
            if (_uiState.value.comic?.id != comic.id) return@launch
            sectionWeights = weights
            sectionWeightsResolved = true
            saveProgress(_uiState.value.currentPage, ReaderNavigationProgressSource.JUMP)
        }
    }

    /**
     * Recomputes [ReaderUiState.bookProgress] from the current canonical position and returns it.
     * While the position is unresolved (a section still loading) the last value stays shown.
     */
    fun refreshBookProgress(): Float? {
        val progress = computeBookProgress(_uiState.value) ?: return null
        if (_uiState.value.bookProgress != progress) {
            _uiState.update { it.copy(bookProgress = progress) }
        }
        return progress
    }

    /** Progress fraction for a seek inside the book: (section, character offset). */
    fun locateProgress(progress: Float): Pair<Int, Int> {
        val state = _uiState.value
        val target = ReaderBookProgress.locate(progress, state.totalPages, sectionWeights)
        val weight = sectionWeights?.getOrNull(target.sectionIndex) ?: 0
        return target.sectionIndex to (weight * target.sectionFraction).toInt()
    }

    private fun computeBookProgress(state: ReaderUiState): Float? {
        if (state.comic == null || state.isLoading || state.totalPages <= 0) return null
        if (!state.readerRendersHtmlContent) {
            return ReaderBookProgress.raster(state.currentPage, state.totalPages)
                .takeIf { state.totalPages > 1 }
        }
        // Weights load only after the authoritative section count is known.
        if (!sectionWeightsResolved || !state.pagedHtmlMatchesSection()) return null
        val sections = state.totalPages
        val section = state.currentPage.coerceIn(0, sections - 1)
        return if (state.readerContainerKind == ReaderContainerKind.TEXT_WEBTOON) {
            val weight = sectionWeights?.getOrNull(section) ?: 0
            val offset = state.freeScrollCharacterOffset
            ReaderBookProgress.text(
                sectionIndex = section,
                sectionFraction = if (offset >= 0 && weight > 0) offset.toDouble() / weight else 0.0,
                sectionCount = sections,
                sectionWeights = sectionWeights,
                // The stitched document may still be a preview of the first sections.
                atEnd = section == sections - 1 && state.freeScrollProgression >= WEBTOON_END_PROGRESSION
            )
        } else {
            val pages = state.sectionPageCount
            ReaderBookProgress.text(
                sectionIndex = section,
                sectionFraction = if (pages > 0) state.sectionCurrentPage.toDouble() / pages else 0.0,
                sectionCount = sections,
                sectionWeights = sectionWeights,
                atEnd = section == sections - 1 && pages > 0 && state.sectionCurrentPage >= pages - 1
            )
        }
    }

    // ── Progress persistence ───────────────────────────────────────────────

    fun saveProgress(
        page: Int,
        progressSource: ReaderNavigationProgressSource,
    ) {
        val comic = _uiState.value.comic ?: return
        if (!positionSettled) return
        val progress = refreshBookProgress()
        val state = _uiState.value
        val positionJson = buildPositionJson(state, comic.format, page)
        if (state.readerRendersHtmlContent) {
            saveTextProgress(state, comic, progress, progressSource, positionJson)
            return
        }
        val totalPages = state.totalPages
        if (!ReaderProgressPolicy.shouldPersist(totalPages, comic.format.isHeavyReflowableFormat())) {
            positionJson?.let { enqueue(positionOnlySave(comic, page, it)) }
            return
        }
        enqueue(
            PendingProgressSave(
                comicId = comic.id,
                page = page,
                totalPages = totalPages,
                countsTowardReadingProgress = progressSource == ReaderNavigationProgressSource.READING,
                positionJson = positionJson,
                goalPagesDelta = accrueGoalPages(
                    progress = ReaderBookProgress.raster(page, totalPages),
                    bookPages = (totalPages - 1).toDouble(),
                    source = progressSource
                )
            )
        )
    }

    private fun saveTextProgress(
        state: ReaderUiState,
        comic: Comic,
        progress: Float?,
        progressSource: ReaderNavigationProgressSource,
        positionJson: String?
    ) {
        if (progress == null) {
            pendingGoalSource = progressSource
            positionJson?.let { enqueue(positionOnlySave(comic, state.currentPage, it)) }
            return
        }
        val goalSource = pendingGoalSource ?: progressSource
        pendingGoalSource = null
        enqueue(
            PendingProgressSave(
                comicId = comic.id,
                page = state.currentPage.coerceAtLeast(0),
                totalPages = state.totalPages.coerceAtLeast(1),
                countsTowardReadingProgress = progressSource == ReaderNavigationProgressSource.READING,
                characterOffset = state.textCursorOffset(),
                positionJson = positionJson,
                progress = progress,
                goalPagesDelta = accrueGoalPages(progress, textBookPages(state.totalPages), goalSource)
            )
        )
    }

    /**
     * Reading-goal pages earned by moving to [progress] in a book [bookPages] long. Only reading
     * advances earn pages; jumps (TOC, slider, quotes, restores) just move the cursor.
     */
    private fun accrueGoalPages(progress: Float, bookPages: Double, source: ReaderNavigationProgressSource): Int {
        val previous = goalCursor
        goalCursor = progress
        if (previous == null || source != ReaderNavigationProgressSource.READING) return 0
        goalPageCarry += ((progress - previous) * bookPages).coerceIn(0.0, MAX_GOAL_PAGES_PER_STEP)
        val pages = (goalPageCarry + GOAL_PAGE_EPSILON).toInt()
        goalPageCarry = (goalPageCarry - pages).coerceAtLeast(0.0)
        return pages
    }

    /**
     * Text length in reading-goal pages: text per turned screen page as measured by the paged
     * layout, else a standard page of [STANDARD_PAGE_CHARS] characters. One-page sections (title
     * pages, illustrations) say little about how much text a page holds, so they are skipped.
     */
    private fun textBookPages(sectionCount: Int): Double {
        val charWeights = sectionWeights?.takeIf { weights -> weights.size == sectionCount && weights.any { it > 0 } }
        val weights = charWeights ?: List(sectionCount) { 1 }
        val measured = sectionPageCounts.snapshot().filter { (section, pages) -> section in weights.indices && pages > 1 }
        val measuredUnits = measured.keys.sumOf { weights[it].toLong() }
        val measuredPages = measured.values.sum()
        val unitsPerPage = when {
            measuredUnits <= 0 || measuredPages <= 0 -> if (charWeights != null) STANDARD_PAGE_CHARS else 1.0
            charWeights != null -> (measuredUnits.toDouble() / measuredPages).coerceAtLeast(MIN_SCREEN_PAGE_CHARS)
            else -> measuredUnits.toDouble() / measuredPages
        }
        return weights.sumOf { it.toLong() } / unitsPerPage
    }

    /** Persists the latest settled position immediately (app backgrounded or reader closing). */
    fun flushNow(appScope: CoroutineScope) {
        if (_uiState.value.comic != null) {
            saveProgress(_uiState.value.currentPage, ReaderNavigationProgressSource.JUMP)
        }
        progressSaveJob?.cancel()
        if (pendingProgressSave == null) return
        appScope.launch { flushPendingProgressSave() }
    }

    private fun positionOnlySave(comic: Comic, page: Int, positionJson: String) = PendingProgressSave(
        comicId = comic.id,
        page = page.coerceAtLeast(0),
        totalPages = _uiState.value.totalPages.coerceAtLeast(1),
        countsTowardReadingProgress = false,
        characterOffset = _uiState.value.textCursorOffset(),
        positionJson = positionJson,
        positionOnly = true
    )

    /**
     * One debounced slot. A position-only save (progress still unknown) only refreshes the
     * cursor of a pending progress save; a superseded save keeps its goal pages and reading flag.
     */
    private fun enqueue(next: PendingProgressSave) {
        val pending = pendingProgressSave
        val merged = when {
            pending == null || pending.comicId != next.comicId -> next
            next.positionOnly && !pending.positionOnly -> pending.copy(
                positionJson = next.positionJson ?: pending.positionJson
            )
            else -> next.copy(
                countsTowardReadingProgress = next.countsTowardReadingProgress ||
                    (!pending.positionOnly && pending.countsTowardReadingProgress),
                goalPagesDelta = pending.goalPagesDelta + next.goalPagesDelta
            )
        }
        if (merged == pending) return
        if (pending == null && isAlreadyPersisted(merged)) return
        pendingProgressSave = merged
        progressSaveJob?.cancel()
        progressSaveJob = viewModelScope.launch {
            delay(PROGRESS_SAVE_DEBOUNCE_MS)
            flushPendingProgressSave()
        }
    }

    private fun isAlreadyPersisted(save: PendingProgressSave): Boolean {
        val samePosition = isSamePersistedPosition(lastPersistedPositionJson, save.positionJson)
        if (save.positionOnly) return samePosition
        val marker = lastPersistedProgress ?: return false
        return samePosition && marker.comicId == save.comicId && marker.page == save.page &&
            marker.progress == save.progress
    }

    suspend fun flushPendingProgressSave() {
        val pending = pendingProgressSave ?: return
        pendingProgressSave = null
        try {
            val storedPageCount = libraryRepository.getComicById(pending.comicId)?.pageCount ?: 0
            val safeTotalPages = maxOf(pending.totalPages, storedPageCount).coerceAtLeast(1)
            if (!pending.positionOnly) {
                if (pending.progress != null) {
                    libraryRepository.updateTextProgress(
                        comicId = pending.comicId,
                        sectionIndex = pending.page,
                        sectionCount = pending.totalPages,
                        progress = pending.progress,
                        characterOffset = pending.characterOffset
                    )
                } else {
                    libraryRepository.updateProgress(
                        comicId = pending.comicId,
                        currentPage = pending.page,
                        totalPages = safeTotalPages,
                        characterOffset = pending.characterOffset
                    )
                }
            }
            // TEXT-01: persist the structured position alongside the legacy fields. Null keeps
            // the stored record untouched (legacy-only) — never overwrite with a coarse fallback.
            pending.positionJson?.let { positionJson ->
                libraryRepository.updateReaderPosition(pending.comicId, positionJson)
            }
            lastPersistedPositionJson = pending.positionJson
            if (pending.positionOnly) return
            val goalStateBeforeProgress = dailyReadingGoalStore.goalState.first()
            val goalProgressDelta = pending.goalPagesDelta
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
            val authoritativeTotal = maxOf(pending.totalPages, storedPageCount)
            // Text completes only when the canonical progress reaches the actual end.
            val reachedLastPageSafe = pending.progress?.let { it >= 1f }
                ?: (authoritativeTotal > 0 && pending.page >= authoritativeTotal - 1)
            val isHeavy = pending.progress == null &&
                (currentComic.format.isHeavyReflowableFormat() || currentComic.format.isTextReadingFormat())
            val titleCompletionPolicy = resolveTitleCompletionPolicy(
                reachedLastPage = reachedLastPageSafe,
                currentComicIdMatches = currentComic.id == pending.comicId,
                alreadyCompleted = currentComic.isCompleted,
                countsTowardReadingProgress = pending.countsTowardReadingProgress,
                sessionManualPageTurns = readerSessionCoordinator.currentManualPageTurns,
                goalProgressDelta = goalProgressDelta,
                isHeavyReflowable = isHeavy,
                totalPages = authoritativeTotal
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

    // ── Session lifecycle ──────────────────────────────────────────────────

    fun emitReaderClosed(appScope: io.leostrange.mrcomic.core.domain.coroutines.AppCoroutineScope) {
        // Close can happen between scroll callbacks; enqueue one final settled save before the
        // ViewModel cancels its local debounce job. Unsettled positions are never written.
        saveProgress(_uiState.value.currentPage, ReaderNavigationProgressSource.JUMP)
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
        val mode = state.readingMode.takeUnless { it == ReadingMode.DUAL_PAGE } ?: baseReadingMode()
        val isText = state.readerRendersHtmlContent || format.isTextReadingFormat()
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
            // A pending TOC anchor is a one-shot command; the settled character offset is the cursor.
            domAnchor = null,
            mode = mode,
            webtoonScrollFraction = webtoonFraction,
            updatedAtMillis = System.currentTimeMillis(),
            schemaVersion = ReaderPosition.SCHEMA_VERSION
        )
        return ReaderPositionCodec.encode(position)
    }

    private companion object {
        const val PROGRESS_SAVE_DEBOUNCE_MS = 220L
        const val WEBTOON_END_PROGRESSION = 0.995
        /** Characters in a standard printed page. */
        const val STANDARD_PAGE_CHARS = 1800.0
        /** Sanity floor: a screen page of text never holds fewer characters. */
        const val MIN_SCREEN_PAGE_CHARS = 200.0
        /** Sanity bound for one save; reading never advances further between two saves. */
        const val MAX_GOAL_PAGES_PER_STEP = 10.0
        const val GOAL_PAGE_EPSILON = 1e-3
    }
}
