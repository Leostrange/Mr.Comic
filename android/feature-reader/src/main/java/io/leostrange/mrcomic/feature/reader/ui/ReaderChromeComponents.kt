package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.FormatListBulleted
import androidx.compose.material.icons.automirrored.filled.KeyboardArrowLeft
import androidx.compose.material.icons.filled.Pause
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material.icons.filled.BrightnessHigh
import androidx.compose.material.icons.filled.BrightnessLow
import androidx.compose.material.icons.filled.Headphones
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.SwapHoriz
import androidx.compose.material.icons.filled.Crop
import androidx.compose.material.icons.filled.Translate
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FilterChipDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.material3.SliderDefaults
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.library.RootChromeTopBarHost
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCornerScale
import io.leostrange.mrcomic.core.ui.designsystem.MrComicType
import io.leostrange.mrcomic.core.ui.locale.LocalStrings

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ReaderMinimalBar(
    title: String,
    onNavigateBack: () -> Unit,
    onExpand: () -> Unit
) {
    val strings = LocalStrings.current
    RootChromeTopBarHost {
        TopAppBar(
            title = {
                Text(
                    text = title,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    style = MrComicType.h3
                )
            },
            navigationIcon = {
                ReaderChromeIconButton(onClick = onNavigateBack) {
                    Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = strings.back)
                }
            },
            actions = {
                ReaderChromeIconButton(onClick = onExpand) {
                    Icon(Icons.AutoMirrored.Filled.KeyboardArrowLeft, contentDescription = strings.controlsShow)
                }
            },
            windowInsets = WindowInsets(0, 0, 0, 0),
            colors = TopAppBarDefaults.topAppBarColors(
                containerColor = Color.Transparent,
                titleContentColor = MaterialTheme.colorScheme.onSurface,
                navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                actionIconContentColor = MaterialTheme.colorScheme.onSurface
            )
        )
    }
}

@Composable
private fun ReaderChromeIconButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    buttonSize: Dp = 42.dp,
    enabled: Boolean = true,
    content: @Composable () -> Unit
) {
    IconButton(
        onClick = onClick,
        modifier = modifier.size(buttonSize),
        enabled = enabled
    ) {
        content()
    }
}

@Composable
internal fun ReaderPanelChip(
    selected: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    label: @Composable () -> Unit
) {
    FilterChip(
        selected = selected,
        onClick = onClick,
        modifier = modifier.heightIn(min = 38.dp),
        shape = RoundedCornerShape(MrComicCornerScale.lg),
        colors = FilterChipDefaults.filterChipColors(
            containerColor = MaterialTheme.colorScheme.surfaceContainerHigh,
            selectedContainerColor = MaterialTheme.colorScheme.primaryContainer,
            labelColor = MaterialTheme.colorScheme.onSurface,
            selectedLabelColor = MaterialTheme.colorScheme.onPrimaryContainer
        ),
        label = label
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ReaderExpandedBar(
    title: String,
    canShowToc: Boolean,
    showTextSettings: Boolean,
    showOcrAction: Boolean = true,
    canSwapDirection: Boolean,
    directionShortcutActive: Boolean,
    showBrightnessRow: Boolean,
    useDirectActions: Boolean = false,
    chromeIconOrder: String,
    showTocIcon: Boolean = true,
    showTextSettingsIcon: Boolean = true,
    showAudioIcon: Boolean = true,
    showDirectionIcon: Boolean = true,
    showTranslateIcon: Boolean = true,
    showBrightnessIcon: Boolean = true,
    showAutoScrollIcon: Boolean = true,
    showCropIcon: Boolean = false,
    marginCropAvailable: Boolean = false,
    autoScrollActive: Boolean = false,
    onNavigateBack: () -> Unit,
    onToggleToc: () -> Unit,
    onToggleTextSettings: () -> Unit,
    onSwapDirection: () -> Unit,
    onRequestOcr: () -> Unit,
    onToggleBrightness: () -> Unit,
    onToggleTtsControls: () -> Unit = {},
    onAutoScrollToggle: () -> Unit = {},
    onToggleMarginCrop: () -> Unit = {}
) {
    val strings = LocalStrings.current
    val chromeIconTint = MaterialTheme.colorScheme.onSurface
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Box(
            modifier = Modifier.width(44.dp),
            contentAlignment = Alignment.Center
        ) {
            ReaderChromeIconButton(onClick = onNavigateBack) {
                Icon(
                    Icons.AutoMirrored.Filled.ArrowBack,
                    contentDescription = strings.back,
                    tint = chromeIconTint
                )
            }
        }
        Box(
            modifier = Modifier.weight(1f),
            contentAlignment = Alignment.Center
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(10.dp, Alignment.CenterHorizontally)
            ) {
                ReaderExpandedActionButtons(
                    canShowToc = canShowToc,
                    showTextSettings = showTextSettings,
                    showOcrAction = showOcrAction,
                    canSwapDirection = canSwapDirection,
                    directionShortcutActive = directionShortcutActive,
                    showBrightnessRow = showBrightnessRow,
                    showTtsAction = useDirectActions,
                    chromeIconOrder = chromeIconOrder,
                    showTocIcon = showTocIcon,
                    showTextSettingsIcon = showTextSettingsIcon,
                    showAudioIcon = showAudioIcon,
                    showDirectionIcon = showDirectionIcon,
                    showTranslateIcon = showTranslateIcon,
                    showBrightnessIcon = showBrightnessIcon,
                    showAutoScrollIcon = showAutoScrollIcon,
                    showCropIcon = showCropIcon,
                    marginCropAvailable = marginCropAvailable,
                    autoScrollActive = autoScrollActive,
                    chromeIconTint = chromeIconTint,
                    onToggleToc = onToggleToc,
                    onToggleTextSettings = onToggleTextSettings,
                    onSwapDirection = onSwapDirection,
                    onRequestOcr = onRequestOcr,
                    onToggleBrightness = onToggleBrightness,
                    onToggleTtsControls = onToggleTtsControls,
                    onAutoScrollToggle = onAutoScrollToggle,
                    onToggleMarginCrop = onToggleMarginCrop
                )
            }
        }
        Spacer(Modifier.width(44.dp))
    }
    if (title.isNotBlank()) {
        Text(
            text = title,
            style = MrComicType.meta,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 2.dp)
        )
    }
}

@Composable
private fun ReaderExpandedActionButtons(
    canShowToc: Boolean,
    showTextSettings: Boolean,
    showOcrAction: Boolean,
    canSwapDirection: Boolean,
    directionShortcutActive: Boolean,
    showBrightnessRow: Boolean,
    showTtsAction: Boolean = false,
    chromeIconOrder: String,
    showTocIcon: Boolean,
    showTextSettingsIcon: Boolean,
    showAudioIcon: Boolean,
    showDirectionIcon: Boolean,
    showTranslateIcon: Boolean,
    showBrightnessIcon: Boolean,
    showAutoScrollIcon: Boolean = true,
    showCropIcon: Boolean = false,
    marginCropAvailable: Boolean = false,
    autoScrollActive: Boolean = false,
    chromeIconTint: Color,
    onToggleToc: () -> Unit,
    onToggleTextSettings: () -> Unit,
    onSwapDirection: () -> Unit,
    onRequestOcr: () -> Unit,
    onToggleBrightness: () -> Unit,
    onToggleTtsControls: () -> Unit = {},
    onAutoScrollToggle: () -> Unit = {},
    onToggleMarginCrop: () -> Unit = {}
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val actions = buildList {
        ReaderChromeButton.resolveOrder(chromeIconOrder).forEach { action ->
            when (action) {
                ReaderChromeButton.STYLE ->
                    if (showTextSettings && showTextSettingsIcon) {
                        add(
                            ReaderChromeActionSpec(
                                key = action.storedValue,
                                content = { buttonSize ->
                                    ReaderChromeIconButton(onClick = onToggleTextSettings, buttonSize = buttonSize) {
                                        Icon(
                                            Icons.Default.Settings,
                                            contentDescription = strings.readerTextStyle,
                                            tint = chromeIconTint
                                        )
                                    }
                                }
                            )
                        )
                    }

                ReaderChromeButton.TOC ->
                    if (canShowToc && showTocIcon) {
                        add(
                            ReaderChromeActionSpec(
                                key = action.storedValue,
                                content = { buttonSize ->
                                    ReaderChromeIconButton(onClick = onToggleToc, buttonSize = buttonSize) {
                                        Icon(
                                            Icons.AutoMirrored.Filled.FormatListBulleted,
                                            contentDescription = strings.readerToc,
                                            tint = chromeIconTint
                                        )
                                    }
                                }
                            )
                        )
                    }

                ReaderChromeButton.AUDIO ->
                    if (showTtsAction && showAudioIcon) {
                        add(
                            ReaderChromeActionSpec(
                                key = action.storedValue,
                                content = { buttonSize ->
                                    ReaderChromeIconButton(onClick = onToggleTtsControls, buttonSize = buttonSize) {
                                        Icon(
                                            Icons.Default.Headphones,
                                            contentDescription = readerText.servicesTtsTitle,
                                            tint = chromeIconTint
                                        )
                                    }
                                }
                            )
                        )
                    }

                ReaderChromeButton.DIRECTION ->
                    if (canSwapDirection && showDirectionIcon) {
                        add(
                            ReaderChromeActionSpec(
                                key = action.storedValue,
                                content = { buttonSize ->
                                    ReaderChromeIconButton(onClick = onSwapDirection, buttonSize = buttonSize) {
                                        Icon(
                                            Icons.Default.SwapHoriz,
                                            contentDescription = readerText.directionToggle,
                                            tint = if (directionShortcutActive) {
                                                MaterialTheme.colorScheme.primary
                                            } else {
                                                MaterialTheme.colorScheme.onSurface
                                            }
                                        )
                                    }
                                }
                            )
                        )
                    }

                ReaderChromeButton.AUTO_SCROLL ->
                    if (showAutoScrollIcon) {
                        add(
                            ReaderChromeActionSpec(
                                key = action.storedValue,
                                content = { buttonSize ->
                                    ReaderChromeIconButton(onClick = onAutoScrollToggle, buttonSize = buttonSize) {
                                        Icon(
                                            imageVector = if (autoScrollActive) Icons.Filled.Pause else Icons.Filled.PlayArrow,
                                            contentDescription = "Auto-scroll",
                                            tint = if (autoScrollActive) {
                                                MaterialTheme.colorScheme.primary
                                            } else {
                                                MaterialTheme.colorScheme.onSurface
                                            }
                                        )
                                    }
                                }
                            )
                        )
                    }

                ReaderChromeButton.TRANSLATE ->
                    if (showOcrAction && showTranslateIcon) {
                        add(
                            ReaderChromeActionSpec(
                                key = action.storedValue,
                                content = { buttonSize ->
                                    ReaderChromeIconButton(onClick = onRequestOcr, buttonSize = buttonSize) {
                                        Icon(
                                            Icons.Default.Translate,
                                            contentDescription = readerText.ocrTranslation,
                                            tint = chromeIconTint
                                        )
                                    }
                                }
                            )
                        )
                    }

                ReaderChromeButton.BRIGHTNESS ->
                    if (showBrightnessIcon) {
                        add(
                            ReaderChromeActionSpec(
                                key = action.storedValue,
                                content = { buttonSize ->
                                    ReaderChromeIconButton(onClick = onToggleBrightness, buttonSize = buttonSize) {
                                        Icon(
                                            if (showBrightnessRow) Icons.Default.BrightnessHigh else Icons.Default.BrightnessLow,
                                            contentDescription = strings.readerBrightness,
                                            tint = if (showBrightnessRow) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurface
                                        )
                                    }
                                }
                            )
                        )
                    }

                ReaderChromeButton.CROP ->
                    // Visible for raster readers, locked (disabled) for comics/manga;
                    // fully active only for document formats (PDF / DjVu).
                    if (showCropIcon) {
                        add(
                            ReaderChromeActionSpec(
                                key = action.storedValue,
                                content = { buttonSize ->
                                    ReaderChromeIconButton(
                                        onClick = onToggleMarginCrop,
                                        buttonSize = buttonSize,
                                        enabled = marginCropAvailable
                                    ) {
                                        val cropHint = if (marginCropAvailable) {
                                            readerMarginCropDialogTitle(strings.languageCode)
                                        } else {
                                            readerMarginCropLockedHint(strings.languageCode)
                                        }
                                        Icon(
                                            Icons.Default.Crop,
                                            contentDescription = cropHint,
                                            tint = if (marginCropAvailable) {
                                                chromeIconTint
                                            } else {
                                                chromeIconTint.copy(alpha = LockedIconAlpha)
                                            }
                                        )
                                    }
                                }
                            )
                        )
                    }
            }
        }
    }

    BoxWithConstraints(modifier = Modifier.fillMaxWidth()) {
        val buttonSize = readerChromeActionButtonSizeDp(
            availableWidthDp = maxWidth.value,
            actionCount = actions.size,
        ).dp
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.Center,
            verticalAlignment = Alignment.CenterVertically,
        ) {
            actions.forEach { action ->
                action.content(buttonSize)
            }
        }
    }
}

private data class ReaderChromeActionSpec(
    val key: String,
    val content: @Composable (Dp) -> Unit
)

/** Dimmed tint for chrome icons that are visible but locked. */
private const val LockedIconAlpha = 0.38f

@Composable
fun ReaderBrightnessRow(
    brightness: Float,
    onBrightnessChange: (Float) -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 4.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        Icon(
            Icons.Default.BrightnessLow,
            contentDescription = null,
            tint = MaterialTheme.colorScheme.onSurfaceVariant,
            modifier = Modifier.size(20.dp)
        )
        Slider(
            value = brightness,
            onValueChange = onBrightnessChange,
            valueRange = 0.05f..1f,
            modifier = Modifier.weight(1f),
            colors = SliderDefaults.colors(
                thumbColor = MaterialTheme.colorScheme.primary,
                activeTrackColor = MaterialTheme.colorScheme.primary,
                inactiveTrackColor = MaterialTheme.colorScheme.outlineVariant,
                activeTickColor = MaterialTheme.colorScheme.onPrimary,
                inactiveTickColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.36f)
            )
        )
        Icon(
            Icons.Default.BrightnessHigh,
            contentDescription = null,
            tint = MaterialTheme.colorScheme.onSurfaceVariant,
            modifier = Modifier.size(20.dp)
        )
        Text(
            "${(brightness * 100).toInt()}%",
            color = MaterialTheme.colorScheme.onSurface,
            style = MaterialTheme.typography.labelSmall,
            modifier = Modifier.width(40.dp)
        )
    }
}

@Composable
fun ReaderProgressPill(
    currentPage: Int,
    totalPages: Int,
    onClick: () -> Unit
) {
    val readerText = readerUiText(LocalStrings.current.languageCode)
    Surface(
        modifier = Modifier
            .padding(horizontal = 16.dp)
            .clickable(onClick = onClick),
        shape = RoundedCornerShape(999.dp),
        color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.96f)
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 16.dp, vertical = 10.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(
                text = if (totalPages > 1) "${currentPage.coerceIn(0, totalPages - 1) + 1} / $totalPages" else "1 / …",
                color = MaterialTheme.colorScheme.onSurface,
                style = MaterialTheme.typography.labelLarge
            )
            Icon(
                Icons.Default.KeyboardArrowUp,
                contentDescription = readerText.openPanel,
                tint = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}
