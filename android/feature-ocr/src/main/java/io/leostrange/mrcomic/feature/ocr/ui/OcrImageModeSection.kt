package io.leostrange.mrcomic.feature.ocr.ui

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Translate
import androidx.compose.material3.AssistChip
import androidx.compose.material3.Button
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

/**
 * Image-mode content: the overlay preview, translation controls, recognized
 * text, and the recognized-blocks list.
 */
@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun OcrImageModeContent(
    uiState: OcrUiState,
    viewModel: OcrViewModel,
    text: OcrUiText,
    languageCode: String,
    isInteractionLocked: Boolean,
    machineTranslationAvailable: Boolean,
    translationBlockedMessage: String?,
    imageActionsHint: String
) {
    OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            contentAlignment = Alignment.Center
        ) {
            OverlayRenderer(
                bitmap = uiState.imageBitmap!!,
                sourceBlocks = uiState.recognizedBlocks,
                translatedBlocks = uiState.translatedBlocks,
                showOverlay = uiState.overlayEnabled,
                overlayDisplayMode = uiState.overlayDisplayMode,
                overlayOpacity = uiState.overlayOpacity,
                overlayFontScale = uiState.overlayFontScale,
                overlayStyle = uiState.overlayStyle,
                onBlockClick = { blockId ->
                    if (!isInteractionLocked) {
                        viewModel.selectBlock(blockId)
                    }
                },
                pageContentDescription = text.pagePreviewDescription
            )
        }
    }

    OcrPanelCard(
        modifier = Modifier.fillMaxWidth(),
        tone = OcrPanelTone.SOFT
    ) {
        Column(
            modifier = Modifier.padding(12.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(
                text.imageActionsTitle,
                style = MaterialTheme.typography.titleSmall
            )
            Text(
                text = imageActionsHint,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                if (uiState.recognizedBlocks.isNotEmpty()) {
                    AssistChip(
                        onClick = {},
                        enabled = false,
                        label = { Text("${text.textBlocksPrefix}: ${uiState.recognizedBlocks.size}") }
                    )
                }
                if (uiState.translatedBlocks.isNotEmpty()) {
                    AssistChip(
                        onClick = {},
                        enabled = false,
                        label = { Text("${text.translatedBlocksPrefix}: ${uiState.translatedBlocks.size}") }
                    )
                }
            }
            Button(
                onClick = viewModel::translateVisiblePage,
                enabled = !isInteractionLocked && machineTranslationAvailable,
                modifier = Modifier.fillMaxWidth()
            ) {
                if (uiState.isRecognizing || uiState.isTranslating) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(16.dp),
                        strokeWidth = 2.dp,
                        color = MaterialTheme.colorScheme.onPrimary
                    )
                    Spacer(Modifier.width(8.dp))
                    Text(if (uiState.isRecognizing) text.recognizingPage else text.translatingPage)
                } else {
                    Icon(Icons.Default.Translate, contentDescription = null)
                    Spacer(Modifier.width(8.dp))
                    Text(text.translateVisiblePage)
                }
            }
            if (!machineTranslationAvailable) {
                Text(
                    text = translationBlockedMessage ?: ocrTranslationBackendUnavailableMessage(
                        language = languageCode,
                        sourceLanguage = uiState.sourceLang,
                        targetLanguage = uiState.targetLang
                    ),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }

            OutlinedButton(
                onClick = viewModel::recognize,
                enabled = !isInteractionLocked,
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(text.recognizeOnly)
            }
        }
    }

    if (uiState.recognizedText.isNotBlank()) {
        OcrPanelCard(
            modifier = Modifier.fillMaxWidth(),
            tone = OcrPanelTone.SOFT
        ) {
            Column(modifier = Modifier.padding(12.dp)) {
                Text(
                    text.recognizedText,
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.primary
                )
                Spacer(Modifier.height(4.dp))
                Text(
                    uiState.recognizedText,
                    style = MaterialTheme.typography.bodyMedium
                )
            }
        }
    }

    if (uiState.recognizedBlocks.isNotEmpty()) {
        OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
            Column(
                modifier = Modifier.padding(12.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Text(
                    text = "${text.textBlocksPrefix}: ${uiState.recognizedBlocks.size}",
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.primary
                )
                uiState.recognizedBlocks.forEachIndexed { index, block ->
                    Surface(
                        modifier = Modifier.clickable(enabled = !isInteractionLocked) {
                            viewModel.selectBlock(block.id)
                        },
                        shape = MaterialTheme.shapes.medium,
                        color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.55f)
                    ) {
                        Column(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(horizontal = 10.dp, vertical = 8.dp),
                            verticalArrangement = Arrangement.spacedBy(4.dp)
                        ) {
                            Text(
                                text = "${text.blockPrefix} ${index + 1}",
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.primary
                            )
                            AssistChip(
                                onClick = {},
                                enabled = false,
                                label = { Text(text = ocrBlockTypeLabel(block.blockType, languageCode)) }
                            )
                            Text(
                                text = block.textOriginal,
                                style = MaterialTheme.typography.bodySmall
                            )
                            Text(
                                text = text.tapForBlockCard,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }
            }
        }
    }
}
