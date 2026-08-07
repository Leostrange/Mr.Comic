package io.leostrange.mrcomic.feature.ocr.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material3.AssistChip
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.FilterChip
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.locale.TranslationLanguageOption

/**
 * Translation profile panel: mode chips, source/target language selectors,
 * availability summary, and image-mode actions.
 */
@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun OcrTranslationProfilePanel(
    uiState: OcrUiState,
    viewModel: OcrViewModel,
    text: OcrUiText,
    languageCode: String,
    currentModeTitle: String,
    currentModeHint: String,
    activeLanguagePairLabel: String,
    sourceLanguageLabel: String,
    sourceLangs: List<TranslationLanguageOption>,
    targetLangs: List<TranslationLanguageOption>,
    transportLabel: String,
    isImageMode: Boolean,
    isInteractionLocked: Boolean,
    onPickImage: () -> Unit
) {
    OcrPanelCard(tone = OcrPanelTone.SOFT) {
        Column(
            modifier = Modifier.padding(12.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(
                text = text.translationProfileTitle,
                style = MaterialTheme.typography.titleSmall
            )
            Text(
                text = currentModeHint,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                AssistChip(
                    onClick = {},
                    enabled = false,
                    label = { Text(currentModeTitle) }
                )
                AssistChip(
                    onClick = {},
                    enabled = false,
                    label = { Text(activeLanguagePairLabel) }
                )
                AssistChip(
                    onClick = {},
                    enabled = false,
                    label = { Text("${text.translationMode}: $transportLabel") }
                )
            }
            HorizontalDivider()
            Text(
                text = sourceLanguageLabel,
                style = MaterialTheme.typography.labelMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                sourceLangs.forEach { option ->
                    FilterChip(
                        selected = uiState.sourceLang == option.code,
                        onClick = { viewModel.setSourceLang(option.code) },
                        enabled = !isInteractionLocked,
                        label = { Text(option.shortLabel) }
                    )
                }
            }
            Text(
                text = text.targetLanguage,
                style = MaterialTheme.typography.labelMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                targetLangs.forEach { option ->
                    FilterChip(
                        selected = uiState.targetLang == option.code,
                        onClick = { viewModel.setTargetLang(option.code) },
                        enabled = !isInteractionLocked,
                        label = { Text(option.shortLabel) }
                    )
                }
            }
            Text(
                text = text.transportPrefix,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            OcrPanelCard(
                modifier = Modifier.fillMaxWidth(),
            ) {
                Column(
                    modifier = Modifier.padding(10.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Text(
                        text = ocrAvailabilityTitle(languageCode),
                        style = MaterialTheme.typography.labelLarge,
                        color = MaterialTheme.colorScheme.primary
                    )
                    if (uiState.translationAvailability.isRefreshing) {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(16.dp),
                                strokeWidth = 2.dp
                            )
                            Text(
                                text = ocrAvailabilityChecking(languageCode),
                                style = MaterialTheme.typography.bodySmall
                            )
                        }
                    } else {
                        FlowRow(
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            if (uiState.sourceLang == uiState.targetLang) {
                                AssistChip(
                                    onClick = {},
                                    enabled = false,
                                    label = { Text(ocrAvailabilitySameLanguage(languageCode)) }
                                )
                            } else {
                                AssistChip(
                                    onClick = {},
                                    enabled = false,
                                    label = {
                                        Text(
                                            if (uiState.translationAvailability.dictionaryAvailable) {
                                                ocrAvailabilityDictionaryReady(languageCode)
                                            } else {
                                                ocrAvailabilityDictionaryMissing(languageCode)
                                            }
                                        )
                                    }
                                )
                                AssistChip(
                                    onClick = {},
                                    enabled = false,
                                    label = {
                                        Text(
                                            when {
                                                uiState.translationAvailability.offlineModelInstalled ->
                                                    ocrAvailabilityOfflineReady(languageCode)
                                                uiState.translationAvailability.canDownloadOfflineModel ->
                                                    ocrAvailabilityOfflineCanDownload(languageCode)
                                                uiState.translationAvailability.offlinePairSupported ->
                                                    ocrAvailabilityOfflineNeedsNetwork(languageCode)
                                                else ->
                                                    ocrAvailabilityOfflineUnsupported(languageCode)
                                            }
                                        )
                                    }
                                )
                                AssistChip(
                                    onClick = {},
                                    enabled = false,
                                    label = {
                                        Text(
                                            if (uiState.translationAvailability.canUseOnlineTranslation) {
                                                ocrAvailabilityOnlineReady(languageCode)
                                            } else if (uiState.translationAvailability.onlineConfigured) {
                                                ocrAvailabilityOnlineNeedsNetwork(languageCode)
                                            } else {
                                                ocrAvailabilityOnlineMissing(languageCode)
                                            }
                                        )
                                    }
                                )
                            }
                            AssistChip(
                                onClick = {},
                                enabled = false,
                                label = { Text(ocrAvailabilityExplainWord(languageCode)) }
                            )
                            AssistChip(
                                onClick = {},
                                enabled = false,
                                label = {
                                    Text(
                                        if (uiState.translationAvailability.explainToggleEnabled) {
                                            ocrAvailabilityExplainPhraseEnabled(languageCode)
                                        } else {
                                            ocrAvailabilityExplainPhraseDisabled(languageCode)
                                        }
                                    )
                                }
                            )
                        }
                        if (
                            uiState.sourceLang != uiState.targetLang &&
                            uiState.translationAvailability.canDownloadOfflineModel
                        ) {
                            OutlinedButton(
                                onClick = viewModel::prepareOfflineLanguagePair,
                                enabled = !isInteractionLocked,
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                Text(ocrDownloadOfflineModelAction(languageCode))
                            }
                        }
                    }
                }
            }
            if (isImageMode) {
                if (uiState.comicId == null) {
                    FlowRow(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        OutlinedButton(
                            onClick = onPickImage,
                            enabled = !isInteractionLocked
                        ) {
                            Text(text.pickOtherImage)
                        }
                        OutlinedButton(
                            onClick = viewModel::clearStandaloneImage,
                            enabled = !isInteractionLocked
                        ) {
                            Text(text.manualMode)
                        }
                    }
                }
            } else {
                OutlinedButton(
                    onClick = onPickImage,
                    enabled = !isInteractionLocked,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(text.pickPageImage)
                }
            }
        }
    }
}
