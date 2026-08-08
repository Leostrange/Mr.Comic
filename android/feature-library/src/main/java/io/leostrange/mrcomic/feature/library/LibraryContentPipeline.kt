package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.domain.analytics.calculateMascotProgress
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.isReadCompleted
import io.leostrange.mrcomic.core.model.isReadingInProgress

/**
 * Pure content pipeline for the library (4.1).
 *
 * Derives the full display state — filtering, sorting, folder/series
 * grouping, statistics and mascot progress — from the current UI state and
 * the raw repository lists. Extracted from `LibraryViewModel.applyFiltersAndSort`
 * so the pipeline is unit-testable without the ViewModel or Android.
 */
internal class LibraryContentPipeline {

    fun derive(
        state: LibraryUiState,
        rawComics: List<Comic>,
        rawQuotes: List<SavedQuote>,
        allLibraryComics: List<Comic>,
    ): LibraryUiState {
        val filtered = filterLibraryComics(rawComics, state.statusFilter, state.formatFilter)
        val sorted = sortLibraryComics(filtered, state.sortOrder)
        val bookmarkedSorted = sorted.filter { it.isBookmarked }
        val sortedQuotes = rawQuotes.sortedByDescending { it.createdAt }
        val mascotProgress = calculateMascotProgress(allLibraryComics)
        val recent = rawComics
            .filter { it.isReadingInProgress() }
            .sortedByDescending { it.lastReadDate }
            .take(10)

        val effectiveFolderPath = if (state.groupByMode == GroupByMode.FOLDER) {
            normalizeFolderPath(state.currentFolderPath, filtered)
        } else {
            null
        }
        val effectiveFolderSheetPath = if (state.groupByMode == GroupByMode.FOLDER) {
            normalizeFolderPath(state.folderSheetPath, filtered)
        } else {
            null
        }

        val displayItems = when (state.groupByMode) {
            GroupByMode.FOLDER -> buildFolderDisplayItems(filtered, effectiveFolderPath, state.sortOrder)
            else -> buildSeparatedComicDisplayItems(sorted)
        }
        val folderSheetItems = if (effectiveFolderSheetPath != null) {
            buildFolderDisplayItems(filtered, effectiveFolderSheetPath, state.sortOrder)
        } else {
            emptyList()
        }

        return state.copy(
            comics = sorted,
            displayItems = displayItems,
            groupSections = buildSectionsFor(state, sorted),
            bookmarkedComics = bookmarkedSorted,
            bookmarkedDisplayItems = buildSeparatedComicDisplayItems(bookmarkedSorted),
            bookmarkedGroupSections = buildSectionsFor(state, bookmarkedSorted),
            recentlyRead = recent,
            isLoading = false,
            currentFolderPath = effectiveFolderPath,
            breadcrumbs = buildBreadcrumbs(effectiveFolderPath, state.appLanguage),
            quotes = sortedQuotes,
            availableQuoteComicIds = allLibraryComics.map { comic -> comic.id }.toSet(),
            totalComicCount = filtered.size,
            readingComicCount = rawComics.count { c -> c.isReadingInProgress() },
            totalBookmarkedCount = bookmarkedSorted.size,
            totalQuoteCount = sortedQuotes.size,
            quoteSourceCount = sortedQuotes.map { it.comicId }.distinct().size,
            visibleFolderCount = displayItems.count { item -> item is LibraryFolderItem },
            visibleComicCount = displayItems.count { item -> item is LibraryComicItem },
            // Данные для достижений берём из полного сырого списка (без фильтров)
            allComicsRawCount = rawComics.size,
            completedComicCount = rawComics.count { c -> c.isReadCompleted() },
            bookmarkedComicCount = rawComics.count { c -> c.isBookmarked },
            rawAuthors = rawComics.map { c -> c.author },
            rawGenres = rawComics.map { c -> c.genre },
            mascotProgress = mascotProgress,
            folderSheetPath = effectiveFolderSheetPath,
            folderSheetItems = folderSheetItems,
            folderSheetBreadcrumbs = buildBreadcrumbs(effectiveFolderSheetPath, state.appLanguage)
        )
    }

    private fun buildSectionsFor(
        state: LibraryUiState,
        comics: List<Comic>
    ): List<Pair<String, List<Comic>>> = when (state.groupByMode) {
        GroupByMode.SERIES -> buildSections(comics) {
            it.series?.takeIf(String::isNotBlank) ?: vmTr(
                lang = state.appLanguage,
                ru = "Без серии",
                en = "No series",
                ja = "シリーズなし",
                zh = "无系列",
                ko = "시리즈 없음"
            )
        }
        else -> emptyList()
    }
}
