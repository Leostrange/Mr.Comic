package io.leostrange.mrcomic.feature.library

// Phase D (2026-08-05): Misc UI extracted from LibraryScreen.kt

import android.net.Uri
import androidx.compose.animation.core.animateDpAsState
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.automirrored.filled.OpenInNew
import androidx.compose.material.icons.automirrored.filled.ViewList
import androidx.compose.material.icons.automirrored.filled.InsertDriveFile
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.model.*
import java.io.File
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.designsystem.MrComicPill
import io.leostrange.mrcomic.core.ui.designsystem.MrComicProgressLine
import io.leostrange.mrcomic.core.ui.library.*
import io.leostrange.mrcomic.core.ui.locale.*
import io.leostrange.mrcomic.core.ui.designsystem.mrComicCompletedColor
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.core.ui.mascot.MrComicMiniAvatar
import io.leostrange.mrcomic.feature.library.components.AchievementStrings
import io.leostrange.mrcomic.feature.library.components.ComicGridItem

@Composable
internal fun LibraryBackground(
    backgroundStyle: String,
    backgroundImageUri: String?,
    backdropStrength: Float,
    backgroundBlur: Float,
    backgroundVeil: Float
) {
    LibraryBackdropLayer(
        backgroundStyle = backgroundStyle,
        backgroundImageUri = backgroundImageUri,
        colorScheme = MaterialTheme.colorScheme,
        backdropStrength = backdropStrength,
        backgroundBlur = backgroundBlur,
        imageVeil = backgroundVeil,
        modifier = Modifier.fillMaxSize()
    )
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun QuickControlsPopup(
    onDismiss: () -> Unit,
    onAddFileClick: () -> Unit,
    onAddFolderClick: () -> Unit,
    onToggleView: () -> Unit,
    onOpenFilters: () -> Unit,
    thumbnailMode: String,
    onThumbnailModeChange: (String) -> Unit,
    viewMode: LibraryViewMode,
) {
    val strings = LocalStrings.current
    val nextViewMode = nextLibraryViewMode(viewMode)
    var addMenuExpanded by remember { mutableStateOf(false) }
    var thumbnailMenuExpanded by remember { mutableStateOf(false) }
    val dismissInteraction = remember { MutableInteractionSource() }
    val scrollState = rememberScrollState()

    Box(
        modifier = Modifier
            .fillMaxSize()
            .clickable(
                interactionSource = dismissInteraction,
                indication = null,
                onClick = onDismiss
            ),
        contentAlignment = Alignment.TopEnd
    ) {
         Surface(
             modifier = Modifier
                 .padding(top = 8.dp, end = 16.dp)
                 .clickable(
                     interactionSource = remember { MutableInteractionSource() },
                     indication = null,
                     onClick = {}
                 ),
             shape = RoundedCornerShape(22.dp),
             color = MaterialTheme.colorScheme.surface,
             tonalElevation = 2.dp,
             shadowElevation = 6.dp
         ) {
            Row(
                modifier = Modifier
                    .padding(horizontal = 12.dp, vertical = 10.dp)
                    .horizontalScroll(scrollState),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                MrComicButton(
                    onClick = onToggleView,
                    variant = MrComicButtonVariant.Tonal
                ) {
                    Icon(
                        when (nextViewMode) {
                            LibraryViewMode.GRID -> Icons.Default.GridView
                            LibraryViewMode.LIST -> Icons.AutoMirrored.Filled.ViewList
                            LibraryViewMode.STRIPS -> Icons.Default.Menu
                        },
                        contentDescription = null
                    )
                    Spacer(Modifier.width(6.dp))
                    Text(
                        when (nextViewMode) {
                            LibraryViewMode.GRID -> strings.libraryViewAsGrid
                            LibraryViewMode.LIST -> strings.libraryViewAsList
                            LibraryViewMode.STRIPS -> libraryViewAsStripsLabel(strings.languageCode)
                        }
                    )
                }
                MrComicButton(
                    onClick = onOpenFilters,
                    variant = MrComicButtonVariant.Tonal
                ) {
                    Icon(Icons.Default.Tune, contentDescription = null)
                    Spacer(Modifier.width(6.dp))
                    Text(strings.actionSort)
                }
                Box {
                    MrComicButton(
                        onClick = { thumbnailMenuExpanded = true },
                        variant = MrComicButtonVariant.Tonal
                    ) {
                        Text(
                            if (thumbnailMode == "SQUARE") {
                                strings.libraryCoversSquare
                            } else {
                                strings.libraryCoversRectangle
                            }
                        )
                    }
                    DropdownMenu(
                        expanded = thumbnailMenuExpanded,
                        onDismissRequest = { thumbnailMenuExpanded = false }
                    ) {
                        DropdownMenuItem(
                            text = { Text(strings.actionRectangle) },
                            onClick = {
                                thumbnailMenuExpanded = false
                                onThumbnailModeChange("RECTANGLE")
                            }
                        )
                        DropdownMenuItem(
                            text = { Text(strings.actionSquare) },
                            onClick = {
                                thumbnailMenuExpanded = false
                                onThumbnailModeChange("SQUARE")
                            }
                        )
                    }
                }
                Box {
                    MrComicButton(
                        onClick = { addMenuExpanded = true },
                        variant = MrComicButtonVariant.Tonal
                    ) {
                        Icon(Icons.Default.FolderOpen, contentDescription = null)
                        Spacer(Modifier.width(6.dp))
                        Text(strings.libraryAdd)
                    }
                    DropdownMenu(
                        expanded = addMenuExpanded,
                        onDismissRequest = { addMenuExpanded = false }
                    ) {
                        DropdownMenuItem(
                            text = { Text(strings.actionFile) },
                            leadingIcon = {
                                Icon(Icons.AutoMirrored.Filled.InsertDriveFile, contentDescription = null)
                            },
                            onClick = {
                                addMenuExpanded = false
                                onAddFileClick()
                            }
                        )
                        DropdownMenuItem(
                            text = { Text(strings.actionFolder) },
                            leadingIcon = {
                                Icon(Icons.Default.FolderOpen, contentDescription = null)
                            },
                            onClick = {
                                addMenuExpanded = false
                                onAddFolderClick()
                            }
                        )
                    }
                }
            }
        }
    }
}


@Composable
internal fun FilterSheet(
    sortOrder: SortOrder,
    statusFilter: LibraryStatusFilter,
    formatFilter: LibraryFormatFilter,
    groupByMode: GroupByMode,
    viewMode: LibraryViewMode,
    thumbnailMode: String,
    tileSizeDp: Int,
    onSortChange: (SortOrder) -> Unit,
    onStatusFilterChange: (LibraryStatusFilter) -> Unit,
    onFormatFilterChange: (LibraryFormatFilter) -> Unit,
    onGroupByChange: (GroupByMode) -> Unit,
    onViewModeChange: (LibraryViewMode) -> Unit,
    onThumbnailModeChange: (String) -> Unit,
    onTileSizeChange: (Int) -> Unit,
    onReset: () -> Unit
) {
    val strings = LocalStrings.current
    val maxSheetHeight = LocalConfiguration.current.screenHeightDp.dp * 0.62f
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .heightIn(max = maxSheetHeight)
            .padding(horizontal = 20.dp)
            .navigationBarsPadding()
            .verticalScroll(rememberScrollState())
            .padding(bottom = 20.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                strings.libraryOrderAndFilters,
                style = MaterialTheme.typography.titleMedium
            )
            TextButton(onClick = onReset) {
                Text(strings.libraryReset)
            }
        }

        HorizontalDivider()

        FilterSection(
            title = libraryViewSectionLabel(strings.languageCode)
        ) {
            ChipWrap {
                listOf(
                    LibraryViewMode.GRID,
                    LibraryViewMode.LIST,
                    LibraryViewMode.STRIPS
                ).forEach { mode ->
                    MrComicFilterChip(
                        selected = viewMode == mode,
                        onClick = { onViewModeChange(mode) },
                        label = { Text(libraryViewModeLabel(mode, strings.languageCode)) },
                        leadingIcon = if (viewMode == mode) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.librarySortSection
        ) {
            ChipWrap {
                librarySortOptions(strings).forEach { (order, label) ->
                    MrComicFilterChip(
                        selected = sortOrder == order,
                        onClick = { onSortChange(order) },
                        label = { Text(label) },
                        leadingIcon = if (sortOrder == order) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.libraryStatusSection
        ) {
            ChipWrap {
                listOf(
                    LibraryStatusFilter.ALL to strings.libraryStatusAll,
                    LibraryStatusFilter.BOOKMARKED to strings.libraryStatusBookmarked,
                    LibraryStatusFilter.IN_PROGRESS to strings.libraryStatusReading,
                    LibraryStatusFilter.COMPLETED to strings.libraryStatusCompleted
                ).forEach { (filter, label) ->
                    MrComicFilterChip(
                        selected = statusFilter == filter,
                        onClick = { onStatusFilterChange(filter) },
                        label = { Text(label) },
                        leadingIcon = if (statusFilter == filter) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.libraryFormatSection
        ) {
            ChipWrap {
                listOf(
                    LibraryFormatFilter.ALL to strings.libraryFormatAll,
                    LibraryFormatFilter.IMAGE to strings.libraryFormatImages,
                    LibraryFormatFilter.PDF to "PDF",
                    LibraryFormatFilter.TEXT to strings.libraryFormatText
                ).forEach { (filter, label) ->
                    MrComicFilterChip(
                        selected = formatFilter == filter,
                        onClick = { onFormatFilterChange(filter) },
                        label = { Text(label) },
                        leadingIcon = if (formatFilter == filter) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.libraryGroupingSection
        ) {
            ChipWrap {
                listOf(
                    GroupByMode.FOLDER to strings.libraryGroupingFolder,
                    GroupByMode.NONE to strings.libraryGroupingNone,
                    GroupByMode.SERIES to strings.libraryGroupingSeries
                ).forEach { (mode, label) ->
                    MrComicFilterChip(
                        selected = groupByMode == mode,
                        onClick = { onGroupByChange(mode) },
                        label = { Text(label) },
                        leadingIcon = if (groupByMode == mode) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.libraryThumbnailsSection
        ) {
            ChipWrap {
                listOf(
                    "RECTANGLE" to strings.actionRectangle,
                    "SQUARE" to strings.actionSquare
                ).forEach { (mode, label) ->
                    MrComicFilterChip(
                        selected = thumbnailMode == mode,
                        onClick = { onThumbnailModeChange(mode) },
                        label = { Text(label) },
                        leadingIcon = if (thumbnailMode == mode) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = libraryThumbnailSizeSectionLabel(strings.languageCode)
        ) {
            ChipWrap {
                listOf(
                    112 to libraryThumbnailSizeLabel(strings.languageCode, "small"),
                    150 to libraryThumbnailSizeLabel(strings.languageCode, "medium"),
                    190 to libraryThumbnailSizeLabel(strings.languageCode, "large")
                ).forEach { (size, label) ->
                    val selected = tileSizeDp in (size - 12)..(size + 12)
                    MrComicFilterChip(
                        selected = selected,
                        onClick = { onTileSizeChange(size) },
                        label = { Text(label) },
                        leadingIcon = if (selected) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }
    }
}

@Composable

internal fun FilterSection(
    title: String,
    content: @Composable ColumnScope.() -> Unit
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        color = MaterialTheme.colorScheme.surfaceContainerLow
            .copy(alpha = MaterialTheme.colorScheme.surface.alpha)
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(title, style = MaterialTheme.typography.titleSmall)
            content()
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable

internal fun ChipWrap(content: @Composable FlowRowScope.() -> Unit) {
    FlowRow(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
        content = content
    )
}

@Composable

internal fun EmptyLibraryPlaceholder(
    modifier: Modifier,
    showMascot: Boolean,
    onAddFile: () -> Unit,
    onAddFolder: () -> Unit
) {
    val strings = LocalStrings.current
    Column(modifier = modifier.padding(32.dp), horizontalAlignment = Alignment.CenterHorizontally) {
        LibraryPlaceholderLeadIcon(
            showMascot = showMascot,
            neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
            size = 40.dp
        )
        Spacer(Modifier.height(16.dp))
        Text(
            strings.libraryEmptyTitle,
            style = MaterialTheme.typography.headlineSmall,
            textAlign = TextAlign.Center
        )
        Spacer(Modifier.height(8.dp))
        Text(
            strings.libraryEmptyHint,
            style = MaterialTheme.typography.bodyMedium,
            textAlign = TextAlign.Center,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(24.dp))
        MrComicButton(
            onClick = onAddFile,
            variant = MrComicButtonVariant.Filled
        ) {
            Icon(Icons.AutoMirrored.Filled.InsertDriveFile, contentDescription = null)
            Spacer(Modifier.width(8.dp))
            Text(strings.libraryOpenFile)
        }
        Spacer(Modifier.height(8.dp))
        MrComicButton(
            onClick = onAddFolder,
            variant = MrComicButtonVariant.Outlined
        ) {
            Icon(Icons.Default.FolderOpen, contentDescription = null)
            Spacer(Modifier.width(8.dp))
            Text(strings.libraryOpenFolder)
        }
    }
}

// Library status text utils extracted to LibraryStatusTextUtils.kt

@Composable

internal fun EmptyStatusFilterPlaceholder(
    statusFilter: LibraryStatusFilter,
    showMascot: Boolean,
    onShowAll: () -> Unit,
    modifier: Modifier
) {
    val strings = LocalStrings.current
    val copy = remember(statusFilter, strings.languageCode) {
        libraryStatusEmptyStateText(statusFilter, strings.languageCode)
    }
    val icon = when (statusFilter) {
        LibraryStatusFilter.COMPLETED -> Icons.Default.CheckCircle
        LibraryStatusFilter.IN_PROGRESS -> Icons.Default.PlayArrow
        LibraryStatusFilter.BOOKMARKED -> Icons.Default.BookmarkBorder
        LibraryStatusFilter.ALL -> Icons.AutoMirrored.Filled.MenuBook
    }

    Column(modifier = modifier.padding(32.dp), horizontalAlignment = Alignment.CenterHorizontally) {
        LibraryPlaceholderLeadIcon(
            showMascot = showMascot,
            neutralIcon = icon,
            size = 40.dp
        )
        Spacer(Modifier.height(16.dp))
        Text(
            copy.title,
            style = MaterialTheme.typography.headlineSmall,
            textAlign = TextAlign.Center
        )
        Spacer(Modifier.height(8.dp))
        Text(
            copy.message,
            style = MaterialTheme.typography.bodyMedium,
            textAlign = TextAlign.Center,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(24.dp))
        MrComicButton(
            onClick = onShowAll,
            variant = MrComicButtonVariant.Tonal
        ) {
            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = null)
            Spacer(Modifier.width(8.dp))
            Text(copy.action)
        }
    }
}

@Composable

internal fun EmptyFolderPlaceholder(
    title: String,
    showMascot: Boolean
) {
    val strings = LocalStrings.current
    Surface(
        modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
        shape = RoundedCornerShape(22.dp),
        color = MaterialTheme.colorScheme.surface
    ) {
        Column(
            modifier = Modifier.padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            LibraryPlaceholderLeadIcon(
                showMascot = showMascot,
                neutralIcon = Icons.Default.FolderOpen,
                size = 36.dp
            )
            Text(
                strings.libraryEmptyFolderTitle.format(title),
                textAlign = TextAlign.Center
            )
            Text(
                strings.libraryEmptyFolderHint,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center
            )
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)

@Composable
internal fun ComicInfoSheet(
    comic: Comic,
    onDismiss: () -> Unit,
    onOpen: () -> Unit,
    onToggleBookmark: () -> Unit,
    onToggleCompleted: () -> Unit,
    onDelete: () -> Unit,
    onSaveMeta: (title: String, tags: String, shelf: String) -> Unit
) {
    val strings = LocalStrings.current
    var titleEdit by remember(comic.id) { mutableStateOf(comic.title) }
    var tagsEdit by remember(comic.id) { mutableStateOf(comic.tags) }
    var shelfEdit by remember(comic.id) { mutableStateOf(comic.libraryShelfCategory()) }
    var isEditing by remember(comic.id) { mutableStateOf(false) }
    val shelfLabel = when (strings.languageCode) {
        "en" -> "Shelf"
        "ja" -> "棚"
        "zh" -> "书架"
        "ko" -> "서가"
        else -> "Полка"
    }

    ModalBottomSheet(
        onDismissRequest = onDismiss,
        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh
            .copy(alpha = MaterialTheme.colorScheme.surface.alpha),
        scrimColor = MaterialTheme.colorScheme.scrim.copy(alpha = 0.22f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 20.dp)
                .padding(bottom = 32.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Row(modifier = Modifier.fillMaxWidth(), verticalAlignment = Alignment.Top) {
                Card(modifier = Modifier.size(72.dp, 100.dp), shape = RoundedCornerShape(6.dp)) {
                    if (comic.coverPath != null) {
                        AsyncImage(
                            model = File(comic.coverPath!!),
                            contentDescription = null,
                            contentScale = ContentScale.Crop,
                            modifier = Modifier.fillMaxSize()
                        )
                    } else {
                        Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                            Icon(Icons.AutoMirrored.Filled.MenuBook, contentDescription = null)
                        }
                    }
                }
                Spacer(Modifier.width(12.dp))
                Column(modifier = Modifier.weight(1f)) {
                    if (isEditing) {
                        OutlinedTextField(
                            value = titleEdit,
                            onValueChange = { titleEdit = it },
                            label = { Text(strings.libraryTitle) },
                            singleLine = true,
                            modifier = Modifier.fillMaxWidth()
                        )
                    } else {
                        Text(
                            text = comic.title,
                            style = MaterialTheme.typography.titleMedium,
                            maxLines = 3,
                            overflow = TextOverflow.Ellipsis
                        )
                    }
                    comic.author?.let {
                        Text(
                            text = it,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
                IconButton(onClick = {
                    if (isEditing) {
                        onSaveMeta(titleEdit, tagsEdit, shelfEdit.name)
                        isEditing = false
                    } else {
                        isEditing = true
                    }
                }) {
                    Icon(
                        imageVector = if (isEditing) Icons.Default.Check else Icons.Default.Edit,
                        contentDescription = if (isEditing) {
                            strings.librarySave
                        } else {
                            strings.libraryEdit
                        }
                    )
                }
            }

            if (isEditing) {
                OutlinedTextField(
                    value = tagsEdit,
                    onValueChange = { tagsEdit = it },
                    label = { Text(strings.libraryTagsComma) },
                    modifier = Modifier.fillMaxWidth()
                )
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    MrComicFilterChip(
                        selected = shelfEdit == ComicLibraryShelf.AUTO,
                        onClick = { shelfEdit = ComicLibraryShelf.AUTO },
                        label = { Text("Авто") }
                    )
                    MrComicFilterChip(
                        selected = shelfEdit == ComicLibraryShelf.GRAPHIC,
                        onClick = { shelfEdit = ComicLibraryShelf.GRAPHIC },
                        label = { Text("Комикс") }
                    )
                    MrComicFilterChip(
                        selected = shelfEdit == ComicLibraryShelf.BOOKS,
                        onClick = { shelfEdit = ComicLibraryShelf.BOOKS },
                        label = { Text("Книга") }
                    )
                }
            }

            HorizontalDivider()

            if (comic.pageCount > 0) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    Text(
                        strings.libraryProgress,
                        style = MaterialTheme.typography.bodySmall
                    )
                    Text(
                        strings.libraryProgressTemplate.format(
                            comic.currentPage + 1,
                            comic.pageCount,
                            (comic.readingProgress * 100).toInt()
                        ),
                        style = MaterialTheme.typography.bodySmall
                    )
                }
                MrComicProgressLine(
                    progress = { comic.readingProgress },
                    modifier = Modifier.fillMaxWidth()
                )
            }

            comic.genre?.let { InfoRow(strings.libraryGenre, it) }
            comic.publisher?.let { InfoRow(strings.libraryPublisher, it) }
            comic.year?.let { InfoRow(strings.libraryYear, it.toString()) }
            if (comic.tags.isNotBlank() && !isEditing) {
                InfoRow(strings.libraryTags, comic.tags)
            }
            if (!isEditing) {
                InfoRow(
                    shelfLabel,
                    when (comic.libraryShelfCategory()) {
                        ComicLibraryShelf.GRAPHIC -> "Комикс"
                        ComicLibraryShelf.BOOKS -> "Книга"
                        ComicLibraryShelf.AUTO -> "Авто"
                    }
                )
            }
            InfoRow(strings.libraryFormatLabel, comic.format.name)
            comic.folderId?.let { InfoRow(strings.actionFolder, it) }
            InfoRow(strings.librarySize, formatFileSize(comic.fileSize))

            HorizontalDivider()

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                ActionButton(
                    icon = Icons.AutoMirrored.Filled.OpenInNew,
                    label = strings.libraryOpen,
                    onClick = onOpen
                )
                ActionButton(
                    icon = if (comic.isBookmarked) Icons.Default.Bookmark else Icons.Default.BookmarkBorder,
                    label = if (comic.isBookmarked) {
                        strings.libraryRemove
                    } else {
                        strings.readerBookmark
                    },
                    onClick = onToggleBookmark,
                    tint = if (comic.isBookmarked) MaterialTheme.colorScheme.primary else null
                )
                val readingStatus = comic.readingStatus()
                ActionButton(
                    icon = if (readingStatus == ComicReadingStatus.COMPLETED) {
                        Icons.Default.CheckCircle
                    } else {
                        Icons.Default.RadioButtonUnchecked
                    },
                    label = when (readingStatus) {
                        ComicReadingStatus.COMPLETED -> strings.libraryStatusCompleted
                        ComicReadingStatus.READING -> strings.libraryStatusReading
                        ComicReadingStatus.NEW -> strings.libraryStatusNew
                    },
                    onClick = onToggleCompleted
                )
                ActionButton(
                    icon = Icons.Default.Delete,
                    label = strings.libraryDelete,
                    onClick = onDelete,
                    tint = MaterialTheme.colorScheme.error
                )
            }
        }
    }
}

@Composable

internal fun ActionButton(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    label: String,
    onClick: () -> Unit,
    tint: Color? = null
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .clickable(onClick = onClick)
            .padding(8.dp)
    ) {
        Icon(
            imageVector = icon,
            contentDescription = label,
            tint = tint ?: LocalContentColor.current,
            modifier = Modifier.size(24.dp)
        )
        Spacer(Modifier.height(4.dp))
        Text(text = label, style = MaterialTheme.typography.labelSmall)
    }
}

@Composable

internal fun InfoRow(label: String, value: String) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(label, style = MaterialTheme.typography.bodySmall)
        Text(
            text = value,
            style = MaterialTheme.typography.bodySmall,
            textAlign = TextAlign.End,
            modifier = Modifier.weight(1f, fill = false).padding(start = 16.dp),
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// Строка статистики библиотеки
// ─────────────────────────────────────────────────────────────────────────────

@Composable

internal fun LibraryStatsBar(
    totalItems: Int,
    completedCount: Int,
    inProgressCount: Int,
    modifier: Modifier = Modifier
) {
    val strings = LocalStrings.current
    val totalLabel = strings.libraryFileCountLabel(totalItems)
    val completedLabel = strings.libraryStatsCompleted
    val inProgressLabel = strings.libraryStatsReading

    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 8.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Surface(
            shape = RoundedCornerShape(12.dp),
            color = MaterialTheme.colorScheme.primary.copy(alpha = 0.15f)
        ) {
            Row(
                modifier = Modifier.padding(horizontal = 14.dp, vertical = 7.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Text(
                    text = "$totalItems",
                    style = MaterialTheme.typography.titleMedium.copy(
                        fontWeight = androidx.compose.ui.text.font.FontWeight.Bold
                    ),
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = totalLabel,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                )
            }
        }
        if (completedCount > 0) {
            Surface(
                shape = RoundedCornerShape(12.dp),
                color = mrComicCompletedColor().copy(alpha = 0.15f)
            ) {
                Row(
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 7.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Text("✅", style = MaterialTheme.typography.bodySmall)
                    Text(
                        text = "$completedCount $completedLabel",
                        style = MaterialTheme.typography.bodySmall,
                        color = mrComicCompletedColor()
                    )
                }
            }
        }
        if (inProgressCount > 0) {
            Surface(
                shape = RoundedCornerShape(12.dp),
                color = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.82f)
            ) {
                Row(
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 7.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Text("📖", style = MaterialTheme.typography.bodySmall)
                    Text(
                        text = "$inProgressCount $inProgressLabel",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSecondaryContainer
                    )
                }
            }
        }
    }
}

@Composable

internal fun QuoteStatsBar(
    totalQuotes: Int,
    sourceCount: Int,
    modifier: Modifier = Modifier
) {
    val strings = LocalStrings.current
    val totalLabel = strings.libraryQuoteCountLabel(totalQuotes)
    val sourceLabel = strings.libraryQuoteSourceCountLabel(sourceCount)

    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 8.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Surface(
            shape = RoundedCornerShape(12.dp),
            color = MaterialTheme.colorScheme.primary.copy(alpha = 0.15f)
        ) {
            Row(
                modifier = Modifier.padding(horizontal = 14.dp, vertical = 7.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Text(
                    text = "$totalQuotes",
                    style = MaterialTheme.typography.titleMedium.copy(
                        fontWeight = androidx.compose.ui.text.font.FontWeight.Bold
                    ),
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = totalLabel,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                )
            }
        }
        if (sourceCount > 0) {
            Surface(
                shape = RoundedCornerShape(12.dp),
                color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.15f)
            ) {
                Row(
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 7.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Text("📚", style = MaterialTheme.typography.bodySmall)
                    Text(
                        text = sourceLabel,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.secondary
                    )
                }
            }
        }
    }
}

@Composable
internal fun QuoteCard(
    quote: SavedQuote,
    sourceAvailable: Boolean,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    onUnavailableSourceClick: () -> Unit
) {
    val strings = LocalStrings.current
    val onOpenQuote = if (sourceAvailable) onClick else onUnavailableSourceClick
    MrComicCardSurface(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp)
            .combinedClickable(
                onClick = onOpenQuote,
                onLongClick = onLongClick
            ),
        containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.92f),
        cornerRadius = 12.dp,
        shadowElevation = 4.dp
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Text(
                text = "“${quote.text}”",
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurface
            )
            quote.translatedText?.takeIf { it.isNotBlank() && it != quote.text }?.let { translated ->
                Text(
                    text = translated,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                MrComicFilterChip(
                    selected = false,
                    onClick = onOpenQuote,
                    label = { Text("${quote.comicTitle} · ${strings.libraryQuotePageLabel(quote.page)}") }
                )
                MrComicFilterChip(
                    selected = false,
                    onClick = {},
                    enabled = false,
                    label = { Text(formatQuoteDate(quote.createdAt, strings.languageCode)) }
                )
                if (!sourceAvailable) {
                    MrComicFilterChip(
                        selected = false,
                        onClick = onUnavailableSourceClick,
                        label = { Text(strings.libraryQuoteSourceMissingLabel()) }
                    )
                }
            }
        }
    }
}

@Composable

internal fun EmptyQuotesPlaceholder(
    modifier: Modifier = Modifier,
    showMascot: Boolean = true
) {
    val strings = LocalStrings.current
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        LibraryPlaceholderLeadIcon(
            showMascot = showMascot,
            neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
            size = 32.dp
        )
        Text(
            text = strings.libraryQuotes,
            style = MaterialTheme.typography.titleLarge,
            color = MaterialTheme.colorScheme.onSurface
        )
        Text(
            text = strings.libraryQuotesEmptyHint,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center
        )
    }
}

@Composable

internal fun EmptyBookmarksPlaceholder(
    modifier: Modifier = Modifier,
    showMascot: Boolean = true
) {
    val strings = LocalStrings.current
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        LibraryPlaceholderLeadIcon(
            showMascot = showMascot,
            neutralIcon = Icons.Default.BookmarkBorder,
            size = 32.dp
        )
        Text(
            text = strings.libraryBookmarks,
            style = MaterialTheme.typography.titleLarge,
            color = MaterialTheme.colorScheme.onSurface
        )
        Text(
            text = strings.libraryBookmarksEmptyHint,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center
        )
    }
}

@Composable

internal fun LibraryPlaceholderLeadIcon(
    showMascot: Boolean,
    neutralIcon: androidx.compose.ui.graphics.vector.ImageVector,
    size: androidx.compose.ui.unit.Dp
) {
    MrComicMiniAvatar(
        showMascot = showMascot,
        modifier = Modifier.size(size),
        compact = true,
        neutralIcon = neutralIcon,
        neutralTint = MaterialTheme.colorScheme.primary
    )
}

// ─────────────────────────────────────────────────────────────────────────────
// Строки для достижений берём из AppStrings (с фолбэком на русский)
// ─────────────────────────────────────────────────────────────────────────────

// ── Audiobook grid item ───────────────────────────────────────────────────────

@Composable
internal fun rememberAchievementStrings(strings: AppStrings): AchievementStrings {
    return remember(strings.navLibrary) {
        AchievementStrings(
            achFirstBook = strings.achFirstBook,
            achFirstBookDesc = strings.achFirstBookDesc,
            achReader = strings.achReader,
            achReaderDesc = strings.achReaderDesc,
            achCollector = strings.achCollector,
            achCollectorDesc = strings.achCollectorDesc,
            achFirstComplete = strings.achFirstComplete,
            achFirstCompleteDesc = strings.achFirstCompleteDesc,
            achMarathon = strings.achMarathon,
            achMarathonDesc = strings.achMarathonDesc,
            achAuthorFan = strings.achAuthorFan,
            achAuthorFanDesc = strings.achAuthorFanDesc,
            achGenreGourmet = strings.achGenreGourmet,
            achGenreGourmetDesc = strings.achGenreGourmetDesc,
            achBookmarker = strings.achBookmarker,
            achBookmarkerDesc = strings.achBookmarkerDesc,
            achSecretCat = strings.achSecretCat,
            achSecretCatDesc = strings.achSecretCatDesc,
            achSecretHint = strings.achSecretHint
        )
    }
}

