package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.MascotProgressState
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotContext
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotState
import io.leostrange.mrcomic.core.domain.analytics.resolveMascotStageArchive
import io.leostrange.mrcomic.core.domain.analytics.resolveMrComicMascotState
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.ui.library.RootChromeTopBarHost
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.library.rootChromeTopBarColors
import io.leostrange.mrcomic.feature.library.components.LibraryAchievement
import io.leostrange.mrcomic.feature.library.components.LibraryAchievementsRow
import io.leostrange.mrcomic.feature.library.components.computeAchievements

// Data classes and strings extracted to MrComicProgressStrings.kt

@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
fun MrComicProgressRoute(
    onBackClick: () -> Unit,
    onComicClick: (String) -> Unit,
    viewModel: LibraryViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    val strings = LocalStrings.current
    val text = remember(uiState.appLanguage) { mrComicProgressText(uiState.appLanguage) }
    val achievementStrings = remember(strings.languageCode) { mrComicAchievementStrings(strings) }
    val achievements = remember(
        uiState.allComicsRawCount,
        uiState.completedComicCount,
        uiState.bookmarkedComicCount,
        uiState.rawAuthors,
        uiState.rawGenres,
        uiState.secretCatUnlocked,
        achievementStrings
    ) {
        computeAchievements(
            totalComics = uiState.allComicsRawCount,
            completedComics = uiState.completedComicCount,
            bookmarkedComics = uiState.bookmarkedComicCount,
            allAuthors = uiState.rawAuthors,
            allGenres = uiState.rawGenres,
            secretUnlocked = uiState.secretCatUnlocked,
            strings = achievementStrings
        )
    }
    val achievementSummary = remember(achievements, uiState.rememberedMascotQuestAchievementId) {
        resolveMrComicAchievementSummary(
            achievements = achievements,
            rememberedAchievementId = uiState.rememberedMascotQuestAchievementId
        )
    }
    val mascotState = remember(
        uiState.mascotProgress,
        uiState.allComicsRawCount,
        uiState.completedComicCount,
        uiState.bookmarkedComicCount,
        uiState.totalQuoteCount,
        achievementSummary,
        uiState.secretCatUnlocked,
        uiState.dailyReadingGoalState,
        uiState.recentlyRead,
        uiState.acknowledgedMascotStageName,
        uiState.mascotUiEnabled
    ) {
        resolveMrComicMascotState(
            context = MrComicMascotContext.PROGRESS,
            progress = uiState.mascotProgress,
            totalTitles = uiState.allComicsRawCount,
            completedTitles = uiState.completedComicCount,
            bookmarkedTitles = uiState.bookmarkedComicCount,
            quotesCount = uiState.totalQuoteCount,
            unlockedCount = achievementSummary.unlockedCount,
            totalCount = achievementSummary.visibleTotal,
            secretUnlocked = uiState.secretCatUnlocked,
            goalState = uiState.dailyReadingGoalState,
            recentComic = uiState.recentlyRead.firstOrNull(),
            acknowledgedStageName = uiState.acknowledgedMascotStageName,
            previewEnabled = uiState.mascotUiEnabled
        )
    }
    Scaffold(
        contentWindowInsets = WindowInsets(0, 0, 0, 0),
        topBar = {
            RootChromeTopBarHost {
                TopAppBar(
                    title = { Text(text.title) },
                    colors = rootChromeTopBarColors(),
                    windowInsets = WindowInsets(0, 0, 0, 0),
                    navigationIcon = {
                        IconButton(onClick = onBackClick) {
                            Icon(
                                imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = strings.back
                            )
                        }
                    }
                )
            }
        }
    ) { innerPadding ->
        MrComicProgressScreen(
            appLanguage = uiState.appLanguage,
            mascotProgress = uiState.mascotProgress,
            acknowledgedMascotStageName = uiState.acknowledgedMascotStageName,
            dailyReadingGoalState = uiState.dailyReadingGoalState,
            totalTitles = uiState.allComicsRawCount,
            recent = uiState.recentlyRead.take(3),
            achievements = achievements,
            achievementSummary = achievementSummary,
            mascotState = mascotState,
            showMascot = uiState.mascotUiEnabled,
            searchActive = false,
            onComicClick = onComicClick,
            modifier = Modifier.padding(innerPadding)
        )
    }
}

@Composable
internal fun MrComicProgressScreen(
    appLanguage: String,
    mascotProgress: MascotProgressState,
    acknowledgedMascotStageName: String?,
    dailyReadingGoalState: DailyReadingGoalState,
    totalTitles: Int,
    recent: List<Comic>,
    achievements: List<LibraryAchievement>,
    achievementSummary: MrComicAchievementSummary,
    mascotState: MrComicMascotState,
    showMascot: Boolean,
    searchActive: Boolean,
    onComicClick: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    val text = remember(appLanguage) { mrComicProgressText(appLanguage) }
    val unlockedCount = achievementSummary.unlockedCount
    val stageArchive = remember(mascotProgress, acknowledgedMascotStageName) {
        resolveMascotStageArchive(
            progress = mascotProgress,
            acknowledgedStageName = acknowledgedMascotStageName
        )
    }
    Column(
        modifier = modifier
            .fillMaxSize()
            .verticalScroll(rememberScrollState())
            .padding(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(14.dp)
    ) {
        MrComicProgressHeroCard(
            appLanguage = appLanguage,
            text = text,
            progress = mascotProgress,
            mascotState = mascotState,
            showMascot = showMascot,
            unlockedCount = unlockedCount,
            totalCount = achievementSummary.visibleTotal
        )
        if (shouldShowMrComicProgressSearchContext(searchActive)) {
            MrComicProgressSearchContextCard(appLanguage = appLanguage)
        }
        MrComicProgressRhythmCard(
            text = text,
            goalState = dailyReadingGoalState
        )
        MrComicProgressStreakGraceCard(
            appLanguage = appLanguage,
            text = text,
            goalState = dailyReadingGoalState
        )
        MrComicProgressHighlightsCard(
            text = text,
            progress = mascotProgress,
            goalState = dailyReadingGoalState
        )
        MrComicProgressHistoryCard(
            appLanguage = appLanguage,
            text = text,
            goalState = dailyReadingGoalState
        )
        MrComicProgressRecentCard(
            appLanguage = appLanguage,
            text = text,
            totalTitles = totalTitles,
            searchActive = searchActive,
            recent = recent,
            onComicClick = onComicClick
        )
        if (shouldShowMrComicProgressStageArchive(stageArchive)) {
            MrComicProgressStageArchiveCard(
                appLanguage = appLanguage,
                archive = stageArchive,
                showMascot = showMascot
            )
        }
        MrComicProgressAchievementHeader(
            appLanguage = appLanguage,
            text = text,
            achievementSummary = achievementSummary
        )
        LibraryAchievementsRow(
            achievements = achievements,
            showHeader = false,
            modifier = Modifier.fillMaxWidth()
        )
        Spacer(Modifier.height(8.dp))
    }
}

