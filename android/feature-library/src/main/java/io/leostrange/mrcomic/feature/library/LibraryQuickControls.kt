package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.InsertDriveFile
import androidx.compose.material.icons.automirrored.filled.ViewList
import androidx.compose.material.icons.filled.FolderOpen
import androidx.compose.material.icons.filled.GridView
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import androidx.compose.foundation.shape.RoundedCornerShape

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
