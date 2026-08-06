package io.leostrange.mrcomic.feature.ocr.ui

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
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.BottomSheetDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalClipboardManager
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.OcrBlock
import io.leostrange.mrcomic.core.model.OverlayBlock
import io.leostrange.mrcomic.core.model.TranslationTransportPreference

/**
 * Bottom sheet with actions for the currently selected OCR block.
 * Extracted from OcrScreen.kt.
 */

@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
internal fun OcrBlockActionsSheet(
    block: OcrBlock,
    uiState: OcrUiState,
    viewModel: OcrViewModel,
    text: OcrUiText,
    languageCode: String,
    isSelectedBlockBusy: Boolean,
    selectedBlockTranslateAvailable: Boolean,
    selectedBlockTranslationBlockedMessage: String?,
    selectedBlockTranslation: OverlayBlock?,
    selectedBlockContext: Pair<String?, String?>,
    selectedBlockSourceLanguage: String,
    onDismiss: () -> Unit
) {
    val clipboardManager = LocalClipboardManager.current
    ModalBottomSheet(
        onDismissRequest = onDismiss,
        shape = RoundedCornerShape(topStart = 28.dp, topEnd = 28.dp),
        containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.97f),
        scrimColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.24f),
        dragHandle = {
            BottomSheetDefaults.DragHandle(
                color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.45f)
            )
        }
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Text(
                text = text.translationBlockTitle,
                style = MaterialTheme.typography.titleMedium
            )
            OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
                Column(
                    modifier = Modifier.padding(12.dp),
                    verticalArrangement = Arrangement.spacedBy(6.dp)
                ) {
                    Text(
                        text = text.original,
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.primary
                    )
                    FlowRow(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        AssistChip(
                            onClick = {},
                            enabled = false,
                            label = { Text(text = ocrBlockTypeLabel(block.blockType, languageCode)) }
                        )
                        ocrDetectedLanguageChipLabel(
                            detectedLanguage = block.detectedLanguage ?: uiState.sourceLang,
                            language = languageCode
                        )?.let { label ->
                            AssistChip(
                                onClick = {},
                                enabled = false,
                                label = { Text(label) }
                            )
                        }
                        ocrConfidenceChipLabel(
                            confidence = block.confidence,
                            language = languageCode
                        )?.let { label ->
                            AssistChip(
                                onClick = {},
                                enabled = false,
                                label = { Text(label) }
                            )
                        }
                    }
                    Text(
                        text = block.textOriginal,
                        style = MaterialTheme.typography.bodyMedium
                    )
                }
            }

            if (selectedBlockContext.first != null || selectedBlockContext.second != null) {
                OcrPanelCard(modifier = Modifier.fillMaxWidth(), tone = OcrPanelTone.SOFT) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Text(
                            text = text.contextTitle,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                        selectedBlockContext.first?.let { contextBefore ->
                            Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                                Text(
                                    text = text.contextBefore,
                                    style = MaterialTheme.typography.labelSmall,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                )
                                Text(
                                    text = contextBefore,
                                    style = MaterialTheme.typography.bodyMedium
                                )
                            }
                        }
                        selectedBlockContext.second?.let { contextAfter ->
                            Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                                Text(
                                    text = text.contextAfter,
                                    style = MaterialTheme.typography.labelSmall,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                )
                                Text(
                                    text = contextAfter,
                                    style = MaterialTheme.typography.bodyMedium
                                )
                            }
                        }
                    }
                }
            }

            OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
                Column(
                    modifier = Modifier.padding(12.dp),
                    verticalArrangement = Arrangement.spacedBy(6.dp)
                ) {
                    Text(
                        text = text.translation,
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.primary
                    )
                    when {
                        uiState.isTranslatingSelectedBlock -> {
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.spacedBy(8.dp)
                            ) {
                                CircularProgressIndicator(
                                    modifier = Modifier.size(16.dp),
                                    strokeWidth = 2.dp
                                )
                                Text(text.translatingBlock)
                            }
                        }

                        selectedBlockTranslation != null -> {
                            ocrOverlayTranslationMetaLabel(
                                mode = selectedBlockTranslation.translationMode,
                                provider = selectedBlockTranslation.provider,
                                isOffline = selectedBlockTranslation.isOffline,
                                language = languageCode
                            )?.let { meta ->
                                AssistChip(
                                    onClick = {},
                                    enabled = false,
                                    label = { Text(meta) }
                                )
                                Spacer(Modifier.height(6.dp))
                            }
                            Text(
                                text = selectedBlockTranslation.translatedText,
                                style = MaterialTheme.typography.bodyMedium
                            )
                        }

                        else -> {
                            Text(
                                text = text.blockTranslationPending,
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }
            }

            if (
                uiState.isCleaningSelectedBlock ||
                !uiState.selectedBlockCleanedText.isNullOrBlank() ||
                !uiState.selectedBlockCleanupError.isNullOrBlank()
            ) {
                OcrPanelCard(modifier = Modifier.fillMaxWidth(), tone = OcrPanelTone.SOFT) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp)
                    ) {
                        Text(
                            text = text.cleanedOcr,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                        when {
                            uiState.isCleaningSelectedBlock -> {
                                Row(
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                                ) {
                                    CircularProgressIndicator(
                                        modifier = Modifier.size(16.dp),
                                        strokeWidth = 2.dp
                                    )
                                    Text(text.cleaningOcr)
                                }
                            }

                            !uiState.selectedBlockCleanedText.isNullOrBlank() -> {
                                Text(
                                    text = uiState.selectedBlockCleanedText!!,
                                    style = MaterialTheme.typography.bodyMedium
                                )
                            }

                            !uiState.selectedBlockCleanupError.isNullOrBlank() -> {
                                Text(
                                    text = uiState.selectedBlockCleanupError!!,
                                    style = MaterialTheme.typography.bodyMedium,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                )
                            }
                        }
                    }
                }
            }

            if (
                uiState.isExplainingSelectedBlock ||
                !uiState.selectedBlockExplanation.isNullOrBlank() ||
                !uiState.selectedBlockExplanationError.isNullOrBlank()
            ) {
                OcrPanelCard(modifier = Modifier.fillMaxWidth(), tone = OcrPanelTone.SOFT) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp)
                    ) {
                        Text(
                            text = text.explanation,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                        when {
                            uiState.isExplainingSelectedBlock -> {
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

                            !uiState.selectedBlockExplanation.isNullOrBlank() -> {
                                Text(
                                    text = uiState.selectedBlockExplanation!!,
                                    style = MaterialTheme.typography.bodyMedium
                                )
                            }

                            !uiState.selectedBlockExplanationError.isNullOrBlank() -> {
                                Text(
                                    text = uiState.selectedBlockExplanationError!!,
                                    style = MaterialTheme.typography.bodyMedium,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                )
                            }
                        }
                    }
                }
            }

            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Button(
                        onClick = viewModel::translateSelectedBlock,
                        enabled = !isSelectedBlockBusy && selectedBlockTranslateAvailable
                    ) {
                        Text(
                            ocrTranslateBlockAction(
                                language = languageCode,
                                hasTranslation = selectedBlockTranslation != null
                            )
                        )
                    }
                    OutlinedButton(
                        onClick = {
                            viewModel.translateSelectedBlockWithTransport(
                                TranslationTransportPreference.AUTO
                            )
                        },
                        enabled = !isSelectedBlockBusy && selectedBlockTranslateAvailable
                    ) {
                        Text(text.transportAuto)
                    }
                    OutlinedButton(
                        onClick = {
                            viewModel.translateSelectedBlockWithTransport(
                                TranslationTransportPreference.OFFLINE
                            )
                        },
                        enabled = !isSelectedBlockBusy && uiState.translationAvailability.offlineModelInstalled
                    ) {
                        Text(text.transportOffline)
                    }
                    OutlinedButton(
                        onClick = {
                            viewModel.translateSelectedBlockWithTransport(
                                TranslationTransportPreference.ONLINE
                            )
                        },
                        enabled = !isSelectedBlockBusy && uiState.translationAvailability.canUseOnlineTranslation
                    ) {
                        Text(text.transportOnline)
                    }
                    OutlinedButton(
                        onClick = viewModel::rerunSelectedBlockOcr,
                        enabled = !isSelectedBlockBusy
                    ) {
                        Text(ocrRepeatBlockOcrAction(languageCode))
                    }
                    OutlinedButton(
                        onClick = viewModel::cleanupSelectedBlockText,
                        enabled = !isSelectedBlockBusy
                    ) {
                        Text(text.cleanupOcr)
                    }
                    OutlinedButton(
                        onClick = viewModel::explainSelectedBlock,
                        enabled = !isSelectedBlockBusy
                    ) {
                        Text(text.explain)
                    }
                }
                if (!selectedBlockTranslateAvailable) {
                    Text(
                        text = selectedBlockTranslationBlockedMessage ?: ocrTranslationBackendUnavailableMessage(
                            language = languageCode,
                            sourceLanguage = selectedBlockSourceLanguage,
                            targetLanguage = uiState.targetLang
                        ),
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    OutlinedButton(
                        onClick = {
                            clipboardManager.setText(AnnotatedString(block.textOriginal))
                        }
                    ) {
                        Text(text.copyOriginal)
                    }
                    if (!uiState.selectedBlockCleanedText.isNullOrBlank()) {
                        OutlinedButton(
                            onClick = {
                                clipboardManager.setText(AnnotatedString(uiState.selectedBlockCleanedText!!))
                            }
                        ) {
                            Text(text.copyCleaned)
                        }
                    }
                    if (selectedBlockTranslation != null) {
                        OutlinedButton(
                            onClick = {
                                clipboardManager.setText(AnnotatedString(selectedBlockTranslation.translatedText))
                            }
                        ) {
                            Text(text.copyTranslation)
                        }
                    }
                }
            }

            Spacer(Modifier.height(8.dp))
        }
    }
}
