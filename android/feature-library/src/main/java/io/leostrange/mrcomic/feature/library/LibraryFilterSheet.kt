package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.FlowRowScope
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Check
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.SortOrder
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.locale.LocalStrings

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
        shape = androidx.compose.foundation.shape.RoundedCornerShape(20.dp),
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
