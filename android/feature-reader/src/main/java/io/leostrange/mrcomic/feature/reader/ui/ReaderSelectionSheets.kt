package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.animation.*
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.*
import androidx.compose.ui.draw.*
import androidx.compose.ui.graphics.*
import androidx.compose.ui.unit.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.Hyphens
import androidx.compose.ui.text.style.TextOverflow
import io.leostrange.mrcomic.core.model.*
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.theme.*
import io.leostrange.mrcomic.engine.api.TocEntry

/**
 * Sheet and panel composables for the reader.
 *
 * Extracted from ReaderScreen to reduce its size and isolate UI components.
 * These are stateless composables that receive their data via parameters.
 */

@OptIn(ExperimentalMaterial3Api::class)
@Composable
internal fun SelectedTextActionSheet(
    state: SelectedTextActionSheetState,
    onDismiss: () -> Unit,
    onTranslate: () -> Unit,
    onDictionary: () -> Unit,
    onExplain: () -> Unit,
    onSaveQuote: () -> Unit
) {
    val readerText = readerUiText(LocalStrings.current.languageCode)
    ModalBottomSheet(
        onDismissRequest = onDismiss,
        scrimColor = Color.Transparent
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 20.dp, vertical = 8.dp),
            verticalArrangement = Arrangement.spacedBy(14.dp)
        ) {
            Text(
                text = readerText.selectionActionSheetTitle,
                style = MaterialTheme.typography.titleLarge,
                color = MaterialTheme.colorScheme.onSurface
            )
            Text(
                text = state.originalText,
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurface
            )
            Column(
                modifier = Modifier.fillMaxWidth(),
                verticalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                Button(
                    onClick = onTranslate,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(readerText.selectionTranslateAction)
                }
                OutlinedButton(
                    onClick = onDictionary,
                    enabled = state.canUseDictionary,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(readerText.openDictionary)
                }
                OutlinedButton(
                    onClick = onExplain,
                    enabled = state.canExplain,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(readerText.selectionExplainAction)
                }
                OutlinedButton(
                    onClick = onSaveQuote,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(readerText.saveQuote)
                }
                TextButton(
                    onClick = onDismiss,
                    modifier = Modifier.align(Alignment.End)
                ) {
                    Text(readerText.close)
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
internal fun HighlightColorPickerSheet(
    text: String,
    onColorSelected: (Int) -> Unit,
    onDismiss: () -> Unit
) {
    val colors = listOf(
        0x50FFEB3B.toInt() to "Yellow",
        0x504CAF50 to "Green",
        0x502196F3 to "Blue",
        0x50E91E63 to "Pink",
        0x50FF9800 to "Orange"
    )
    ModalBottomSheet(
        onDismissRequest = onDismiss,
        containerColor = MaterialTheme.colorScheme.surface
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 20.dp, vertical = 12.dp)
        ) {
            Text(
                text = "Highlight text",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold,
                modifier = Modifier.padding(bottom = 4.dp)
            )
            Text(
                text = "\"${text.take(80)}${if (text.length > 80) "…" else ""}\"",
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.padding(bottom = 16.dp)
            )
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                colors.forEach { (colorArgb, label) ->
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        modifier = Modifier
                            .clickable { onColorSelected(colorArgb) }
                            .padding(8.dp)
                    ) {
                        Box(
                            modifier = Modifier
                                .size(48.dp)
                                .background(
                                    Color(colorArgb),
                                    RoundedCornerShape(12.dp)
                                )
                        )
                        Spacer(Modifier.height(4.dp))
                        Text(
                            text = label,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
            }
            Spacer(Modifier.height(16.dp))
        }
    }
}

@Composable
internal fun ChapterTranslationProgressBar(
    progress: ChapterTranslationProgressUi
) {
    Surface(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 8.dp),
        shape = RoundedCornerShape(12.dp),
        color = MaterialTheme.colorScheme.primaryContainer,
        tonalElevation = 2.dp
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 16.dp, vertical = 10.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = "Translating chapter…",
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.Medium,
                    color = MaterialTheme.colorScheme.onPrimaryContainer
                )
                Text(
                    text = "${progress.percent}%",
                    style = MaterialTheme.typography.labelMedium,
                    color = MaterialTheme.colorScheme.onPrimaryContainer
                )
            }
            Spacer(Modifier.height(6.dp))
            LinearProgressIndicator(
                progress = { progress.completedParagraphs.toFloat() / progress.totalParagraphs.coerceAtLeast(1) },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(4.dp),
                color = MaterialTheme.colorScheme.primary,
                trackColor = MaterialTheme.colorScheme.surfaceVariant,
            )
            progress.currentPreview?.let { preview ->
                Spacer(Modifier.height(4.dp))
                Text(
                    text = "“$preview…”",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onPrimaryContainer.copy(alpha = 0.7f),
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
internal fun SelectedTextTranslationSheet(
    state: SelectedTextTranslationState,
    onDismiss: () -> Unit,
    onDictionary: () -> Unit,
    onTranslateAsPhrase: () -> Unit,
    onExplain: () -> Unit,
    onTransportChange: (TranslationTransportPreference) -> Unit,
    onCopy: (String) -> Unit,
    onSaveQuote: () -> Unit
) {
    val readerText = readerUiText(LocalStrings.current.languageCode)
    val language = LocalStrings.current.languageCode
    val isDictionaryMode = state.mode == TranslationMode.DICTIONARY
    val isExplainMode = state.mode == TranslationMode.LLM
    val dictionaryEntry = state.dictionaryEntry
    ModalBottomSheet(
        onDismissRequest = onDismiss,
        scrimColor = Color.Transparent
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 20.dp, vertical = 8.dp),
            verticalArrangement = Arrangement.spacedBy(14.dp)
        ) {
                Text(
                    text = when {
                        isDictionaryMode -> readerText.dictionarySheetTitle
                        isExplainMode -> readerText.explainSheetTitle
                        else -> readerText.translationSheetTitle
                    },
                style = MaterialTheme.typography.titleLarge,
                color = MaterialTheme.colorScheme.onSurface
            )

            val modeLabel = readerTranslationModeLabel(state.mode, language)
            if (modeLabel != null || state.sourceLanguage != null || state.targetLanguage != null) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    modeLabel?.let {
                        AssistChip(
                            onClick = {},
                            enabled = false,
                            label = { Text(it) }
                        )
                    }
                    if (state.sourceLanguage != null && state.targetLanguage != null) {
                        AssistChip(
                            onClick = {},
                            enabled = false,
                            label = { Text("${state.sourceLanguage.uppercase()} в†’ ${state.targetLanguage.uppercase()}") }
                        )
                    }
                }
            }

                if (!isDictionaryMode && !isExplainMode) {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text(
                        text = readerText.translationTransportTitle,
                        style = MaterialTheme.typography.labelLarge,
                        color = MaterialTheme.colorScheme.primary
                    )
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        listOf(
                            TranslationTransportPreference.AUTO,
                            TranslationTransportPreference.OFFLINE,
                            TranslationTransportPreference.ONLINE
                        ).forEach { preference ->
                            FilterChip(
                                selected = state.preferredTransport == preference,
                                onClick = { onTransportChange(preference) },
                                label = { Text(readerTransportPreferenceLabel(preference, language)) }
                            )
                        }
                    }
                }
            }

            Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                Text(
                    text = readerText.translationOriginalLabel,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = state.originalText,
                    style = MaterialTheme.typography.bodyLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
            }

            when {
                state.isLoading -> {
                    Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                        Text(
                            text = when {
                                isDictionaryMode -> readerText.dictionaryMeaningsLabel
                                isExplainMode -> readerText.explanationResultLabel
                                else -> readerText.translationResultLabel
                            },
                            style = MaterialTheme.typography.labelLarge,
                            color = MaterialTheme.colorScheme.primary
                        )
                        Row(
                            horizontalArrangement = Arrangement.spacedBy(12.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(18.dp),
                                strokeWidth = 2.dp
                            )
                            Text(
                                text = if (isExplainMode) readerText.explainLoading else readerText.translationLoading,
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }

                state.error != null -> {
                    Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                        Text(
                            text = when {
                                isDictionaryMode -> readerText.dictionaryMeaningsLabel
                                isExplainMode -> readerText.explanationResultLabel
                                else -> readerText.translationResultLabel
                            },
                            style = MaterialTheme.typography.labelLarge,
                            color = MaterialTheme.colorScheme.primary
                        )
                        Text(
                            text = state.error,
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.error
                        )
                    }
                }

                isDictionaryMode && dictionaryEntry != null -> {
                    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                        Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                            Text(
                                text = readerText.dictionaryLemmaLabel,
                                style = MaterialTheme.typography.labelLarge,
                                color = MaterialTheme.colorScheme.primary
                            )
                            Text(
                                text = dictionaryEntry.lemma,
                                style = MaterialTheme.typography.bodyLarge,
                                color = MaterialTheme.colorScheme.onSurface
                            )
                        }

                        readerDictionaryPartOfSpeechLabel(dictionaryEntry.partOfSpeech, language)?.let { posLabel ->
                            Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                                Text(
                                    text = readerText.dictionaryPartOfSpeechLabel,
                                    style = MaterialTheme.typography.labelLarge,
                                    color = MaterialTheme.colorScheme.primary
                                )
                                Text(
                                    text = posLabel,
                                    style = MaterialTheme.typography.bodyLarge,
                                    color = MaterialTheme.colorScheme.onSurface
                                )
                            }
                        }

                        Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                            Text(
                                text = readerText.dictionaryMeaningsLabel,
                                style = MaterialTheme.typography.labelLarge,
                                color = MaterialTheme.colorScheme.primary
                            )
                            dictionaryEntry.translations.forEach { meaning ->
                                Text(
                                    text = "• $meaning",
                                    style = MaterialTheme.typography.bodyLarge,
                                    color = MaterialTheme.colorScheme.onSurface
                                )
                            }
                        }

                        if (dictionaryEntry.forms.isNotEmpty()) {
                            Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                                Text(
                                    text = readerText.dictionaryFormsLabel,
                                    style = MaterialTheme.typography.labelLarge,
                                    color = MaterialTheme.colorScheme.primary
                                )
                                Text(
                                    text = dictionaryEntry.forms.joinToString(", "),
                                    style = MaterialTheme.typography.bodyMedium,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                )
                            }
                        }
                    }
                }

                else -> {
                    Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                        Text(
                              text = if (isExplainMode) readerText.explanationResultLabel else readerText.translationResultLabel,
                            style = MaterialTheme.typography.labelLarge,
                            color = MaterialTheme.colorScheme.primary
                        )
                        Text(
                            text = state.translatedText,
                            style = MaterialTheme.typography.bodyLarge,
                            color = MaterialTheme.colorScheme.onSurface
                        )
                    }
                }
            }

            FlowRow(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(bottom = 16.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp, Alignment.End),
                verticalArrangement = Arrangement.spacedBy(8.dp),
                maxItemsInEachRow = 4
            ) {
                if (isDictionaryMode && state.canTranslateAsPhrase) {
                    TextButton(onClick = onTranslateAsPhrase) {
                        Text(readerText.translateAsPhrase)
                    }
                } else if (!isDictionaryMode && state.canUseDictionary) {
                    TextButton(onClick = onDictionary) {
                        Text(readerText.openDictionary)
                    }
                }
                if (state.canExplain && !isExplainMode) {
                    TextButton(onClick = onExplain) {
                        Text(readerText.openExplain)
                    }
                }
                TextButton(
                    onClick = onSaveQuote,
                    enabled = !state.isLoading && state.originalText.isNotBlank()
                ) {
                    Text(readerText.saveQuote)
                }
                TextButton(onClick = onDismiss) {
                    Text(readerText.close)
                }
                Button(
                    onClick = {
                        val copyText = dictionaryEntry?.translations?.joinToString("; ")
                            ?: state.translatedText.ifBlank { state.originalText }
                        onCopy(copyText)
                    },
                    enabled = !state.isLoading && (
                        state.translatedText.isNotBlank() ||
                            state.originalText.isNotBlank() ||
                            dictionaryEntry?.translations?.isNotEmpty() == true
                        )
                ) {
                    Text(readerText.copyTranslation)
                }
            }
        }
    }
}

// в”Ђв”Ђ Composables в”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђ
