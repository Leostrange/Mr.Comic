package io.leostrange.mrcomic.core.domain.analytics

import kotlinx.coroutines.flow.Flow

/**
 * Repository interface for daily reading goal storage.
 *
 * Moved from core-data to core-domain to enforce dependency inversion.
 * Implementation lives in core-data and is injected via Hilt.
 */
interface DailyReadingGoalRepository {
    val goalState: Flow<DailyReadingGoalState>

    suspend fun setGoalEnabled(enabled: Boolean)
    suspend fun setTargetPages(targetPages: Int)
    suspend fun setStreakEnabled(enabled: Boolean)
    suspend fun setGraceEnabled(enabled: Boolean)
    suspend fun recordProgressDelta(pagesDelta: Int, nowMillis: Long = System.currentTimeMillis())
    suspend fun recordSessionMinutes(durationMillis: Long, nowMillis: Long = System.currentTimeMillis())
    suspend fun recordCompletedCheckpoint(count: Int = 1, nowMillis: Long = System.currentTimeMillis())
    suspend fun recordXpDelta(xpDelta: Int, nowMillis: Long = System.currentTimeMillis())
}
