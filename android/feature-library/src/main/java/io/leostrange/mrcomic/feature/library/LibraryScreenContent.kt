package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.grid.GridItemSpan
import androidx.compose.foundation.lazy.grid.LazyGridScope
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Headphones
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotState
import io.leostrange.mrcomic.core.model.Audiobook
import io.leostrange.mrcomic.core.model.isReadCompleted
import io.leostrange.mrcomic.core.model.isReadingInProgress
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.feature.library.components.AchievementQuestTransition
import io.leostrange.mrcomic.feature.library.components.ComicGridItem
import io.leostrange.mrcomic.feature.library.components.LibraryAchievement

/**
 * The "library_stats" grid item content: quote stats bar, Mr.Comic hub card
 * (achievements section) or the plain stats bar for books/bookmarks sections.
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

/**
 * Grid items for Quotes, Series grouped view, and Standard Files/Bookmarks display.
 */
internal fun LazyGridScope.libraryDisplayItemsGridContent(
    uiState: LibraryUiState,
    visibleAudiobooks: List<Audiobook>,
    isQuoteSection: Boolean,
    isBookmarkSection: Boolean,
    isAchievementSection: Boolean,
    strings: AppStrings,
    onQuoteClick: (String, Int) -> Unit,
    onComicClick: (String) -> Unit,
    onAudiobookClick: (String) -> Unit,
    onSelectComicId: (String) -> Unit,
    onSetQuoteToDelete: (SavedQuote) -> Unit,
    onSetFolderToDelete: (LibraryFolderItem) -> Unit,
    onSetAudiobookToDelete: (Audiobook) -> Unit,
    onOpenFolderSheet: (String) -> Unit,
    onShowMissingSourceSnackbar: () -> Unit
) {
    if (uiState.contentSection == LibraryContentSection.QUOTES) {
        if (uiState.quotes.isEmpty()) {
            item(key = "empty_quotes", span = { GridItemSpan(maxLineSpan) }) {
                EmptyQuotesPlaceholder(showMascot = uiState.mascotUiEnabled)
            }
        } else {
            items(uiState.quotes, key = { "quote_${it.id}" }) { quote ->
                QuoteCard(
                    quote = quote,
                    sourceAvailable = quote.comicId in uiState.availableQuoteComicIds,
                    onClick = { onQuoteClick(quote.comicId, quote.page) },
                    onLongClick = { onSetQuoteToDelete(quote) },
                    onUnavailableSourceClick = onShowMissingSourceSnackbar
                )
            }
        }
    } else if (!isAchievementSection &&
        uiState.groupByMode == GroupByMode.SERIES &&
        ((isBookmarkSection && uiState.bookmarkedGroupSections.isNotEmpty()) ||
            (!isBookmarkSection && uiState.groupSections.isNotEmpty()))
    ) {
        val sections = if (isBookmarkSection) uiState.bookmarkedGroupSections else uiState.groupSections
        if (uiState.viewMode == LibraryViewMode.STRIPS) {
            val seriesStripSections = sections.mapIndexed { index, (title, comics) ->
                LibraryStripSectionData(
                    key = "series_strip_${index}_$title",
                    title = title,
                    comics = comics
                )
            }
            items(seriesStripSections, key = { it.key }) { section ->
                LibraryDisplayStripSection(
                    section = section,
                    uiState = uiState,
                    onComicClick = { onComicClick(it.id) },
                    onComicLongClick = { onSelectComicId(it.id) },
                    onFolderClick = { folder ->
                        if (folder.fileCount == 1 && folder.subfolderCount == 0) {
                            val singleComic = uiState.comics.find { it.folderId == folder.path }
                            if (singleComic != null) {
                                onComicClick(singleComic.id)
                            } else {
                                onOpenFolderSheet(folder.path)
                            }
                        } else {
                            onOpenFolderSheet(folder.path)
                        }
                    },
                    onFolderLongClick = onSetFolderToDelete,
                    onAudiobookClick = { onAudiobookClick(it.id) },
                    onAudiobookLongClick = onSetAudiobookToDelete
                )
            }
        } else {
            sections.forEach { (title, comics) ->
                item(key = "section_$title", span = { GridItemSpan(maxLineSpan) }) {
                    Text(
                        text = title,
                        style = MaterialTheme.typography.titleSmall,
                        color = MaterialTheme.colorScheme.primary,
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 16.dp)
                            .padding(top = 8.dp, bottom = 4.dp)
                    )
                }
                items(comics, key = { it.id }) { comic ->
                    LibraryGridCell(
                        isGrid = uiState.viewMode != LibraryViewMode.LIST,
                        tileSizeDp = uiState.tileSizeDp
                    ) {
                        ComicGridItem(
                            comic = comic,
                            isGrid = uiState.viewMode != LibraryViewMode.LIST,
                            cardStyle = uiState.cardStyle,
                            tileSizeDp = uiState.tileSizeDp,
                            coverScaleMode = uiState.coverScale,
                            thumbnailMode = uiState.thumbnailMode,
                            shelfStyle = uiState.shelfStyle,
                            shelfDepth = uiState.shelfDepth,
                            graphicCoverStyle = uiState.graphicCoverStyle,
                            cardShadow = uiState.cardShadow,
                            titleScale = uiState.titleScale,
                            titleLines = uiState.titleLines,
                            cardStroke = uiState.cardStroke,
                            cardCornerRadius = uiState.cardCornerRadius,
                            titlePanelOpacity = uiState.titlePanelOpacity,
                            showProgressIndicators = uiState.showProgressIndicators,
                            showCoverTitles = uiState.showCoverTitlesOnGrid,
                            onClick = { onComicClick(comic.id) },
                            onLongClick = { onSelectComicId(comic.id) }
                        )
                    }
                }
            }
        }
    } else if (!isAchievementSection) {
        val activeDisplayItems = if (isBookmarkSection) uiState.bookmarkedDisplayItems else uiState.displayItems
        if (activeDisplayItems.isEmpty() && (uiState.contentSection != LibraryContentSection.FILES || visibleAudiobooks.isEmpty())) {
            item(key = "empty_folder", span = { GridItemSpan(maxLineSpan) }) {
                if (isBookmarkSection) {
                    EmptyBookmarksPlaceholder(showMascot = uiState.mascotUiEnabled)
                } else {
                    EmptyFolderPlaceholder(
                        title = uiState.breadcrumbs.lastOrNull()?.label ?: strings.actionFolder,
                        showMascot = uiState.mascotUiEnabled
                    )
                }
            }
        } else if (uiState.viewMode == LibraryViewMode.STRIPS) {
            val stripSections = buildLibraryStripSections(
                items = activeDisplayItems,
                appLanguage = uiState.appLanguage,
                audiobooks = if (uiState.contentSection == LibraryContentSection.FILES) {
                    visibleAudiobooks
                } else {
                    emptyList()
                }
            )
            items(stripSections, key = { it.key }) { section ->
                LibraryDisplayStripSection(
                    section = section,
                    uiState = uiState,
                    onComicClick = { onComicClick(it.id) },
                    onComicLongClick = { onSelectComicId(it.id) },
                    onFolderClick = { folder ->
                        if (folder.fileCount == 1 && folder.subfolderCount == 0) {
                            val singleComic = uiState.comics.find { it.folderId == folder.path }
                            if (singleComic != null) {
                                onComicClick(singleComic.id)
                            } else {
                                onOpenFolderSheet(folder.path)
                            }
                        } else {
                            onOpenFolderSheet(folder.path)
                        }
                    },
                    onFolderLongClick = onSetFolderToDelete,
                    onAudiobookClick = { onAudiobookClick(it.id) },
                    onAudiobookLongClick = onSetAudiobookToDelete
                )
            }
        } else {
            items(
                items = activeDisplayItems,
                key = { it.key },
                span = { item ->
                    if (item is LibrarySectionDividerItem) {
                        GridItemSpan(maxLineSpan)
                    } else {
                        GridItemSpan(1)
                    }
                }
            ) { item ->
                when (item) {
                    is LibrarySectionDividerItem -> {
                        LibraryFileSectionDivider(section = item.section)
                    }

                    is LibraryComicItem -> {
                        LibraryGridCell(
                            isGrid = uiState.viewMode != LibraryViewMode.LIST,
                            tileSizeDp = uiState.tileSizeDp
                        ) {
                            ComicGridItem(
                                comic = item.comic,
                                isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                cardStyle = uiState.cardStyle,
                                tileSizeDp = uiState.tileSizeDp,
                                coverScaleMode = uiState.coverScale,
                                thumbnailMode = uiState.thumbnailMode,
                                shelfStyle = uiState.shelfStyle,
                                shelfDepth = uiState.shelfDepth,
                                graphicCoverStyle = uiState.graphicCoverStyle,
                                cardShadow = uiState.cardShadow,
                                titleScale = uiState.titleScale,
                                titleLines = uiState.titleLines,
                                cardStroke = uiState.cardStroke,
                                cardCornerRadius = uiState.cardCornerRadius,
                                titlePanelOpacity = uiState.titlePanelOpacity,
                                showProgressIndicators = uiState.showProgressIndicators,
                                showCoverTitles = uiState.showCoverTitlesOnGrid,
                                onClick = { onComicClick(item.comic.id) },
                                onLongClick = { onSelectComicId(item.comic.id) }
                            )
                        }
                    }

                    is LibraryFolderItem -> {
                        LibraryGridCell(
                            isGrid = uiState.viewMode != LibraryViewMode.LIST,
                            tileSizeDp = uiState.tileSizeDp
                        ) {
                            FolderCard(
                                folder = item,
                                isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                cardStyle = uiState.cardStyle,
                                tileSizeDp = uiState.tileSizeDp,
                                coverScale = uiState.coverScale,
                                thumbnailMode = uiState.thumbnailMode,
                                shelfStyle = uiState.shelfStyle,
                                shelfDepth = uiState.shelfDepth,
                                cardShadow = uiState.cardShadow,
                                onClick = {
                                    if (item.fileCount == 1 && item.subfolderCount == 0) {
                                        val singleComic = uiState.comics.find { it.folderId == item.path }
                                        if (singleComic != null) {
                                            onComicClick(singleComic.id)
                                        } else {
                                            onOpenFolderSheet(item.path)
                                        }
                                    } else {
                                        onOpenFolderSheet(item.path)
                                    }
                                },
                                onLongClick = { onSetFolderToDelete(item) }
                            )
                        }
                    }
                }
            }
            if (uiState.contentSection == LibraryContentSection.FILES && visibleAudiobooks.isNotEmpty()) {
                item(key = "audiobook_divider", span = { GridItemSpan(maxLineSpan) }) {
                    LibrarySectionHeader(
                        title = libraryAudiobooksStripLabel(uiState.appLanguage),
                        icon = Icons.Default.Headphones
                    )
                }
                items(visibleAudiobooks, key = { "ab_${it.id}" }) { audiobook ->
                    LibraryGridCell(
                        isGrid = uiState.viewMode != LibraryViewMode.LIST,
                        tileSizeDp = uiState.tileSizeDp
                    ) {
                        AudiobookGridItem(
                            audiobook = audiobook,
                            isGrid = uiState.viewMode != LibraryViewMode.LIST,
                            cardStyle = uiState.cardStyle,
                            tileSizeDp = uiState.tileSizeDp,
                            thumbnailMode = uiState.thumbnailMode,
                            shelfStyle = uiState.shelfStyle,
                            shelfDepth = uiState.shelfDepth,
                            cardShadow = uiState.cardShadow,
                            titleScale = uiState.titleScale,
                            titleLines = uiState.titleLines,
                            cardStroke = uiState.cardStroke,
                            cardCornerRadius = uiState.cardCornerRadius,
                            titlePanelOpacity = uiState.titlePanelOpacity,
                            showCoverTitles = uiState.showCoverTitlesOnGrid,
                            onClick = { onAudiobookClick(audiobook.id) },
                            onLongClick = { onSetAudiobookToDelete(audiobook) }
                        )
                    }
                }
            }
        }
    }
}
