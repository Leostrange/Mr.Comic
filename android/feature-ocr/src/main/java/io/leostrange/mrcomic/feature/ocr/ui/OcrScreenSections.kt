package io.leostrange.mrcomic.feature.ocr.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.clickable
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Translate
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalClipboardManager
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.DictionaryEntry
import io.leostrange.mrcomic.core.model.OverlayDisplayMode
import io.leostrange.mrcomic.core.ui.locale.TranslationLanguageOption
import io.leostrange.mrcomic.core.ui.library.RootChromePanelShape
import io.leostrange.mrcomic.core.ui.library.rootChromeTextFieldColors

/**
 * Logical sections of the OCR screen. Extracted from OcrScreen.kt so each
 * panel is a self-contained composable.
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

@Composable
internal fun OcrActiveOperationCard(activeOperationMessage: String?) {
    if (activeOperationMessage != null) {
        OcrPanelCard(
            modifier = Modifier.fillMaxWidth(),
            tone = OcrPanelTone.ACCENT
        ) {
            Row(
                modifier = Modifier.padding(horizontal = 12.dp, vertical = 10.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                CircularProgressIndicator(
                    modifier = Modifier.size(18.dp),
                    strokeWidth = 2.dp
                )
                Text(
                    text = activeOperationMessage,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSecondaryContainer
                )
            }
        }
    }
}

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

@Composable
internal fun OcrSaveMessageCard(
    uiState: OcrUiState,
    viewModel: OcrViewModel,
    text: OcrUiText
) {
    uiState.saveMessage?.let { saveMessage ->
        OcrPanelCard(
            modifier = Modifier.fillMaxWidth(),
            tone = OcrPanelTone.ACCENT
        ) {
            Row(
                modifier = Modifier.padding(12.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = saveMessage,
                    modifier = Modifier.weight(1f),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSecondaryContainer
                )
                TextButton(onClick = viewModel::clearError) { Text(text.dismissMessage) }
            }
        }
    }
}

@Composable
internal fun OcrErrorCard(
    uiState: OcrUiState,
    viewModel: OcrViewModel,
    text: OcrUiText
) {
    if (uiState.error != null) {
        OcrPanelCard(
            modifier = Modifier.fillMaxWidth(),
            tone = OcrPanelTone.ERROR
        ) {
            Row(
                modifier = Modifier.padding(12.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    uiState.error!!,
                    modifier = Modifier.weight(1f),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onErrorContainer
                )
                TextButton(onClick = viewModel::clearError) { Text(text.dismissMessage) }
            }
        }
    }
}
