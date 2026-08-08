package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotState
import io.leostrange.mrcomic.core.model.isReadCompleted
import io.leostrange.mrcomic.core.model.isReadingInProgress
import io.leostrange.mrcomic.feature.library.components.AchievementQuestTransition
import io.leostrange.mrcomic.feature.library.components.LibraryAchievement

// Phase: stats/hub grid content extracted from LibraryScreen (2026-08-08).

/**
 * The "library_stats" grid item content: quote stats bar, Mr.Comic hub card
 * (achievements section) or the plain stats bar for books/bookmarks sections.
 * The surrounding [androidx.compose.foundation.lazy.grid.LazyGridItemScope.item]
 * wrapper stays at the call site.
 */
@Composable
internal fun LibraryStatsGridContent(
    uiState: LibraryUiState,
    viewModel: LibraryViewModel,
    unlockedCount: Int,
    visibleAchievementTotal: Int,
    mascotState: MrComicMascotState,
    activeDiscoveryAchievement: LibraryAchievement?,
    visibleQuestFeedback: AchievementQuestTransition?,
    stagePreview: MascotStage?,
    uniqueAuthorCount: Int,
    uniqueGenreCount: Int,
    preferredQuestSeriesName: String?,
    preferredQuestCollectionQuery: String?,
    activeDiscoveryAction: MrComicDiscoveryAction?,
    openProgressProfile: () -> Unit,
    onComicClick: (String) -> Unit,
    onDismissQuestFeedback: () -> Unit,
) {
    val isQuoteSection = uiState.contentSection == LibraryContentSection.QUOTES
    val isAchievementSection = uiState.contentSection == LibraryContentSection.ACHIEVEMENTS
    val isBookmarkSection = uiState.contentSection == LibraryContentSection.BOOKMARKS
    if (isQuoteSection) {
        QuoteStatsBar(
            totalQuotes = uiState.totalQuoteCount,
            sourceCount = uiState.quoteSourceCount,
            modifier = Modifier.fillMaxWidth()
        )
    } else if (isAchievementSection) {
        MrComicHubCard(
            unlockedCount = unlockedCount,
            totalCount = visibleAchievementTotal,
            mascotState = mascotState,
            nextAchievement = activeDiscoveryAchievement,
            questFeedback = visibleQuestFeedback,
            dailyReadingGoalState = uiState.dailyReadingGoalState,
            mascotProgress = uiState.mascotProgress,
            stagePreview = stagePreview,
            totalTitles = uiState.allComicsRawCount,
            completedTitles = uiState.completedComicCount,
            bookmarkedTitles = uiState.bookmarkedComicCount,
            quotesCount = uiState.totalQuoteCount,
            authorCount = uniqueAuthorCount,
            genreCount = uniqueGenreCount,
            secretUnlocked = uiState.secretCatUnlocked,
            recentComic = uiState.recentlyRead.firstOrNull(),
            nextAchievementHintAction = activeDiscoveryAction,
            preferredSeriesName = preferredQuestSeriesName,
            preferredCollectionQuery = preferredQuestCollectionQuery,
            onOpenRecent = {
                uiState.recentlyRead.firstOrNull()?.let { comic ->
                    onComicClick(comic.id)
                }
            },
            onOpenFiles = {
                viewModel.setContentSection(LibraryContentSection.FILES)
            },
            onOpenSeries = {
                viewModel.setContentSection(LibraryContentSection.FILES)
                viewModel.search("")
                viewModel.setGroupBy(GroupByMode.SERIES)
            },
            onOpenCollection = { query ->
                viewModel.setContentSection(LibraryContentSection.FILES)
                viewModel.setGroupBy(GroupByMode.NONE)
                viewModel.search(query)
            },
            onOpenProgress = openProgressProfile,
            onDismissStagePreview = viewModel::acknowledgeMascotStagePreview,
            onDismissQuestFeedback = onDismissQuestFeedback,
            showMascot = uiState.mascotUiEnabled,
            appLanguage = uiState.appLanguage,
            searchActive = uiState.searchQuery.isNotBlank(),
            modifier = Modifier.fillMaxWidth()
        )
    } else if (
        uiState.contentSection != LibraryContentSection.ACHIEVEMENTS &&
        uiState.contentSection != LibraryContentSection.FILES
    ) {
        val activeComics = if (isBookmarkSection) uiState.bookmarkedComics else uiState.comics
        LibraryStatsBar(
            totalItems = if (isBookmarkSection) uiState.totalBookmarkedCount else uiState.totalComicCount,
            completedCount = activeComics.count { it.isReadCompleted() },
            inProgressCount = activeComics.count { it.isReadingInProgress() },
            modifier = Modifier.fillMaxWidth()
        )
    }
}
