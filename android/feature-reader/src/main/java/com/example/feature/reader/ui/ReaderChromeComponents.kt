package com.example.feature.reader.ui

import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.navigationBars
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.FormatListBulleted
import androidx.compose.material.icons.automirrored.filled.KeyboardArrowLeft
import androidx.compose.material.icons.automirrored.filled.Notes
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material.icons.filled.BrightnessHigh
import androidx.compose.material.icons.filled.BrightnessLow
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Headphones
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.SwapHoriz
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
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.Hyphens
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.core.model.ReadingMode
import com.example.core.ui.library.RootChromeTopBarHost
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.library.rootChromeStableTopBarInsets
import com.example.core.ui.theme.ReadingPreset
import com.example.feature.reader.ui.components.ReaderBottomBar

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
                    style = MaterialTheme.typography.titleMedium
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
    content: @Composable () -> Unit
) {
    IconButton(
        onClick = onClick,
        modifier = modifier.size(42.dp)
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
        shape = RoundedCornerShape(999.dp),
        colors = FilterChipDefaults.filterChipColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant,
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
    autoScrollActive: Boolean = false,
    onNavigateBack: () -> Unit,
    onToggleToc: () -> Unit,
    onToggleTextSettings: () -> Unit,
    onSwapDirection: () -> Unit,
    onRequestOcr: () -> Unit,
    onToggleBrightness: () -> Unit,
    onToggleTtsControls: () -> Unit = {},
    onAutoScrollToggle: () -> Unit = {}
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
                    autoScrollActive = autoScrollActive,
                    chromeIconTint = chromeIconTint,
                    onToggleToc = onToggleToc,
                    onToggleTextSettings = onToggleTextSettings,
                    onSwapDirection = onSwapDirection,
                    onRequestOcr = onRequestOcr,
                    onToggleBrightness = onToggleBrightness,
                    onToggleTtsControls = onToggleTtsControls,
                    onAutoScrollToggle = onAutoScrollToggle
                )
            }
        }
        Spacer(Modifier.width(44.dp))
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
    autoScrollActive: Boolean = false,
    chromeIconTint: Color,
    onToggleToc: () -> Unit,
    onToggleTextSettings: () -> Unit,
    onSwapDirection: () -> Unit,
    onRequestOcr: () -> Unit,
    onToggleBrightness: () -> Unit,
    onToggleTtsControls: () -> Unit = {},
    onAutoScrollToggle: () -> Unit = {}
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val actions = buildList {
        if (showTextSettings) {
            add(
                ReaderChromeActionSpec(
                    key = ReaderChromeButton.STYLE.storedValue,
                    content = {
                        ReaderChromeIconButton(onClick = onToggleTextSettings) {
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
        addAll(
            ReaderChromeButton.resolveOrder(chromeIconOrder)
                .filterNot { it == ReaderChromeButton.STYLE }
                .mapNotNull { action ->
        when (action) {
            ReaderChromeButton.TOC ->
                if (canShowToc && showTocIcon) {
                    ReaderChromeActionSpec(
                        key = action.storedValue,
                        content = {
                            ReaderChromeIconButton(onClick = onToggleToc) {
                                Icon(
                                    Icons.AutoMirrored.Filled.FormatListBulleted,
                                    contentDescription = strings.readerToc,
                                    tint = chromeIconTint
                                )
                            }
                        }
                    )
                } else null

            ReaderChromeButton.STYLE ->
                null

            ReaderChromeButton.AUDIO ->
                if (showTtsAction && showAudioIcon) {
                    ReaderChromeActionSpec(
                        key = action.storedValue,
                        content = {
                            ReaderChromeIconButton(onClick = onToggleTtsControls) {
                                Icon(
                                    Icons.Default.Headphones,
                                    contentDescription = readerText.servicesTtsTitle,
                                    tint = chromeIconTint
                                )
                            }
                        }
                    )
                } else null

            ReaderChromeButton.DIRECTION ->
                if (canSwapDirection && showDirectionIcon) {
                    ReaderChromeActionSpec(
                        key = action.storedValue,
                        content = {
                            ReaderChromeIconButton(onClick = onSwapDirection) {
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
                } else null

            ReaderChromeButton.AUTO_SCROLL ->
                if (showAutoScrollIcon) {
                    ReaderChromeActionSpec(
                        key = action.storedValue,
                        content = {
                            ReaderChromeIconButton(onClick = onAutoScrollToggle) {
                                Icon(
                                    Icons.Default.PlayArrow,
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
                } else null

            ReaderChromeButton.TRANSLATE ->
                if (showOcrAction && showTranslateIcon) {
                    ReaderChromeActionSpec(
                        key = action.storedValue,
                        content = {
                            ReaderChromeIconButton(onClick = onRequestOcr) {
                                Icon(
                                    Icons.Default.Translate,
                                    contentDescription = readerText.ocrTranslation,
                                    tint = chromeIconTint
                                )
                            }
                        }
                    )
                } else null

            ReaderChromeButton.BRIGHTNESS ->
                if (showBrightnessIcon) {
                    ReaderChromeActionSpec(
                        key = action.storedValue,
                        content = {
                            ReaderChromeIconButton(onClick = onToggleBrightness) {
                                Icon(
                                    if (showBrightnessRow) Icons.Default.BrightnessHigh else Icons.Default.BrightnessLow,
                                    contentDescription = strings.readerBrightness,
                                    tint = if (showBrightnessRow) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurface
                                )
                            }
                        }
                    )
                } else null
        }
                }
        )
    }

    actions.forEach { action ->
        action.content()
    }
}

private data class ReaderChromeActionSpec(
    val key: String,
    val content: @Composable () -> Unit
)

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
                inactiveTrackColor = MaterialTheme.colorScheme.surfaceVariant
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
                text = "${currentPage + 1} / $totalPages",
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

@Composable
fun ReaderExpandedBottomPanel(
    uiState: ReaderUiState,
    isLandscape: Boolean,
    onToggleBookmark: () -> Unit,
    onApplyPreset: (ReadingPreset) -> Unit,
    onReadingModeChange: (ReadingMode) -> Unit,
    onPageChange: (Int) -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val showReadingPresets = uiState.currentHtmlContent != null
    val useCompactLandscapeImagePanel = isLandscape && !showReadingPresets

    if (useCompactLandscapeImagePanel) {
        ReaderCompactLandscapeBottomPanel(
            currentPage = uiState.currentPage,
            totalPages = uiState.totalPages,
            readingMode = uiState.readingMode,
            bookmarked = uiState.currentPage in uiState.bookmarkedPages,
            onToggleBookmark = onToggleBookmark,
            onPageChange = onPageChange
        )
        return
    }

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(top = 10.dp, bottom = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 16.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            ReaderPanelChip(
                selected = uiState.currentPage in uiState.bookmarkedPages,
                onClick = onToggleBookmark,
                label = {
                    Text(if (uiState.currentPage in uiState.bookmarkedPages) strings.readerBookmarked else strings.readerBookmark)
                }
            )
            if (showReadingPresets) {
                Text(
                    text = strings.readerReadingPresets,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                androidx.compose.foundation.lazy.LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    com.example.core.ui.theme.readingPresetQuickChoices().forEach { preset ->
                        item {
                            ReaderPanelChip(
                                selected = uiState.readerPreset == preset.name,
                                onClick = { onApplyPreset(preset) },
                                label = {
                                    Text(
                                        readerPresetLabel(preset, strings.languageCode)
                                    )
                                }
                            )
                        }
                    }
                }
            }
        }

        ReaderBottomBar(
            currentPage = uiState.currentPage,
            totalPages = uiState.totalPages,
            readingMode = uiState.readingMode,
            isLandscape = isLandscape,
            isTextBook = uiState.currentHtmlContent != null,
            sectionPageCount = uiState.sectionPageCount,
            sectionCurrentPage = uiState.sectionCurrentPage,
            chapterTitle = uiState.tableOfContents
                .sortedBy { it.pageIndex }
                .lastOrNull { it.pageIndex <= uiState.currentPage }
                ?.title,
            epubAccumulatedTotalPages = uiState.epubAccumulatedTotalPages,
            epubAccumulatedCurrentPage = uiState.epubAccumulatedCurrentPage,
            onReadingModeChange = onReadingModeChange,
            onPageChange = onPageChange
        )
    }
}

@Composable
private fun ReaderCompactLandscapeBottomPanel(
    currentPage: Int,
    totalPages: Int,
    readingMode: ReadingMode,
    bookmarked: Boolean,
    onToggleBookmark: () -> Unit,
    onPageChange: (Int) -> Unit
) {
    val strings = LocalStrings.current
    val modeLabel = if (readingMode == ReadingMode.WEBTOON) {
        strings.readingModeWebtoon
    } else {
        strings.readingModeDual
    }

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(start = 12.dp, end = 12.dp, top = 8.dp, bottom = 8.dp),
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Surface(
                shape = RoundedCornerShape(999.dp),
                color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.98f)
            ) {
                Row(
                    modifier = Modifier.padding(start = 4.dp, end = 10.dp, top = 2.dp, bottom = 2.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    IconButton(
                        onClick = onToggleBookmark,
                        modifier = Modifier.size(32.dp)
                    ) {
                        Icon(
                            imageVector = if (bookmarked) Icons.Default.Bookmark else Icons.Default.BookmarkBorder,
                            contentDescription = if (bookmarked) strings.readerBookmarked else strings.readerBookmark,
                            tint = if (bookmarked) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurfaceVariant,
                            modifier = Modifier.size(18.dp)
                        )
                    }
                    Text(
                        text = modeLabel,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        style = MaterialTheme.typography.labelMedium
                    )
                }
            }

            Spacer(Modifier.weight(1f))

            Text(
                text = "${currentPage + 1} / $totalPages",
                color = MaterialTheme.colorScheme.onSurface,
                style = MaterialTheme.typography.labelMedium
            )
        }

        if (totalPages > 1) {
            Slider(
                value = currentPage.toFloat(),
                onValueChange = { onPageChange(it.toInt()) },
                valueRange = 0f..(totalPages - 1).toFloat(),
                steps = (totalPages - 2).coerceAtLeast(0),
                modifier = Modifier.fillMaxWidth(),
                colors = SliderDefaults.colors(
                    thumbColor = MaterialTheme.colorScheme.primary,
                    activeTrackColor = MaterialTheme.colorScheme.primary,
                    inactiveTrackColor = MaterialTheme.colorScheme.outlineVariant,
                    activeTickColor = MaterialTheme.colorScheme.onPrimary,
                    inactiveTickColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.36f)
                )
            )
        }
    }
}

@Composable
fun SavedPageNoteCard(
    note: String,
    modifier: Modifier = Modifier
) {
    val readerText = readerUiText(LocalStrings.current.languageCode)
    Surface(
        modifier = modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.surface,
        shape = RoundedCornerShape(20.dp)
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 14.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.Top
        ) {
            Icon(
                Icons.AutoMirrored.Filled.Notes,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.secondary,
                modifier = Modifier.size(18.dp)
            )
            Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                Text(
                    readerText.savedNote,
                    color = MaterialTheme.colorScheme.onSurface,
                    style = MaterialTheme.typography.labelMedium
                )
                Text(
                    note,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    style = MaterialTheme.typography.bodySmall,
                    maxLines = 3,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}

internal fun readerNotePanelMaxHeightDp(
      screenHeightDp: Int,
      expanded: Boolean
  ): Dp = ReaderNotePanelHeightPolicy.maxContentHeightDp(
      screenHeightDp = screenHeightDp,
      topInsetDp = 0,
      bottomInsetDp = 0,
      chromeReservedDp = 0,
      expanded = expanded
  ).dp

@Composable
fun ReaderNotePanel(
    text: String,
    colorScheme: String,
    expanded: Boolean,
    onDismiss: () -> Unit,
      onExpand: () -> Unit,
      onCollapse: () -> Unit,
      chromeReservedDp: Int,
      modifier: Modifier = Modifier,
      palette: (String) -> Pair<String, String>
  ) {
    val readerText = readerUiText(LocalStrings.current.languageCode)
      val configuration = LocalConfiguration.current
      val density = LocalDensity.current
    val fgColor = MaterialTheme.colorScheme.onSurface
    val accentColor = MaterialTheme.colorScheme.primary
    val panelColor = MaterialTheme.colorScheme.surface.copy(alpha = 1f)
      val maxPanelHeight = ReaderNotePanelHeightPolicy.maxContentHeightDp(
          screenHeightDp = configuration.screenHeightDp,
          topInsetDp = with(density) { WindowInsets.statusBars.getTop(this).toDp().value.toInt() },
          bottomInsetDp = with(density) { WindowInsets.navigationBars.getBottom(this).toDp().value.toInt() },
          chromeReservedDp = chromeReservedDp,
          expanded = expanded
      ).dp

    Surface(
        modifier = modifier.fillMaxWidth(),
        color = panelColor,
        shape = RoundedCornerShape(topStart = 18.dp, topEnd = 18.dp),
        shadowElevation = 8.dp
    ) {
        Column(modifier = Modifier.padding(horizontal = 16.dp, vertical = 12.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = if (expanded) readerText.noteTitle else readerText.noteCompactTitle,
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.Bold,
                    color = accentColor
                )
                Row {
                    if (expanded) {
                        IconButton(onClick = onCollapse, modifier = Modifier.size(24.dp)) {
                            Icon(Icons.Default.KeyboardArrowDown, contentDescription = readerText.collapse, tint = fgColor)
                        }
                    } else {
                        IconButton(onClick = onExpand, modifier = Modifier.size(24.dp)) {
                            Icon(Icons.Default.KeyboardArrowUp, contentDescription = readerText.expand, tint = fgColor)
                        }
                    }
                    IconButton(onClick = onDismiss, modifier = Modifier.size(24.dp)) {
                        Icon(Icons.Default.Close, contentDescription = readerText.close, tint = fgColor, modifier = Modifier.size(18.dp))
                    }
                }
            }
            Spacer(Modifier.size(4.dp))
            val scrollState = rememberScrollState()
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = maxPanelHeight)
                    .verticalScroll(scrollState)
            ) {
                Text(
                    text = text,
                    style = MaterialTheme.typography.bodyMedium.copy(hyphens = Hyphens.None),
                    color = fgColor,
                    lineHeight = 20.sp
                )
            }
        }
    }
}
