package com.example.feature.reader.domain.session

internal class ReaderSessionCoordinator {
    private var activeSession: ReaderSessionSnapshot? = null
    private var manualPageTurns: Int = 0
    private var chapterTransitions: Int = 0

    val currentManualPageTurns: Int
        get() = manualPageTurns

    fun start(session: ReaderSessionSnapshot) {
        activeSession = session
        manualPageTurns = 0
        chapterTransitions = 0
    }

    fun updateTotalPages(totalPages: Int) {
        activeSession = activeSession?.copy(totalPages = totalPages)
    }

    fun recordManualPageTurn() {
        manualPageTurns += 1
    }

    fun recordChapterTransition() {
        chapterTransitions += 1
    }

    fun close(
        currentComicId: String?,
        currentComicCompleted: Boolean,
        currentPage: Int
    ): ReaderClosedSession? {
        val session = activeSession ?: return null
        activeSession = null
        val currentComicMatches = currentComicId == session.comicId
        return ReaderClosedSession(
            session = session,
            metrics = ReaderClosedSessionMetrics(
                endPage = if (currentComicMatches) currentPage else currentPage.coerceAtLeast(session.startPage),
                completed = currentComicMatches && currentComicCompleted,
                manualPageTurns = manualPageTurns,
                chapterTransitions = chapterTransitions
            )
        )
    }
}

internal data class ReaderClosedSession(
    val session: ReaderSessionSnapshot,
    val metrics: ReaderClosedSessionMetrics
)

internal data class ReaderClosedSessionMetrics(
    val endPage: Int,
    val completed: Boolean,
    val manualPageTurns: Int,
    val chapterTransitions: Int
)

internal fun shouldRecordReaderSessionMinutes(
    sessionMetrics: ReaderClosedSessionMetrics
): Boolean = sessionMetrics.manualPageTurns > 0 || sessionMetrics.chapterTransitions > 0
