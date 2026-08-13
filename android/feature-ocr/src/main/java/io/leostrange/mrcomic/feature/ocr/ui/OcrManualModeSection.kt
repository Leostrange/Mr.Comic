package io.leostrange.mrcomic.feature.ocr.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.material3.Button
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalClipboardManager
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.library.RootChromePanelShape
import io.leostrange.mrcomic.core.ui.library.rootChromeTextFieldColors

@Composable
internal fun OcrManualInputField(
    uiState: OcrUiState,
    viewModel: OcrViewModel,
    text: OcrUiText,
    isManualBusy: Boolean
) {
    OutlinedTextField(
        value = uiState.manualText,
        onValueChange = viewModel::setManualText,
        label = { Text(text.manualInputLabel) },
        placeholder = { Text(text.manualInputPlaceholder) },
        modifier = Modifier
            .fillMaxWidth()
            .heightIn(min = 120.dp),
        maxLines = 8,
        enabled = !isManualBusy,
        shape = RootChromePanelShape,
        colors = rootChromeTextFieldColors()
    )
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun OcrManualActionsPanel(
    uiState: OcrUiState,
    viewModel: OcrViewModel,
    text: OcrUiText,
    languageCode: String,
    isManualBusy: Boolean,
    manualTranslateAvailable: Boolean,
    translationBlockedMessage: String?,
    manualTokenCount: Int
) {
    if (uiState.imageBitmap == null) {
        val hasTextToTranslate = uiState.manualText.isNotBlank()
        OcrPanelCard(
            modifier = Modifier.fillMaxWidth(),
            tone = OcrPanelTone.SOFT
        ) {
            Column(
                modifier = Modifier.padding(12.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Text(
                    text.manualActionsTitle,
                    style = MaterialTheme.typography.titleSmall
                )
                Text(
                    text = if (uiState.manualText.isBlank()) {
                        text.textModeHint
                    } else if (manualTokenCount == 1) {
                        text.manualActionsWordHint
                    } else {
                        text.manualActionsPhraseHint
                    },
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Button(
                    onClick = viewModel::translate,
                    enabled = hasTextToTranslate && !isManualBusy && manualTranslateAvailable,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    if (uiState.isTranslating) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(16.dp),
                            strokeWidth = 2.dp,
                            color = MaterialTheme.colorScheme.onPrimary
                        )
                        Spacer(Modifier.width(8.dp))
                        Text(text.translating)
                    } else {
                        Text(text.translate)
                    }
                }
                if (hasTextToTranslate && !manualTranslateAvailable) {
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

                if (uiState.manualText.isNotBlank()) {
                    FlowRow(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        if (manualTokenCount == 1) {
                            OutlinedButton(
                                onClick = viewModel::openDictionaryForManualText,
                                enabled = !isManualBusy
                            ) {
                                Text(text.dictionary)
                            }
                        }
                        OutlinedButton(
                            onClick = viewModel::explainManualText,
                            enabled = !isManualBusy
                        ) {
                            Text(text.explain)
                        }
                        if (uiState.translatedText.isNotBlank()) {
                            val clipboardManager = LocalClipboardManager.current
                            OutlinedButton(
                                onClick = {
                                    clipboardManager.setText(AnnotatedString(uiState.translatedText))
                                }
                            ) {
                                Text(text.copyTranslation)
                            }
                        }
                    }
                }
            }
        }
    }
}
