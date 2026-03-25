package com.example.core.domain.analytics

import android.content.Context
import androidx.datastore.preferences.core.MutablePreferences
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.emptyPreferences
import androidx.datastore.preferences.core.edit
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.dataStore
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.map
import java.io.IOException
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale
import java.util.TimeZone
import javax.inject.Inject
import javax.inject.Singleton

internal const val DEFAULT_DAILY_READING_GOAL_PAGES = 20
internal const val MIN_DAILY_READING_GOAL_PAGES = 5
internal const val MAX_DAILY_READING_GOAL_PAGES = 200
private const val WEEKLY_GRACE_DAY_LIMIT = 1
private const val DAILY_READING_HISTORY_LIMIT = 365
private const val RECENT_READING_CALENDAR_DAYS = 7

data class DailyReadingCalendarDay(
    val dayKey: String,
    val pagesRead: Int = 0,
    val goalCompleted: Boolean = false,
    val minutesRead: Int = 0,
    val completedCheckpoints: Int = 0,
    val xpEarned: Int = 0
)

data class DailyReadingGoalState(
    val enabled: Boolean = false,
    val targetPages: Int = DEFAULT_DAILY_READING_GOAL_PAGES,
    val pagesReadToday: Int = 0,
    val pagesReadThisWeek: Int = 0,
    val weeklyTargetPages: Int = DEFAULT_DAILY_READING_GOAL_PAGES * 7,
    val completedDaysThisWeek: Int = 0,
    val streakEnabled: Boolean = false,
    val graceEnabled: Boolean = true,
    val currentStreak: Int = 0,
    val bestStreak: Int = 0,
    val graceDaysRemainingThisWeek: Int = WEEKLY_GRACE_DAY_LIMIT,
    val historyActivity: List<DailyReadingCalendarDay> = emptyList(),
    val recentActivity: List<DailyReadingCalendarDay> = emptyList()
) {
    val remainingPages: Int
        get() = (targetPages - pagesReadToday).coerceAtLeast(0)

    val isCompleted: Boolean
        get() = enabled && pagesReadToday >= targetPages

    val remainingPagesThisWeek: Int
        get() = (weeklyTargetPages - pagesReadThisWeek).coerceAtLeast(0)

    val isWeeklyPlanCompleted: Boolean
        get() = enabled && pagesReadThisWeek >= weeklyTargetPages
}

@Singleton
class DailyReadingGoalStore @Inject constructor(
    @ApplicationContext context: Context
) {
    private val dataStore = context.dataStore

    val goalState: Flow<DailyReadingGoalState> = dataStore.data
        .catch { exception ->
            if (exception is IOException) {
                emit(emptyPreferences())
            } else {
                throw exception
            }
        }
        .map { preferences ->
            readDailyReadingGoalState(
                preferences = preferences,
                currentDayKey = currentDailyGoalDayKey(),
                currentWeekKey = currentDailyGoalWeekKey()
            )
        }
        .distinctUntilChanged()

    suspend fun setGoalEnabled(enabled: Boolean) {
        dataStore.edit { preferences ->
            preferences[PreferencesKeys.DAILY_READING_GOAL_ENABLED] = enabled
        }
    }

    suspend fun setTargetPages(targetPages: Int) {
        dataStore.edit { preferences ->
            val normalizedTarget = normalizeDailyReadingGoalTarget(targetPages)
            val currentDayKey = currentDailyGoalDayKey()
            val currentWeekKey = currentDailyGoalWeekKey()
            val currentPages = resolveDailyReadingGoalProgress(
                currentDayKey = currentDayKey,
                storedDayKey = preferences[PreferencesKeys.DAILY_READING_GOAL_PROGRESS_DAY],
                storedProgressPages = preferences[PreferencesKeys.DAILY_READING_GOAL_PROGRESS_PAGES] ?: 0
            )
            preferences[PreferencesKeys.DAILY_READING_GOAL_TARGET_PAGES] = normalizedTarget
            maybeRecordGoalCompletion(
                preferences = preferences,
                currentDayKey = currentDayKey,
                currentWeekKey = currentWeekKey,
                targetPages = normalizedTarget,
                pagesReadToday = currentPages
            )
            syncWeeklyGoalDayCompletion(
                preferences = preferences,
                currentDayKey = currentDayKey,
                currentWeekKey = currentWeekKey,
                targetPages = normalizedTarget,
                pagesReadToday = currentPages
            )
            preferences[PreferencesKeys.DAILY_READING_HISTORY] = serializeDailyReadingHistory(
                upsertDailyReadingHistory(
                    history = parseDailyReadingHistory(preferences[PreferencesKeys.DAILY_READING_HISTORY]),
                    currentDayKey = currentDayKey,
                    pagesReadToday = currentPages,
                    targetPages = normalizedTarget
                )
            )
        }
    }

    suspend fun setStreakEnabled(enabled: Boolean) {
        dataStore.edit { preferences ->
            preferences[PreferencesKeys.DAILY_READING_STREAK_ENABLED] = enabled
        }
    }

    suspend fun setGraceEnabled(enabled: Boolean) {
        dataStore.edit { preferences ->
            preferences[PreferencesKeys.DAILY_READING_STREAK_GRACE_ENABLED] = enabled
        }
    }

    suspend fun recordProgressDelta(
        pagesDelta: Int,
        nowMillis: Long = System.currentTimeMillis()
    ) {
        val normalizedDelta = pagesDelta.coerceAtLeast(0)
        if (normalizedDelta == 0) return

        dataStore.edit { preferences ->
            val currentDayKey = currentDailyGoalDayKey(nowMillis)
            val goalEnabled = preferences[PreferencesKeys.DAILY_READING_GOAL_ENABLED] == true
            val targetPages = normalizeDailyReadingGoalTarget(
                preferences[PreferencesKeys.DAILY_READING_GOAL_TARGET_PAGES] ?: DEFAULT_DAILY_READING_GOAL_PAGES
            )
            val currentHistory = parseDailyReadingHistory(preferences[PreferencesKeys.DAILY_READING_HISTORY])
            val currentHistoryPages = currentHistory.firstOrNull { it.dayKey == currentDayKey }?.pagesRead ?: 0
            preferences[PreferencesKeys.DAILY_READING_HISTORY] = serializeDailyReadingHistory(
                upsertDailyReadingHistory(
                    history = currentHistory,
                    currentDayKey = currentDayKey,
                    pagesReadToday = currentHistoryPages + normalizedDelta,
                    targetPages = targetPages,
                    goalTrackingEnabled = goalEnabled
                )
            )

            if (!goalEnabled) return@edit

            val currentProgress = resolveDailyReadingGoalProgress(
                currentDayKey = currentDayKey,
                storedDayKey = preferences[PreferencesKeys.DAILY_READING_GOAL_PROGRESS_DAY],
                storedProgressPages = preferences[PreferencesKeys.DAILY_READING_GOAL_PROGRESS_PAGES] ?: 0
            )
            val updatedProgress = currentProgress + normalizedDelta
            val currentWeekKey = currentDailyGoalWeekKey(nowMillis)
            val currentWeekProgress = resolveWeeklyReadingGoalProgress(
                currentWeekKey = currentWeekKey,
                storedWeekKey = preferences[PreferencesKeys.DAILY_READING_WEEK_PROGRESS_WEEK],
                storedProgressPages = preferences[PreferencesKeys.DAILY_READING_WEEK_PROGRESS_PAGES] ?: 0
            )

            preferences[PreferencesKeys.DAILY_READING_GOAL_PROGRESS_DAY] = currentDayKey
            preferences[PreferencesKeys.DAILY_READING_GOAL_PROGRESS_PAGES] = updatedProgress
            preferences[PreferencesKeys.DAILY_READING_WEEK_PROGRESS_WEEK] = currentWeekKey
            preferences[PreferencesKeys.DAILY_READING_WEEK_PROGRESS_PAGES] = currentWeekProgress + normalizedDelta

            maybeRecordGoalCompletion(
                preferences = preferences,
                currentDayKey = currentDayKey,
                currentWeekKey = currentWeekKey,
                targetPages = targetPages,
                pagesReadToday = updatedProgress,
                recordedAtMillis = nowMillis
            )
            syncWeeklyGoalDayCompletion(
                preferences = preferences,
                currentDayKey = currentDayKey,
                currentWeekKey = currentWeekKey,
                targetPages = targetPages,
                pagesReadToday = updatedProgress
            )
        }
    }

    suspend fun recordSessionMinutes(
        durationMillis: Long,
        nowMillis: Long = System.currentTimeMillis()
    ) {
        val normalizedMinutes = durationMillis
            .coerceAtLeast(0L)
            .let { safeDuration ->
                if (safeDuration == 0L) 0 else ((safeDuration + 59_999L) / 60_000L).toInt()
            }
            .coerceAtLeast(if (durationMillis > 0L) 1 else 0)
        if (normalizedMinutes == 0) return

        dataStore.edit { preferences ->
            val currentDayKey = currentDailyGoalDayKey(nowMillis)
            val history = parseDailyReadingHistory(preferences[PreferencesKeys.DAILY_READING_HISTORY])
            preferences[PreferencesKeys.DAILY_READING_HISTORY] = serializeDailyReadingHistory(
                updateDailyReadingHistoryMetrics(
                    history = history,
                    currentDayKey = currentDayKey,
                    minutesDelta = normalizedMinutes
                )
            )
        }
    }

    suspend fun recordCompletedCheckpoint(
        count: Int = 1,
        nowMillis: Long = System.currentTimeMillis()
    ) {
        val normalizedCount = count.coerceAtLeast(0)
        if (normalizedCount == 0) return

        dataStore.edit { preferences ->
            val currentDayKey = currentDailyGoalDayKey(nowMillis)
            val history = parseDailyReadingHistory(preferences[PreferencesKeys.DAILY_READING_HISTORY])
            preferences[PreferencesKeys.DAILY_READING_HISTORY] = serializeDailyReadingHistory(
                updateDailyReadingHistoryMetrics(
                    history = history,
                    currentDayKey = currentDayKey,
                    completedCheckpointsDelta = normalizedCount
                )
            )
        }
    }

    suspend fun recordXpDelta(
        xpDelta: Int,
        nowMillis: Long = System.currentTimeMillis()
    ) {
        val normalizedDelta = xpDelta.coerceAtLeast(0)
        if (normalizedDelta == 0) return

        dataStore.edit { preferences ->
            val currentDayKey = currentDailyGoalDayKey(nowMillis)
            val history = parseDailyReadingHistory(preferences[PreferencesKeys.DAILY_READING_HISTORY])
            preferences[PreferencesKeys.DAILY_READING_HISTORY] = serializeDailyReadingHistory(
                updateDailyReadingHistoryMetrics(
                    history = history,
                    currentDayKey = currentDayKey,
                    xpDelta = normalizedDelta
                )
            )
        }
    }

    private fun syncWeeklyGoalDayCompletion(
        preferences: MutablePreferences,
        currentDayKey: String,
        currentWeekKey: String,
        targetPages: Int,
        pagesReadToday: Int
    ) {
        val completedDayKeys = resolveWeeklyCompletedDayKeys(
            currentWeekKey = currentWeekKey,
            storedWeekKey = preferences[PreferencesKeys.DAILY_READING_WEEK_PROGRESS_WEEK],
            storedDayKeys = preferences[PreferencesKeys.DAILY_READING_WEEK_COMPLETED_DAYS]
        ).toMutableList()

        preferences[PreferencesKeys.DAILY_READING_WEEK_PROGRESS_WEEK] = currentWeekKey
        if (pagesReadToday >= targetPages) {
            if (currentDayKey !in completedDayKeys) {
                completedDayKeys += currentDayKey
            }
        } else {
            completedDayKeys.remove(currentDayKey)
        }
        val serialized = serializeWeeklyCompletedDayKeys(completedDayKeys.takeLast(7))
        if (serialized.isBlank()) {
            preferences.remove(PreferencesKeys.DAILY_READING_WEEK_COMPLETED_DAYS)
        } else {
            preferences[PreferencesKeys.DAILY_READING_WEEK_COMPLETED_DAYS] = serialized
        }
    }

    private fun maybeRecordGoalCompletion(
        preferences: MutablePreferences,
        currentDayKey: String,
        currentWeekKey: String,
        targetPages: Int,
        pagesReadToday: Int,
        recordedAtMillis: Long = System.currentTimeMillis()
    ) {
        if (pagesReadToday < targetPages) return
        if (preferences[PreferencesKeys.DAILY_READING_STREAK_ENABLED] != true) return
        if (preferences[PreferencesKeys.DAILY_READING_STREAK_LAST_SUCCESS_DAY] == currentDayKey) return

        val completionUpdate = resolveDailyReadingGoalCompletion(
            currentDayKey = currentDayKey,
            lastCompletedDayKey = preferences[PreferencesKeys.DAILY_READING_STREAK_LAST_SUCCESS_DAY],
            storedCurrentStreak = preferences[PreferencesKeys.DAILY_READING_STREAK_CURRENT] ?: 0,
            graceEnabled = preferences[PreferencesKeys.DAILY_READING_STREAK_GRACE_ENABLED] ?: true,
            storedGraceUsedWeekKey = preferences[PreferencesKeys.DAILY_READING_STREAK_GRACE_USED_WEEK],
            currentWeekKey = currentWeekKey
        )

        preferences[PreferencesKeys.DAILY_READING_STREAK_CURRENT] = completionUpdate.currentStreak
        preferences[PreferencesKeys.DAILY_READING_STREAK_BEST] = maxOf(
            preferences[PreferencesKeys.DAILY_READING_STREAK_BEST] ?: 0,
            completionUpdate.currentStreak
        )
        preferences[PreferencesKeys.DAILY_READING_STREAK_LAST_SUCCESS_DAY] = completionUpdate.lastCompletedDayKey
        preferences[PreferencesKeys.DAILY_READING_STREAK_LAST_SUCCESS_AT] = recordedAtMillis
        val graceWeekKey = completionUpdate.graceUsedWeekKey
        if (graceWeekKey.isNullOrBlank()) {
            preferences.remove(PreferencesKeys.DAILY_READING_STREAK_GRACE_USED_WEEK)
        } else {
            preferences[PreferencesKeys.DAILY_READING_STREAK_GRACE_USED_WEEK] = graceWeekKey
        }
    }
}

internal fun readDailyReadingGoalState(
    preferences: Preferences,
    currentDayKey: String,
    currentWeekKey: String
): DailyReadingGoalState {
    val enabled = preferences[PreferencesKeys.DAILY_READING_GOAL_ENABLED] ?: false
    val targetPages = normalizeDailyReadingGoalTarget(
        preferences[PreferencesKeys.DAILY_READING_GOAL_TARGET_PAGES] ?: DEFAULT_DAILY_READING_GOAL_PAGES
    )
    val pagesReadToday = resolveDailyReadingGoalProgress(
        currentDayKey = currentDayKey,
        storedDayKey = preferences[PreferencesKeys.DAILY_READING_GOAL_PROGRESS_DAY],
        storedProgressPages = preferences[PreferencesKeys.DAILY_READING_GOAL_PROGRESS_PAGES] ?: 0
    )
    val pagesReadThisWeek = resolveWeeklyReadingGoalProgress(
        currentWeekKey = currentWeekKey,
        storedWeekKey = preferences[PreferencesKeys.DAILY_READING_WEEK_PROGRESS_WEEK],
        storedProgressPages = preferences[PreferencesKeys.DAILY_READING_WEEK_PROGRESS_PAGES] ?: 0
    )
    val completedDaysThisWeek = resolveWeeklyCompletedDayKeys(
        currentWeekKey = currentWeekKey,
        storedWeekKey = preferences[PreferencesKeys.DAILY_READING_WEEK_PROGRESS_WEEK],
        storedDayKeys = preferences[PreferencesKeys.DAILY_READING_WEEK_COMPLETED_DAYS]
    ).size
    val storedHistory = preferences[PreferencesKeys.DAILY_READING_HISTORY]
    val historyActivity = resolveHistoryReadingCalendar(
        currentDayKey = currentDayKey,
        storedHistory = storedHistory
    )
    val recentActivity = resolveRecentReadingCalendar(
        currentDayKey = currentDayKey,
        storedHistory = storedHistory
    )
    val streakEnabled = preferences[PreferencesKeys.DAILY_READING_STREAK_ENABLED] ?: false
    val graceEnabled = preferences[PreferencesKeys.DAILY_READING_STREAK_GRACE_ENABLED] ?: true
    val currentStreak = if (streakEnabled) {
        resolveVisibleDailyReadingStreak(
            currentDayKey = currentDayKey,
            storedCurrentStreak = preferences[PreferencesKeys.DAILY_READING_STREAK_CURRENT] ?: 0,
            lastCompletedDayKey = preferences[PreferencesKeys.DAILY_READING_STREAK_LAST_SUCCESS_DAY],
            graceEnabled = graceEnabled,
            storedGraceUsedWeekKey = preferences[PreferencesKeys.DAILY_READING_STREAK_GRACE_USED_WEEK]
        )
    } else {
        0
    }

    return DailyReadingGoalState(
        enabled = enabled,
        targetPages = targetPages,
        pagesReadToday = pagesReadToday,
        pagesReadThisWeek = pagesReadThisWeek,
        weeklyTargetPages = targetPages * 7,
        completedDaysThisWeek = completedDaysThisWeek,
        streakEnabled = streakEnabled,
        graceEnabled = graceEnabled,
        currentStreak = currentStreak,
        bestStreak = (preferences[PreferencesKeys.DAILY_READING_STREAK_BEST] ?: 0).coerceAtLeast(0),
        graceDaysRemainingThisWeek = resolveGraceDaysRemainingThisWeek(
            streakEnabled = streakEnabled,
            graceEnabled = graceEnabled,
            currentWeekKey = currentWeekKey,
            storedGraceUsedWeekKey = preferences[PreferencesKeys.DAILY_READING_STREAK_GRACE_USED_WEEK]
        ),
        historyActivity = historyActivity,
        recentActivity = recentActivity
    )
}

internal fun normalizeDailyReadingGoalTarget(targetPages: Int): Int {
    return targetPages.coerceIn(MIN_DAILY_READING_GOAL_PAGES, MAX_DAILY_READING_GOAL_PAGES)
}

internal fun resolveDailyReadingGoalProgress(
    currentDayKey: String,
    storedDayKey: String?,
    storedProgressPages: Int
): Int {
    if (storedDayKey != currentDayKey) return 0
    return storedProgressPages.coerceAtLeast(0)
}

internal fun resolveWeeklyReadingGoalProgress(
    currentWeekKey: String,
    storedWeekKey: String?,
    storedProgressPages: Int
): Int {
    if (storedWeekKey != currentWeekKey) return 0
    return storedProgressPages.coerceAtLeast(0)
}

internal fun resolveWeeklyCompletedDayKeys(
    currentWeekKey: String,
    storedWeekKey: String?,
    storedDayKeys: String?
): List<String> {
    if (storedWeekKey != currentWeekKey || storedDayKeys.isNullOrBlank()) return emptyList()
    return storedDayKeys
        .split(',')
        .map { it.trim() }
        .filter { it.isNotBlank() }
        .distinct()
        .sorted()
}

internal fun serializeWeeklyCompletedDayKeys(dayKeys: List<String>): String {
    return dayKeys
        .map { it.trim() }
        .filter { it.isNotBlank() }
        .distinct()
        .sorted()
        .joinToString(",")
}

internal fun parseDailyReadingHistory(serialized: String?): List<DailyReadingCalendarDay> {
    if (serialized.isNullOrBlank()) return emptyList()
    return serialized
        .split(';')
        .mapNotNull { token ->
            val parts = token.split(':')
            val dayKey = parts.getOrNull(0)?.trim().orEmpty()
            val pagesRead = parts.getOrNull(1)?.trim()?.toIntOrNull() ?: 0
            val goalCompleted = parts.getOrNull(2)?.trim() == "1"
            val minutesRead = parts.getOrNull(3)?.trim()?.toIntOrNull() ?: 0
            val completedCheckpoints = parts.getOrNull(4)?.trim()?.toIntOrNull() ?: 0
            val xpEarned = parts.getOrNull(5)?.trim()?.toIntOrNull() ?: 0
            dayKey.takeIf { it.isNotBlank() }?.let {
                DailyReadingCalendarDay(
                    dayKey = it,
                    pagesRead = pagesRead.coerceAtLeast(0),
                    goalCompleted = goalCompleted,
                    minutesRead = minutesRead.coerceAtLeast(0),
                    completedCheckpoints = completedCheckpoints.coerceAtLeast(0),
                    xpEarned = xpEarned.coerceAtLeast(0)
                )
            }
        }
        .sortedBy { it.dayKey }
        .distinctBy { it.dayKey }
        .takeLast(DAILY_READING_HISTORY_LIMIT)
}

internal fun serializeDailyReadingHistory(history: List<DailyReadingCalendarDay>): String {
    return history
        .sortedBy { it.dayKey }
        .distinctBy { it.dayKey }
        .takeLast(DAILY_READING_HISTORY_LIMIT)
        .joinToString(";") { entry ->
            "${entry.dayKey}:${entry.pagesRead.coerceAtLeast(0)}:${if (entry.goalCompleted) 1 else 0}:${entry.minutesRead.coerceAtLeast(0)}:${entry.completedCheckpoints.coerceAtLeast(0)}:${entry.xpEarned.coerceAtLeast(0)}"
        }
}

internal fun upsertDailyReadingHistory(
    history: List<DailyReadingCalendarDay>,
    currentDayKey: String,
    pagesReadToday: Int,
    targetPages: Int,
    goalTrackingEnabled: Boolean = true
): List<DailyReadingCalendarDay> {
    val existing = history.firstOrNull { it.dayKey == currentDayKey }
    val normalizedEntry = DailyReadingCalendarDay(
        dayKey = currentDayKey,
        pagesRead = pagesReadToday.coerceAtLeast(0),
        goalCompleted = if (goalTrackingEnabled) {
            pagesReadToday >= targetPages
        } else {
            existing?.goalCompleted ?: false
        },
        minutesRead = existing?.minutesRead ?: 0,
        completedCheckpoints = existing?.completedCheckpoints ?: 0,
        xpEarned = existing?.xpEarned ?: 0
    )
    return (history.filterNot { it.dayKey == currentDayKey } + normalizedEntry)
        .sortedBy { it.dayKey }
        .takeLast(DAILY_READING_HISTORY_LIMIT)
}

internal fun updateDailyReadingHistoryMetrics(
    history: List<DailyReadingCalendarDay>,
    currentDayKey: String,
    minutesDelta: Int = 0,
    completedCheckpointsDelta: Int = 0,
    xpDelta: Int = 0
): List<DailyReadingCalendarDay> {
    val existing = history.firstOrNull { it.dayKey == currentDayKey } ?: DailyReadingCalendarDay(dayKey = currentDayKey)
    val updated = existing.copy(
        minutesRead = (existing.minutesRead + minutesDelta).coerceAtLeast(0),
        completedCheckpoints = (existing.completedCheckpoints + completedCheckpointsDelta).coerceAtLeast(0),
        xpEarned = (existing.xpEarned + xpDelta).coerceAtLeast(0)
    )
    return (history.filterNot { it.dayKey == currentDayKey } + updated)
        .sortedBy { it.dayKey }
        .takeLast(DAILY_READING_HISTORY_LIMIT)
}

internal fun resolveHistoryReadingCalendar(
    currentDayKey: String,
    storedHistory: String?,
    timeZone: TimeZone = TimeZone.getDefault()
): List<DailyReadingCalendarDay> {
    val history = parseDailyReadingHistory(storedHistory)
    val firstDayKey = history.firstOrNull()?.dayKey ?: currentDayKey
    val dayCount = (daysBetweenDailyGoalDayKeys(firstDayKey, currentDayKey, timeZone)?.plus(1) ?: 1)
        .coerceIn(1, DAILY_READING_HISTORY_LIMIT)
    return resolveReadingCalendarWindow(
        currentDayKey = currentDayKey,
        storedHistory = storedHistory,
        dayCount = dayCount,
        timeZone = timeZone
    )
}

internal fun resolveRecentReadingCalendar(
    currentDayKey: String,
    storedHistory: String?,
    timeZone: TimeZone = TimeZone.getDefault()
): List<DailyReadingCalendarDay> = resolveReadingCalendarWindow(
    currentDayKey = currentDayKey,
    storedHistory = storedHistory,
    dayCount = RECENT_READING_CALENDAR_DAYS,
    timeZone = timeZone
)

internal fun resolveReadingCalendarWindow(
    currentDayKey: String,
    storedHistory: String?,
    dayCount: Int,
    timeZone: TimeZone = TimeZone.getDefault()
): List<DailyReadingCalendarDay> {
    val historyByDay = parseDailyReadingHistory(storedHistory).associateBy { it.dayKey }
    val normalizedDayCount = dayCount.coerceIn(1, DAILY_READING_HISTORY_LIMIT)
    return (normalizedDayCount - 1 downTo 0).mapNotNull { daysBack ->
        shiftDailyGoalDayKey(currentDayKey, -daysBack, timeZone)?.let { dayKey ->
            historyByDay[dayKey] ?: DailyReadingCalendarDay(dayKey = dayKey)
        }
    }
}

internal fun resolveGraceDaysRemainingThisWeek(
    streakEnabled: Boolean,
    graceEnabled: Boolean,
    currentWeekKey: String,
    storedGraceUsedWeekKey: String?
): Int {
    if (!streakEnabled || !graceEnabled) return 0
    return if (storedGraceUsedWeekKey == currentWeekKey) 0 else WEEKLY_GRACE_DAY_LIMIT
}

internal fun currentDailyGoalDayKey(
    nowMillis: Long = System.currentTimeMillis(),
    timeZone: TimeZone = TimeZone.getDefault()
): String {
    val formatter = SimpleDateFormat("yyyy-MM-dd", Locale.US)
    formatter.timeZone = timeZone
    return formatter.format(Date(nowMillis))
}

internal fun currentDailyGoalWeekKey(
    nowMillis: Long = System.currentTimeMillis(),
    timeZone: TimeZone = TimeZone.getDefault()
): String {
    val calendar = Calendar.getInstance(timeZone, Locale.US).apply {
        firstDayOfWeek = Calendar.MONDAY
        minimalDaysInFirstWeek = 4
        timeInMillis = nowMillis
    }
    return "%04d-W%02d".format(Locale.US, calendar.weekYear, calendar.get(Calendar.WEEK_OF_YEAR))
}

internal fun currentDailyGoalWeekKey(
    dayKey: String,
    timeZone: TimeZone = TimeZone.getDefault()
): String? {
    val millis = dailyGoalDayKeyToStartMillis(dayKey, timeZone) ?: return null
    return currentDailyGoalWeekKey(nowMillis = millis, timeZone = timeZone)
}

internal data class DailyReadingGoalCompletionUpdate(
    val currentStreak: Int,
    val lastCompletedDayKey: String,
    val graceUsedWeekKey: String?
)

internal fun resolveDailyReadingGoalCompletion(
    currentDayKey: String,
    lastCompletedDayKey: String?,
    storedCurrentStreak: Int,
    graceEnabled: Boolean,
    storedGraceUsedWeekKey: String?,
    currentWeekKey: String,
    timeZone: TimeZone = TimeZone.getDefault()
): DailyReadingGoalCompletionUpdate {
    val normalizedCurrentStreak = storedCurrentStreak.coerceAtLeast(0)
    val dayGap = daysBetweenDailyGoalDayKeys(lastCompletedDayKey, currentDayKey, timeZone)

    return when {
        lastCompletedDayKey.isNullOrBlank() || dayGap == null || dayGap < 0 || dayGap > 2 ->
            DailyReadingGoalCompletionUpdate(
                currentStreak = 1,
                lastCompletedDayKey = currentDayKey,
                graceUsedWeekKey = storedGraceUsedWeekKey.takeUnless { it == currentWeekKey }
            )

        dayGap == 0 ->
            DailyReadingGoalCompletionUpdate(
                currentStreak = normalizedCurrentStreak.coerceAtLeast(1),
                lastCompletedDayKey = currentDayKey,
                graceUsedWeekKey = storedGraceUsedWeekKey
            )

        dayGap == 1 ->
            DailyReadingGoalCompletionUpdate(
                currentStreak = normalizedCurrentStreak + 1,
                lastCompletedDayKey = currentDayKey,
                graceUsedWeekKey = storedGraceUsedWeekKey
            )

        else -> {
            val missedDayKey = shiftDailyGoalDayKey(lastCompletedDayKey, 1, timeZone)
            val missedWeekKey = missedDayKey?.let { currentDailyGoalWeekKey(it, timeZone) }
            if (!graceEnabled || missedWeekKey == null || storedGraceUsedWeekKey == missedWeekKey) {
                DailyReadingGoalCompletionUpdate(
                    currentStreak = 1,
                    lastCompletedDayKey = currentDayKey,
                    graceUsedWeekKey = storedGraceUsedWeekKey
                )
            } else {
                DailyReadingGoalCompletionUpdate(
                    currentStreak = normalizedCurrentStreak + 1,
                    lastCompletedDayKey = currentDayKey,
                    graceUsedWeekKey = missedWeekKey
                )
            }
        }
    }
}

internal fun resolveVisibleDailyReadingStreak(
    currentDayKey: String,
    storedCurrentStreak: Int,
    lastCompletedDayKey: String?,
    graceEnabled: Boolean,
    storedGraceUsedWeekKey: String?,
    timeZone: TimeZone = TimeZone.getDefault()
): Int {
    if (storedCurrentStreak <= 0 || lastCompletedDayKey.isNullOrBlank()) return 0

    val dayGap = daysBetweenDailyGoalDayKeys(lastCompletedDayKey, currentDayKey, timeZone)
    return when {
        dayGap == null || dayGap < 0 -> 0
        dayGap <= 1 -> storedCurrentStreak
        dayGap == 2 && graceEnabled -> {
            val missedDayKey = shiftDailyGoalDayKey(lastCompletedDayKey, 1, timeZone)
            val missedWeekKey = missedDayKey?.let { currentDailyGoalWeekKey(it, timeZone) }
            if (missedWeekKey == null || storedGraceUsedWeekKey == missedWeekKey) {
                0
            } else {
                storedCurrentStreak
            }
        }
        else -> 0
    }
}

internal fun daysBetweenDailyGoalDayKeys(
    fromDayKey: String?,
    toDayKey: String,
    timeZone: TimeZone = TimeZone.getDefault()
): Int? {
    if (fromDayKey.isNullOrBlank()) return null
    val fromMillis = dailyGoalDayKeyToStartMillis(fromDayKey, timeZone) ?: return null
    val toMillis = dailyGoalDayKeyToStartMillis(toDayKey, timeZone) ?: return null
    val millisPerDay = 24L * 60L * 60L * 1000L
    return ((toMillis - fromMillis) / millisPerDay).toInt()
}

internal fun shiftDailyGoalDayKey(
    dayKey: String,
    days: Int,
    timeZone: TimeZone = TimeZone.getDefault()
): String? {
    val startMillis = dailyGoalDayKeyToStartMillis(dayKey, timeZone) ?: return null
    val millisPerDay = 24L * 60L * 60L * 1000L
    return currentDailyGoalDayKey(
        nowMillis = startMillis + days * millisPerDay,
        timeZone = timeZone
    )
}

private fun dailyGoalDayKeyToStartMillis(
    dayKey: String,
    timeZone: TimeZone
): Long? {
    return runCatching {
        val formatter = SimpleDateFormat("yyyy-MM-dd", Locale.US)
        formatter.timeZone = timeZone
        formatter.isLenient = false
        formatter.parse(dayKey)?.time
    }.getOrNull()
}
