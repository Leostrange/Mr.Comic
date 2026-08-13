package io.leostrange.mrcomic.home

import android.content.Context
import androidx.compose.foundation.layout.size
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.data.repository.ComicRepository
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotContext
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.interfaces.analytics.ReaderCheckpoint
import io.leostrange.mrcomic.core.interfaces.analytics.ReaderCheckpointRepository
import io.leostrange.mrcomic.core.domain.analytics.calculateMascotProgress
import io.leostrange.mrcomic.core.domain.analytics.resolveGamificationMetricsSnapshot
import io.leostrange.mrcomic.core.domain.analytics.resolveMrComicMascotState
import io.leostrange.mrcomic.core.model.Comic
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

private data class ContinueUiInputs(
    val comics: List<Comic>,
    val trail: List<ReaderCheckpoint>,
    val mascotRecapEnabled: Boolean,
    val dailyReadingGoal: DailyReadingGoalState,
    val acknowledgedMascotStageName: String
)

private data class ContinueAnalyticsPrefs(
    val questPromptsEnabled: Boolean,
    val mascotRecapEnabledAtMillis: Long,
    val questPromptsEnabledAtMillis: Long,
    val dailyReadingGoalEnabledAtMillis: Long
)

internal data class ContinueCompanionPresentation(
    val title: String,
    val hint: String,
    val showMascot: Boolean
)

internal data class ContinueReturnPrompt(
    val daysAway: Int,
    val comicId: String,
    val page: Int?,
    val targetTitle: String,
    val usesCheckpoint: Boolean
)

internal enum class ContinueReturnSupportTone {
    QUIET,
    WEEKLY,
    STREAK_LIVE,
    GRACE_SPENT,
    WEEKLY_DONE
}

internal fun resolveContinueStartupData(
    liveComics: List<Comic>,
    liveTrail: List<ReaderCheckpoint>,
    warmState: ContinueWarmState
): ContinueResolvedStartupData {
    return when {
        liveComics.isNotEmpty() -> ContinueResolvedStartupData(
            comics = liveComics,
            trail = liveTrail,
            isLoading = false
        )
        warmState is ContinueWarmState.Ready -> ContinueResolvedStartupData(
            comics = warmState.snapshot.comics,
            trail = warmState.snapshot.trail,
            isLoading = false
        )
        warmState == ContinueWarmState.Loading || warmState == ContinueWarmState.Idle ->
            ContinueResolvedStartupData(
                comics = liveComics,
                trail = liveTrail,
                isLoading = true
            )
        else -> ContinueResolvedStartupData(
            comics = liveComics,
            trail = liveTrail,
            isLoading = false
        )
    }
}

@HiltViewModel
class ContinueViewModel @Inject constructor(
    comicRepository: ComicRepository,
    @ApplicationContext context: Context,
    private val readerCheckpointStore: ReaderCheckpointRepository,
    private val dailyReadingGoalStore: DailyReadingGoalStore,
    private val analyticsTracker: ReadingAnalyticsTracker,
    private val continueStartupWarmStore: ContinueStartupWarmStore
) : ViewModel() {
    private val preferences = UserPreferences(context.dataStore)
    private var lastMetricsSnapshotKey: String? = null

    private val continueUiInputs = combine(
        comicRepository.getAllComics(),
        readerCheckpointStore.checkpointTrail,
        preferences.get(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, true),
        dailyReadingGoalStore.goalState,
        preferences.get(PreferencesKeys.MASCOT_LAST_ACKNOWLEDGED_STAGE, MascotStage.CHILD.name)
    ) { comics, trail, mascotRecapEnabled, dailyReadingGoal, acknowledgedMascotStageName ->
        ContinueUiInputs(
            comics = comics,
            trail = trail,
            mascotRecapEnabled = mascotRecapEnabled,
            dailyReadingGoal = dailyReadingGoal,
            acknowledgedMascotStageName = acknowledgedMascotStageName
        )
    }

    private val continueAnalyticsPrefs = combine(
        preferences.get(PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED, true),
        preferences.get(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED_AT, 0L),
        preferences.get(PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED_AT, 0L),
        preferences.get(PreferencesKeys.DAILY_READING_GOAL_ENABLED_AT, 0L)
    ) { questPromptsEnabled, mascotRecapEnabledAtMillis, questPromptsEnabledAtMillis, dailyReadingGoalEnabledAtMillis ->
        ContinueAnalyticsPrefs(
            questPromptsEnabled = questPromptsEnabled,
            mascotRecapEnabledAtMillis = mascotRecapEnabledAtMillis,
            questPromptsEnabledAtMillis = questPromptsEnabledAtMillis,
            dailyReadingGoalEnabledAtMillis = dailyReadingGoalEnabledAtMillis
        )
    }

    val uiState = combine(
        continueUiInputs,
        continueAnalyticsPrefs,
        continueStartupWarmStore.state
    ) { inputs, analyticsPrefs, warmState ->
            val startupData = resolveContinueStartupData(
                liveComics = inputs.comics,
                liveTrail = inputs.trail,
                warmState = warmState
            )
            val comics = startupData.comics
            val trail = startupData.trail
            val mascotRecapEnabled = inputs.mascotRecapEnabled
            val dailyReadingGoal = inputs.dailyReadingGoal
            val acknowledgedMascotStageName = inputs.acknowledgedMascotStageName
            val questPromptsEnabled = analyticsPrefs.questPromptsEnabled
            val incompleteComicIds = comics.asSequence()
                .filterNot { it.isCompleted }
                .mapTo(linkedSetOf()) { it.id }
            val activeReading = comics
                .filter { !it.isCompleted && it.readingProgress > 0f }
                .sortedByDescending { it.lastReadDate }
            val currentlyReading = activeReading.take(12)
            val mascotProgress = calculateMascotProgress(comics)
            val libraryComicIds = comics.mapTo(linkedSetOf()) { it.id }
            val libraryTrail = visibleCheckpointTrail(
                trail = trail,
                libraryComicIds = libraryComicIds,
                activeComicIds = incompleteComicIds
            )
            if (trail.size != libraryTrail.size) {
                viewModelScope.launch {
                    readerCheckpointStore.pruneToComicIds(libraryComicIds)
                }
            }

            ContinueUiState(
                isLoading = startupData.isLoading,
                continueReading = currentlyReading.firstOrNull(),
                currentlyReading = currentlyReading.drop(1),
                hasLibraryContent = comics.isNotEmpty(),
                hasActiveReading = activeReading.isNotEmpty(),
                checkpointTrail = libraryTrail,
                mascotRecapEnabled = mascotRecapEnabled,
                questPromptsEnabled = questPromptsEnabled,
                dailyReadingGoal = dailyReadingGoal,
                mascotProgress = mascotProgress,
                mascotState = resolveMrComicMascotState(
                    context = MrComicMascotContext.HOME,
                    progress = mascotProgress,
                    totalTitles = comics.size,
                    completedTitles = comics.count { it.isCompleted },
                    bookmarkedTitles = comics.count { it.isBookmarked },
                    goalState = dailyReadingGoal,
                    recentComic = activeReading.firstOrNull(),
                    acknowledgedStageName = acknowledgedMascotStageName
                ),
                acknowledgedMascotStageName = acknowledgedMascotStageName,
                mascotRecapEnabledAtMillis = analyticsPrefs.mascotRecapEnabledAtMillis,
                questPromptsEnabledAtMillis = analyticsPrefs.questPromptsEnabledAtMillis,
                dailyReadingGoalEnabledAtMillis = analyticsPrefs.dailyReadingGoalEnabledAtMillis,
                totalTitles = comics.size,
                completedTitles = comics.count { it.isCompleted }
            )
        }
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5_000),
            initialValue = run {
                val ws = continueStartupWarmStore.state.value
                if (ws is ContinueWarmState.Ready) {
                    val comics = ws.snapshot.comics
                    val activeReading = comics
                        .filter { !it.isCompleted && it.readingProgress > 0f }
                        .sortedByDescending { it.lastReadDate }
                    ContinueUiState(
                        isLoading = false,
                        continueReading = activeReading.firstOrNull(),
                        currentlyReading = activeReading.drop(1).take(11),
                        hasLibraryContent = comics.isNotEmpty(),
                        hasActiveReading = activeReading.isNotEmpty(),
                        totalTitles = comics.size,
                        completedTitles = comics.count { it.isCompleted }
                    )
                } else {
                    ContinueUiState(isLoading = true)
                }
            }
        )

    fun clearCheckpoint() {
        viewModelScope.launch {
            readerCheckpointStore.clearCheckpoint()
        }
    }

    fun acknowledgeMascotStagePreview() {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.MASCOT_LAST_ACKNOWLEDGED_STAGE,
                uiState.value.mascotProgress.stage.name
            )
        }
    }

    fun reportMetricsSnapshot(returnPromptEligible: Boolean) {
        val state = uiState.value
        val snapshot = resolveGamificationMetricsSnapshot(
            goalState = state.dailyReadingGoal,
            totalTitles = state.totalTitles,
            completedTitles = state.completedTitles,
            returnPromptEligible = returnPromptEligible,
            mascotEnabled = state.mascotRecapEnabled,
            questPromptsEnabled = state.questPromptsEnabled,
            mascotEnabledAtMillis = state.mascotRecapEnabledAtMillis,
            questPromptsEnabledAtMillis = state.questPromptsEnabledAtMillis,
            dailyGoalEnabledAtMillis = state.dailyReadingGoalEnabledAtMillis
        )
        val snapshotKey = buildString {
            append(snapshot.activeMinutesLast7Days)
            append(':')
            append(snapshot.naturalUnitsLast7Days)
            append(':')
            append(snapshot.warQualified)
            append(':')
            append(snapshot.completedTitles)
            append(':')
            append(snapshot.totalTitles)
            append(':')
            append(snapshot.returnPromptEligible)
            append(':')
            append(snapshot.mascotOptedOut)
            append(':')
            append(snapshot.questPromptsOptedOut)
            append(':')
            append(snapshot.noveltyWindowActive)
            append(':')
            append(snapshot.noveltySources)
            append(':')
            append(snapshot.noveltyDaysRemaining)
        }
        if (snapshotKey == lastMetricsSnapshotKey) return
        lastMetricsSnapshotKey = snapshotKey
        analyticsTracker.track(
            ReadingAnalyticsEvent.MetricsSnapshot(
                surface = "continue",
                activeMinutesLast7Days = snapshot.activeMinutesLast7Days,
                naturalUnitsLast7Days = snapshot.naturalUnitsLast7Days,
                warQualified = snapshot.warQualified,
                warMinutesThreshold = snapshot.warMinutesThreshold,
                warNaturalUnitThreshold = snapshot.warNaturalUnitThreshold,
                completedTitles = snapshot.completedTitles,
                totalTitles = snapshot.totalTitles,
                completionRate = snapshot.completionRate,
                returnPromptEligible = snapshot.returnPromptEligible,
                mascotOptedOut = snapshot.mascotOptedOut,
                questPromptsOptedOut = snapshot.questPromptsOptedOut,
                noveltyWindowActive = snapshot.noveltyWindowActive,
                noveltySources = snapshot.noveltySources,
                noveltyDaysRemaining = snapshot.noveltyDaysRemaining
            )
        )
    }
}

