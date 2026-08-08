package io.leostrange.mrcomic.core.domain.analytics
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay

private const val WAR_MINUTES_THRESHOLD = 20
private const val WAR_NATURAL_UNITS_THRESHOLD = 1
private const val METRICS_HISTORY_WINDOW_DAYS = 7
private const val NOVELTY_WINDOW_DAYS = 7
private const val MILLIS_PER_DAY = 24L * 60L * 60L * 1000L

data class GamificationNoveltyState(
    val noveltyWindowActive: Boolean,
    val noveltySources: String,
    val noveltyDaysRemaining: Int
)

data class GamificationMetricsSnapshot(
    val activeMinutesLast7Days: Int,
    val naturalUnitsLast7Days: Int,
    val warQualified: Boolean,
    val warMinutesThreshold: Int,
    val warNaturalUnitThreshold: Int,
    val completedTitles: Int,
    val totalTitles: Int,
    val completionRate: Float,
    val returnPromptEligible: Boolean,
    val mascotOptedOut: Boolean,
    val questPromptsOptedOut: Boolean,
    val noveltyWindowActive: Boolean,
    val noveltySources: String,
    val noveltyDaysRemaining: Int
)

fun resolveGamificationMetricsSnapshot(
    goalState: DailyReadingGoalState,
    totalTitles: Int,
    completedTitles: Int,
    returnPromptEligible: Boolean,
    mascotEnabled: Boolean,
    questPromptsEnabled: Boolean,
    mascotEnabledAtMillis: Long,
    questPromptsEnabledAtMillis: Long,
    dailyGoalEnabledAtMillis: Long,
    nowMillis: Long = System.currentTimeMillis(),
    warMinutesThreshold: Int = WAR_MINUTES_THRESHOLD,
    warNaturalUnitThreshold: Int = WAR_NATURAL_UNITS_THRESHOLD
): GamificationMetricsSnapshot {
    val activityWindow = resolveMetricsActivityWindow(goalState)
    val activeMinutes = activityWindow.sumOf { it.minutesRead.coerceAtLeast(0) }
    val naturalUnits = activityWindow.sumOf { it.completedCheckpoints.coerceAtLeast(0) }
    val safeTotalTitles = totalTitles.coerceAtLeast(0)
    val safeCompletedTitles = completedTitles.coerceIn(0, safeTotalTitles)
    val noveltyState = resolveGamificationNoveltyState(
        nowMillis = nowMillis,
        mascotEnabled = mascotEnabled,
        mascotEnabledAtMillis = mascotEnabledAtMillis,
        questPromptsEnabled = questPromptsEnabled,
        questPromptsEnabledAtMillis = questPromptsEnabledAtMillis,
        goalEnabled = goalState.enabled,
        goalEnabledAtMillis = dailyGoalEnabledAtMillis
    )
    return GamificationMetricsSnapshot(
        activeMinutesLast7Days = activeMinutes,
        naturalUnitsLast7Days = naturalUnits,
        warQualified = activeMinutes >= warMinutesThreshold && naturalUnits >= warNaturalUnitThreshold,
        warMinutesThreshold = warMinutesThreshold,
        warNaturalUnitThreshold = warNaturalUnitThreshold,
        completedTitles = safeCompletedTitles,
        totalTitles = safeTotalTitles,
        completionRate = if (safeTotalTitles == 0) 0f else safeCompletedTitles.toFloat() / safeTotalTitles.toFloat(),
        returnPromptEligible = returnPromptEligible,
        mascotOptedOut = !mascotEnabled,
        questPromptsOptedOut = !questPromptsEnabled,
        noveltyWindowActive = noveltyState.noveltyWindowActive,
        noveltySources = noveltyState.noveltySources,
        noveltyDaysRemaining = noveltyState.noveltyDaysRemaining
    )
}

internal fun resolveGamificationNoveltyState(
    nowMillis: Long,
    mascotEnabled: Boolean,
    mascotEnabledAtMillis: Long,
    questPromptsEnabled: Boolean,
    questPromptsEnabledAtMillis: Long,
    goalEnabled: Boolean,
    goalEnabledAtMillis: Long,
    noveltyWindowDays: Int = NOVELTY_WINDOW_DAYS
): GamificationNoveltyState {
    val noveltyWindowMillis = noveltyWindowDays.coerceAtLeast(1) * MILLIS_PER_DAY
    val activeSources = buildList {
        addNoveltySource("mascot", mascotEnabled, mascotEnabledAtMillis, nowMillis, noveltyWindowMillis)
        addNoveltySource("quest_prompts", questPromptsEnabled, questPromptsEnabledAtMillis, nowMillis, noveltyWindowMillis)
        addNoveltySource("daily_goal", goalEnabled, goalEnabledAtMillis, nowMillis, noveltyWindowMillis)
    }
    return GamificationNoveltyState(
        noveltyWindowActive = activeSources.isNotEmpty(),
        noveltySources = activeSources.joinToString(",") { it.first }.ifBlank { "none" },
        noveltyDaysRemaining = activeSources.maxOfOrNull { it.second } ?: 0
    )
}

internal fun resolveMetricsActivityWindow(goalState: DailyReadingGoalState): List<DailyReadingCalendarDay> {
    return (goalState.historyActivity + goalState.recentActivity)
        .groupBy { it.dayKey }
        .map { (dayKey, values) ->
            DailyReadingCalendarDay(
                dayKey = dayKey,
                pagesRead = values.sumOf { it.pagesRead.coerceAtLeast(0) },
                goalCompleted = values.any { it.goalCompleted },
                minutesRead = values.sumOf { it.minutesRead.coerceAtLeast(0) },
                completedCheckpoints = values.sumOf { it.completedCheckpoints.coerceAtLeast(0) },
                xpEarned = values.sumOf { it.xpEarned.coerceAtLeast(0) }
            )
        }
        .sortedByDescending { it.dayKey }
        .take(METRICS_HISTORY_WINDOW_DAYS)
}

private fun MutableList<Pair<String, Int>>.addNoveltySource(
    source: String,
    enabled: Boolean,
    enabledAtMillis: Long,
    nowMillis: Long,
    noveltyWindowMillis: Long
) {
    if (!enabled || enabledAtMillis <= 0L) return
    val elapsedMillis = (nowMillis - enabledAtMillis).coerceAtLeast(0L)
    if (elapsedMillis >= noveltyWindowMillis) return
    val daysRemaining = ((noveltyWindowMillis - elapsedMillis + MILLIS_PER_DAY - 1L) / MILLIS_PER_DAY)
        .toInt()
        .coerceAtLeast(1)
    add(source to daysRemaining)
}
