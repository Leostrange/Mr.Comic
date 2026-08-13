// Phase N (2026-08-03): интерактивные карточки вынесены из SettingsReaderSection.kt.
// SettingsReaderCards.kt split into topic files (2026-08-06): text cards.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.foundation.background
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.material.icons.Icons
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButtonVariant
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.argbLongToThemeColor
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.feature.reader.ui.ReaderTextFontCatalog
import java.util.Locale

/* ──── ReaderTextStyleCard ──── */
@Composable
internal fun ReaderTextStyleCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    styleText: ReaderStyleSettingsText,
    viewModel: SettingsViewModel,
    fontCatalogVersion: Int = 0,
    onImportCustomFont: () -> Unit = {},
    onImportReaderStyle: () -> Unit = {},
    onExportReaderStyle: () -> Unit = {},
    onDeleteCustomFont: (String) -> Unit = {}
) {
    val context = LocalContext.current
    val fonts = remember(context, fontCatalogVersion) {
        ReaderTextFontCatalog.availableFontFamilies(context)
    }
    val customFonts = remember(context, fontCatalogVersion) {
        ReaderTextFontCatalog.customFontFamilies(context)
    }
    SettingsCard(title = styleText.cardTitle) {
        Text(
            styleText.cardHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText(styleText.quickPresetsTitle)
        ChipRow {
            io.leostrange.mrcomic.core.ui.theme.readingPresetQuickChoices().map { preset ->
                preset to readingPresetQuickLabel(strings, preset)
            }.forEach { (preset, label) ->
                MrComicFilterChip(
                    selected = ReadingPreset.fromStored(uiState.readerPreset) == preset,
                    onClick = { viewModel.setReaderPreset(preset.name) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText(styleText.colorSchemeTitle)
        ChipRow {
            listOf(
                "DAY" to styleText.day,
                "SEPIA" to styleText.sepia,
                "NIGHT" to styleText.night
            ).forEach { (scheme, label) ->
                MrComicFilterChip(
                    selected = uiState.textColorScheme == scheme,
                    onClick = { viewModel.setTextColorScheme(scheme) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        MrComicButton(
            onClick = onImportReaderStyle,
            modifier = Modifier.fillMaxWidth(),
            variant = MrComicButtonVariant.Outlined
        ) {
            Text(styleText.importPresetLabel)
        }
        Spacer(Modifier.height(4.dp))
        MrComicButton(
            onClick = onExportReaderStyle,
            modifier = Modifier.fillMaxWidth(),
            variant = MrComicButtonVariant.Outlined
        ) {
            Text(styleText.exportPresetLabel)
        }
        Spacer(Modifier.height(4.dp))
        val savedReaderStyleCount = remember(uiState.readerStylePresetEntries) {
            uiState.readerStylePresetEntries.size
        }
        val sortedReaderStyleEntries = remember(
            uiState.readerStylePresetEntries,
            uiState.readerPreset,
            uiState.textFontFamily,
            uiState.textFontSize,
            uiState.textLineHeight,
            uiState.textAlignment,
            uiState.textColorScheme,
            uiState.textBold,
            uiState.textLetterSpacing,
            uiState.textWordSpacing,
            uiState.textParagraphSpacing,
            uiState.textCustomTextColor,
            uiState.textCustomBackgroundColor,
            uiState.textCustomAccentColor
        ) {
            uiState.readerStylePresetEntries.sortedWith(
                compareByDescending<ReaderStylePresetEntry> { entry ->
                    entry.snapshot.matchesSettingsUiState(uiState)
                }.thenByDescending { entry ->
                    entry.snapshot.displayName?.isNotBlank() == true
                }.thenBy { entry ->
                    entry.snapshot.displayName ?: entry.id
                }
            )
        }
        val activeReaderStyleSnapshot = remember(sortedReaderStyleEntries, uiState) {
            sortedReaderStyleEntries
                .map { it.snapshot }
                .firstOrNull { it.matchesSettingsUiState(uiState) }
        }
        LabelText("${styleText.savedStylesTitle} ($savedReaderStyleCount)")
        Text(
            text = styleText.savedStylesHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        if (activeReaderStyleSnapshot != null) {
            Spacer(Modifier.height(8.dp))
            SettingsPreviewBanner(
                title = activeReaderStyleSnapshot.displayName?.takeIf { it.isNotBlank() }
                    ?: readingPresetQuickLabel(strings, ReadingPreset.fromStored(activeReaderStyleSnapshot.readerPreset)),
                subtitle = listOf(
                    readingPresetQuickLabel(strings, ReadingPreset.fromStored(activeReaderStyleSnapshot.readerPreset)),
                    readerTextSchemeLabel(strings.languageCode, activeReaderStyleSnapshot.textColorScheme),
                    activeReaderStyleSnapshot.textFontFamily
                ).joinToString(" · "),
                details = listOf(
                    readerTextFontSizeLabel(activeReaderStyleSnapshot.textFontSize, strings.languageCode),
                    readerTextLineHeightLabel((activeReaderStyleSnapshot.textLineHeight * 100).toInt(), strings.languageCode)
                ).joinToString(" · ")
            )
        }
        Spacer(Modifier.height(8.dp))
        MrComicButton(
            onClick = { viewModel.saveCurrentReaderStylePreset() },
            modifier = Modifier.fillMaxWidth(),
            variant = MrComicButtonVariant.Outlined
        ) {
            Text(if (strings.languageCode == "ru") "Сохранить текущий стиль как новый" else "Save current style as new")
        }
        Spacer(Modifier.height(8.dp))
        Column(
            modifier = Modifier.fillMaxWidth(),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            sortedReaderStyleEntries.forEachIndexed { index, entry ->
                val active = entry.snapshot.matchesSettingsUiState(uiState)
                ReaderStylePresetCard(
                    slot = ReaderStylePresetSlot(
                        index = index + 1,
                        serialized = entry.snapshot.serialize()
                    ),
                    strings = strings,
                    text = styleText,
                    isActive = active,
                    onSave = { viewModel.overwriteReaderStylePreset(entry.id) },
                    onApply = { viewModel.applyReaderStylePreset(entry.id) },
                    onClear = { viewModel.deleteReaderStylePreset(entry.id) },
                    onRename = { viewModel.renameReaderStylePreset(entry.id, it) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText("${styleText.fontTitle} (${fonts.size})")
        MrComicButton(
            onClick = onImportCustomFont,
            modifier = Modifier.fillMaxWidth(),
            variant = MrComicButtonVariant.Outlined
        ) {
            Text(styleText.importFontLabel)
        }
        Spacer(Modifier.height(8.dp))
        SettingsPreviewBanner(
            title = uiState.textFontFamily,
            subtitle = readerImportedFontsActive(strings.languageCode),
            details = listOf(
                readerTextFontSizeLabel(uiState.textFontSize, uiState.appLanguage),
                readerTextLineHeightLabel((uiState.textLineHeight * 100).toInt(), uiState.appLanguage),
                "${customFonts.size} ${readerImportedFontsTitle(strings.languageCode).lowercase(Locale.getDefault())}"
            ).joinToString(" · ")
        )
        Spacer(Modifier.height(8.dp))
        val orderedFonts = remember(fonts, uiState.textFontFamily) {
            fonts.sortedWith(
                compareByDescending<String> { it == uiState.textFontFamily }
                    .thenBy { it.lowercase(Locale.getDefault()) }
            )
        }
        FlowRow(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            orderedFonts.forEach { family ->
                MrComicFilterChip(
                    selected = uiState.textFontFamily == family,
                    onClick = { viewModel.setTextFontFamily(family) },
                    label = { Text(family, style = MaterialTheme.typography.bodySmall) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText("${readerImportedFontsTitle(strings.languageCode)} (${customFonts.size})")
        Text(
            text = readerImportedFontsHint(strings.languageCode),
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        if (customFonts.isNotEmpty()) {
            val orderedCustomFonts = remember(customFonts, uiState.textFontFamily) {
                customFonts.sortedWith(
                    compareByDescending<String> { it == uiState.textFontFamily }
                        .thenBy { it.lowercase(Locale.getDefault()) }
                )
            }
            FlowRow(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                orderedCustomFonts.forEach { family ->
                    val selected = uiState.textFontFamily == family
                    MrComicCardSurface(
                        modifier = Modifier
                            .widthIn(min = 152.dp)
                            .clickable(onClick = { viewModel.setTextFontFamily(family) }),
                        fillMaxWidth = false,
                        cornerRadius = 14.dp,
                        containerColor = if (selected) {
                            MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.9f)
                        } else {
                            MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.55f)
                        },
                        border = BorderStroke(
                            width = if (selected) 1.1.dp else 0.8.dp,
                            color = if (selected) {
                                MaterialTheme.colorScheme.primary.copy(alpha = 0.42f)
                            } else {
                                MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.18f)
                            }
                        )
                    ) {
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(start = 12.dp, top = 10.dp, end = 6.dp, bottom = 10.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Column(
                                modifier = Modifier.weight(1f),
                                verticalArrangement = Arrangement.spacedBy(2.dp)
                            ) {
                                Text(
                                    text = family,
                                    style = MaterialTheme.typography.bodySmall,
                                    fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Normal,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis
                                )
                                if (selected) {
                                    Text(
                                        text = readerImportedFontsActive(strings.languageCode),
                                        style = MaterialTheme.typography.labelSmall,
                                        color = MaterialTheme.colorScheme.primary
                                    )
                                }
                            }
                            MrComicIconButton(
                                onClick = { onDeleteCustomFont(family) },
                                variant = MrComicIconButtonVariant.Tonal
                            ) {
                                Icon(
                                    imageVector = Icons.Default.Delete,
                                    contentDescription = readerDeleteCustomFontAction(strings.languageCode)
                                )
                            }
                        }
                    }
                }
            }
        } else {
            Text(
                text = readerImportedFontsEmpty(strings.languageCode),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.fontSizeTitle,
            valueLabel = readerTextFontSizeLabel(uiState.textFontSize, uiState.appLanguage),
            value = uiState.textFontSize.toFloat(),
            onValueChange = { viewModel.setTextFontSize(it.toInt()) },
            valueRange = 12f..32f,
            steps = 19
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.lineHeightTitle,
            valueLabel = readerTextLineHeightLabel((uiState.textLineHeight * 100).toInt(), uiState.appLanguage),
            value = uiState.textLineHeight,
            onValueChange = viewModel::setTextLineHeight,
            valueRange = 1.0f..3.0f,
            steps = 19
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.letterSpacingTitle,
            valueLabel = "${"%.2f".format(Locale.US, uiState.textLetterSpacing)}em",
            value = uiState.textLetterSpacing,
            onValueChange = viewModel::setTextLetterSpacing,
            valueRange = 0f..0.2f,
            steps = 19
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.wordSpacingTitle,
            valueLabel = "${"%.2f".format(Locale.US, uiState.textWordSpacing)}em",
            value = uiState.textWordSpacing,
            onValueChange = viewModel::setTextWordSpacing,
            valueRange = 0f..0.6f,
            steps = 23
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.paragraphSpacingTitle,
            valueLabel = "${"%.2f".format(Locale.US, uiState.textParagraphSpacing)}em",
            value = uiState.textParagraphSpacing,
            onValueChange = viewModel::setTextParagraphSpacing,
            valueRange = 0.1f..1.2f,
            steps = 21
        )
        Spacer(Modifier.height(4.dp))
        LabelText(styleText.alignmentTitle)
        ChipRow {
            listOf(
                "justify" to styleText.justify,
                "left" to styleText.left,
                "right" to styleText.right,
                "center" to styleText.center
            ).forEach { (alignment, label) ->
                MrComicFilterChip(
                    selected = uiState.textAlignment == alignment,
                    onClick = { viewModel.setTextAlignment(alignment) },
                    label = { Text(label) }
                )
            }
        }
        SwitchRow(
            title = styleText.boldTitle,
            subtitle = uiState.textFontFamily,
            checked = uiState.textBold,
            onCheckedChange = viewModel::setTextBold
        )
        OutlinedButton(
            onClick = viewModel::resetReaderTextStyle,
            modifier = Modifier.fillMaxWidth()
        ) {
            Text(styleText.resetLabel)
        }
    }
}



// Phase T (2026-08-04): internal fun ReaderStylePresetCard moved here from SettingsScreen.kt

@Composable
internal fun ReaderStylePresetCard(
    slot: ReaderStylePresetSlot,
    strings: AppStrings,
    text: ReaderStyleSettingsText,
    isActive: Boolean,
    onSave: () -> Unit,
    onApply: () -> Unit,
    onClear: () -> Unit,
    onRename: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    val snapshot = remember(slot.serialized) { parseReaderStylePreset(slot.serialized) }
    var renameDialogOpen by rememberSaveable(slot.index) { mutableStateOf(false) }
    var renameDraft by rememberSaveable(slot.index) { mutableStateOf("") }
    LaunchedEffect(slot.serialized) {
        renameDraft = snapshot?.displayName.orEmpty()
    }
    val (backgroundColor, lineColor) = remember(
        snapshot?.textColorScheme,
        snapshot?.textCustomBackgroundColor,
        snapshot?.textCustomTextColor
    ) {
        val base = when (snapshot?.textColorScheme) {
            "SEPIA" -> Color(0xFFF4ECD8) to Color(0xFF7B5C34)
            "NIGHT" -> Color(0xFF000000) to Color(0xFFF2F5F7)
            else -> Color(0xFFF6F1E7) to Color(0xFF2B2118)
        }
        (snapshot?.textCustomBackgroundColor?.let(::argbLongToThemeColor) ?: base.first) to
            (snapshot?.textCustomTextColor?.let(::argbLongToThemeColor) ?: base.second)
    }
    val slotLabel = "${text.savedStyleSlotPrefix} ${slot.index}"
    val titleLabel = snapshot?.displayName?.takeIf { it.isNotBlank() } ?: slotLabel
    val presetLabel = snapshot?.let { readingPresetQuickLabel(strings, ReadingPreset.fromStored(it.readerPreset)) } ?: text.savedStyleEmpty
    val schemeLabel = snapshot?.let { readerTextSchemeLabel(strings.languageCode, it.textColorScheme) }.orEmpty()
    val detailLabel = snapshot?.let {
        "${it.textFontFamily} · ${readerTextFontSizeLabel(it.textFontSize, strings.languageCode)} · ${readerTextLineHeightLabel((it.textLineHeight * 100).toInt(), strings.languageCode)}"
    } ?: text.savedStyleEmpty
    val shape = RoundedCornerShape(18.dp)

    if (renameDialogOpen) {
        AlertDialog(
            onDismissRequest = { renameDialogOpen = false },
            title = { Text(text.savedStyleRenameTitle) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                    OutlinedTextField(
                        value = renameDraft,
                        onValueChange = { renameDraft = it.take(40) },
                        modifier = Modifier.fillMaxWidth(),
                        singleLine = true,
                        label = { Text(text.savedStyleNameLabel) },
                        placeholder = { Text(slotLabel) }
                    )
                    Text(
                        text = text.savedStyleRenameHint,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        onRename(renameDraft)
                        renameDialogOpen = false
                    }
                ) {
                    Text(text.savedStyleRenameConfirm)
                }
            },
            dismissButton = {
                TextButton(onClick = { renameDialogOpen = false }) {
                    Text(text.savedStyleRenameCancel)
                }
            }
        )
    }

    MrComicCardSurface(
        modifier = modifier
            .fillMaxWidth()
            .clip(shape),
        shape = shape,
        containerColor = if (isActive) {
            MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.84f)
        } else {
            MaterialTheme.colorScheme.surface.copy(alpha = 0.92f)
        },
        border = BorderStroke(
            width = if (isActive) 1.2.dp else 0.dp,
            color = MaterialTheme.colorScheme.primary.copy(alpha = if (isActive) 0.48f else 0f)
        ),
        shadowElevation = if (isActive) 5.dp else 4.dp
    ) {
        Column(
            modifier = Modifier.padding(12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(92.dp)
                    .clip(RoundedCornerShape(14.dp))
                    .background(backgroundColor)
                    .border(
                        width = 1.dp,
                        color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.18f),
                        shape = RoundedCornerShape(14.dp)
                    )
                    .padding(horizontal = 12.dp, vertical = 10.dp)
            ) {
                Column(
                    modifier = Modifier.fillMaxSize(),
                    verticalArrangement = Arrangement.spacedBy(8.dp, Alignment.CenterVertically)
                ) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth(0.72f)
                            .height(8.dp)
                            .clip(RoundedCornerShape(999.dp))
                            .background(lineColor.copy(alpha = 0.88f))
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(8.dp)
                            .clip(RoundedCornerShape(999.dp))
                            .background(lineColor.copy(alpha = 0.28f))
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxWidth((0.55f + (((snapshot?.textParagraphSpacing ?: 0.2f) * 0.2f))).coerceIn(0.55f, 0.9f))
                            .height(8.dp)
                            .clip(RoundedCornerShape(999.dp))
                            .background(lineColor.copy(alpha = 0.18f))
                    )
                }
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.Top
            ) {
                Column(
                    modifier = Modifier.weight(1f),
                    verticalArrangement = Arrangement.spacedBy(2.dp)
                ) {
                    Text(
                        text = titleLabel,
                        style = MaterialTheme.typography.labelLarge,
                        color = MaterialTheme.colorScheme.onSurface,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis
                    )
                    if (isActive) {
                        Text(
                            text = readerSavedStyleActive(strings.languageCode),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                    }
                    if (titleLabel != slotLabel) {
                        Text(
                            text = slotLabel,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                    Text(
                        text = if (schemeLabel.isBlank()) presetLabel else "$presetLabel · $schemeLabel",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        minLines = 1,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        text = detailLabel,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.9f),
                        minLines = 1,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis
                    )
                }
                if (snapshot != null) {
                    IconButton(
                        onClick = { renameDialogOpen = true },
                        modifier = Modifier.size(34.dp)
                    ) {
                        Icon(Icons.Default.Edit, contentDescription = text.savedStyleRename)
                    }
                }
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                FilledTonalIconButton(
                    onClick = onSave,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.Save, contentDescription = text.savedStyleSave)
                }
                FilledIconButton(
                    onClick = onApply,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.PlayArrow, contentDescription = text.savedStyleApply)
                }
                OutlinedIconButton(
                    onClick = onClear,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.DeleteOutline, contentDescription = text.savedStyleClear)
                }
            }
        }
    }
}

// Phase T (2026-08-04): internal fun ReaderStylePresetSnapshot.matchesSettingsUiState moved here from SettingsScreen.kt

internal fun ReaderStylePresetSnapshot.matchesSettingsUiState(uiState: SettingsUiState): Boolean {
    return readerPreset == uiState.readerPreset &&
        textFontSize == uiState.textFontSize &&
        textColorScheme == uiState.textColorScheme &&
        textFontFamily == uiState.textFontFamily &&
        textLineHeight == uiState.textLineHeight &&
        textLetterSpacing == uiState.textLetterSpacing &&
        textWordSpacing == uiState.textWordSpacing &&
        textParagraphSpacing == uiState.textParagraphSpacing &&
        textAlignment == uiState.textAlignment &&
        textBold == uiState.textBold &&
        brightness == uiState.brightness &&
        immersiveMode == uiState.readerImmersiveMode &&
        pageAnimation == uiState.readerPageAnimation
}
