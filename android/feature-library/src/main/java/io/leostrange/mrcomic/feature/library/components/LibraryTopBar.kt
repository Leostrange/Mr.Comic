@file:OptIn(androidx.compose.foundation.layout.ExperimentalLayoutApi::class)

package io.leostrange.mrcomic.feature.library.components

import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.InsertDriveFile
import androidx.compose.material.icons.automirrored.filled.ViewList
import androidx.compose.material.icons.filled.CloudDownload
import androidx.compose.material.icons.filled.Crop169
import androidx.compose.material.icons.filled.CropSquare
import androidx.compose.material.icons.filled.FolderOpen
import androidx.compose.material.icons.filled.GridView
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicTypographyTokens
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButtonVariant
import io.leostrange.mrcomic.core.model.SortOrder
import io.leostrange.mrcomic.core.ui.library.RootChromeTone
import io.leostrange.mrcomic.core.ui.library.RootChromeTopBarHost
import io.leostrange.mrcomic.core.ui.library.rootChromePanelColor
import io.leostrange.mrcomic.core.ui.library.rootChromeTopBarColors
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.feature.library.GroupByMode
import io.leostrange.mrcomic.feature.library.LibraryContentSection
import io.leostrange.mrcomic.feature.library.LibraryFormatFilter
import io.leostrange.mrcomic.feature.library.LibraryStatusFilter
import io.leostrange.mrcomic.feature.library.LibraryViewMode

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LibraryTopBar(
    contentSection: LibraryContentSection,
    isControlsExpanded: Boolean,
    sortOrder: SortOrder,
    statusFilter: LibraryStatusFilter,
    formatFilter: LibraryFormatFilter,
    groupByMode: GroupByMode,
    thumbnailMode: String,
    viewMode: LibraryViewMode,
    onToggleControls: () -> Unit,
    onToggleView: () -> Unit,
    onOpenFilters: () -> Unit,
    onThumbnailModeChange: (String) -> Unit,
    onAddFileClick: () -> Unit,
    onAddFolderClick: () -> Unit,
    onOpdsCatalogClick: (() -> Unit)? = null,
    canNavigateUp: Boolean,
    onNavigateUp: () -> Unit,
    onSettingsClick: () -> Unit
) {
    val strings = LocalStrings.current
    val controlsRelevant = contentSection == LibraryContentSection.FILES
    val nextViewMode = when (viewMode) {
        LibraryViewMode.GRID -> LibraryViewMode.LIST
        LibraryViewMode.LIST -> LibraryViewMode.STRIPS
        LibraryViewMode.STRIPS -> LibraryViewMode.GRID
    }
    val filtersActive = controlsRelevant && (
        statusFilter != LibraryStatusFilter.ALL ||
            formatFilter != LibraryFormatFilter.ALL ||
            groupByMode != GroupByMode.FOLDER ||
            sortOrder != SortOrder.DATE_ADDED_DESC
        )
    var addMenuExpanded by remember { mutableStateOf(false) }
    var thumbnailMenuExpanded by remember { mutableStateOf(false) }
    val scrollState = rememberScrollState()
    val menuContainerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.NEUTRAL)

    RootChromeTopBarHost {
        TopAppBar(
            title = {
                Text(
                    text = when (contentSection) {
                        LibraryContentSection.QUOTES -> strings.libraryQuotes
                        LibraryContentSection.BOOKMARKS -> strings.libraryBookmarks
                        LibraryContentSection.ACHIEVEMENTS -> strings.libraryAchievements
                        else -> strings.navLibrary
                    },
                    style = MaterialTheme.typography.displaySmall.copy(
                        fontSize = MrComicTypographyTokens.libraryTitle,
                        fontWeight = FontWeight.Black,
                        letterSpacing = MrComicTypographyTokens.LetterSpacing.display
                    ),
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            },
            windowInsets = WindowInsets(0, 0, 0, 0),
            colors = rootChromeTopBarColors(),
            navigationIcon = {
                if (canNavigateUp) {
                    MrComicIconButton(
                        onClick = onNavigateUp,
                        variant = MrComicIconButtonVariant.Tonal
                    ) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = strings.back
                        )
                    }
                }
            },
            actions = {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(2.dp)
                ) {
                    if (controlsRelevant && isControlsExpanded) {
                        Row(
                            modifier = Modifier.horizontalScroll(scrollState),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(2.dp)
                        ) {
                            MrComicIconButton(onClick = onToggleView, variant = MrComicIconButtonVariant.Tonal) {
                                Icon(
                                    when (nextViewMode) {
                                        LibraryViewMode.GRID -> Icons.Default.GridView
                                        LibraryViewMode.LIST -> Icons.AutoMirrored.Filled.ViewList
                                        LibraryViewMode.STRIPS -> Icons.Default.Menu
                                    },
                                    contentDescription = when (nextViewMode) {
                                        LibraryViewMode.GRID -> strings.libraryViewGrid
                                        LibraryViewMode.LIST -> strings.libraryViewList
                                        LibraryViewMode.STRIPS -> strings.libraryViewStrips
                                    }
                                )
                            }
                            MrComicIconButton(onClick = onOpenFilters, variant = MrComicIconButtonVariant.Tonal) {
                                Icon(Icons.Default.Tune, contentDescription = strings.actionSort)
                            }
                            Box {
                                MrComicIconButton(
                                    onClick = { thumbnailMenuExpanded = true },
                                    variant = MrComicIconButtonVariant.Tonal
                                ) {
                                    Icon(
                                        if (thumbnailMode == "SQUARE") Icons.Default.CropSquare else Icons.Default.Crop169,
                                        contentDescription = if (thumbnailMode == "SQUARE") {
                                            strings.actionSquare
                                        } else {
                                            strings.actionRectangle
                                        }
                                    )
                                }
                                DropdownMenu(
                                    expanded = thumbnailMenuExpanded,
                                    onDismissRequest = { thumbnailMenuExpanded = false },
                                    shape = RoundedCornerShape(18.dp),
                                    containerColor = menuContainerColor
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
                                MrComicIconButton(
                                    onClick = { addMenuExpanded = true },
                                    variant = MrComicIconButtonVariant.Tonal
                                ) {
                                    Icon(Icons.Default.FolderOpen, contentDescription = strings.actionFolder)
                                }
                                DropdownMenu(
                                    expanded = addMenuExpanded,
                                    onDismissRequest = { addMenuExpanded = false },
                                    shape = RoundedCornerShape(18.dp),
                                    containerColor = menuContainerColor
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
                            if (onOpdsCatalogClick != null) {
                                MrComicIconButton(
                                    onClick = onOpdsCatalogClick,
                                    variant = MrComicIconButtonVariant.Tonal
                                ) {
                                    Icon(
                                        Icons.Default.CloudDownload,
                                        contentDescription = strings.opdsCatalog
                                    )
                                }
                            }
                        }
                    }
                    MrComicIconButton(
                        onClick = onToggleControls,
                        variant = MrComicIconButtonVariant.Tonal
                    ) {
                        Icon(
                            imageVector = Icons.Default.Menu,
                            contentDescription = strings.navSettings,
                            tint = if (isControlsExpanded || filtersActive) {
                                MaterialTheme.colorScheme.primary
                            } else {
                                MaterialTheme.colorScheme.onSurface
                            }
                        )
                    }
                }
            }
        )
    }
}

