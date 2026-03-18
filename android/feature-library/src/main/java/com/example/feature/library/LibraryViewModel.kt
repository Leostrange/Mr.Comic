package com.example.feature.library

import android.content.Context
import android.net.Uri
import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.data.repository.ComicRepository
import com.example.core.model.Comic
import com.example.core.model.ComicFormat
import com.example.core.model.SortOrder
import com.example.core.model.isTextReadingFormat
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_STYLE
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_VEIL
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKDROP_STRENGTH
import com.example.core.ui.library.DEFAULT_LIBRARY_CARD_SHADOW
import com.example.core.ui.library.DEFAULT_LIBRARY_CARD_STYLE
import com.example.core.ui.library.DEFAULT_LIBRARY_COVER_SCALE
import com.example.core.ui.library.DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE
import com.example.core.ui.library.DEFAULT_LIBRARY_SHELF_DEPTH
import com.example.core.ui.library.DEFAULT_LIBRARY_SHELF_STYLE
import com.example.core.ui.library.DEFAULT_LIBRARY_THUMBNAIL_MODE
import com.example.core.ui.library.normalizeLibraryBackgroundStyle
import com.example.core.ui.library.normalizeLibraryGraphicCoverStyle
import com.example.core.ui.library.normalizeLibraryShelfStyle
import com.example.core.ui.locale.normalizeAppLanguageCode
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.FlowPreview
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.flatMapLatest
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.transformLatest
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

enum class LibraryStatusFilter { ALL, BOOKMARKED, IN_PROGRESS, COMPLETED }
enum class LibraryFormatFilter { ALL, IMAGE, PDF, TEXT }
enum class GroupByMode { NONE, SERIES, FOLDER }

data class LibraryBreadcrumb(
    val label: String,
    val path: String?
)

sealed interface LibraryDisplayItem {
    val key: String
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
    val coverScale: String = DEFAULT_LIBRARY_COVER_SCALE,
    val backdropStrength: Float = DEFAULT_LIBRARY_BACKDROP_STRENGTH,
    val groupByMode: GroupByMode = GroupByMode.FOLDER,
    val groupSections: List<Pair<String, List<Comic>>> = emptyList(),
    val recentlyRead: List<Comic> = emptyList(),
    val thumbnailMode: String = DEFAULT_LIBRARY_THUMBNAIL_MODE,
    val shelfStyle: String = DEFAULT_LIBRARY_SHELF_STYLE,
    val shelfDepth: Float = DEFAULT_LIBRARY_SHELF_DEPTH,
    val cardShadow: Float = DEFAULT_LIBRARY_CARD_SHADOW,
    val graphicCoverStyle: String = DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE,
    val backgroundStyle: String = DEFAULT_LIBRARY_BACKGROUND_STYLE,
    val backgroundImageUri: String? = null,
    val backgroundVeil: Float = DEFAULT_LIBRARY_BACKGROUND_VEIL,
    val appLanguage: String = "ru",
    val currentFolderPath: String? = null,
    val breadcrumbs: List<LibraryBreadcrumb> = emptyList(),
    val totalComicCount: Int = 0,
    val visibleFolderCount: Int = 0,
    val visibleComicCount: Int = 0,
    // Достижения — сырые данные всей библиотеки (без фильтров)
    val allComicsRawCount: Int = 0,
    val completedComicCount: Int = 0,
    val bookmarkedComicCount: Int = 0,
    val rawAuthors: List<String?> = emptyList(),
    val rawGenres: List<String?> = emptyList(),
    val secretCatUnlocked: Boolean = false
)

enum class LibraryViewMode { GRID, LIST }

@OptIn(FlowPreview::class, ExperimentalCoroutinesApi::class)
@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val comicRepository: ComicRepository,
    @ApplicationContext private val context: Context
) : ViewModel() {

    private val _uiState = MutableStateFlow(LibraryUiState(isLoading = true))
    val uiState: StateFlow<LibraryUiState> = _uiState.asStateFlow()

    private val _searchQuery = MutableStateFlow("")
    private val preferences = UserPreferences(context.dataStore)

    /** Raw filtered list from the repository before local sorting/grouping is applied. */
    private var rawComics: List<Comic> = emptyList()

    init {
        repairStoredCovers()
        observeAppLanguage()
        observeLayoutPreferences()
        observeLibraryPreferences()
        observeVisualPreferences()
        observeSecretCat()
        observeSearch()
    }

    private fun repairStoredCovers() {
        viewModelScope.launch {
            runCatching { comicRepository.repairStoredCovers() }
                .onFailure { error -> Log.w("LibraryViewModel", "Stored cover repair failed", error) }
        }
    }

    private fun observeAppLanguage() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.APP_LANGUAGE, "ru").collect { language ->
                val normalized = normalizeAppLanguageCode(language)
                val prev = _uiState.value.appLanguage
                _uiState.update { it.copy(appLanguage = normalized) }
                if (prev != normalized) {
                    applyFiltersAndSort()
                }
            }
        }
    }

    private fun observeLayoutPreferences() {
        viewModelScope.launch {
            combine(
                preferences.get(PreferencesKeys.LIBRARY_VIEW_GRID, true),
                preferences.get(PreferencesKeys.LIBRARY_GRID_COLUMNS, 3).map { it.coerceIn(2, 4) },
                preferences.get(PreferencesKeys.LIBRARY_TILE_SIZE_DP, 150).map { it.coerceIn(80, 200) },
                preferences.get(PreferencesKeys.LIBRARY_CARD_STYLE, DEFAULT_LIBRARY_CARD_STYLE),
                preferences.get(PreferencesKeys.LIBRARY_RECENT_STRIP_POSITION, "TOP")
            ) { isGrid, columns, tileSize, cardStyle, recentStripPosition ->
                LibraryUiState(
                    viewMode = if (isGrid) LibraryViewMode.GRID else LibraryViewMode.LIST,
                    libraryGridColumns = columns,
                    tileSizeDp = tileSize,
                    cardStyle = cardStyle,
                    recentStripPosition = recentStripPosition
                )
            }.collect { partial ->
                _uiState.update {
                    it.copy(
                        viewMode = partial.viewMode,
                        libraryGridColumns = partial.libraryGridColumns,
                        tileSizeDp = partial.tileSizeDp,
                        cardStyle = partial.cardStyle,
                        recentStripPosition = partial.recentStripPosition
                    )
                }
            }
        }
    }

    private fun observeLibraryPreferences() {
        viewModelScope.launch {
            combine(
                preferences.get(PreferencesKeys.LIBRARY_SHOW_PROGRESS, true),
                preferences.get(PreferencesKeys.LIBRARY_COVER_SCALE, DEFAULT_LIBRARY_COVER_SCALE),
                preferences.get(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, DEFAULT_LIBRARY_BACKDROP_STRENGTH).map { it.coerceIn(0f, 1f) },
                preferences.get(PreferencesKeys.LIBRARY_SORT_ORDER, SortOrder.DATE_ADDED_DESC.name),
                preferences.get(PreferencesKeys.LIBRARY_GROUP_BY, GroupByMode.FOLDER.name)
            ) { showProgress, coverScale, backdropStrength, sortOrder, groupBy ->
                listOf(showProgress, coverScale, backdropStrength, sortOrder, groupBy)
            }.collect { values ->
                val sortOrder = runCatching { SortOrder.valueOf(values[3] as String) }
                    .getOrDefault(SortOrder.DATE_ADDED_DESC)
                val groupBy = runCatching { GroupByMode.valueOf(values[4] as String) }
                    .getOrDefault(GroupByMode.FOLDER)
                _uiState.update {
                    it.copy(
                        showProgressIndicators = values[0] as Boolean,
                        coverScale = values[1] as String,
                        backdropStrength = values[2] as Float,
                        sortOrder = sortOrder,
                        groupByMode = groupBy,
                        currentFolderPath = if (groupBy == GroupByMode.FOLDER) it.currentFolderPath else null
                    )
                }
                applyFiltersAndSort()
            }
        }
    }

    private fun observeVisualPreferences() {
        viewModelScope.launch {
            val visualFlowA = combine(
                preferences.get(PreferencesKeys.LIBRARY_THUMBNAIL_MODE, DEFAULT_LIBRARY_THUMBNAIL_MODE),
                preferences.get(PreferencesKeys.LIBRARY_SHELF_STYLE, DEFAULT_LIBRARY_SHELF_STYLE),
                preferences.get(PreferencesKeys.LIBRARY_SHELF_DEPTH, DEFAULT_LIBRARY_SHELF_DEPTH).map { it.coerceIn(0f, 1f) },
                preferences.get(PreferencesKeys.LIBRARY_CARD_SHADOW, DEFAULT_LIBRARY_CARD_SHADOW).map { it.coerceIn(0f, 1f) },
                preferences.get(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE)
            ) { thumbnailMode, shelfStyle, shelfDepth, cardShadow, graphicCoverStyle ->
                listOf(thumbnailMode, shelfStyle, shelfDepth, cardShadow, graphicCoverStyle)
            }
            val visualFlowB = combine(
                preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, DEFAULT_LIBRARY_BACKGROUND_STYLE),
                preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_IMAGE_URI, ""),
                preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, DEFAULT_LIBRARY_BACKGROUND_VEIL).map { it.coerceIn(0f, 1f) }
            ) { backgroundStyle, backgroundImageUri, backgroundVeil ->
                listOf(backgroundStyle, backgroundImageUri, backgroundVeil)
            }

            combine(visualFlowA, visualFlowB) { left, right -> left + right }.collect { values ->
                _uiState.update {
                    it.copy(
                        thumbnailMode = values[0] as String,
                        shelfStyle = normalizeLibraryShelfStyle(values[1] as String),
                        shelfDepth = values[2] as Float,
                        cardShadow = values[3] as Float,
                        graphicCoverStyle = normalizeLibraryGraphicCoverStyle(values[4] as String),
                        backgroundStyle = normalizeLibraryBackgroundStyle(values[5] as String),
                        backgroundImageUri = (values[6] as String).ifBlank { null },
                        backgroundVeil = values[7] as Float
                    )
                }
            }
        }
    }

    private fun observeSecretCat() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.LIBRARY_SECRET_CAT_UNLOCKED, false).collect { unlocked ->
                _uiState.update { it.copy(secretCatUnlocked = unlocked) }
            }
        }
    }

    fun unlockSecretCat() {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_SECRET_CAT_UNLOCKED, true)
        }
    }

    private fun observeSearch() {
        viewModelScope.launch {
            _searchQuery
                .transformLatest { query ->
                    if (query.isNotBlank()) delay(300)
                    emit(query)
                }
                .flatMapLatest { query ->
                    if (query.isBlank()) comicRepository.getAllComics()
                    else comicRepository.searchComics(query)
                }
                .catch { e ->
                    _uiState.update {
                        it.copy(
                            error = localizedError(
                                lang = it.appLanguage,
                                ru = "Ошибка поиска",
                                en = "Search failed",
                                ja = "検索エラー",
                                zh = "搜索失败",
                                ko = "검색 오류",
                                cause = e
                            ),
                            isLoading = false
                        )
                    }
                }
                .collect { comics ->
                    rawComics = comics
                    applyFiltersAndSort()
                }
        }
    }

    private fun applyFiltersAndSort() {
        val state = _uiState.value
        val filtered = filterComics(rawComics, state.statusFilter, state.formatFilter)
        val sorted = sortComics(filtered, state.sortOrder)
        val recent = rawComics
            .filter { !it.isCompleted && it.readingProgress > 0f }
            .sortedByDescending { it.lastReadDate }
            .take(10)

        val effectiveFolderPath = if (state.groupByMode == GroupByMode.FOLDER) {
            normalizeFolderPath(state.currentFolderPath, filtered)
        } else {
            null
        }

        val displayItems = when (state.groupByMode) {
            GroupByMode.FOLDER -> buildFolderDisplayItems(filtered, effectiveFolderPath, state.sortOrder)
            else -> sorted.map(::LibraryComicItem)
        }

        val sections = when (state.groupByMode) {
            GroupByMode.SERIES -> buildSections(sorted) {
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

        _uiState.update {
            it.copy(
                comics = sorted,
                displayItems = displayItems,
                groupSections = sections,
                recentlyRead = recent,
                isLoading = false,
                currentFolderPath = effectiveFolderPath,
                breadcrumbs = buildBreadcrumbs(effectiveFolderPath, state.appLanguage),
                totalComicCount = filtered.size,
                visibleFolderCount = displayItems.count { item -> item is LibraryFolderItem },
                visibleComicCount = displayItems.count { item -> item is LibraryComicItem },
                // Данные для достижений берём из полного сырого списка (без фильтров)
                allComicsRawCount = rawComics.size,
                completedComicCount = rawComics.count { c -> c.isCompleted },
                bookmarkedComicCount = rawComics.count { c -> c.isBookmarked },
                rawAuthors = rawComics.map { c -> c.author },
                rawGenres = rawComics.map { c -> c.genre }
            )
        }
    }

    fun search(query: String) {
        _searchQuery.value = query
        _uiState.update { it.copy(searchQuery = query) }
    }

    fun setSortOrder(order: SortOrder) {
        _uiState.update { it.copy(sortOrder = order) }
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_SORT_ORDER, order.name) }
        applyFiltersAndSort()
    }

    fun setStatusFilter(filter: LibraryStatusFilter) {
        _uiState.update { it.copy(statusFilter = filter) }
        applyFiltersAndSort()
    }

    fun setFormatFilter(filter: LibraryFormatFilter) {
        _uiState.update { it.copy(formatFilter = filter) }
        applyFiltersAndSort()
    }

    fun setGroupBy(mode: GroupByMode) {
        _uiState.update {
            it.copy(
                groupByMode = mode,
                currentFolderPath = if (mode == GroupByMode.FOLDER) it.currentFolderPath else null
            )
        }
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_GROUP_BY, mode.name) }
        applyFiltersAndSort()
    }

    fun openFolder(path: String?) {
        _uiState.update { it.copy(currentFolderPath = path) }
        applyFiltersAndSort()
    }

    fun navigateUpFromFolder() {
        val parentPath = _uiState.value.currentFolderPath.parentFolderPath()
        openFolder(parentPath)
    }

    fun setViewMode(mode: LibraryViewMode) {
        _uiState.update { it.copy(viewMode = mode) }
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_VIEW_GRID, mode == LibraryViewMode.GRID)
        }
    }

    fun setThumbnailMode(mode: String) {
        val normalized = if (mode == "SQUARE") "SQUARE" else "RECTANGLE"
        _uiState.update { it.copy(thumbnailMode = normalized) }
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_THUMBNAIL_MODE, normalized)
        }
    }

    fun setTileSizeDp(size: Int) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_TILE_SIZE_DP, size.coerceIn(80, 200))
        }
    }

    fun addComicFromUri(uri: Uri) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                comicRepository.addComic(uri)
            } catch (e: Exception) {
                Log.e("LibraryViewModel", "Failed to add comic", e)
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Не удалось добавить комикс",
                            en = "Failed to add comic",
                            ja = "コミックを追加できませんでした",
                            zh = "无法添加漫画",
                            ko = "코믹을 추가할 수 없습니다",
                            cause = e
                        )
                    )
                }
            } finally {
                _uiState.update { it.copy(isLoading = false) }
            }
        }
    }

    fun addComicsFromDirectory(treeUri: Uri) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                comicRepository.addComicsFromDirectory(treeUri)
                if (_uiState.value.groupByMode == GroupByMode.FOLDER) {
                    openFolder(null)
                }
            } catch (e: Exception) {
                Log.e("LibraryViewModel", "Failed to add directory", e)
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Ошибка сканирования папки",
                            en = "Folder scan failed",
                            ja = "フォルダのスキャンに失敗しました",
                            zh = "文件夹扫描失败",
                            ko = "폴더 스캔 실패",
                            cause = e
                        )
                    )
                }
            } finally {
                _uiState.update { it.copy(isLoading = false) }
            }
        }
    }

    fun deleteComic(comicId: String) {
        viewModelScope.launch {
            try {
                comicRepository.deleteComic(comicId)
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Не удалось удалить",
                            en = "Failed to delete",
                            ja = "削除に失敗しました",
                            zh = "删除失败",
                            ko = "삭제에 실패했습니다",
                            cause = e
                        )
                    )
                }
            }
        }
    }

    fun deleteFolder(folderPath: String) {
        viewModelScope.launch {
            try {
                val normalizedPath = normalizeFolderId(folderPath) ?: return@launch
                val matchingComics = rawComics.filter { comic ->
                    val comicFolder = normalizeFolderId(comic.folderId) ?: return@filter false
                    comicFolder == normalizedPath || comicFolder.startsWith("$normalizedPath/")
                }
                matchingComics.forEach { comic ->
                    comicRepository.deleteComic(comic.id)
                }
                if (_uiState.value.currentFolderPath == normalizedPath) {
                    openFolder(normalizedPath.parentFolderPath())
                }
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Не удалось удалить папку",
                            en = "Failed to delete folder",
                            ja = "フォルダの削除に失敗しました",
                            zh = "删除文件夹失败",
                            ko = "폴더 삭제에 실패했습니다",
                            cause = e
                        )
                    )
                }
            }
        }
    }

    fun toggleBookmark(comicId: String) {
        viewModelScope.launch {
            try {
                comicRepository.toggleBookmark(comicId)
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Не удалось изменить закладку",
                            en = "Failed to update bookmark",
                            ja = "しおりの更新に失敗しました",
                            zh = "更新书签失败",
                            ko = "북마크 변경에 실패했습니다",
                            cause = e
                        )
                    )
                }
            }
        }
    }

    fun updateComicMeta(comicId: String, title: String, tags: String) {
        viewModelScope.launch {
            try {
                comicRepository.updateComicMeta(comicId, title, tags)
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Не удалось сохранить изменения",
                            en = "Failed to save changes",
                            ja = "変更を保存できませんでした",
                            zh = "保存更改失败",
                            ko = "변경 사항을 저장하지 못했습니다",
                            cause = e
                        )
                    )
                }
            }
        }
    }

    fun markCompleted(comicId: String, completed: Boolean) {
        viewModelScope.launch {
            try {
                comicRepository.markCompleted(comicId, completed)
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Не удалось изменить статус",
                            en = "Failed to update status",
                            ja = "ステータスの更新に失敗しました",
                            zh = "更新状态失败",
                            ko = "상태를 변경하지 못했습니다",
                            cause = e
                        )
                    )
                }
            }
        }
    }

    suspend fun getComicById(id: String): Comic? = comicRepository.getComicById(id)

    fun clearError() = _uiState.update { it.copy(error = null) }

    private fun filterComics(
        comics: List<Comic>,
        statusFilter: LibraryStatusFilter,
        formatFilter: LibraryFormatFilter
    ): List<Comic> {
        val byStatus = when (statusFilter) {
            LibraryStatusFilter.ALL -> comics
            LibraryStatusFilter.BOOKMARKED -> comics.filter { it.isBookmarked }
            LibraryStatusFilter.IN_PROGRESS -> comics.filter { !it.isCompleted && it.readingProgress > 0f }
            LibraryStatusFilter.COMPLETED -> comics.filter { it.isCompleted }
        }
        return when (formatFilter) {
            LibraryFormatFilter.ALL -> byStatus
            LibraryFormatFilter.IMAGE -> byStatus.filter {
                it.format in setOf(
                    ComicFormat.CBZ,
                    ComicFormat.CBR,
                    ComicFormat.ZIP,
                    ComicFormat.RAR,
                    ComicFormat.SEVENZ,
                    ComicFormat.TAR,
                    ComicFormat.FOLDER
                )
            }
            LibraryFormatFilter.PDF -> byStatus.filter { it.format == ComicFormat.PDF }
            LibraryFormatFilter.TEXT -> byStatus.filter {
                it.format.isTextReadingFormat()
            }
        }
    }

    private fun sortComics(comics: List<Comic>, order: SortOrder): List<Comic> = when (order) {
        SortOrder.TITLE_ASC -> comics.sortedBy { it.title.lowercase() }
        SortOrder.TITLE_DESC -> comics.sortedByDescending { it.title.lowercase() }
        SortOrder.DATE_ADDED_ASC -> comics.sortedBy { it.addedDate }
        SortOrder.DATE_ADDED_DESC -> comics.sortedByDescending { it.addedDate }
        SortOrder.DATE_READ_ASC -> comics.sortedBy { it.lastReadDate ?: 0L }
        SortOrder.DATE_READ_DESC -> comics.sortedByDescending { it.lastReadDate ?: 0L }
        SortOrder.PROGRESS_ASC -> comics.sortedBy { it.readingProgress }
        SortOrder.PROGRESS_DESC -> comics.sortedByDescending { it.readingProgress }
        SortOrder.FILE_SIZE_ASC -> comics.sortedBy { it.fileSize }
        SortOrder.FILE_SIZE_DESC -> comics.sortedByDescending { it.fileSize }
        SortOrder.GENRE_ASC -> comics.sortedBy { it.genre.orEmpty().lowercase() }
        SortOrder.GENRE_DESC -> comics.sortedByDescending { it.genre.orEmpty().lowercase() }
        SortOrder.FOLDER_ASC -> comics.sortedBy { normalizeFolderId(it.folderId).orEmpty().lowercase() }
        SortOrder.FOLDER_DESC -> comics.sortedByDescending { normalizeFolderId(it.folderId).orEmpty().lowercase() }
    }

    private fun buildSections(
        comics: List<Comic>,
        keySelector: (Comic) -> String
    ): List<Pair<String, List<Comic>>> {
        val orderedSections = linkedMapOf<String, MutableList<Comic>>()
        comics.forEach { comic ->
            orderedSections.getOrPut(keySelector(comic)) { mutableListOf() }.add(comic)
        }
        return orderedSections.entries.map { it.key to it.value.toList() }
    }

    private fun buildFolderDisplayItems(
        comics: List<Comic>,
        currentFolderPath: String?,
        sortOrder: SortOrder
    ): List<LibraryDisplayItem> {
        val folders = buildFolderItems(comics, currentFolderPath, sortOrder)
        val directFiles = sortComics(directFilesForPath(comics, currentFolderPath), sortOrder)
            .map(::LibraryComicItem)
        return folders + directFiles
    }

    private fun buildFolderItems(
        comics: List<Comic>,
        currentFolderPath: String?,
        sortOrder: SortOrder
    ): List<LibraryFolderItem> {
        val grouped = linkedMapOf<String, MutableList<Comic>>()
        comics.forEach { comic ->
            val childFolderPath = directChildFolderPath(normalizeFolderId(comic.folderId), currentFolderPath)
                ?: return@forEach
            grouped.getOrPut(childFolderPath) { mutableListOf() }.add(comic)
        }

        return sortFolderItems(
            grouped.map { (path, descendants) ->
                val directFiles = descendants.count { normalizeFolderId(it.folderId) == path }
                val directSubfolders = descendants.mapNotNull { descendant ->
                    directChildFolderPath(normalizeFolderId(descendant.folderId), path)
                }.distinct().size
                val directChildren = descendants.filter { normalizeFolderId(it.folderId) == path }
                val representativeSource = if (directChildren.isNotEmpty()) directChildren else descendants
                val representative = representativeSource.minByOrNull { folderRepresentativeName(it) }
                LibraryFolderItem(
                    path = path,
                    title = path.substringAfterLast('/'),
                    coverPath = representative?.coverPath,
                    fileCount = directFiles,
                    subfolderCount = directSubfolders,
                    newestAdded = descendants.maxOfOrNull { it.addedDate } ?: 0L,
                    lastReadDate = descendants.mapNotNull { it.lastReadDate }.maxOrNull(),
                    totalSize = descendants.sumOf { it.fileSize },
                    progress = descendants.map { it.readingProgress }.average().toFloat()
                )
            },
            sortOrder
        )
    }

    private fun sortFolderItems(
        folders: List<LibraryFolderItem>,
        order: SortOrder
    ): List<LibraryFolderItem> = when (order) {
        SortOrder.TITLE_ASC, SortOrder.GENRE_ASC, SortOrder.FOLDER_ASC ->
            folders.sortedBy { it.title.lowercase() }
        SortOrder.TITLE_DESC, SortOrder.GENRE_DESC, SortOrder.FOLDER_DESC ->
            folders.sortedByDescending { it.title.lowercase() }
        SortOrder.DATE_ADDED_ASC -> folders.sortedBy { it.newestAdded }
        SortOrder.DATE_ADDED_DESC -> folders.sortedByDescending { it.newestAdded }
        SortOrder.DATE_READ_ASC -> folders.sortedBy { it.lastReadDate ?: 0L }
        SortOrder.DATE_READ_DESC -> folders.sortedByDescending { it.lastReadDate ?: 0L }
        SortOrder.PROGRESS_ASC -> folders.sortedBy { it.progress }
        SortOrder.PROGRESS_DESC -> folders.sortedByDescending { it.progress }
        SortOrder.FILE_SIZE_ASC -> folders.sortedBy { it.totalSize }
        SortOrder.FILE_SIZE_DESC -> folders.sortedByDescending { it.totalSize }
    }

    private fun directFilesForPath(comics: List<Comic>, currentFolderPath: String?): List<Comic> {
        return comics.filter { normalizeFolderId(it.folderId) == currentFolderPath }
    }

    private fun directChildFolderPath(folderPath: String?, currentFolderPath: String?): String? {
        val normalizedFolderPath = normalizeFolderId(folderPath) ?: return null
        return if (currentFolderPath == null) {
            normalizedFolderPath.substringBefore('/')
        } else {
            if (normalizedFolderPath == currentFolderPath || !normalizedFolderPath.startsWith("$currentFolderPath/")) {
                null
            } else {
                val remainder = normalizedFolderPath.removePrefix("$currentFolderPath/")
                "$currentFolderPath/${remainder.substringBefore('/')}"
            }
        }
    }

    private fun normalizeFolderPath(path: String?, comics: List<Comic>): String? {
        var candidate = normalizeFolderId(path)
        while (candidate != null && !folderExists(candidate, comics)) {
            candidate = candidate.parentFolderPath()
        }
        return candidate
    }

    private fun folderExists(path: String, comics: List<Comic>): Boolean {
        return comics.any { comic ->
            val folderPath = normalizeFolderId(comic.folderId)
            folderPath == path || folderPath?.startsWith("$path/") == true
        }
    }

    private fun buildBreadcrumbs(currentFolderPath: String?, language: String): List<LibraryBreadcrumb> {
        val breadcrumbs = mutableListOf(
            LibraryBreadcrumb(
                label = vmTr(
                    lang = language,
                    ru = "Библиотека",
                    en = "Library",
                    ja = "ライブラリ",
                    zh = "图书馆",
                    ko = "라이브러리"
                ),
                path = null
            )
        )
        if (currentFolderPath.isNullOrBlank()) return breadcrumbs

        var cumulativePath = ""
        currentFolderPath.split('/').forEach { segment ->
            cumulativePath = if (cumulativePath.isEmpty()) segment else "$cumulativePath/$segment"
            breadcrumbs += LibraryBreadcrumb(label = segment, path = cumulativePath)
        }
        return breadcrumbs
    }

    private fun normalizeFolderId(folderId: String?): String? {
        return folderId
            ?.trim()
            ?.trim('/')
            ?.takeIf { it.isNotBlank() }
    }

    private fun String?.parentFolderPath(): String? {
        val value = normalizeFolderId(this) ?: return null
        return value.substringBeforeLast('/', "").ifBlank { null }
    }

    private fun folderRepresentativeName(comic: Comic): String {
        return comic.documentId
            ?.substringAfterLast('/')
            ?.substringAfterLast(':')
            ?.lowercase()
            ?: comic.path.substringAfterLast('/').substringAfterLast('\\').lowercase()
    }

    private fun vmTr(
        lang: String,
        ru: String,
        en: String,
        ja: String,
        zh: String,
        ko: String
    ): String = when (lang) {
        "en" -> en
        "ja" -> ja
        "zh" -> zh
        "ko" -> ko
        else -> ru
    }

    private fun localizedError(
        lang: String,
        ru: String,
        en: String,
        ja: String,
        zh: String,
        ko: String,
        cause: Throwable?
    ): String {
        val details = cause?.message?.takeIf { it.isNotBlank() }?.let { ": $it" }.orEmpty()
        return vmTr(
            lang = lang,
            ru = "$ru$details",
            en = "$en$details",
            ja = "$ja$details",
            zh = "$zh$details",
            ko = "$ko$details"
        )
    }
}
