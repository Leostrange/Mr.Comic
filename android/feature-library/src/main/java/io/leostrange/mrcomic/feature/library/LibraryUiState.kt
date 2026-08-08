package io.leostrange.mrcomic.feature.library

// Phase J (2026-08-05): Types + UiState extracted from LibraryViewModel.kt

import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.MascotProgressState
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.model.Audiobook
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.SortOrder
import io.leostrange.mrcomic.core.ui.library.*


enum class LibraryStatusFilter { ALL, BOOKMARKED, IN_PROGRESS, COMPLETED }
enum class LibraryFormatFilter { ALL, IMAGE, PDF, TEXT }
enum class GroupByMode { NONE, SERIES, FOLDER }
enum class LibraryContentSection { FILES, AUDIOBOOKS, BOOKMARKS, QUOTES, ACHIEVEMENTS }

data class LibraryBreadcrumb(
    val label: String,
    val path: String?
)

sealed interface LibraryDisplayItem {
    val key: String
}

enum class LibraryFileSection { GRAPHIC, BOOKS }

data class LibrarySectionDividerItem(val section: LibraryFileSection) : LibraryDisplayItem {
    override val key: String = "section_divider_${section.name.lowercase()}"
}

data class LibraryComicItem(val comic: Comic) : LibraryDisplayItem {
    override val key: String = "comic_${comic.id}"
}

data class LibraryFolderItem(
    val path: String,
    val title: String,
    val coverPath: String?,
    val fileCount: Int,
    val subfolderCount: Int,
    val newestAdded: Long,
    val lastReadDate: Long?,
    val totalSize: Long,
    val progress: Float
) : LibraryDisplayItem {
    override val key: String = "folder_$path"
}

data class LibraryUiState(
    val comics: List<Comic> = emptyList(),
    val displayItems: List<LibraryDisplayItem> = emptyList(),
    val isLoading: Boolean = false,
    val error: String? = null,
    val searchQuery: String = "",
    val sortOrder: SortOrder = SortOrder.DATE_ADDED_DESC,
    val statusFilter: LibraryStatusFilter = LibraryStatusFilter.ALL,
    val formatFilter: LibraryFormatFilter = LibraryFormatFilter.ALL,
    val viewMode: LibraryViewMode = LibraryViewMode.GRID,
    val libraryGridColumns: Int = 3,
    val tileSizeDp: Int = 150,
    val cardStyle: String = DEFAULT_LIBRARY_CARD_STYLE,
    val recentStripPosition: String = "TOP",
    val showProgressIndicators: Boolean = true,
    val showCoverTitlesOnGrid: Boolean = true,
    val coverScale: String = DEFAULT_LIBRARY_COVER_SCALE,
    val backdropStrength: Float = DEFAULT_LIBRARY_BACKDROP_STRENGTH,
    val groupByMode: GroupByMode = GroupByMode.FOLDER,
    val groupSections: List<Pair<String, List<Comic>>> = emptyList(),
    val bookmarkedComics: List<Comic> = emptyList(),
    val bookmarkedDisplayItems: List<LibraryDisplayItem> = emptyList(),
    val bookmarkedGroupSections: List<Pair<String, List<Comic>>> = emptyList(),
    val recentlyRead: List<Comic> = emptyList(),
    val thumbnailMode: String = DEFAULT_LIBRARY_THUMBNAIL_MODE,
    val shelfStyle: String = DEFAULT_LIBRARY_SHELF_STYLE,
    val shelfDepth: Float = DEFAULT_LIBRARY_SHELF_DEPTH,
    val cardShadow: Float = DEFAULT_LIBRARY_CARD_SHADOW,
    val graphicCoverStyle: String = DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE,
    val backgroundStyle: String = DEFAULT_LIBRARY_BACKGROUND_STYLE,
    val backgroundImageUri: String? = null,
    val backgroundBlur: Float = DEFAULT_LIBRARY_BACKGROUND_BLUR,
    val backgroundVeil: Float = DEFAULT_LIBRARY_BACKGROUND_VEIL,
    val appLanguage: String = "ru",
    val titleScale: Float = DEFAULT_LIBRARY_TITLE_SCALE,
    val titleLines: Int = DEFAULT_LIBRARY_TITLE_LINES,
    val cardStroke: Float = DEFAULT_LIBRARY_CARD_STROKE,
    val cardCornerRadius: Int = DEFAULT_LIBRARY_CARD_CORNER_RADIUS,
    val titlePanelOpacity: Float = DEFAULT_LIBRARY_TITLE_PANEL_OPACITY,
    val showStatusChips: Boolean = true,
    val contentSection: LibraryContentSection = LibraryContentSection.FILES,
    val currentFolderPath: String? = null,
    val breadcrumbs: List<LibraryBreadcrumb> = emptyList(),
    val quotes: List<SavedQuote> = emptyList(),
    val availableQuoteComicIds: Set<String> = emptySet(),
    val totalComicCount: Int = 0,
    val readingComicCount: Int = 0,
    val totalBookmarkedCount: Int = 0,
    val totalQuoteCount: Int = 0,
    val quoteSourceCount: Int = 0,
    val visibleFolderCount: Int = 0,
    val visibleComicCount: Int = 0,
    val mascotUiEnabled: Boolean = true,
    val questPromptsEnabled: Boolean = true,
    // Достижения — сырые данные всей библиотеки (без фильтров)
    val allComicsRawCount: Int = 0,
    val completedComicCount: Int = 0,
    val bookmarkedComicCount: Int = 0,
    val rawAuthors: List<String?> = emptyList(),
    val rawGenres: List<String?> = emptyList(),
    val dailyReadingGoalState: DailyReadingGoalState = DailyReadingGoalState(),
    val mascotProgress: MascotProgressState = MascotProgressState(),
    val acknowledgedMascotStageName: String = MascotStage.CHILD.name,
    val rememberedMascotQuestAchievementId: String? = null,
    val rememberedMascotQuestAction: String? = null,
    val secretCatUnlocked: Boolean = false,
    val audiobooks: List<Audiobook> = emptyList(),
    val folderSheetPath: String? = null,
    val folderSheetItems: List<LibraryDisplayItem> = emptyList(),
    val folderSheetBreadcrumbs: List<LibraryBreadcrumb> = emptyList()
)

enum class LibraryViewMode { GRID, LIST, STRIPS }

internal fun normalizeLibraryViewMode(
    storedMode: String?,
    legacyGrid: Boolean = true
): LibraryViewMode = runCatching {
    LibraryViewMode.valueOf(storedMode?.trim().orEmpty().uppercase())
}.getOrElse {
    if (legacyGrid) LibraryViewMode.GRID else LibraryViewMode.LIST
}
