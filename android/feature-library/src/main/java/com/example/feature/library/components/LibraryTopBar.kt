package com.example.feature.library.components

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.core.Spring
import androidx.compose.animation.core.spring
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.ui.unit.IntOffset
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.InsertDriveFile
import androidx.compose.material.icons.automirrored.filled.ViewList
import androidx.compose.material.icons.filled.Crop169
import androidx.compose.material.icons.filled.CropSquare
import androidx.compose.material.icons.filled.FolderOpen
import androidx.compose.material.icons.filled.GridView
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilledTonalIconButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LocalContentColor
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
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.example.core.model.SortOrder
import com.example.core.ui.library.RootChromeTone
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.library.rootChromePanelColor
import com.example.core.ui.library.rootChromeTopBarColors
import com.example.feature.library.GroupByMode
import com.example.feature.library.LibraryContentSection
import com.example.feature.library.LibraryFormatFilter
import com.example.feature.library.LibraryStatusFilter
import com.example.feature.library.LibraryViewMode

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
    canNavigateUp: Boolean,
    onNavigateUp: () -> Unit
) {
    val strings = LocalStrings.current
    val controlsRelevant = contentSection == LibraryContentSection.FILES
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
    val slideSpec = spring<IntOffset>(
        stiffness = Spring.StiffnessMediumLow,
        dampingRatio = Spring.DampingRatioNoBouncy
    )

    TopAppBar(
        title = {
            // Заголовок скользит влево и исчезает, когда панель раскрыта
            AnimatedVisibility(
                visible = !isControlsExpanded,
                enter = slideInHorizontally(
                    initialOffsetX = { -it / 2 },
                    animationSpec = slideSpec
                ) + fadeIn(),
                exit = slideOutHorizontally(
                    targetOffsetX = { -it / 2 },
                    animationSpec = slideSpec
                ) + fadeOut()
            ) {
                Text(
                    text = when (contentSection) {
                        LibraryContentSection.QUOTES -> strings.libraryQuotes
                        LibraryContentSection.BOOKMARKS -> strings.libraryBookmarks
                        LibraryContentSection.ACHIEVEMENTS -> "Mr.Comic"
                        LibraryContentSection.FILES -> strings.navLibrary
                    },
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
        },
        colors = rootChromeTopBarColors(),
        navigationIcon = {
            if (canNavigateUp) {
                IconButton(onClick = onNavigateUp) {
                    Icon(
                        imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                        contentDescription = strings.back
                    )
                }
            }
        },
        actions = {
            if (controlsRelevant) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(2.dp)
                ) {
                    // Кнопки выезжают влево от гамбургера
                    AnimatedVisibility(
                        visible = isControlsExpanded,
                        enter = slideInHorizontally(
                            initialOffsetX = { it },
                            animationSpec = slideSpec
                        ) + fadeIn(),
                        exit = slideOutHorizontally(
                            targetOffsetX = { it },
                            animationSpec = slideSpec
                        ) + fadeOut()
                    ) {
                        Row(
                            modifier = Modifier.horizontalScroll(scrollState),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(2.dp)
                        ) {
                            FilledTonalIconButton(onClick = onToggleView) {
                                Icon(
                                    if (viewMode == LibraryViewMode.GRID) {
                                        Icons.AutoMirrored.Filled.ViewList
                                    } else {
                                        Icons.Default.GridView
                                    },
                                    contentDescription = if (viewMode == LibraryViewMode.GRID) {
                                        strings.libraryViewList
                                    } else {
                                        strings.libraryViewGrid
                                    }
                                )
                            }
                            FilledTonalIconButton(onClick = onOpenFilters) {
                                Icon(Icons.Default.Tune, contentDescription = strings.actionSort)
                            }
                            Box {
                                FilledTonalIconButton(onClick = { thumbnailMenuExpanded = true }) {
                                    Icon(
                                        if (thumbnailMode == "SQUARE") Icons.Default.CropSquare
                                        else Icons.Default.Crop169,
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
                                FilledTonalIconButton(onClick = { addMenuExpanded = true }) {
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
                                            Icon(
                                                Icons.AutoMirrored.Filled.InsertDriveFile,
                                                contentDescription = null
                                            )
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

                    // Гамбургер всегда виден и только раскрывает горизонтальную панель действий.
                    Box(
                        modifier = Modifier
                            .clickable(onClick = onToggleControls)
                            .padding(8.dp)
                    ) {
                        Icon(
                            Icons.Default.Menu,
                            contentDescription = if (isControlsExpanded) {
                                strings.controlsHide
                            } else {
                                strings.controlsShow
                            },
                            tint = if (filtersActive || isControlsExpanded) {
                                MaterialTheme.colorScheme.primary
                            } else {
                                LocalContentColor.current
                            }
                        )
                    }
                }
            }
        }
    )
}
