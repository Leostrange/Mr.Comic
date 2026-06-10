package com.example.mrcomic.home

import android.content.Context
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.statusBarsIgnoringVisibility
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.AutoStories
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.TaskAlt
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.ViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewModelScope
import coil.compose.AsyncImage
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.data.repository.ComicRepository
import com.example.core.domain.analytics.DailyReadingGoalState
import com.example.core.domain.analytics.DailyReadingGoalStore
import com.example.core.domain.analytics.DailyReadingCalendarDay
import com.example.core.domain.analytics.MascotProgressState
import com.example.core.domain.analytics.MascotStage
import com.example.core.domain.analytics.MrComicMascotContext
import com.example.core.domain.analytics.MrComicMascotState
import com.example.core.domain.analytics.ReadingAnalyticsEvent
import com.example.core.domain.analytics.ReadingAnalyticsTracker
import com.example.core.domain.analytics.ReaderCheckpoint
import com.example.core.domain.analytics.ReaderCheckpointStore
import com.example.core.domain.analytics.calculateMascotProgress
import com.example.core.domain.analytics.mrComicMascotMoodHeadline
import com.example.core.domain.analytics.resolveGamificationMetricsSnapshot
import com.example.core.domain.analytics.resolveMascotStagePreview
import com.example.core.domain.analytics.resolveMrComicMascotState
import com.example.core.model.Comic
import com.example.core.ui.designsystem.MrComicButton
import com.example.core.ui.designsystem.MrComicButtonVariant
import com.example.core.ui.designsystem.MrComicCardSurface
import com.example.core.ui.designsystem.MrComicIconButton
import com.example.core.ui.designsystem.MrComicIconButtonVariant
import com.example.core.ui.designsystem.MrComicPill
import com.example.core.ui.designsystem.MrComicProgressLine
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_BLUR
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_STYLE
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_VEIL
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKDROP_STRENGTH
import com.example.core.ui.library.LibraryBackdropLayer
import com.example.core.ui.library.RootChromePanelShape
import com.example.core.ui.library.RootChromePillShape
import com.example.core.ui.library.RootChromeTone
import com.example.core.ui.library.RootChromeTopBarHost
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.mascot.MrComicMiniAvatar
import com.example.core.ui.mascot.MrComicStagePreviewLead
import com.example.core.ui.mascot.mrComicMascotStageHint
import com.example.core.ui.mascot.mrComicMascotStageLabel
import com.example.core.ui.mascot.mrComicMascotStagePreviewText
import com.example.core.ui.mascot.mrComicMascotStagePreviewTitle
import com.example.core.ui.library.rootChromeBackdropStrength
import com.example.core.ui.library.rootChromeBackdropVeil
import com.example.core.ui.library.rootChromeIconContainerColor
import com.example.core.ui.library.rootChromePanelColor
import com.example.core.ui.library.rootChromePillContainerColor
import com.example.core.ui.library.rootChromePillContentColor
import com.example.core.ui.library.rootChromeStableTopBarInsets
import com.example.core.ui.library.rootChromeTopBarColors
import com.example.mrcomic.ui.ContinueScreenText
import com.example.mrcomic.ui.continueScreenText
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import java.text.DateFormat
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale
import java.util.TimeZone
import javax.inject.Inject

data class ContinueUiState(
    val isLoading: Boolean = true,
    val continueReading: Comic? = null,
    val currentlyReading: List<Comic> = emptyList(),
    val hasLibraryContent: Boolean = false,
    val hasActiveReading: Boolean = false,
    val checkpointTrail: List<ReaderCheckpoint> = emptyList(),
    val mascotRecapEnabled: Boolean = true,
    val questPromptsEnabled: Boolean = true,
    val dailyReadingGoal: DailyReadingGoalState = DailyReadingGoalState(),
    val mascotProgress: MascotProgressState = MascotProgressState(),
    val mascotState: MrComicMascotState = MrComicMascotState(),
    val acknowledgedMascotStageName: String = MascotStage.CHILD.name,
    val mascotRecapEnabledAtMillis: Long = 0L,
    val questPromptsEnabledAtMillis: Long = 0L,
    val dailyReadingGoalEnabledAtMillis: Long = 0L,
    val totalTitles: Int = 0,
    val completedTitles: Int = 0
)

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

data class ContinueLibraryChrome(
    val backgroundStyle: String = DEFAULT_LIBRARY_BACKGROUND_STYLE,
    val backgroundImageUri: String? = null,
    val backdropStrength: Float = DEFAULT_LIBRARY_BACKDROP_STRENGTH,
    val backgroundBlur: Float = DEFAULT_LIBRARY_BACKGROUND_BLUR,
    val backgroundVeil: Float = DEFAULT_LIBRARY_BACKGROUND_VEIL
)

internal data class ContinueResolvedStartupData(
    val comics: List<Comic>,
    val trail: List<ReaderCheckpoint>,
    val isLoading: Boolean
)

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
    private val readerCheckpointStore: ReaderCheckpointStore,
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

internal fun visibleCheckpointTrail(
    trail: List<ReaderCheckpoint>,
    libraryComicIds: Set<String>,
    activeComicIds: Set<String>
): List<ReaderCheckpoint> {
    return trail
        .filter { checkpoint -> checkpoint.comicId in libraryComicIds && checkpoint.comicId in activeComicIds }
        .take(3)
}

internal fun shouldShowContinueCheckpointChip(
    hasReturnPrompt: Boolean,
    checkpointTrail: List<ReaderCheckpoint>,
    mascotRecapEnabled: Boolean,
    hasLibraryContent: Boolean
): Boolean = !hasReturnPrompt && mascotRecapEnabled && hasLibraryContent && checkpointTrail.isNotEmpty()

internal fun shouldShowContinueReturnCard(
    continueReading: Comic?,
    returnPrompt: ContinueReturnPrompt?
): Boolean = returnPrompt != null && returnPrompt.comicId != continueReading?.id

internal fun dedupeContinueCheckpointTrail(
    checkpointTrail: List<ReaderCheckpoint>,
    continueReading: Comic?
): List<ReaderCheckpoint> {
    val continueComicId = continueReading?.id ?: return checkpointTrail
    return checkpointTrail.filterNot { checkpoint -> checkpoint.comicId == continueComicId }
}

internal fun shouldShowContinueWeeklyPlanChip(
    goalState: DailyReadingGoalState,
    hasReturnPrompt: Boolean,
    hasLibraryContent: Boolean
): Boolean {
    if (!hasLibraryContent || !goalState.enabled || hasReturnPrompt) return false
    return goalState.pagesReadThisWeek > 0 ||
        goalState.completedDaysThisWeek > 0 ||
        goalState.isWeeklyPlanCompleted
}

internal fun shouldShowContinueReadingCalendarStrip(
    goalState: DailyReadingGoalState,
    hasReturnPrompt: Boolean,
    hasStagePreview: Boolean,
    hasLibraryContent: Boolean
): Boolean {
    if (!hasLibraryContent || !goalState.enabled || hasReturnPrompt || hasStagePreview) return false
    return goalState.recentActivity.any { day ->
        day.pagesRead > 0 || day.goalCompleted || day.minutesRead > 0 || day.completedCheckpoints > 0
    } || goalState.pagesReadToday > 0 ||
        goalState.pagesReadThisWeek > 0 ||
        goalState.currentStreak > 0 ||
        goalState.isWeeklyPlanCompleted
}

internal fun shouldShowContinueStagePreview(
    hasLibraryContent: Boolean,
    hasReturnPrompt: Boolean,
    stagePreview: MascotStage?
): Boolean = hasLibraryContent && stagePreview != null && !hasReturnPrompt

internal fun resolveContinueCompanionPresentation(
    text: ContinueScreenText,
    language: String,
    mascotUiEnabled: Boolean,
    mascotState: MrComicMascotState,
    recentTitle: String?
): ContinueCompanionPresentation {
    return if (mascotUiEnabled) {
        ContinueCompanionPresentation(
            title = text.mascotTitle,
            hint = mrComicMascotMoodHeadline(
                language = language,
                mood = mascotState.mood,
                recentTitle = recentTitle
            ),
            showMascot = true
        )
    } else {
        ContinueCompanionPresentation(
            title = text.progressTitle,
            hint = text.progressNeutralHint,
            showMascot = false
        )
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
fun ContinueScreen(
    onComicClick: (String, Int?) -> Unit,
    onOpenLibrary: () -> Unit,
    onOpenProgressProfile: () -> Unit = {},
    libraryChrome: ContinueLibraryChrome = ContinueLibraryChrome(),
    viewModel: ContinueViewModel = hiltViewModel()
) {
    val uiState = viewModel.uiState.collectAsStateWithLifecycle().value
    val strings = LocalStrings.current
    val text = remember(strings.languageCode) { continueScreenText(strings.languageCode) }
    val returnPrompt = remember(
        uiState.dailyReadingGoal,
        uiState.continueReading,
        uiState.checkpointTrail
    ) {
        resolveContinueReturnPrompt(
            goalState = uiState.dailyReadingGoal,
            continueReading = uiState.continueReading,
            checkpointTrail = uiState.checkpointTrail
        )
    }
    val dedupedCheckpointTrail = remember(
        uiState.checkpointTrail,
        uiState.continueReading
    ) {
        dedupeContinueCheckpointTrail(
            checkpointTrail = uiState.checkpointTrail,
            continueReading = uiState.continueReading
        )
    }
    val showReturnPrompt = remember(
        uiState.continueReading,
        returnPrompt
    ) {
        shouldShowContinueReturnCard(
            continueReading = uiState.continueReading,
            returnPrompt = returnPrompt
        )
    }
    LaunchedEffect(
        uiState.dailyReadingGoal,
        uiState.totalTitles,
        uiState.completedTitles,
        uiState.mascotRecapEnabled,
        uiState.questPromptsEnabled,
        showReturnPrompt
    ) {
        viewModel.reportMetricsSnapshot(returnPromptEligible = showReturnPrompt)
    }
    val showCheckpointRecap = remember(
        showReturnPrompt,
        dedupedCheckpointTrail,
        uiState.mascotRecapEnabled,
        uiState.hasLibraryContent
    ) {
        shouldShowContinueCheckpointChip(
            hasReturnPrompt = showReturnPrompt,
            checkpointTrail = dedupedCheckpointTrail,
            mascotRecapEnabled = uiState.mascotRecapEnabled,
            hasLibraryContent = uiState.hasLibraryContent
        )
    }

    Scaffold(
        contentWindowInsets = WindowInsets(0, 0, 0, 0),
        topBar = {
            ContinueTopBar(
                title = text.title,
                onOpenProgressProfile = onOpenProgressProfile
            )
        },
        containerColor = Color.Transparent
    ) { innerPadding ->
        Box(modifier = Modifier.fillMaxSize()) {
            LibraryBackdropLayer(
                backgroundStyle = libraryChrome.backgroundStyle,
                backgroundImageUri = libraryChrome.backgroundImageUri,
                colorScheme = MaterialTheme.colorScheme,
                backdropStrength = rootChromeBackdropStrength(libraryChrome.backdropStrength),
                backgroundBlur = libraryChrome.backgroundBlur,
                imageVeil = rootChromeBackdropVeil(libraryChrome.backgroundVeil),
                modifier = Modifier.fillMaxSize()
            )

            LazyColumn(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding),
                contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                if (uiState.isLoading) {
                    item {
                        ContinueLoadingState()
                    }
                } else {
                    item {
                        ContinueIntroCard(
                            intro = if (uiState.hasLibraryContent) text.introWithLibrary else text.introEmptyLibrary,
                            status = if (uiState.hasLibraryContent) {
                                text.inProgressCount(uiState.currentlyReading.size + if (uiState.continueReading != null) 1 else 0)
                            } else {
                                null
                            }
                        )
                    }
                }

                if (!uiState.isLoading && !uiState.hasLibraryContent) {
                    item {
                        EmptyContinueState(
                            onOpenLibrary = onOpenLibrary,
                            text = text,
                            showMascot = uiState.mascotRecapEnabled
                        )
                    }
                } else if (!uiState.isLoading && !uiState.hasActiveReading) {
                    returnPrompt
                        ?.takeIf { showReturnPrompt }
                        ?.let { prompt ->
                            item {
                                ContinueReturnCard(
                                    prompt = prompt,
                                    goalState = uiState.dailyReadingGoal,
                                    appLanguage = strings.languageCode,
                                    showMascot = uiState.mascotRecapEnabled,
                                    actionLabel = text.continueReading,
                                    onOpenTarget = { onComicClick(prompt.comicId, prompt.page) }
                                )
                            }
                        }
                    dedupedCheckpointTrail
                        .takeIf { showCheckpointRecap }
                        ?.let { checkpointTrail ->
                            item {
                                CheckpointRecapChip(
                                    checkpointTrail = checkpointTrail,
                                    text = text,
                                    showMascot = uiState.mascotRecapEnabled,
                                    onDismiss = { viewModel.clearCheckpoint() },
                                    onCheckpointClick = { checkpoint ->
                                        onComicClick(checkpoint.comicId, checkpoint.page)
                                    }
                                )
                            }
                        }
                    item {
                        EmptyContinueReadingState(
                            onOpenLibrary = onOpenLibrary,
                            text = text,
                            showMascot = uiState.mascotRecapEnabled
                        )
                    }
                } else if (!uiState.isLoading) {
                    uiState.continueReading?.let { comic ->
                        item {
                            ContinueReadingCard(
                                comic = comic,
                                onClick = { onComicClick(comic.id, null) }
                            )
                        }
                    }
                    if (uiState.currentlyReading.isNotEmpty()) {
                        item {
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                SectionTitle(text.currentlyReading)
                                Surface(
                                    shape = RoundedCornerShape(999.dp),
                                    color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.94f)
                                ) {
                                    Text(
                                        text = text.inProgressCount(uiState.currentlyReading.size + 1),
                                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp),
                                        style = MaterialTheme.typography.labelMedium,
                                        color = MaterialTheme.colorScheme.onSurfaceVariant
                                    )
                                }
                            }
                        }
                        item {
                            LazyRow(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                                items(uiState.currentlyReading, key = { "reading_${it.id}" }) { comic ->
                                    ContinueComicCard(comic = comic, onClick = { onComicClick(comic.id, null) })
                                }
                            }
                        }
                    }
                    returnPrompt
                        ?.takeIf { showReturnPrompt }
                        ?.let { prompt ->
                            item {
                                ContinueReturnCard(
                                    prompt = prompt,
                                    goalState = uiState.dailyReadingGoal,
                                    appLanguage = strings.languageCode,
                                    showMascot = uiState.mascotRecapEnabled,
                                    actionLabel = text.continueReading,
                                    onOpenTarget = { onComicClick(prompt.comicId, prompt.page) }
                                )
                            }
                        }
                    dedupedCheckpointTrail
                        .takeIf { showCheckpointRecap }
                        ?.let { checkpointTrail ->
                            item {
                                CheckpointRecapChip(
                                    checkpointTrail = checkpointTrail,
                                    text = text,
                                    showMascot = uiState.mascotRecapEnabled,
                                    onDismiss = { viewModel.clearCheckpoint() },
                                    onCheckpointClick = { checkpoint ->
                                        onComicClick(checkpoint.comicId, checkpoint.page)
                                    }
                                )
                            }
                        }
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
private fun ContinueTopBar(
    title: String,
    onOpenProgressProfile: () -> Unit
) {
    val strings = LocalStrings.current
    RootChromeTopBarHost {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .windowInsetsPadding(rootChromeStableTopBarInsets())
                .padding(start = 16.dp, end = 8.dp, top = 12.dp, bottom = 8.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Text(
                    text = "Mr.Comic",
                    style = MaterialTheme.typography.displaySmall.copy(
                        fontWeight = androidx.compose.ui.text.font.FontWeight.Black,
                        letterSpacing = com.example.core.ui.designsystem.MrComicTypographyTokens.LetterSpacing.display
                    ),
                    color = MaterialTheme.colorScheme.onBackground,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
            MrComicIconButton(
                onClick = onOpenProgressProfile,
                variant = MrComicIconButtonVariant.Tonal
            ) {
                Icon(
                    imageVector = Icons.Default.TaskAlt,
                    contentDescription = null
                )
            }
        }
    }
}

@Composable
private fun ContinueIntroCard(
    intro: String,
    status: String?
) {
    MrComicCardSurface(
        shape = RootChromePanelShape,
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.SOFT),
        tonalElevation = 1.dp,
        shadowElevation = 4.dp
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 14.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Surface(
                    shape = CircleShape,
                    color = rootChromeIconContainerColor(MaterialTheme.colorScheme)
                ) {
                    Icon(
                        imageVector = Icons.AutoMirrored.Filled.MenuBook,
                        contentDescription = null,
                        modifier = Modifier.padding(10.dp).size(18.dp),
                        tint = MaterialTheme.colorScheme.primary
                    )
                }
                status?.let {
                    ContinueSummaryChip(text = it)
                }
            }
            Text(
                text = intro,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun ContinueReturnCard(
    prompt: ContinueReturnPrompt,
    goalState: DailyReadingGoalState,
    appLanguage: String,
    showMascot: Boolean,
    actionLabel: String,
    onOpenTarget: () -> Unit
) {
    val supportTone = remember(goalState) { resolveContinueReturnSupportTone(goalState) }
    MrComicCardSurface(
        shape = RootChromePanelShape,
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.ACCENT)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 14.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Row(
                horizontalArrangement = Arrangement.spacedBy(12.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                MrComicMiniAvatar(
                    showMascot = showMascot,
                    modifier = Modifier.size(32.dp),
                    compact = false,
                    neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
                    framedNeutral = true,
                    neutralTint = MaterialTheme.colorScheme.primary,
                    neutralContainerColor = rootChromeIconContainerColor(MaterialTheme.colorScheme)
                )
                Column(
                    modifier = Modifier.weight(1f),
                    verticalArrangement = Arrangement.spacedBy(3.dp)
                ) {
                    Text(
                        text = continueReturnTitle(appLanguage, prompt.daysAway),
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.SemiBold
                    )
                    Text(
                        text = continueReturnHint(
                            language = appLanguage,
                            targetTitle = prompt.targetTitle,
                            daysAway = prompt.daysAway,
                            usesCheckpoint = prompt.usesCheckpoint,
                            showMascot = showMascot
                        ),
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
            Text(
                text = continueReturnSupportText(
                    language = appLanguage,
                    tone = supportTone,
                    goalState = goalState
                ),
                style = MaterialTheme.typography.labelMedium,
                color = MaterialTheme.colorScheme.primary
            )
            MrComicButton(onClick = onOpenTarget) {
                Text(text = actionLabel)
            }
        }
    }
}

@Composable
private fun WeeklyReadingPlanChip(
    goalState: DailyReadingGoalState,
    text: ContinueScreenText
) {
    MrComicCardSurface(
        shape = RoundedCornerShape(24.dp),
        containerColor = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.42f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 10.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                imageVector = if (goalState.isWeeklyPlanCompleted) Icons.Filled.TaskAlt else Icons.AutoMirrored.Filled.MenuBook,
                contentDescription = null,
                tint = if (goalState.isWeeklyPlanCompleted) {
                    MaterialTheme.colorScheme.primary
                } else {
                    MaterialTheme.colorScheme.secondary
                }
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(2.dp)
            ) {
                Text(
                    text = text.weeklyPlanProgress(goalState.pagesReadThisWeek, goalState.weeklyTargetPages),
                    style = MaterialTheme.typography.labelMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Text(
                    text = if (goalState.isWeeklyPlanCompleted) {
                        text.weeklyPlanCompleted(goalState.weeklyTargetPages)
                    } else {
                        text.weeklyPlanRemaining(
                            goalState.remainingPagesThisWeek,
                            goalState.completedDaysThisWeek
                        )
                    },
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.92f)
                )
                Text(
                    text = text.weeklyPlanCompletedDays(goalState.completedDaysThisWeek),
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.secondary
                )
            }
        }
    }
}

@Composable
private fun ReadingCalendarStrip(
    goalState: DailyReadingGoalState,
    text: ContinueScreenText,
    appLanguage: String
) {
    val activeDays = goalState.recentActivity.count { it.pagesRead > 0 }
    val goalDays = goalState.recentActivity.count { it.goalCompleted }
    Surface(
        shape = RoundedCornerShape(24.dp),
        color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.7f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Column(verticalArrangement = Arrangement.spacedBy(2.dp)) {
                Text(
                    text = text.readingCalendarTitle,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Text(
                    text = text.readingCalendarSummary(activeDays, goalDays),
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                goalState.recentActivity.forEach { day ->
                    ReadingCalendarDayChip(
                        day = day,
                        appLanguage = appLanguage,
                        modifier = Modifier.weight(1f)
                    )
                }
            }
        }
    }
}

@Composable
private fun ReadingCalendarDayChip(
    day: DailyReadingCalendarDay,
    appLanguage: String,
    modifier: Modifier = Modifier
) {
    val containerColor = when {
        day.goalCompleted -> MaterialTheme.colorScheme.primary.copy(alpha = 0.16f)
        day.pagesRead > 0 -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.14f)
        else -> MaterialTheme.colorScheme.surface
    }
    val accentColor = when {
        day.goalCompleted -> MaterialTheme.colorScheme.primary
        day.pagesRead > 0 -> MaterialTheme.colorScheme.secondary
        else -> MaterialTheme.colorScheme.outline
    }
    Column(
        modifier = modifier,
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        Text(
            text = readingCalendarDayLabel(day.dayKey, appLanguage),
            style = MaterialTheme.typography.labelSmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Surface(
            shape = RoundedCornerShape(14.dp),
            color = containerColor
        ) {
            Column(
                modifier = Modifier.padding(horizontal = 8.dp, vertical = 8.dp),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Text(
                    text = readingCalendarDayNumber(day.dayKey),
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Box(
                    modifier = Modifier
                        .size(8.dp)
                        .background(accentColor, CircleShape)
                )
            }
        }
    }
}

private fun readingCalendarDayLabel(dayKey: String, appLanguage: String): String {
    val formatter = SimpleDateFormat("yyyy-MM-dd", Locale.US)
    formatter.isLenient = false
    val date = runCatching { formatter.parse(dayKey) }.getOrNull() ?: return dayKey.takeLast(2)
    val calendar = Calendar.getInstance().apply { time = date }
    return when (appLanguage) {
        "ja" -> arrayOf("日", "月", "火", "水", "木", "金", "土")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
        "zh" -> arrayOf("日", "一", "二", "三", "四", "五", "六")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
        "ko" -> arrayOf("일", "월", "화", "수", "목", "금", "토")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
        "en" -> arrayOf("S", "M", "T", "W", "T", "F", "S")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
        else -> arrayOf("Вс", "Пн", "Вт", "Ср", "Чт", "Пт", "Сб")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
    }
}

private fun readingCalendarDayNumber(dayKey: String): String {
    return dayKey.takeLast(2).trimStart('0').ifBlank { "0" }
}

@Composable
private fun DailyReadingGoalChip(
    goalState: DailyReadingGoalState,
    text: ContinueScreenText
) {
    Surface(
        shape = RoundedCornerShape(24.dp),
        color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.72f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 10.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                imageVector = if (goalState.isCompleted) Icons.Filled.TaskAlt else Icons.AutoMirrored.Filled.MenuBook,
                contentDescription = null,
                tint = if (goalState.isCompleted) {
                    MaterialTheme.colorScheme.primary
                } else {
                    MaterialTheme.colorScheme.onSurfaceVariant
                }
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(2.dp)
            ) {
                Text(
                    text = text.dailyGoalProgress(goalState.pagesReadToday, goalState.targetPages),
                    style = MaterialTheme.typography.labelMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Text(
                    text = if (goalState.isCompleted) {
                        text.dailyGoalCompleted(goalState.targetPages)
                    } else {
                        text.dailyGoalRemaining(goalState.remainingPages)
                    },
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.92f)
                )
            }
        }
    }
}

@Composable
private fun ReaderCompanionCard(
    title: String,
    hint: String,
    progress: MascotProgressState,
    appLanguage: String,
    showMascot: Boolean,
    showProgress: Boolean,
    actionLabel: String,
    onOpenProgress: () -> Unit
) {
    MrComicCardSurface(
        modifier = Modifier.fillMaxWidth(),
        containerColor = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.72f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 14.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            MrComicMiniAvatar(
                showMascot = showMascot,
                modifier = Modifier.size(32.dp),
                compact = true,
                neutralIcon = Icons.Filled.AutoStories,
                framedNeutral = true,
                neutralTint = MaterialTheme.colorScheme.secondary,
                neutralContainerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.86f)
            )
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.SemiBold
                )
                Spacer(Modifier.height(2.dp))
                Text(
                    text = hint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                if (showProgress) {
                    Spacer(Modifier.height(8.dp))
                    MrComicCardSurface(
                        shape = RoundedCornerShape(14.dp),
                        containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.72f)
                    ) {
                        Column(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(horizontal = 10.dp, vertical = 8.dp),
                            verticalArrangement = Arrangement.spacedBy(5.dp)
                        ) {
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Text(
                                    text = mrComicMascotStageLabel(appLanguage, progress.stage),
                                    style = MaterialTheme.typography.labelMedium,
                                    color = MaterialTheme.colorScheme.secondary
                                )
                                Text(
                                    text = "${progress.xp} XP",
                                    style = MaterialTheme.typography.labelMedium,
                                    color = MaterialTheme.colorScheme.secondary
                                )
                            }
                            MrComicProgressLine(
                                progress = { progress.stageProgress },
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .height(5.dp),
                                color = MaterialTheme.colorScheme.secondary,
                                trackColor = MaterialTheme.colorScheme.secondary.copy(alpha = 0.16f)
                            )
                            Text(
                                text = mrComicMascotStageHint(appLanguage, progress),
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }
                Spacer(Modifier.height(6.dp))
                TextButton(onClick = onOpenProgress) {
                    Text(text = actionLabel)
                }
            }
        }
    }
}

@Composable
private fun MascotStagePreviewCard(
    stage: MascotStage,
    progress: MascotProgressState,
    appLanguage: String,
    showMascot: Boolean,
    onDismiss: () -> Unit
) {
    MrComicCardSurface(
        modifier = Modifier.fillMaxWidth(),
        containerColor = MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.68f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.Top
        ) {
            MrComicStagePreviewLead(
                showMascot = showMascot,
                modifier = Modifier.size(28.dp)
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Text(
                    text = mrComicMascotStagePreviewTitle(appLanguage),
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = mrComicMascotStagePreviewText(appLanguage, stage, progress),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            MrComicIconButton(onClick = onDismiss, modifier = Modifier.size(28.dp), size = 28.dp) {
                Icon(
                    imageVector = Icons.Filled.Close,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
private fun CheckpointRecapChip(
    checkpointTrail: List<ReaderCheckpoint>,
    text: ContinueScreenText,
    showMascot: Boolean,
    onDismiss: () -> Unit,
    onCheckpointClick: (ReaderCheckpoint) -> Unit
) {
    val latestCheckpoint = checkpointTrail.firstOrNull() ?: return
    val secondaryCheckpoints = checkpointTrail.drop(1).take(2)

    MrComicCardSurface(
        shape = RoundedCornerShape(24.dp),
        containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.72f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 10.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.Top
        ) {
            MrComicMiniAvatar(
                showMascot = showMascot,
                modifier = Modifier.size(24.dp),
                compact = true,
                neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
                neutralTint = MaterialTheme.colorScheme.primary
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalAlignment = Alignment.Top
                ) {
                    Column(
                        modifier = Modifier
                            .weight(1f)
                            .clickable { onCheckpointClick(latestCheckpoint) },
                        verticalArrangement = Arrangement.spacedBy(2.dp)
                    ) {
                        Text(
                            text = text.checkpointRecap(
                                latestCheckpoint.comicTitle,
                                latestCheckpoint.chapterTitle,
                                latestCheckpoint.page + 1
                            ),
                            style = MaterialTheme.typography.labelMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                        if (latestCheckpoint.reachedAtMillis >= 0) {
                            Text(
                                text = text.checkpointUpdatedAt(formatCheckpointTime(latestCheckpoint.reachedAtMillis)),
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis
                            )
                        }
                    }
                    MrComicIconButton(onClick = onDismiss, modifier = Modifier.size(28.dp), size = 28.dp) {
                        Icon(
                            imageVector = Icons.Filled.Close,
                            contentDescription = text.checkpointDismiss,
                            tint = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }

                secondaryCheckpoints.forEach { checkpoint ->
                    HorizontalDivider(
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.08f)
                    )
                    Text(
                        text = text.checkpointRecap(
                            checkpoint.comicTitle,
                            checkpoint.chapterTitle,
                            checkpoint.page + 1
                        ),
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable { onCheckpointClick(checkpoint) }
                            .padding(vertical = 2.dp),
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.92f),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
            }
        }
    }
}

private fun formatCheckpointTime(reachedAtMillis: Long): String {
    return DateFormat.getDateTimeInstance(DateFormat.MEDIUM, DateFormat.SHORT)
        .format(Date(reachedAtMillis))
}

@Composable
private fun ContinueLoadingState() {
    val language = LocalStrings.current.languageCode
    MrComicCardSurface(
        modifier = Modifier.fillMaxWidth(),
        containerColor = MaterialTheme.colorScheme.surfaceVariant
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 20.dp, vertical = 18.dp),
            horizontalArrangement = Arrangement.spacedBy(14.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            CircularProgressIndicator(
                modifier = Modifier.size(22.dp),
                strokeWidth = 2.5.dp
            )
            Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                Text(
                    text = when (language) {
                        "en" -> "Preparing Continue"
                        "ja" -> "続き画面を準備中"
                        "zh" -> "正在准备继续页面"
                        "ko" -> "이어읽기 화면 준비 중"
                        else -> "Подготавливаю экран Продолжить"
                    },
                    style = MaterialTheme.typography.titleSmall
                )
                Text(
                    text = when (language) {
                        "en" -> "Loading reading progress and recent checkpoints."
                        "ja" -> "進捗と最近のチェックポイントを読み込んでいます。"
                        "zh" -> "正在加载阅读进度和最近的检查点。"
                        "ko" -> "읽기 진행도와 최근 체크포인트를 불러오는 중입니다."
                        else -> "Загружаю прогресс чтения и последние контрольные точки."
                    },
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
private fun EmptyContinueState(
    onOpenLibrary: () -> Unit,
    text: ContinueScreenText,
    showMascot: Boolean
) {
    MrComicCardSurface(
        modifier = Modifier.fillMaxWidth(),
        containerColor = MaterialTheme.colorScheme.surfaceVariant
    ) {
        Column(
            modifier = Modifier.padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            MrComicMiniAvatar(
                showMascot = showMascot,
                modifier = Modifier.size(36.dp),
                compact = true,
                neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
                neutralTint = MaterialTheme.colorScheme.primary
            )
            Text(text.emptyLibraryTitle, style = MaterialTheme.typography.titleMedium)
            Text(
                text.emptyLibraryHint,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            MrComicButton(
                onClick = onOpenLibrary,
                variant = MrComicButtonVariant.Tonal
            ) {
                Text(text.openLibrary)
            }
        }
    }
}

@Composable
private fun EmptyContinueReadingState(
    onOpenLibrary: () -> Unit,
    text: ContinueScreenText,
    showMascot: Boolean
) {
    MrComicCardSurface(
        modifier = Modifier.fillMaxWidth(),
        containerColor = MaterialTheme.colorScheme.surfaceVariant
    ) {
        Column(
            modifier = Modifier.padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            MrComicMiniAvatar(
                showMascot = showMascot,
                modifier = Modifier.size(32.dp),
                compact = true,
                neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
                neutralTint = MaterialTheme.colorScheme.primary
            )
            Text(text.emptyReadingTitle, style = MaterialTheme.typography.titleMedium)
            Text(
                text.emptyReadingHint,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            MrComicButton(
                onClick = onOpenLibrary,
                variant = MrComicButtonVariant.Tonal
            ) {
                Text(text.openLibrary)
            }
        }
    }
}

@Composable
private fun ContinueReadingCard(
    comic: Comic,
    onClick: () -> Unit
) {
    val strings = LocalStrings.current
    val text = remember(strings.languageCode) { continueScreenText(strings.languageCode) }
    MrComicCardSurface(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick),
        shape = RootChromePanelShape,
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme),
        shadowElevation = 4.dp
    ) {
        Row(
            modifier = Modifier.padding(16.dp),
            horizontalArrangement = Arrangement.spacedBy(14.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            CoverThumb(comic = comic, modifier = Modifier.width(86.dp).height(122.dp))
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Text(
                    text = text.continueReading,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = comic.title,
                    style = MaterialTheme.typography.headlineSmall,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis
                )
                comic.series?.let {
                    Text(
                        text = it,
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                MrComicPill(
                    containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.SOFT),
                    contentColor = MaterialTheme.colorScheme.onSurface
                ) {
                    Text(
                        text = text.pageProgress(comic.currentPage + 1, (comic.readingProgress * 100).toInt()),
                        style = MaterialTheme.typography.labelMedium
                    )
                }
            }
        }
    }
}

@Composable
private fun ContinueSummaryChip(text: String) {
    MrComicPill(
        containerColor = rootChromePillContainerColor(MaterialTheme.colorScheme, selected = true),
        contentColor = rootChromePillContentColor(MaterialTheme.colorScheme, selected = true),
        contentPadding = PaddingValues(horizontal = 12.dp, vertical = 7.dp)
    ) {
        Text(
            text = text,
            style = MaterialTheme.typography.bodySmall
        )
    }
}

@Composable
private fun ContinueComicCard(
    comic: Comic,
    onClick: () -> Unit
) {
    val strings = LocalStrings.current
    val text = remember(strings.languageCode) { continueScreenText(strings.languageCode) }
    Column(
        modifier = Modifier.width(118.dp).clickable(onClick = onClick),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        CoverThumb(comic = comic, modifier = Modifier.fillMaxWidth().height(162.dp))
        Text(
            text = comic.title,
            style = MaterialTheme.typography.labelLarge,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis
        )
        if (comic.readingProgress > 0f) {
            Text(
                text = text.progressRead((comic.readingProgress * 100).toInt()),
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun CoverThumb(
    comic: Comic,
    modifier: Modifier = Modifier
) {
    val shape = RoundedCornerShape(18.dp)
    Box(
        modifier = modifier
            .background(MaterialTheme.colorScheme.surfaceVariant, shape),
        contentAlignment = Alignment.Center
    ) {
        if (comic.coverPath != null) {
            AsyncImage(
                model = comic.coverPath,
                contentDescription = comic.title,
                contentScale = ContentScale.Crop,
                modifier = Modifier.fillMaxSize().background(MaterialTheme.colorScheme.surfaceVariant, shape)
            )
        } else {
            Icon(
                Icons.AutoMirrored.Filled.MenuBook,
                contentDescription = null,
                modifier = Modifier.size(30.dp),
                tint = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun SectionTitle(text: String) {
    Text(
        text = text,
        style = MaterialTheme.typography.titleMedium,
        fontWeight = FontWeight.SemiBold
    )
}

internal fun resolveContinueReturnPrompt(
    goalState: DailyReadingGoalState,
    continueReading: Comic?,
    checkpointTrail: List<ReaderCheckpoint>,
    currentDayKey: String = currentContinueDayKey()
): ContinueReturnPrompt? {
    val lastActivityDayKey = latestMeaningfulReadingDayKey(goalState) ?: return null
    val daysAway = continueReadingDayGap(
        currentDayKey = currentDayKey,
        lastActivityDayKey = lastActivityDayKey
    ) ?: return null
    if (daysAway !in 2..4) return null

    continueReading?.let { comic ->
        return ContinueReturnPrompt(
            daysAway = daysAway,
            comicId = comic.id,
            page = null,
            targetTitle = comic.title,
            usesCheckpoint = false
        )
    }

    checkpointTrail.firstOrNull()?.let { checkpoint ->
        return ContinueReturnPrompt(
            daysAway = daysAway,
            comicId = checkpoint.comicId,
            page = checkpoint.page,
            targetTitle = checkpoint.comicTitle,
            usesCheckpoint = true
        )
    }

    return null
}

internal fun resolveContinueReturnSupportTone(
    goalState: DailyReadingGoalState
): ContinueReturnSupportTone = when {
    !goalState.enabled -> ContinueReturnSupportTone.QUIET
    goalState.isWeeklyPlanCompleted -> ContinueReturnSupportTone.WEEKLY_DONE
    goalState.streakEnabled &&
        goalState.currentStreak > 0 &&
        goalState.graceEnabled &&
        goalState.graceDaysRemainingThisWeek == 0 -> ContinueReturnSupportTone.GRACE_SPENT
    goalState.streakEnabled && goalState.currentStreak > 0 -> ContinueReturnSupportTone.STREAK_LIVE
    else -> ContinueReturnSupportTone.WEEKLY
}

internal fun latestMeaningfulReadingDayKey(goalState: DailyReadingGoalState): String? {
    return (goalState.historyActivity + goalState.recentActivity)
        .distinctBy { it.dayKey }
        .sortedBy { it.dayKey }
        .lastOrNull { day ->
            day.pagesRead > 0 ||
                day.minutesRead > 0 ||
                day.completedCheckpoints > 0 ||
                day.xpEarned > 0
        }
        ?.dayKey
}

internal fun continueReadingDayGap(
    currentDayKey: String,
    lastActivityDayKey: String,
    timeZone: TimeZone = TimeZone.getDefault()
): Int? {
    val formatter = SimpleDateFormat("yyyy-MM-dd", Locale.US).apply {
        isLenient = false
        this.timeZone = timeZone
    }
    val currentMillis = runCatching { formatter.parse(currentDayKey)?.time }.getOrNull() ?: return null
    val lastMillis = runCatching { formatter.parse(lastActivityDayKey)?.time }.getOrNull() ?: return null
    val dayGap = ((currentMillis - lastMillis) / 86_400_000L).toInt()
    return dayGap.takeIf { it >= 0 }
}

internal fun continueReturnTitle(language: String, daysAway: Int): String = when (language) {
    "en" -> "Back after $daysAway day${if (daysAway == 1) "" else "s"}"
    "ja" -> "${daysAway} 日ぶりに戻る"
    "zh" -> "离开 ${daysAway} 天后回来"
    "ko" -> "${daysAway}일 만에 돌아옴"
    else -> "Возвращение через ${daysAway} дн."
}

internal fun continueReturnHint(
    language: String,
    targetTitle: String,
    daysAway: Int,
    usesCheckpoint: Boolean,
    showMascot: Boolean
): String = when (language) {
    "en" -> if (showMascot) {
        if (usesCheckpoint) {
            "Mr.Comic kept the last checkpoint in \"$targetTitle\" warm while you were away for $daysAway days."
        } else {
            "Mr.Comic kept \"$targetTitle\" ready while you were away for $daysAway days."
        }
    } else {
        if (usesCheckpoint) {
            "\"$targetTitle\" is ready to resume from the last checkpoint after a ${daysAway}-day pause."
        } else {
            "\"$targetTitle\" is ready to resume after a ${daysAway}-day pause."
        }
    }
    "ja" -> if (showMascot) {
        if (usesCheckpoint) {
            "Mr.Comic は ${daysAway} 日の不在のあいだ、「$targetTitle」の最後の区切りを保っていました。"
        } else {
            "Mr.Comic は ${daysAway} 日の不在のあいだ、「$targetTitle」をそのまま待機させていました。"
        }
    } else {
        if (usesCheckpoint) {
            "「$targetTitle」は ${daysAway} 日の間をあけても、最後の区切りからそのまま再開できます。"
        } else {
            "「$targetTitle」は ${daysAway} 日あいても、そのまま再開できる状態です。"
        }
    }
    "zh" -> if (showMascot) {
        if (usesCheckpoint) {
            "这 ${daysAway} 天里，Mr.Comic 一直替你保留着《$targetTitle》的上一个节点。"
        } else {
            "这 ${daysAway} 天里，Mr.Comic 一直把《$targetTitle》留在可继续的位置。"
        }
    } else {
        if (usesCheckpoint) {
            "《$targetTitle》可以在停了 ${daysAway} 天之后，直接从上一个节点继续。"
        } else {
            "《$targetTitle》在停了 ${daysAway} 天之后，仍然可以直接继续。"
        }
    }
    "ko" -> if (showMascot) {
        if (usesCheckpoint) {
            "Mr.Comic 이 ${daysAway}일 동안 \"$targetTitle\" 의 마지막 체크포인트를 그대로 지켜 두었습니다."
        } else {
            "Mr.Comic 이 ${daysAway}일 동안 \"$targetTitle\" 을 바로 이어 읽을 수 있게 붙들고 있었습니다."
        }
    } else {
        if (usesCheckpoint) {
            "\"$targetTitle\" 은 ${daysAway}일 쉬어도 마지막 체크포인트에서 바로 다시 이어갈 수 있습니다."
        } else {
            "\"$targetTitle\" 은 ${daysAway}일 쉬어도 바로 다시 이어갈 수 있습니다."
        }
    }
    else -> if (showMascot) {
        if (usesCheckpoint) {
            "Mr.Comic держал последнюю точку в «$targetTitle», пока чтение стояло ${daysAway} дн."
        } else {
            "Mr.Comic сохранил живой маршрут к «$targetTitle», пока чтение стояло ${daysAway} дн."
        }
    } else {
        if (usesCheckpoint) {
            "«$targetTitle» готов продолжиться с последней точки после паузы в ${daysAway} дн."
        } else {
            "«$targetTitle» готов снова продолжиться после паузы в ${daysAway} дн."
        }
    }
}

internal fun continueReturnSupportText(
    language: String,
    tone: ContinueReturnSupportTone,
    goalState: DailyReadingGoalState
): String = when (tone) {
    ContinueReturnSupportTone.QUIET -> when (language) {
        "en" -> "Quiet return: just pick the trail back up without extra mascot prompting."
        "ja" -> "静かな復帰です。余計な演出なしで、そのまま読書の流れに戻れます。"
        "zh" -> "这是一次安静的回归，不需要额外提示，直接把阅读线接上就好。"
        "ko" -> "조용한 복귀입니다. 추가 연출 없이 읽기 흐름만 다시 이어가면 됩니다."
        else -> "Тихое возвращение: просто подхвати маршрут обратно без лишних подсказок."
    }
    ContinueReturnSupportTone.WEEKLY -> when (language) {
        "en" -> "This return feeds the weekly plan right away: ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages} pages."
        "ja" -> "この復帰はそのまま今週の計画につながります: ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}ページ。"
        "zh" -> "这次回来会直接继续周计划：${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages} 页。"
        "ko" -> "이번 복귀는 곧바로 이번 주 계획으로 이어집니다: ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}페이지."
        else -> "Это возвращение сразу идёт в недельный план: ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages} стр."
    }
    ContinueReturnSupportTone.STREAK_LIVE -> when (language) {
        "en" -> "The streak is still alive, so the safest return is through the same reading route."
        "ja" -> "ストリークはまだ生きています。いちばん安全なのは同じ読書ルートに戻ることです。"
        "zh" -> "连读还活着，所以最稳妥的回归方式就是接回同一条阅读路线。"
        "ko" -> "스트릭은 아직 살아 있습니다. 가장 안전한 복귀는 같은 읽기 경로로 돌아가는 것입니다."
        else -> "Серия ещё жива, так что самый безопасный возврат — через тот же маршрут чтения."
    }
    ContinueReturnSupportTone.GRACE_SPENT -> when (language) {
        "en" -> "Grace is already spent this week, so this return keeps the rhythm alive without a harsh reset."
        "ja" -> "今週の猶予はもう使っています。だからこの復帰はリズムを切らさず、強いリセットも避けます。"
        "zh" -> "本周宽限已经用掉了，所以这次回归最好稳稳接上节奏，不要硬性重置。"
        "ko" -> "이번 주 완충일은 이미 사용되었습니다. 그래서 이번 복귀는 리듬을 끊지 않는 쪽이 가장 안전합니다."
        else -> "Запасной день на этой неделе уже потрачен, так что этот возврат лучше держать мягким, без жёсткого сброса ритма."
    }
    ContinueReturnSupportTone.WEEKLY_DONE -> when (language) {
        "en" -> "The weekly plan is already safe, so this return can stay calm and low-pressure."
        "ja" -> "今週の計画はもう安全圏です。この復帰は落ち着いて、圧をかけずに続けられます。"
        "zh" -> "本周计划已经安全完成了，这次回来可以很平静，不需要额外压力。"
        "ko" -> "이번 주 계획은 이미 안전합니다. 이번 복귀는 차분하고 부담 없이 이어가면 됩니다."
        else -> "Недельный план уже в безопасности, так что это возвращение можно держать спокойным и без давления."
    }
}

private fun currentContinueDayKey(
    timeZone: TimeZone = TimeZone.getDefault()
): String = SimpleDateFormat("yyyy-MM-dd", Locale.US).apply {
    this.timeZone = timeZone
}.format(Date())
