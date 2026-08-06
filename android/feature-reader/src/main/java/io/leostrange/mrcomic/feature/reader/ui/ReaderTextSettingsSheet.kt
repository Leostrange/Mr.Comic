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
import io.leostrange.mrcomic.engine.formats.base.TocEntry

/**
 * Sheet and panel composables for the reader.
 *
 * Extracted from ReaderScreen to reduce its size and isolate UI components.
 * These are stateless composables that receive their data via parameters.
 */

@OptIn(ExperimentalMaterial3Api::class)
@Composable
internal fun TextSettingsSheet(
    fontSize: Int,
    colorScheme: String,
    fontFamily: String,
    lineHeight: Float,
    textAlignment: String,
    bold: Boolean,
    currentPreset: String,
    onApplyReadingPreset: (ReadingPreset) -> Unit,
    onFontSizeChange: (Int) -> Unit,
    onColorSchemeChange: (String) -> Unit,
    onFontFamilyChange: (String) -> Unit,
    onLineHeightChange: (Float) -> Unit,
    onTextAlignChange: (String) -> Unit,
    onBoldChange: (Boolean) -> Unit,
    onReset: () -> Unit,
    onDismiss: () -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    ModalBottomSheet(
        onDismissRequest = onDismiss,
        dragHandle = { BottomSheetDefaults.DragHandle() },
        scrimColor = Color.Transparent
    ) {
        BoxWithConstraints(modifier = Modifier.fillMaxWidth()) {
            val maxSheetHeight = maxHeight * 0.58f
            LazyColumn(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = maxSheetHeight)
                    .padding(horizontal = 20.dp),
                contentPadding = PaddingValues(bottom = 20.dp),
                verticalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                item {
                    Text(
                        readerText.textSettingsTitle,
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        letterSpacing = 1.sp
                    )
                }
                item { HorizontalDivider() }
                item {
                    Text(
                        readerText.quickPresetsTitle,
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                item {
                    androidx.compose.foundation.lazy.LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        io.leostrange.mrcomic.core.ui.theme.readingPresetQuickChoices().forEach { preset ->
                            item {
                                FilterChip(
                                    selected = currentPreset == preset.name,
                                    onClick = { onApplyReadingPreset(preset) },
                                    label = {
                                        Text(readerPresetLabel(preset, strings.languageCode))
                                    }
                                )
                            }
                        }
                    }
                }
                item {
                    Text(
                        readerText.colorSchemeTitle,
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                item {
                    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        listOf(
                            "DAY" to readerText.day,
                            "SEPIA" to readerText.sepia,
                            "NIGHT" to readerText.night
                        ).forEach { (id, label) ->
                            FilterChip(
                                selected = colorScheme == id,
                                onClick = { onColorSchemeChange(id) },
                                label = { Text(label) }
                            )
                        }
                    }
                }
                item {
                    Text(
                        readerText.fontTitle,
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                item {
                    val fontPickerContext = LocalContext.current
                    val fonts = remember(fontPickerContext) {
                        ReaderTextFontCatalog.availableFontFamilies(fontPickerContext)
                    }
                    LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        items(fonts) { f ->
                            FilterChip(
                                selected = (fontFamily == f) || (fontFamily !in fonts && f == "Georgia"),
                                onClick = { onFontFamilyChange(f) },
                                label = { Text(f, style = MaterialTheme.typography.bodySmall) }
                            )
                        }
                    }
                }
                item {
                    Text(
                        readerFontSizeLabel(fontSize, strings.languageCode),
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                item {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Text("A", style = MaterialTheme.typography.bodySmall)
                        Slider(
                            value = fontSize.toFloat(),
                            onValueChange = { onFontSizeChange(it.toInt()) },
                            valueRange = 12f..32f,
                            steps = 19,
                            modifier = Modifier.weight(1f)
                        )
                        Text("A", style = MaterialTheme.typography.bodyLarge)
                    }
                }
                item {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Text(
                            readerText.boldFont,
                            style = MaterialTheme.typography.labelMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        Switch(checked = bold, onCheckedChange = onBoldChange)
                    }
                }
                item {
                    Text(
                        readerLineHeightLabel((lineHeight * 100).toInt(), strings.languageCode),
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                item {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        IconButton(
                            onClick = { onLineHeightChange((lineHeight - 0.1f).coerceAtLeast(1.0f)) },
                            modifier = Modifier.size(36.dp)
                        ) { Text("в€’", style = MaterialTheme.typography.titleLarge) }
                        Slider(
                            value = lineHeight,
                            onValueChange = onLineHeightChange,
                            valueRange = 1.0f..3.0f,
                            steps = 19,
                            modifier = Modifier.weight(1f)
                        )
                        IconButton(
                            onClick = { onLineHeightChange((lineHeight + 0.1f).coerceAtMost(3.0f)) },
                            modifier = Modifier.size(36.dp)
                        ) { Text("+", style = MaterialTheme.typography.titleLarge) }
                    }
                }
                item {
                    Text(
                        readerText.textAlignTitle,
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                item {
                    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        listOf(
                            "justify" to readerText.alignJustify,
                            "left" to readerText.alignLeft,
                            "right" to readerText.alignRight,
                            "center" to readerText.alignCenter
                        ).forEach { (id, label) ->
                            FilterChip(
                                selected = textAlignment == id,
                                onClick = { onTextAlignChange(id) },
                                label = { Text(label, style = MaterialTheme.typography.bodySmall) }
                            )
                        }
                    }
                }
                item { HorizontalDivider() }
                item {
                    OutlinedButton(
                        onClick = onReset,
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(top = 4.dp)
                    ) {
                        Text(readerText.resetDefaults)
                    }
                }
            }
        }
    }
}
