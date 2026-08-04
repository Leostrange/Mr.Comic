// Phase Q (2026-08-03): вынесено из SettingsLibraryPreviews.kt.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.layout.FlowRowScope
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicLibraryPresetCard
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKDROP_STRENGTH
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_BLUR
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_VEIL
import io.leostrange.mrcomic.core.ui.library.LibraryBackdropLayer
import io.leostrange.mrcomic.core.ui.library.LibraryShelfBar
import io.leostrange.mrcomic.core.ui.library.LibraryThemePresetSnapshot
import io.leostrange.mrcomic.core.ui.library.parseLibraryThemePreset

/**
 * Library preset cards (Phase Q, 2026-08-03): background, shelf, and theme
 * preset selectors. Moved from SettingsLibraryPreviews.kt.
 */
/* ──── LibraryBackgroundPresetCard ──── */
@Composable
internal fun LibraryBackgroundPresetCard(
    selected: Boolean,
    onClick: () -> Unit,
    label: String,
    style: String,
    selectedImageUri: String?,
    modifier: Modifier = Modifier
) {
    val usesSelectedImage = style == "IMAGE" && !selectedImageUri.isNullOrBlank()
    val previewStyle = when {
        style == "IMAGE" && selectedImageUri.isNullOrBlank() -> "PAPER_GRAIN"
        else -> style
    }
    MrComicLibraryPresetCard(
        title = label,
        subtitle = "",
        selected = selected,
        onClick = onClick,
        modifier = modifier.width(148.dp),
        accentColor = MaterialTheme.colorScheme.primary
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(74.dp)
                .clip(RoundedCornerShape(12.dp))
        ) {
            LibraryBackdropLayer(
                backgroundStyle = previewStyle,
                backgroundImageUri = if (usesSelectedImage) selectedImageUri else null,
                colorScheme = MaterialTheme.colorScheme,
                backdropStrength = DEFAULT_LIBRARY_BACKDROP_STRENGTH,
                backgroundBlur = if (previewStyle == "LIQUID_GLASS") 0.32f else DEFAULT_LIBRARY_BACKGROUND_BLUR,
                imageVeil = DEFAULT_LIBRARY_BACKGROUND_VEIL,
                modifier = Modifier.fillMaxSize()
            )
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(MaterialTheme.colorScheme.scrim.copy(alpha = 0.06f))
            )
            if (style == "IMAGE" && selectedImageUri.isNullOrBlank()) {
                Icon(
                    imageVector = Icons.Default.Image,
                    contentDescription = null,
                    modifier = Modifier
                        .align(Alignment.Center)
                        .size(20.dp),
                    tint = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.78f)
                )
            }
        }
    }
}

/* ──── LibraryShelfPresetCard ──── */
@Composable
internal fun LibraryShelfPresetCard(
    selected: Boolean,
    onClick: () -> Unit,
    label: String,
    shelfStyle: String,
    backgroundStyle: String,
    backgroundImageUri: String?,
    backgroundBlur: Float,
    shelfDepth: Float,
    modifier: Modifier = Modifier
) {
    MrComicLibraryPresetCard(
        title = label,
        subtitle = "",
        selected = selected,
        onClick = onClick,
        modifier = modifier.width(148.dp),
        accentColor = MaterialTheme.colorScheme.primary
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(74.dp)
                .clip(RoundedCornerShape(12.dp))
        ) {
            LibraryBackdropLayer(
                backgroundStyle = backgroundStyle,
                backgroundImageUri = backgroundImageUri,
                colorScheme = MaterialTheme.colorScheme,
                backdropStrength = 0.24f,
                backgroundBlur = backgroundBlur,
                imageVeil = 0.14f,
                modifier = Modifier.fillMaxSize()
            )
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(horizontal = 10.dp, vertical = 10.dp),
                contentAlignment = Alignment.BottomCenter
            ) {
                LibraryShelfBar(
                    shelfStyle = shelfStyle,
                    colorScheme = MaterialTheme.colorScheme,
                    depth = shelfDepth,
                    modifier = Modifier.fillMaxWidth()
                )
            }
        }
    }
}

/* ──── LibraryThemePresetCard ──── */
@Composable
internal fun LibraryThemePresetCard(
    slot: LibraryThemePresetSlot,
    slotLabelPrefix: String,
    appLanguage: String,
    saveLabel: String,
    applyLabel: String,
    clearLabel: String,
    emptyLabel: String,
    onSave: () -> Unit,
    onApply: () -> Unit,
    onClear: () -> Unit,
    modifier: Modifier = Modifier
) {
    val snapshot = remember(slot.serialized) { parseLibraryThemePreset(slot.serialized) }
    val cardShape = RoundedCornerShape(18.dp)
    val slotLabel = "$slotLabelPrefix ${slot.index}"
    val summary = snapshot?.let {
        "${libraryBackgroundStyleLabel(it.backgroundStyle, appLanguage)} • ${libraryShelfStyleLabel(it.shelfStyle, appLanguage)}"
    } ?: emptyLabel

    MrComicCardSurface(
        modifier = modifier.width(160.dp),
        fillMaxWidth = false,
        shape = cardShape,
        containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.92f),
        shadowElevation = 4.dp
    ) {
        Column(
            modifier = Modifier.padding(10.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(88.dp)
                    .clip(RoundedCornerShape(14.dp))
            ) {
                if (snapshot != null) {
                    LibraryBackdropLayer(
                        backgroundStyle = snapshot.backgroundStyle,
                        backgroundImageUri = snapshot.backgroundImageUri,
                        colorScheme = MaterialTheme.colorScheme,
                        backdropStrength = snapshot.backdropStrength,
                        backgroundBlur = snapshot.backgroundBlur,
                        imageVeil = snapshot.backgroundVeil,
                        modifier = Modifier.fillMaxSize()
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .background(MaterialTheme.colorScheme.scrim.copy(alpha = 0.08f))
                    )
                    Row(
                        modifier = Modifier
                            .align(Alignment.BottomCenter)
                            .padding(start = 10.dp, end = 10.dp, bottom = 10.dp),
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalAlignment = Alignment.Bottom
                    ) {
                        Box(
                            modifier = Modifier
                                .size(width = 20.dp, height = 34.dp)
                                .clip(RoundedCornerShape(8.dp))
                                .background(MaterialTheme.colorScheme.surface.copy(alpha = 0.9f))
                        ) {
                            Box(
                                modifier = Modifier
                                    .fillMaxHeight()
                                    .width(5.dp)
                                    .background(MaterialTheme.colorScheme.secondary.copy(alpha = 0.8f))
                            )
                        }
                        Box(
                            modifier = Modifier
                                .size(width = 24.dp, height = 38.dp)
                                .clip(RoundedCornerShape(9.dp))
                                .background(
                                    Brush.verticalGradient(
                                        listOf(
                                            MaterialTheme.colorScheme.primary.copy(alpha = 0.92f),
                                            MaterialTheme.colorScheme.tertiary.copy(alpha = 0.6f)
                                        )
                                    )
                                )
                                .border(
                                    width = if (snapshot.graphicCoverStyle == "INK") 2.dp else 1.dp,
                                    color = if (snapshot.graphicCoverStyle == "MINIMAL") {
                                        MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f)
                                    } else {
                                        Color.Black.copy(alpha = 0.28f)
                                    },
                                    shape = RoundedCornerShape(9.dp)
                                )
                        )
                        Box(
                            modifier = Modifier
                                .size(width = 34.dp, height = 34.dp)
                                .clip(RoundedCornerShape(10.dp))
                                .background(MaterialTheme.colorScheme.surface.copy(alpha = 0.9f))
                        ) {
                            Box(
                                modifier = Modifier
                                    .align(Alignment.TopStart)
                                    .padding(start = 6.dp, top = 4.dp)
                                    .width(18.dp)
                                    .height(7.dp)
                                    .clip(RoundedCornerShape(topStart = 6.dp, topEnd = 6.dp, bottomEnd = 4.dp, bottomStart = 2.dp))
                                    .background(MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.95f))
                            )
                        }
                    }
                    LibraryShelfBar(
                        shelfStyle = snapshot.shelfStyle,
                        colorScheme = MaterialTheme.colorScheme,
                        depth = snapshot.shelfDepth,
                        modifier = Modifier
                            .align(Alignment.BottomCenter)
                            .padding(horizontal = 10.dp, vertical = 8.dp)
                            .fillMaxWidth()
                    )
                } else {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .background(MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.72f)),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(
                            imageVector = Icons.Default.Style,
                            contentDescription = emptyLabel,
                            tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                        )
                    }
                }
            }
            Column(verticalArrangement = Arrangement.spacedBy(2.dp)) {
                Text(
                    text = slotLabel,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Text(
                    text = summary,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    minLines = 2,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis
                )
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                FilledTonalIconButton(
                    onClick = onSave,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.Save, contentDescription = saveLabel)
                }
                FilledIconButton(
                    onClick = onApply,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.PlayArrow, contentDescription = applyLabel)
                }
                OutlinedIconButton(
                    onClick = onClear,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.DeleteOutline, contentDescription = clearLabel)
                }
            }
        }
    }
}

/* ──── FlowRowScope.LibraryQuickPresetTile ──── */
@Composable
internal fun FlowRowScope.LibraryQuickPresetTile(
    title: String,
    subtitle: String,
    accent: Color,
    snapshot: LibraryThemePresetSnapshot,
    selected: Boolean,
    onClick: () -> Unit
) {
    MrComicCardSurface(
        modifier = Modifier
            .widthIn(min = 148.dp, max = 220.dp)
            .weight(1f)
            .clickable(onClick = onClick),
        fillMaxWidth = false,
        cornerRadius = 14.dp,
        containerColor = if (selected) {
            accent.copy(alpha = 0.14f)
        } else {
            MaterialTheme.colorScheme.surface.copy(alpha = 0.72f)
        },
        border = BorderStroke(
            width = if (selected) 1.1.dp else 0.8.dp,
            color = if (selected) {
                accent.copy(alpha = 0.44f)
            } else {
                MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.16f)
            }
        )
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 10.dp, vertical = 10.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(76.dp)
                    .clip(RoundedCornerShape(12.dp))
            ) {
                LibraryBackdropLayer(
                    backgroundStyle = snapshot.backgroundStyle,
                    backgroundImageUri = snapshot.backgroundImageUri,
                    colorScheme = MaterialTheme.colorScheme,
                    backdropStrength = snapshot.backdropStrength,
                    backgroundBlur = snapshot.backgroundBlur,
                    imageVeil = snapshot.backgroundVeil,
                    modifier = Modifier.fillMaxSize()
                )
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(MaterialTheme.colorScheme.scrim.copy(alpha = 0.06f))
                )
                Row(
                    modifier = Modifier
                        .align(Alignment.BottomCenter)
                        .padding(start = 9.dp, end = 9.dp, bottom = 9.dp),
                    horizontalArrangement = Arrangement.spacedBy(7.dp),
                    verticalAlignment = Alignment.Bottom
                ) {
                    Box(
                        modifier = Modifier
                            .weight(1f)
                            .height(30.dp)
                            .clip(RoundedCornerShape(8.dp))
                            .background(MaterialTheme.colorScheme.surface.copy(alpha = 0.88f))
                    )
                    Box(
                        modifier = Modifier
                            .weight(1f)
                            .height(34.dp)
                            .clip(RoundedCornerShape(9.dp))
                            .background(
                                Brush.verticalGradient(
                                    listOf(
                                        accent.copy(alpha = 0.92f),
                                        MaterialTheme.colorScheme.tertiary.copy(alpha = 0.52f)
                                    )
                                )
                            )
                    )
                }
                LibraryShelfBar(
                    shelfStyle = snapshot.shelfStyle,
                    colorScheme = MaterialTheme.colorScheme,
                    depth = snapshot.shelfDepth,
                    modifier = Modifier
                        .align(Alignment.BottomCenter)
                        .padding(horizontal = 9.dp, vertical = 7.dp)
                        .fillMaxWidth()
                )
            }
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Box(
                    modifier = Modifier
                        .size(10.dp)
                        .clip(CircleShape)
                        .background(accent)
                )
                Text(
                    text = title,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
            }
            Text(
                text = subtitle,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                maxLines = 3,
                overflow = TextOverflow.Ellipsis
            )
        }
    }
}

