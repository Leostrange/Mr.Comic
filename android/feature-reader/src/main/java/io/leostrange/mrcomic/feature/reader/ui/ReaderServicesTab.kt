package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import io.leostrange.mrcomic.core.model.*
import io.leostrange.mrcomic.core.ui.locale.*
import io.leostrange.mrcomic.core.ui.theme.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.theme.style

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun ReaderServicesTab(
    uiState: ReaderUiState,
    isTextReader: Boolean,
    ttsRuntimeState: ReaderTtsRuntimeState,
    onDismiss: () -> Unit,
    onOpenToc: () -> Unit,
    onToggleBookmark: () -> Unit,
    onRequestOcr: () -> Unit,
    onTtsTogglePlayback: () -> Unit,
    onTtsStop: () -> Unit,
    onTtsPrevious: () -> Unit,
    onTtsNext: () -> Unit,
    onTtsVoiceNameChange: (String?) -> Unit,
    onTtsSpeedChange: (Float) -> Unit,
    onTtsPitchChange: (Float) -> Unit,
    onTtsVolumeChange: (Float) -> Unit,
    onTtsSleepTimerChange: (String) -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val activeReaderPreset = ReadingPreset.fromStored(uiState.readerPreset)
    val voiceMenuSurface = readerPanelSurfaceColor(
        base = MaterialTheme.colorScheme.surface,
        emphasis = if (activeReaderPreset == ReadingPreset.EINK) 1f else 0.99f,
        minAlpha = 1f
    )
    val isBookmarked = uiState.bookmarkedPages.contains(uiState.currentPage)
    val selectedVoiceLabel = remember(ttsRuntimeState.selectedVoiceName, ttsRuntimeState.availableVoices) {
        ttsRuntimeState.availableVoices.firstOrNull { it.name == ttsRuntimeState.selectedVoiceName }?.label
            ?: readerText.ttsVoiceDefault
    }
    var isVoiceMenuExpanded by remember { mutableStateOf(false) }
    LazyColumn(
        modifier = Modifier.fillMaxWidth(),
        contentPadding = PaddingValues(horizontal = 12.dp, vertical = 8.dp),
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        item { ReaderSectionTitle(readerText.servicesQuickActionsTitle) }
        item {
            LazyRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                item("ocr") {
                    ReaderFilledActionButton(
                        onClick = {
                            onDismiss()
                            onRequestOcr()
                        }
                    ) {
                        Text(readerText.ocrTranslation, style = MaterialTheme.typography.labelSmall)
                    }
                }
            }
        }
        item { ReaderSectionTitle(readerText.servicesSelectionTitle) }
        item {
            Text(
                text = if (isTextReader) readerText.servicesSelectionBody else readerText.servicesOcrBody,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

