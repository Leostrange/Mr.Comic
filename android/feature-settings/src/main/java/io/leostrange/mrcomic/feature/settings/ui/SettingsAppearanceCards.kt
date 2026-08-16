@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.text.style.TextOverflow
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import android.content.Intent
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.platform.LocalContext
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import io.leostrange.mrcomic.core.ui.theme.ThemePreset
import io.leostrange.mrcomic.core.ui.theme.argbLongToThemeColor

// AppThemePresetCard moved here from SettingsScreen.kt (Phase T, 2026-08-04).
// Split from SettingsAppearanceSection.kt (2026-08-06).
// Phase T (2026-08-04): internal fun AppThemePresetCard moved here from SettingsScreen.kt
// Phase Z (2026-08-06): item blocks extracted from AppearanceSection as named cards.

@Composable
internal fun AppThemePresetCard(
    slot: AppThemePresetSlot,
    strings: AppStrings,
    text: AppThemePresetText,
    isActive: Boolean,
    onSave: () -> Unit,
    onApply: () -> Unit,
    onClear: () -> Unit,
    modifier: Modifier = Modifier
) {
    val snapshot = remember(slot.serialized) { parseAppThemePreset(slot.serialized) }
    val cardShape = RoundedCornerShape(18.dp)
    val slotLabel = "${text.slotPrefix} ${slot.index}"
    val themePresetLabelText = snapshot?.let { themePresetLabel(strings, it.themePreset) } ?: text.empty
    val modeLabel = snapshot?.let {
        themeLabel(
            strings,
            runCatching { ThemeMode.valueOf(it.themeMode) }.getOrDefault(ThemeMode.SYSTEM)
        )
    }.orEmpty()
    val primaryColor = snapshot?.customPrimaryColor?.let(::argbLongToThemeColor) ?: MaterialTheme.colorScheme.primary
    val surfaceColor = snapshot?.customSurfaceColor?.let(::argbLongToThemeColor)
        ?: MaterialTheme.colorScheme.surface.copy(alpha = snapshot?.surfaceOpacity ?: 1f)
    val backgroundColor = snapshot?.customBackgroundColor?.let(::argbLongToThemeColor) ?: MaterialTheme.colorScheme.background

    MrComicCardSurface(
        modifier = modifier
            .width(180.dp)
            .clip(cardShape),
        fillMaxWidth = false,
        shape = cardShape,
        containerColor = if (isActive) {
            MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.86f)
        } else {
            MaterialTheme.colorScheme.surface.copy(alpha = 0.92f)
        },
        border = if (isActive) {
            BorderStroke(1.dp, MaterialTheme.colorScheme.primary.copy(alpha = 0.42f))
        } else {
            BorderStroke(0.8.dp, MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.16f))
        },
        shadowElevation = if (isActive) 5.dp else 4.dp
    ) {
        Column(
            modifier = Modifier.padding(10.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(88.dp)
                    .clip(RoundedCornerShape(14.dp))
                    .background(backgroundColor)
                    .border(
                        width = 1.dp,
                        color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.18f),
                        shape = RoundedCornerShape(14.dp)
                    )
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(10.dp),
                    verticalArrangement = Arrangement.SpaceBetween
                ) {
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(6.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Box(
                            modifier = Modifier
                                .size(10.dp)
                                .clip(CircleShape)
                                .background(primaryColor)
                        )
                        Box(
                            modifier = Modifier
                                .size(10.dp)
                                .clip(CircleShape)
                                .background(surfaceColor)
                        )
                    }
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .clip(RoundedCornerShape(12.dp))
                            .background(surfaceColor)
                            .padding(horizontal = 10.dp, vertical = 8.dp),
                        verticalArrangement = Arrangement.spacedBy(5.dp)
                    ) {
                        Box(
                            modifier = Modifier
                                .fillMaxWidth(0.72f)
                                .height(7.dp)
                                .clip(RoundedCornerShape(999.dp))
                                .background(primaryColor.copy(alpha = 0.84f))
                        )
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(7.dp)
                                .clip(RoundedCornerShape(999.dp))
                                .background(MaterialTheme.colorScheme.onSurface.copy(alpha = 0.12f))
                        )
                        Box(
                            modifier = Modifier
                                .fillMaxWidth(0.82f)
                                .height(7.dp)
                                .clip(RoundedCornerShape(999.dp))
                                .background(MaterialTheme.colorScheme.onSurface.copy(alpha = 0.08f))
                        )
                    }
                }
            }
            Column(verticalArrangement = Arrangement.spacedBy(2.dp)) {
                Text(
                    text = slotLabel,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
                if (isActive) {
                    Text(
                        text = text.current,
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.primary
                    )
                }
                Text(
                    text = if (modeLabel.isBlank()) themePresetLabelText else "$themePresetLabelText · $modeLabel",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    minLines = 2,
                    maxLines = 3,
                    overflow = TextOverflow.Ellipsis
                )
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                FilledTonalIconButton(
                    onClick = onSave,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.Save, contentDescription = text.save)
                }
                FilledIconButton(
                    onClick = onApply,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.PlayArrow, contentDescription = text.apply)
                }
                OutlinedIconButton(
                    onClick = onClear,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.DeleteOutline, contentDescription = text.clear)
                }
            }
        }
    }
}

// Phase T (2026-08-04): internal fun AppThemePresetSnapshot.matchesAppThemeUiState moved here from SettingsScreen.kt

internal fun AppThemePresetSnapshot.matchesAppThemeUiState(uiState: SettingsUiState): Boolean {
    return themePreset == uiState.themePreset &&
        themeMode == uiState.themeMode.name &&
        useDynamicColor == uiState.useDynamicColor &&
        useAmoledDark == uiState.useAmoledDark &&
        customPrimaryColor == uiState.customPrimaryColor &&
        customSecondaryColor == uiState.customSecondaryColor &&
        customBackgroundColor == uiState.customBackgroundColor &&
        customSurfaceColor == uiState.customSurfaceColor &&
        surfaceOpacity == uiState.surfaceOpacity &&
        uiFontScale == uiState.uiFontScale &&
        uiDensityScale == uiState.uiDensityScale &&
        uiCornerRadius == uiState.uiCornerRadius
}

// === Item blocks extracted from AppearanceSection (2026-08-06) ===

@Composable
internal fun AppearanceLanguageCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.appLanguage) {
        val langs = listOf(
            "ru" to strings.langRu,
            "en" to strings.langEn,
            "ja" to strings.langJa,
            "zh" to strings.langZh,
            "ko" to strings.langKo
        )
        LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            items(langs) { (code, label) ->
                MrComicFilterChip(
                    selected = uiState.appLanguage == code,
                    onClick = { viewModel.setAppLanguage(code) },
                    label = { Text(label) }
                )
            }
        }
    }
}

@Composable
internal fun AppearanceQuickBlocksCard(
    sectionText: AppearanceSectionText,
    strings: AppStrings,
    onPageChange: (AppearanceSettingsPage) -> Unit
) {
    val navItems = appearancePageNavItems(sectionText, strings.languageCode)
    SettingsCard(title = sectionText.quickBlocksTitle) {
        navItems.forEachIndexed { index, item ->
            SettingsNavItem(
                icon = item.icon,
                title = item.title,
                description = null,
                onClick = { onPageChange(item.page) }
            )
            if (index != navItems.lastIndex) {
                HorizontalDivider(
                    modifier = Modifier.padding(start = 56.dp),
                    color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.6f)
                )
            }
        }
    }
}

@Composable
internal fun AppearanceStudioOverviewCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    sectionText: AppearanceSectionText,
    onPageChange: (AppearanceSettingsPage) -> Unit
) {
    SettingsStudioOverviewCard(
        title = appearanceThemeStudioTitle(strings.languageCode),
        hint = appearanceThemeStudioDescription(strings.languageCode),
        summaryItems = listOf(
            appearanceThemeTitle(strings.languageCode) to "${themePresetLabel(strings, uiState.themePreset)} · ${themeLabel(strings, uiState.themeMode)}",
            appearanceColorsTitle(strings.languageCode) to "${compactToggleLabel(strings.languageCode, uiState.customPrimaryColor != null || uiState.customBackgroundColor != null)} · ${(uiState.surfaceOpacity * 100).toInt()}%",
            appearanceScaleTitle(strings.languageCode) to "${fontScaleLabel(strings, uiState.uiFontScale)} · ${uiDensityLabel(uiState.appLanguage, uiState.uiDensityScale)}"
        ),
        sectionsTitle = sectionText.quickBlocksTitle,
        sections = listOf(
            SettingsStudioOverviewItem(
                icon = Icons.Default.Palette,
                title = appearanceThemeTitle(strings.languageCode),
                description = sectionText.tabHints[AppearanceSettingsTab.THEME].orEmpty(),
                summary = "${themePresetLabel(strings, uiState.themePreset)} · ${themeLabel(strings, uiState.themeMode)}",
                onClick = { onPageChange(AppearanceSettingsPage.THEME) }
            ),
            SettingsStudioOverviewItem(
                icon = Icons.Default.ColorLens,
                title = appearanceColorsTitle(strings.languageCode),
                description = sectionText.tabHints[AppearanceSettingsTab.COLORS].orEmpty(),
                summary = "${compactToggleLabel(strings.languageCode, uiState.customPrimaryColor != null || uiState.customBackgroundColor != null)} · ${(uiState.surfaceOpacity * 100).toInt()}%",
                onClick = { onPageChange(AppearanceSettingsPage.COLORS) }
            ),
            SettingsStudioOverviewItem(
                icon = Icons.Default.Tune,
                title = appearanceScaleTitle(strings.languageCode),
                description = sectionText.tabHints[AppearanceSettingsTab.SCALE].orEmpty(),
                summary = "${fontScaleLabel(strings, uiState.uiFontScale)} · ${uiDensityLabel(uiState.appLanguage, uiState.uiDensityScale)}",
                onClick = { onPageChange(AppearanceSettingsPage.SCALE) }
            )
        )
    )
}

@Composable
internal fun AppearanceAppThemePresetsCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    text: AppThemePresetText,
    viewModel: SettingsViewModel
) {
    val savedAppThemeCount = remember(uiState.appThemePresetSlots) {
        uiState.appThemePresetSlots.count { !it.serialized.isNullOrBlank() }
    }
    SettingsCard(title = "${text.title} ($savedAppThemeCount/${uiState.appThemePresetSlots.size})") {
        LabelText(text.hint)
        val orderedAppThemeSlots = remember(uiState.appThemePresetSlots, uiState.themePreset, uiState.themeMode) {
            uiState.appThemePresetSlots.sortedWith(
                compareByDescending<AppThemePresetSlot> { slot ->
                    parseAppThemePreset(slot.serialized)?.matchesAppThemeUiState(uiState) == true
                }.thenByDescending { slot ->
                    !slot.serialized.isNullOrBlank()
                }.thenBy { slot ->
                    slot.index
                }
            )
        }
        val activeAppThemeSnapshot = orderedAppThemeSlots
            .mapNotNull { parseAppThemePreset(it.serialized) }
            .firstOrNull { it.matchesAppThemeUiState(uiState) }
        if (activeAppThemeSnapshot != null) {
            Spacer(Modifier.height(6.dp))
            SettingsPreviewBanner(
                title = "${text.current}: ${themePresetLabel(strings, activeAppThemeSnapshot.themePreset)}",
                subtitle = themeLabel(
                    strings,
                    runCatching { ThemeMode.valueOf(activeAppThemeSnapshot.themeMode) }.getOrDefault(ThemeMode.SYSTEM)
                ),
                details = listOfNotNull(
                    if (activeAppThemeSnapshot.customPrimaryColor != null) strings.colorPrimary else null,
                    if (activeAppThemeSnapshot.customSecondaryColor != null) strings.colorSecondary else null,
                    if (activeAppThemeSnapshot.customBackgroundColor != null) strings.colorBackground else null,
                    if (activeAppThemeSnapshot.customSurfaceColor != null) "surface" else null
                ).joinToString(" · ").ifBlank { strings.themePresetCustom }
            )
        }
        FlowRow(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            orderedAppThemeSlots.forEach { slot ->
                val active = parseAppThemePreset(slot.serialized)?.matchesAppThemeUiState(uiState) == true
                AppThemePresetCard(
                    slot = slot,
                    strings = strings,
                    text = text,
                    isActive = active,
                    onSave = { viewModel.saveAppThemePreset(slot.index) },
                    onApply = { viewModel.applyAppThemePreset(slot.index) },
                    onClear = { viewModel.clearAppThemePreset(slot.index) }
                )
            }
        }
    }
}

@Composable
internal fun AppearanceLibraryBackgroundsCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    libraryText: LibrarySectionText,
    viewModel: SettingsViewModel
) {
    var showBackgroundPicker by rememberSaveable { mutableStateOf(false) }
    var showShelfPicker by rememberSaveable { mutableStateOf(false) }
    val context = LocalContext.current
    val backgroundOptions = listOf(
        "PAPER_GRAIN" to libraryBackgroundStyleLabel("PAPER_GRAIN", uiState.appLanguage),
        "EINK_WASH" to libraryBackgroundStyleLabel("EINK_WASH", uiState.appLanguage),
        "MIDNIGHT_MICA" to libraryBackgroundStyleLabel("MIDNIGHT_MICA", uiState.appLanguage),
        "LIQUID_GLASS" to libraryBackgroundStyleLabel("LIQUID_GLASS", uiState.appLanguage),
        "AURORA_MIST" to libraryBackgroundStyleLabel("AURORA_MIST", uiState.appLanguage),
        "IMAGE" to libraryText.imageBackgroundOption
    )
    val shelfOptions = listOf(
        "NONE" to libraryShelfStyleLabel("NONE", uiState.appLanguage),
        "OAK" to libraryShelfStyleLabel("OAK", uiState.appLanguage),
        "ALUMINUM" to libraryShelfStyleLabel("ALUMINUM", uiState.appLanguage),
        "FLOAT" to libraryShelfStyleLabel("FLOAT", uiState.appLanguage),
        "FROST" to libraryShelfStyleLabel("FROST", uiState.appLanguage)
    )
    val backgroundImageLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        if (uri != null) {
            try {
                context.contentResolver.takePersistableUriPermission(
                    uri,
                    Intent.FLAG_GRANT_READ_URI_PERMISSION
                )
            } catch (_: Exception) {
            }
        }
        viewModel.setLibraryBackgroundImageUri(uri?.toString())
    }

    SettingsCard(title = libraryText.shelvesBackgroundCard) {
        SettingsPickerTile(
            title = libraryText.backgroundStyle,
            value = backgroundOptions.firstOrNull { it.first == uiState.libraryBackgroundStyle }?.second
                ?: libraryBackgroundStyleLabel(uiState.libraryBackgroundStyle, uiState.appLanguage),
            onClick = { showBackgroundPicker = true }
        )
        Spacer(Modifier.height(10.dp))
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            MrComicButton(
                onClick = { backgroundImageLauncher.launch(arrayOf("image/*")) },
                modifier = Modifier.weight(1f),
                variant = MrComicButtonVariant.Tonal
            ) {
                Text(if (uiState.libraryBackgroundImageUri == null) libraryText.chooseBackground else libraryText.changeBackground)
            }
            MrComicButton(
                onClick = { viewModel.setLibraryBackgroundImageUri(null) },
                modifier = Modifier.weight(1f),
                enabled = uiState.libraryBackgroundImageUri != null,
                variant = MrComicButtonVariant.Outlined
            ) {
                Text(libraryText.resetBackground)
            }
        }
        uiState.libraryBackgroundImageUri?.let { backgroundUri ->
            Spacer(Modifier.height(10.dp))
            SelectedLibraryBackgroundPreview(
                imageUri = backgroundUri,
                title = libraryText.selectedBackground,
                hint = libraryText.selectedBackgroundHint
            )
        }
        Spacer(Modifier.height(10.dp))
        SettingsSliderTile(
            title = libraryText.backgroundAccent,
            valueLabel = "${(uiState.libraryBackdropStrength * 100).toInt()}%",
            value = uiState.libraryBackdropStrength,
            onValueChange = viewModel::setLibraryBackdropStrength,
            valueRange = 0f..1f,
            steps = 9
        )
        Spacer(Modifier.height(10.dp))
        SettingsSliderTile(
            title = libraryText.backgroundBlur,
            valueLabel = "${(uiState.libraryBackgroundBlur * 100).toInt()}%",
            value = uiState.libraryBackgroundBlur,
            onValueChange = viewModel::setLibraryBackgroundBlur,
            valueRange = 0f..1f,
            steps = 9
        )
        Spacer(Modifier.height(10.dp))
        SettingsSliderTile(
            title = libraryText.backgroundVeil,
            valueLabel = "${(uiState.libraryBackgroundVeil * 100).toInt()}%",
            value = uiState.libraryBackgroundVeil,
            onValueChange = viewModel::setLibraryBackgroundVeil,
            valueRange = 0f..1f,
            steps = 9
        )
        Spacer(Modifier.height(10.dp))
        SettingsPickerTile(
            title = libraryText.shelfStyle,
            value = shelfOptions.firstOrNull { it.first == uiState.libraryShelfStyle }?.second
                ?: libraryShelfStyleLabel(uiState.libraryShelfStyle, uiState.appLanguage),
            onClick = { showShelfPicker = true }
        )
        Spacer(Modifier.height(10.dp))
        SettingsSliderTile(
            title = libraryText.shelfDepth,
            valueLabel = "${(uiState.libraryShelfDepth * 100).toInt()}%",
            value = uiState.libraryShelfDepth,
            onValueChange = viewModel::setLibraryShelfDepth,
            valueRange = 0f..1f,
            steps = 9
        )
    }
    if (showBackgroundPicker) {
        SettingsPickerDialog(
            title = libraryText.backgroundStyle,
            options = backgroundOptions.map { ReaderPickerOption(it.first, it.second) },
            selectedValue = uiState.libraryBackgroundStyle,
            onDismiss = { showBackgroundPicker = false },
            onSelect = {
                viewModel.setLibraryBackgroundStyle(it)
                showBackgroundPicker = false
            }
        )
    }
    if (showShelfPicker) {
        SettingsPickerDialog(
            title = libraryText.shelfStyle,
            options = shelfOptions.map { ReaderPickerOption(it.first, it.second) },
            selectedValue = uiState.libraryShelfStyle,
            onDismiss = { showShelfPicker = false },
            onSelect = {
                viewModel.setLibraryShelfStyle(it)
                showShelfPicker = false
            }
        )
    }
}

@Composable
internal fun AppearanceThemePresetsCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.themePresets) {
        val activePreset = runCatching {
            ThemePreset.valueOf(uiState.themePreset)
        }.getOrDefault(ThemePreset.CUSTOM)

        FlowRow(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            listOf(
                ThemePreset.CUSTOM to strings.themePresetCustom,
                ThemePreset.PAPER  to strings.themePresetPaper,
                ThemePreset.GLASS  to strings.themePresetGlass,
                ThemePreset.AMOLED to strings.themePresetAmoled,
                ThemePreset.NEON   to strings.themePresetNeon,
                ThemePreset.GRAY   to strings.themePresetGray,
                ThemePreset.SEPIA  to strings.themePresetSepia,
                ThemePreset.EINK   to strings.themePresetEink
            ).forEach { (preset, label) ->
                ThemePresetCard(
                    preset = preset,
                    label = label,
                    isSelected = activePreset == preset,
                    onClick = { viewModel.setThemePreset(preset) }
                )
            }
        }
    }
}

@Composable
internal fun AppearanceThemeModeCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.themeCard) {
        val amoledAvailable = uiState.themeMode != ThemeMode.LIGHT
        LabelText(strings.colorTheme)
        ChipRow {
            ThemeMode.entries.forEach { mode ->
                MrComicFilterChip(
                    selected = uiState.themeMode == mode,
                    onClick = { viewModel.setThemeMode(mode) },
                    label = { Text(themeLabel(strings, mode)) }
                )
            }
        }
        SwitchRow(
            title = strings.dynamicColor,
            subtitle = strings.dynamicColorSubtitle,
            checked = uiState.useDynamicColor,
            onCheckedChange = viewModel::setUseDynamicColor
        )
        SwitchRow(
            title = strings.amoledDark,
            subtitle = if (amoledAvailable) {
                strings.amoledDarkSubtitle
            } else {
                when (strings.languageCode) {
                    "en" -> "Available only when the app uses a dark theme."
                    "ja" -> "アプリがダークテーマのときだけ使えます。"
                    "zh" -> "仅在应用使用深色主题时可用。"
                    "ko" -> "앱이 다크 테마일 때만 사용할 수 있습니다."
                    else -> "Работает только когда приложение использует тёмную тему."
                }
            },
            checked = uiState.useAmoledDark,
            onCheckedChange = viewModel::setUseAmoledDark,
            enabled = amoledAvailable
        )
    }
}

@Composable
internal fun AppearanceScaleCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    sectionText: AppearanceSectionText,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = sectionText.sizeShapeTitle) {
        LabelText("${strings.fontScale}: ${fontScaleLabel(strings, uiState.uiFontScale)}")
        ChipRow {
            listOf(
                0.85f to strings.fontScaleSmall,
                1.0f  to strings.fontScaleNormal,
                1.15f to strings.fontScaleLarge,
                1.3f  to strings.fontScaleXL
            ).forEach { (scale, label) ->
                MrComicFilterChip(
                    selected = uiState.uiFontScale == scale,
                    onClick = { viewModel.setUiFontScale(scale) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = appearanceDensityLabel(uiState.appLanguage),
            valueLabel = uiDensityLabel(uiState.appLanguage, uiState.uiDensityScale),
            value = uiState.uiDensityScale,
            onValueChange = viewModel::setUiDensityScale,
            valueRange = 0.82f..1.18f,
            steps = 7
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = strings.cornerRadius,
            valueLabel = "${uiState.uiCornerRadius} dp",
            value = uiState.uiCornerRadius.toFloat(),
            onValueChange = { viewModel.setUiCornerRadius(it.toInt()) },
            valueRange = 0f..32f,
            steps = 7
        )
    }
}

@Composable
internal fun AppearanceAccentColorsCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    sectionText: AppearanceSectionText,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = sectionText.accentColorsTitle) {
        Text(
            sectionText.accentColorsDescription,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        ColorPickerRow(
            label = strings.colorPrimary,
            selectedColor = uiState.customPrimaryColor?.let(::argbLongToThemeColor),
            onColorSelected = { viewModel.setCustomPrimaryColor(it?.toArgb()?.toUInt()?.toLong()) }
        )
        Spacer(Modifier.height(8.dp))
        ColorPickerRow(
            label = strings.colorSecondary,
            selectedColor = uiState.customSecondaryColor?.let(::argbLongToThemeColor),
            onColorSelected = { viewModel.setCustomSecondaryColor(it?.toArgb()?.toUInt()?.toLong()) }
        )
    }
}

@Composable
internal fun AppearanceSurfacesCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    sectionText: AppearanceSectionText,
    menuText: MainMenuText,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = sectionText.surfacesTitle) {
        Text(
            sectionText.surfacesDescription,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        ColorPickerRow(
            label = strings.colorBackground,
            selectedColor = uiState.customBackgroundColor?.let(::argbLongToThemeColor),
            onColorSelected = { viewModel.setCustomBackgroundColor(it?.toArgb()?.toUInt()?.toLong()) }
        )
        Spacer(Modifier.height(8.dp))
        ColorPickerRow(
            label = menuText.surfaceCardsLabel,
            selectedColor = uiState.customSurfaceColor?.let(::argbLongToThemeColor),
            onColorSelected = { viewModel.setCustomSurfaceColor(it?.toArgb()?.toUInt()?.toLong()) }
        )
        Spacer(Modifier.height(8.dp))
        SettingsSliderTile(
            title = surfaceOpacityLabel(uiState.appLanguage),
            valueLabel = "${(uiState.surfaceOpacity * 100).toInt()}%",
            value = uiState.surfaceOpacity,
            onValueChange = viewModel::setSurfaceOpacity,
            valueRange = 0.35f..1f,
            steps = 12
        )
        MrComicButton(
            onClick = {
                viewModel.setCustomPrimaryColor(null)
                viewModel.setCustomSecondaryColor(null)
                viewModel.setCustomBackgroundColor(null)
                viewModel.setCustomSurfaceColor(null)
                viewModel.setSurfaceOpacity(1f)
            },
            modifier = Modifier.align(Alignment.End),
            variant = MrComicButtonVariant.Text
        ) {
            Text(sectionText.paletteResetLabel)
        }
    }
}
