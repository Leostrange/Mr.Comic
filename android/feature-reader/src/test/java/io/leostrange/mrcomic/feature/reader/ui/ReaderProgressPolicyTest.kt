package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionCoordinator
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionSnapshot
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderClosedSessionMetrics
import io.leostrange.mrcomic.feature.reader.domain.session.buildReaderClosedAnalyticsEvent
import io.leostrange.mrcomic.feature.reader.domain.session.shouldRecordReaderSessionMinutes
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderProgressPolicyTest {

    @Test
    fun pageForPersistence_usesEpubVisualPageOnlyForEpub() {
        assertEquals(
            37,
            ReaderProgressPolicy.pageForPersistence(
                format = ComicFormat.EPUB,
                readerPage = 2,
                epubAbsolutePage = 37
            )
        )
        assertEquals(
            12,
            ReaderProgressPolicy.pageForPersistence(
                format = ComicFormat.CBZ,
                readerPage = 12,
                epubAbsolutePage = 0
            )
        )
        assertEquals(
            8,
            ReaderProgressPolicy.pageForPersistence(
                format = ComicFormat.TXT,
                readerPage = 8,
                epubAbsolutePage = 0
            )
        )
    }

    private fun resolveReaderClosedPayloadForScenario(
        countsTowardReadingProgress: Boolean,
        sessionManualPageTurns: Int,
        chapterTransitions: Int,
        currentPage: Int,
        startPage: Int,
        goalProgressDelta: Int,
        reachedLastPage: Boolean = true
    ): ReaderClosedSessionMetrics {
        val titlePolicy = resolveTitleCompletionPolicy(
            reachedLastPage = reachedLastPage,
            currentComicIdMatches = true,
            alreadyCompleted = false,
            countsTowardReadingProgress = countsTowardReadingProgress,
            sessionManualPageTurns = sessionManualPageTurns,
            goalProgressDelta = goalProgressDelta
        )
        val coordinator = ReaderSessionCoordinator().apply {
            start(ReaderSessionSnapshot(
                comicId = "comic-1",
                format = "EPUB",
                totalPages = 100,
                startPage = startPage,
                readingMode = "PAGE_LTR",
                startedAtMillis = 0L,
                resumedFromProgress = false
            ))
            repeat(sessionManualPageTurns) { recordManualPageTurn() }
            repeat(chapterTransitions) { recordChapterTransition() }
        }
        return coordinator.close(
            currentComicId = "comic-1",
            currentComicCompleted = titlePolicy.shouldComplete,
            currentPage = currentPage
        )!!.metrics
    }

    @Test
    fun positiveProgressDelta_returnsOnlyForwardProgress() {
        assertEquals(0, positiveProgressDelta(previousPersistedPage = null, newPage = 6))
        assertEquals(0, positiveProgressDelta(previousPersistedPage = 6, newPage = 6))
        assertEquals(0, positiveProgressDelta(previousPersistedPage = 8, newPage = 3))
        assertEquals(5, positiveProgressDelta(previousPersistedPage = 3, newPage = 8))
    }

    @Test
    fun projectReaderProgressRecap_projectsDailyAndWeeklyPages() {
        val projected = DailyReadingGoalState(
            enabled = true,
            targetPages = 20,
            pagesReadToday = 12,
            pagesReadThisWeek = 54,
            weeklyTargetPages = 140
        ).projectReaderProgressRecap(additionalPages = 5)

        assertEquals(17, projected.pagesReadToday)
        assertEquals(59, projected.pagesReadThisWeek)
        assertFalse(projected.isCompleted)
        assertFalse(projected.isWeeklyPlanCompleted)
    }

    @Test
    fun projectReaderProgressRecap_marksCompletionWhenProjectedPagesCrossGoal() {
        val projected = DailyReadingGoalState(
            enabled = true,
            targetPages = 20,
            pagesReadToday = 18,
            pagesReadThisWeek = 138,
            weeklyTargetPages = 140
        ).projectReaderProgressRecap(additionalPages = 4)

        assertEquals(22, projected.pagesReadToday)
        assertEquals(142, projected.pagesReadThisWeek)
        assertTrue(projected.isCompleted)
        assertTrue(projected.isWeeklyPlanCompleted)
    }

    @Test
    fun resolveGoalCompletedAnalyticsEvent_reportsDailyAndWeeklyCompletionEdges() {
        val event = resolveGoalCompletedAnalyticsEvent(
            comicId = "comic-1",
            previousState = DailyReadingGoalState(
                enabled = true,
                targetPages = 20,
                pagesReadToday = 18,
                pagesReadThisWeek = 138,
                weeklyTargetPages = 140,
                completedDaysThisWeek = 4,
                currentStreak = 2
            ),
            currentState = DailyReadingGoalState(
                enabled = true,
                targetPages = 20,
                pagesReadToday = 22,
                pagesReadThisWeek = 142,
                weeklyTargetPages = 140,
                completedDaysThisWeek = 5,
                currentStreak = 3
            )
        )

        assertNotNull(event)
        event as ReadingAnalyticsEvent.GoalCompleted
        assertTrue(event.dailyCompleted)
        assertTrue(event.weeklyCompleted)
        assertEquals(22, event.pagesReadToday)
        assertEquals(142, event.pagesReadThisWeek)
        assertEquals(3, event.currentStreak)
    }

    @Test
    fun resolveGoalCompletedAnalyticsEvent_ignoresAlreadyCompletedState() {
        val event = resolveGoalCompletedAnalyticsEvent(
            comicId = "comic-2",
            previousState = DailyReadingGoalState(
                enabled = true,
                targetPages = 20,
                pagesReadToday = 24,
                pagesReadThisWeek = 160,
                weeklyTargetPages = 140
            ),
            currentState = DailyReadingGoalState(
                enabled = true,
                targetPages = 20,
                pagesReadToday = 28,
                pagesReadThisWeek = 168,
                weeklyTargetPages = 140
            )
        )

        assertNull(event)
    }

    @Test
    fun shouldEmitChapterProgressRecap_skipsFinalPageFlash() {
        assertTrue(shouldEmitChapterProgressRecap(page = 8, totalPages = 10))
        assertFalse(shouldEmitChapterProgressRecap(page = 9, totalPages = 10))
    }

    @Test
    fun navigationProgressDelta_ignoresJumpNavigation() {
        assertEquals(
            0,
            navigationProgressDelta(
                previousPersistedPage = 10,
                newPage = 45,
                countsTowardReadingProgress = false
            )
        )
        assertEquals(
            3,
            navigationProgressDelta(
                previousPersistedPage = 10,
                newPage = 13,
                countsTowardReadingProgress = true
            )
        )
    }

    @Test
    fun countsAsManualPageTurn_tracksOnlyReadingNavigation() {
        assertTrue(countsAsManualPageTurn(ReaderNavigationProgressSource.READING))
        assertFalse(countsAsManualPageTurn(ReaderNavigationProgressSource.JUMP))
    }

    @Test
    fun shouldAutoCompleteTitle_rejectsPureLastPageJump() {
        assertFalse(
            shouldAutoCompleteTitle(
                reachedLastPage = true,
                currentComicIdMatches = true,
                alreadyCompleted = false,
                countsTowardReadingProgress = false,
                sessionManualPageTurns = 0
            )
        )
    }

    @Test
    fun shouldAutoCompleteTitle_allowsReadingFinishOrPriorReadingSession() {
        assertTrue(
            shouldAutoCompleteTitle(
                reachedLastPage = true,
                currentComicIdMatches = true,
                alreadyCompleted = false,
                countsTowardReadingProgress = true,
                sessionManualPageTurns = 1
            )
        )
        assertTrue(
            shouldAutoCompleteTitle(
                reachedLastPage = true,
                currentComicIdMatches = true,
                alreadyCompleted = false,
                countsTowardReadingProgress = false,
                sessionManualPageTurns = 3
            )
        )
    }

    @Test
    fun resolveTitleCompletionPolicy_buildsReadingFinishPayload() {
        val policy = resolveTitleCompletionPolicy(
            reachedLastPage = true,
            currentComicIdMatches = true,
            alreadyCompleted = false,
            countsTowardReadingProgress = true,
            sessionManualPageTurns = 1,
            goalProgressDelta = 4
        )

        assertTrue(policy.shouldComplete)
        assertEquals(4, policy.recapPagesDelta)
        assertEquals(64, policy.recapXpAwarded)
        assertEquals(60, policy.bonusXpAwarded)
    }

    @Test
    fun resolveTitleCompletionPolicy_allowsJumpAfterPriorReadingWithoutSkippedPageXp() {
        val policy = resolveTitleCompletionPolicy(
            reachedLastPage = true,
            currentComicIdMatches = true,
            alreadyCompleted = false,
            countsTowardReadingProgress = false,
            sessionManualPageTurns = 3,
            goalProgressDelta = 0
        )

        assertTrue(policy.shouldComplete)
        assertEquals(0, policy.recapPagesDelta)
        assertEquals(60, policy.recapXpAwarded)
        assertEquals(60, policy.bonusXpAwarded)
    }

    @Test
    fun resolveTitleCompletionPolicy_rejectsPureJumpAndAlreadyCompletedCases() {
        val pureJump = resolveTitleCompletionPolicy(
            reachedLastPage = true,
            currentComicIdMatches = true,
            alreadyCompleted = false,
            countsTowardReadingProgress = false,
            sessionManualPageTurns = 0,
            goalProgressDelta = 0
        )
        val alreadyCompleted = resolveTitleCompletionPolicy(
            reachedLastPage = true,
            currentComicIdMatches = true,
            alreadyCompleted = true,
            countsTowardReadingProgress = true,
            sessionManualPageTurns = 2,
            goalProgressDelta = 5
        )

        assertFalse(pureJump.shouldComplete)
        assertEquals(0, pureJump.recapPagesDelta)
        assertEquals(0, pureJump.recapXpAwarded)
        assertEquals(0, pureJump.bonusXpAwarded)

        assertFalse(alreadyCompleted.shouldComplete)
        assertEquals(0, alreadyCompleted.recapPagesDelta)
        assertEquals(0, alreadyCompleted.recapXpAwarded)
        assertEquals(0, alreadyCompleted.bonusXpAwarded)
    }

    @Test
    fun readerSessionCoordinator_keepsCurrentPageAndCompletionForActiveComic() {
        val metrics = closeSession(
            sessionComicId = "comic-1",
            currentComicId = "comic-1",
            currentComicCompleted = true,
            currentPage = 24,
            startPage = 10,
            manualPageTurns = 7,
            chapterTransitions = 2
        )

        assertEquals(24, metrics.endPage)
        assertTrue(metrics.completed)
        assertEquals(7, metrics.manualPageTurns)
        assertEquals(2, metrics.chapterTransitions)
    }

    @Test
    fun readerSessionCoordinator_fallsBackWhenSessionComicIsGone() {
        val metrics = closeSession(
            sessionComicId = "comic-1",
            currentComicId = null,
            currentComicCompleted = false,
            currentPage = 3,
            startPage = 8,
            manualPageTurns = 0,
            chapterTransitions = 0
        )

        assertEquals(8, metrics.endPage)
        assertFalse(metrics.completed)
        assertEquals(0, metrics.manualPageTurns)
        assertEquals(0, metrics.chapterTransitions)
    }

    private fun closeSession(
        sessionComicId: String,
        currentComicId: String?,
        currentComicCompleted: Boolean,
        currentPage: Int,
        startPage: Int,
        manualPageTurns: Int,
        chapterTransitions: Int
    ): ReaderClosedSessionMetrics {
        val coordinator = ReaderSessionCoordinator().apply {
            start(ReaderSessionSnapshot(
                comicId = sessionComicId,
                format = "EPUB",
                totalPages = 100,
                startPage = startPage,
                readingMode = "PAGE_LTR",
                startedAtMillis = 0L,
                resumedFromProgress = false
            ))
            repeat(manualPageTurns) { recordManualPageTurn() }
            repeat(chapterTransitions) { recordChapterTransition() }
        }
        return coordinator.close(currentComicId, currentComicCompleted, currentPage)!!.metrics
    }

    @Test
    fun readerClosedPayload_keepsReadingSignalsForReadingFinish() {
        val metrics = resolveReaderClosedPayloadForScenario(
            countsTowardReadingProgress = true,
            sessionManualPageTurns = 6,
            chapterTransitions = 2,
            currentPage = 39,
            startPage = 31,
            goalProgressDelta = 4
        )

        assertEquals(39, metrics.endPage)
        assertTrue(metrics.completed)
        assertEquals(6, metrics.manualPageTurns)
        assertEquals(2, metrics.chapterTransitions)
    }

    @Test
    fun readerClosedPayload_zeroesProgressSignalsForPureJumpButKeepsViewedEndPage() {
        val metrics = resolveReaderClosedPayloadForScenario(
            countsTowardReadingProgress = false,
            sessionManualPageTurns = 0,
            chapterTransitions = 0,
            currentPage = 39,
            startPage = 12,
            goalProgressDelta = 0
        )

        assertEquals(39, metrics.endPage)
        assertFalse(metrics.completed)
        assertEquals(0, metrics.manualPageTurns)
        assertEquals(0, metrics.chapterTransitions)
    }

    @Test
    fun buildReaderClosedAnalyticsEvent_mapsAllSessionMetricsToPayload() {
        val event = buildReaderClosedAnalyticsEvent(
            comicId = "comic-1",
            format = "CBZ",
            totalPages = 120,
            readingMode = "PAGE_LTR",
            startedAtMillis = 1_000L,
            finishedAtMillis = 8_500L,
            sessionMetrics = ReaderClosedSessionMetrics(
                endPage = 42,
                completed = true,
                manualPageTurns = 9,
                chapterTransitions = 3
            )
        )

        assertEquals("comic-1", event.comicId)
        assertEquals("CBZ", event.format)
        assertEquals(120, event.totalPages)
        assertEquals(42, event.endPage)
        assertEquals("PAGE_LTR", event.readingMode)
        assertEquals(1_000L, event.startedAtMillis)
        assertEquals(7_500L, event.durationMs)
        assertTrue(event.completed)
        assertEquals(9, event.manualPageTurns)
        assertEquals(3, event.chapterTransitions)
    }

    @Test
    fun buildReaderClosedAnalyticsEvent_clampsNegativeDurationToZero() {
        val event = buildReaderClosedAnalyticsEvent(
            comicId = "comic-2",
            format = "EPUB",
            totalPages = 10,
            readingMode = "TEXT",
            startedAtMillis = 5_000L,
            finishedAtMillis = 3_000L,
            sessionMetrics = ReaderClosedSessionMetrics(
                endPage = 4,
                completed = false,
                manualPageTurns = 1,
                chapterTransitions = 0
            )
        )

        assertEquals(0L, event.durationMs)
        assertEquals(4, event.endPage)
        assertFalse(event.completed)
    }

    @Test
    fun shouldRecordReaderSessionMinutes_tracksOnlyRealReadingSignals() {
        assertFalse(
            shouldRecordReaderSessionMinutes(
                ReaderClosedSessionMetrics(
                    endPage = 24,
                    completed = false,
                    manualPageTurns = 0,
                    chapterTransitions = 0
                )
            )
        )
        assertTrue(
            shouldRecordReaderSessionMinutes(
                ReaderClosedSessionMetrics(
                    endPage = 24,
                    completed = false,
                    manualPageTurns = 3,
                    chapterTransitions = 0
                )
            )
        )
        assertTrue(
            shouldRecordReaderSessionMinutes(
                ReaderClosedSessionMetrics(
                    endPage = 24,
                    completed = false,
                    manualPageTurns = 0,
                    chapterTransitions = 1
                )
            )
        )
    }
}
