package io.leostrange.mrcomic.feature.ocr.ui

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material3.AssistChip
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.FilterChip
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalClipboardManager
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.DictionaryEntry
import io.leostrange.mrcomic.core.model.OverlayDisplayMode

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun OcrTranslatedTextCard(
    uiState: OcrUiState,
    viewModel: OcrViewModel,
    text: OcrUiText,
    languageCode: String,
    isInteractionLocked: Boolean,
    manualModeLabel: String?,
    activeLanguagePairLabel: String
) {
    if (uiState.translatedText.isNotBlank()) {
        val clipboardManager = LocalClipboardManager.current
        OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
            Column(modifier = Modifier.padding(12.dp)) {
                Text(
                    text.translation,
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.primary
                )
                Spacer(Modifier.height(4.dp))
                if (uiState.imageBitmap == null) {
                    FlowRow(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        manualModeLabel?.let { modeLabel ->
                            AssistChip(
                                onClick = {},
                                enabled = false,
                                label = { Text(modeLabel) }
                            )
                        }
                        AssistChip(
                            onClick = {},
                            enabled = false,
                            label = { Text(activeLanguagePairLabel) }
                        )
                    }
                    Spacer(Modifier.height(8.dp))
                }
                Text(
                    uiState.translatedText,
                    style = MaterialTheme.typography.bodyMedium
                )
                Spacer(Modifier.height(12.dp))
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    OutlinedButton(
                        onClick = {
                            clipboardManager.setText(AnnotatedString(uiState.translatedText))
                        }
                    ) {
                        Text(text.copyTranslation)
                    }
                }
                if (uiState.comicId != null && uiState.page >= 0) {
                    Spacer(Modifier.height(12.dp))
                    OutlinedButton(
                        onClick = viewModel::saveTranslationNote,
                        enabled = !isInteractionLocked
                    ) {
                        Text(text.saveNote)
                    }
                }
                if (uiState.translatedBlocks.isNotEmpty()) {
                    Spacer(Modifier.height(12.dp))
                    FlowRow(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        FilterChip(
                            selected = uiState.overlayEnabled,
                            onClick = { viewModel.setOverlayEnabled(!uiState.overlayEnabled) },
                            enabled = !isInteractionLocked,
                            label = {
                                Text(if (uiState.overlayEnabled) text.hideOverlay else text.showOverlay)
                            }
                        )
                        FilterChip(
                            selected = uiState.overlayDisplayMode == OverlayDisplayMode.BUBBLE_PREVIEW,
                            onClick = {
                                viewModel.setOverlayDisplayMode(
                                    if (uiState.overlayDisplayMode == OverlayDisplayMode.BUBBLE_PREVIEW) {
                                        OverlayDisplayMode.OVERLAY
                                    } else {
                                        OverlayDisplayMode.BUBBLE_PREVIEW
                                    }
                                )
                            },
                            enabled = !isInteractionLocked,
                            label = {
                                Text(
                                    if (uiState.overlayDisplayMode == OverlayDisplayMode.BUBBLE_PREVIEW) {
                                        text.bubblePreview
                                    } else {
                                        text.overlayMode
                                    }
                                )
                            }
                        )
                    }
                }
            }
        }
    }
}

@Composable
internal fun OcrDictionaryEntryCard(
    uiState: OcrUiState,
    text: OcrUiText,
    languageCode: String
) {
    if (uiState.imageBitmap == null && uiState.manualDictionaryEntry != null) {
        val entry: DictionaryEntry = uiState.manualDictionaryEntry!!
        OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
            Column(
                modifier = Modifier.padding(12.dp),
                verticalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Text(
                    text.dictionary,
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    "${text.dictionaryLemma}: ${entry.lemma}",
                    style = MaterialTheme.typography.bodyMedium
                )
                entry.partOfSpeech?.takeIf { it.isNotBlank() }?.let { partOfSpeech ->
                    Text(
                        "${text.dictionaryPartOfSpeech}: ${ocrLocalizePartOfSpeech(partOfSpeech, languageCode) ?: partOfSpeech}",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                val meanings = entry.translations
                    .map { it.trim() }
                    .filter { it.isNotBlank() }
                    .take(5)
                if (meanings.isNotEmpty()) {
                    Text(
                        "${text.dictionaryMeanings}: ${meanings.joinToString("; ")}",
                        style = MaterialTheme.typography.bodySmall
                    )
                }
                val forms = entry.forms
                    .map { it.trim() }
                    .filter { it.isNotBlank() }
                    .take(4)
                if (forms.isNotEmpty()) {
                    Text(
                        "${text.dictionaryForms}: ${forms.joinToString(", ")}",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
        }
    }
}

@Composable
internal fun OcrManualExplanationCard(
    uiState: OcrUiState,
    text: OcrUiText
) {
    if (
        uiState.imageBitmap == null &&
        (uiState.isExplainingManualText ||
            !uiState.manualExplanation.isNullOrBlank() ||
            !uiState.manualExplanationError.isNullOrBlank())
    ) {
        OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
            Column(
                modifier = Modifier.padding(12.dp),
                verticalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Text(
                    text.explanation,
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.primary
                )
                when {
                    uiState.isExplainingManualText -> {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(16.dp),
                                strokeWidth = 2.dp
                            )
                            Text(text.preparingExplanation)
                        }
                    }

                    !uiState.manualExplanation.isNullOrBlank() -> {
                        Text(
                            uiState.manualExplanation!!,
                            style = MaterialTheme.typography.bodyMedium
                        )
                    }

                    !uiState.manualExplanationError.isNullOrBlank() -> {
                        Text(
                            uiState.manualExplanationError!!,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.error
                        )
                    }
                }
            }
        }
    }
}

@Composable
internal fun OcrTranslatedBlocksCard(
    uiState: OcrUiState,
    viewModel: OcrViewModel,
    text: OcrUiText,
    isInteractionLocked: Boolean
) {
    if (uiState.translatedBlocks.isNotEmpty()) {
        OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
            Column(
                modifier = Modifier.padding(12.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Text(
                    text = "${text.translatedBlocksPrefix}: ${uiState.translatedBlocks.size}",
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.primary
                )
                uiState.translatedBlocks.forEachIndexed { index, block ->
                    Surface(
                        modifier = Modifier.clickable(enabled = !isInteractionLocked) {
                            viewModel.selectBlock(block.ocrBlockId)
                        },
                        shape = MaterialTheme.shapes.medium,
                        color = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.5f)
                    ) {
                        Column(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(horizontal = 10.dp, vertical = 8.dp),
                            verticalArrangement = Arrangement.spacedBy(4.dp)
                        ) {
                            Text(
                                text = "${text.translatedBlockPrefix} ${index + 1}",
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.primary
                            )
                            Text(
                                text = block.translatedText,
                                style = MaterialTheme.typography.bodySmall
                            )
                        }
                    }
                }
            }
        }
    }
}
