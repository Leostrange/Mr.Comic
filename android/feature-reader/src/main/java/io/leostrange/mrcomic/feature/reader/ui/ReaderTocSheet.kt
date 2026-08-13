package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.animation.*
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.*
import androidx.compose.ui.draw.*
import androidx.compose.ui.graphics.*
import androidx.compose.ui.unit.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import io.leostrange.mrcomic.core.model.*
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.theme.*
import io.leostrange.mrcomic.engine.api.TocEntry

/**
 * Sheet and panel composables for the reader.
 *
 * Extracted from ReaderScreen to reduce its size and isolate UI components.
 * These are stateless composables that receive their data via parameters.
 */

@OptIn(ExperimentalMaterial3Api::class)
@Composable
internal fun TocBottomSheet(
    entries: List<TocEntry>,
    currentPage: Int,
    bookmarkedPages: Set<Int>,
    readerPreset: ReadingPreset,
    toolbarOpacity: Float,
    toolbarBlur: Float,
    resolveDisplayPage: (enginePageIndex: Int) -> Int = { it },
    onNavigate: (TocEntry) -> Unit,
    onRemoveBookmark: (Int) -> Unit,
    onDismiss: () -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val effectiveToolbarOpacity = readerEffectiveToolbarOpacity(toolbarOpacity, readerPreset)
    val effectiveToolbarBlur = readerEffectiveToolbarBlur(toolbarBlur, readerPreset)
    val sheetShape = RoundedCornerShape(topStart = 24.dp, topEnd = 24.dp)
    val sheetSurface = readerPanelSurfaceColor(
        base = MaterialTheme.colorScheme.surface,
        emphasis = if (readerPreset == ReadingPreset.EINK) {
            1f
        } else {
            (effectiveToolbarOpacity + 0.18f + effectiveToolbarBlur * 0.08f).coerceIn(0.92f, 1f)
        },
        minAlpha = if (readerPreset == ReadingPreset.EINK) 1f else 0.94f
    )
    val itemSurface = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = if (readerPreset == ReadingPreset.EINK) 1f else 0.98f)
    val activeItemSurface = MaterialTheme.colorScheme.primaryContainer.copy(alpha = if (readerPreset == ReadingPreset.EINK) 1f else 0.92f)
    val secondaryPillSurface = MaterialTheme.colorScheme.surface.copy(alpha = 0.98f)
    var selectedTab by remember(entries, bookmarkedPages) {
        mutableStateOf(if (entries.isEmpty() && bookmarkedPages.isNotEmpty()) "bookmarks" else "chapters")
    }
    val showChaptersTab = entries.isNotEmpty()
    val hasBookmarks = bookmarkedPages.isNotEmpty()
    val showBookmarksTab = hasBookmarks || (!showChaptersTab && selectedTab == "bookmarks")

    LaunchedEffect(showChaptersTab, hasBookmarks) {
        when {
            selectedTab == "bookmarks" && !hasBookmarks && showChaptersTab -> selectedTab = "chapters"
            selectedTab == "chapters" && !showChaptersTab && hasBookmarks -> selectedTab = "bookmarks"
            !showChaptersTab && !showBookmarksTab -> selectedTab = "chapters"
        }
    }

    val selectedTabIndex = when {
        selectedTab == "bookmarks" && showChaptersTab -> 1
        else -> 0
    }

    ModalBottomSheet(
        onDismissRequest = onDismiss,
        shape = sheetShape,
        containerColor = sheetSurface,
        contentColor = MaterialTheme.colorScheme.onSurface,
        tonalElevation = readerPanelTonalElevation(effectiveToolbarBlur, base = 0f, extra = 1f),
        scrimColor = readerPanelScrimColor(MaterialTheme.colorScheme.onSurface, effectiveToolbarBlur),
        dragHandle = {
            BottomSheetDefaults.DragHandle(
                color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.62f)
            )
        }
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 12.dp)
        ) {
            TabRow(
                modifier = Modifier.heightIn(min = 42.dp),
                selectedTabIndex = selectedTabIndex,
                containerColor = Color.Transparent
            ) {
                if (showChaptersTab) {
                    Tab(
                        modifier = Modifier.heightIn(min = 42.dp),
                        selected = selectedTab == "chapters",
                        onClick = { selectedTab = "chapters" },
                        text = {
                            Text(
                                readerText.chapters,
                                style = MaterialTheme.typography.labelMedium
                            )
                        }
                    )
                }
                if (showBookmarksTab) {
                    Tab(
                        modifier = Modifier.heightIn(min = 42.dp),
                        selected = selectedTab == "bookmarks",
                        onClick = { selectedTab = "bookmarks" },
                        text = {
                            val count = bookmarkedPages.size
                            Text(
                                readerBookmarksTabLabel(count, strings.languageCode),
                                style = MaterialTheme.typography.labelMedium
                            )
                        }
                    )
                }
            }

            when (selectedTab) {
                "chapters" -> {
                    if (!showChaptersTab) return@Column
                    LazyColumn(
                        modifier = Modifier
                            .fillMaxWidth()
                            .fillMaxHeight()
                            .heightIn(max = 456.dp),
                        contentPadding = PaddingValues(top = 6.dp, bottom = 8.dp),
                        verticalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        itemsIndexed(entries) { idx, entry ->
                            val entryDisplayPage = resolveDisplayPage(entry.pageIndex)
                            val nextDisplayPage = entries.getOrNull(idx + 1)
                                ?.let { resolveDisplayPage(it.pageIndex) }
                                ?: Int.MAX_VALUE
                            val isCurrentChapter = currentPage >= entryDisplayPage &&
                                currentPage < nextDisplayPage
                            Surface(
                                modifier = Modifier.fillMaxWidth(),
                                shape = RoundedCornerShape(10.dp),
                                color = if (isCurrentChapter) activeItemSurface else itemSurface
                            ) {
                                Row(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .clickable { onNavigate(entry) }
                                        .padding(horizontal = 12.dp, vertical = 7.dp),
                                    horizontalArrangement = Arrangement.SpaceBetween,
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Text(
                                        text = normalizedTocTitle(entry.title),
                                        style = MaterialTheme.typography.bodyMedium,
                                        fontWeight = if (isCurrentChapter) FontWeight.SemiBold else FontWeight.Normal,
                                        color = if (isCurrentChapter)
                                            MaterialTheme.colorScheme.primary
                                        else MaterialTheme.colorScheme.onSurface,
                                        modifier = Modifier.weight(1f),
                                        maxLines = 1,
                                        overflow = TextOverflow.Ellipsis
                                    )
                                    Spacer(Modifier.width(12.dp))
                                    Surface(
                                        shape = RoundedCornerShape(999.dp),
                                        color = if (isCurrentChapter) {
                                            MaterialTheme.colorScheme.primary.copy(alpha = 0.14f)
                                        } else {
                                            secondaryPillSurface
                                        }
                                    ) {
                                        Text(
                                            text = "${entryDisplayPage + 1}",
                                            modifier = Modifier.padding(horizontal = 9.dp, vertical = 3.dp),
                                            style = MaterialTheme.typography.labelSmall,
                                            color = if (isCurrentChapter)
                                                MaterialTheme.colorScheme.primary
                                            else MaterialTheme.colorScheme.onSurfaceVariant,
                                            fontWeight = if (isCurrentChapter) FontWeight.SemiBold else FontWeight.Normal
                                        )
                                    }
                                }
                            }
                        }
                        item { Spacer(Modifier.navigationBarsPadding()) }
                    }
                }
                "bookmarks" -> {
                    if (!showBookmarksTab) return@Column
                    val sortedBookmarks = remember(bookmarkedPages) { bookmarkedPages.sorted() }
                    if (sortedBookmarks.isEmpty()) {
                        Surface(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(top = 8.dp)
                                .height(176.dp),
                            shape = RoundedCornerShape(18.dp),
                            color = itemSurface
                        ) {
                            Box(
                                modifier = Modifier.fillMaxSize(),
                                contentAlignment = Alignment.Center
                            ) {
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Icon(
                                        Icons.Default.BookmarkBorder,
                                        contentDescription = null,
                                        modifier = Modifier.size(48.dp),
                                        tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.4f)
                                    )
                                    Spacer(Modifier.height(8.dp))
                                    Text(
                                        readerText.noBookmarks,
                                        style = MaterialTheme.typography.bodyMedium,
                                        color = MaterialTheme.colorScheme.onSurfaceVariant
                                    )
                                }
                            }
                        }
                    } else {
                        LazyColumn(
                            modifier = Modifier
                                .fillMaxWidth()
                                .heightIn(max = 456.dp),
                            contentPadding = PaddingValues(top = 8.dp, bottom = 10.dp),
                            verticalArrangement = Arrangement.spacedBy(6.dp)
                        ) {
                            items(sortedBookmarks) { page ->
                                val isCurrent = page == currentPage
                                Surface(
                                    modifier = Modifier.fillMaxWidth(),
                                    shape = RoundedCornerShape(16.dp),
                                    color = if (isCurrent) activeItemSurface else itemSurface
                                ) {
                                    Row(
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .clickable { onNavigate(TocEntry(title = "", pageIndex = page)) }
                                            .padding(start = 14.dp, end = 6.dp, top = 9.dp, bottom = 9.dp),
                                        horizontalArrangement = Arrangement.SpaceBetween,
                                        verticalAlignment = Alignment.CenterVertically
                                    ) {
                                        Icon(
                                            Icons.Default.Bookmark,
                                            contentDescription = null,
                                            tint = MaterialTheme.colorScheme.primary,
                                            modifier = Modifier.size(18.dp)
                                        )
                                        Spacer(Modifier.width(12.dp))
                                        Text(
                                            text = readerPageLabel(page, strings.languageCode),
                                            style = MaterialTheme.typography.bodyMedium,
                                            fontWeight = if (isCurrent) FontWeight.SemiBold else FontWeight.Normal,
                                            color = if (isCurrent)
                                                MaterialTheme.colorScheme.primary
                                            else MaterialTheme.colorScheme.onSurface,
                                            modifier = Modifier.weight(1f)
                                        )
                                        IconButton(
                                            onClick = { onRemoveBookmark(page) },
                                            modifier = Modifier.size(32.dp)
                                        ) {
                                            Icon(
                                                Icons.Default.Delete,
                                                contentDescription = readerText.deleteBookmark,
                                                tint = MaterialTheme.colorScheme.onSurfaceVariant,
                                                modifier = Modifier.size(18.dp)
                                            )
                                        }
                                    }
                                }
                            }
                            item { Spacer(Modifier.navigationBarsPadding()) }
                        }
                    }
                }
                else -> Unit
            }
        }
    }
}
