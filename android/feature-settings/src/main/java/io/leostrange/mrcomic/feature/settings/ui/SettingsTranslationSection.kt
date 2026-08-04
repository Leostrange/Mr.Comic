// Phase E (2026-08-03): Translation-блок вынесен из SettingsScreen.kt.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.TextSnippet
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.designsystem.MrComicSwitchRow
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.locale.ocrSourceLanguageOptions
import io.leostrange.mrcomic.core.ui.locale.translationLanguageOptions

/**
 * Translation (Phase E, 2026-08-03): TranslationSection + page title/description,
 * nav items, behavior/source/target cards, services gateway, OCR filters,
 * overlay and OCR language cards. Moved from SettingsScreen.kt;
 * behavior is unchanged.
 */

/* ──── TranslationSection (fun) ──── */
@Composable
internal fun TranslationSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    currentPage: TranslationSettingsPage,
    onPageChange: (TranslationSettingsPage) -> Unit,
    onOpenAiServices: () -> Unit,
    modifier: Modifier = Modifier
) {
    val sectionText = remember(strings.languageCode) { translationSectionText(strings.languageCode) }
    val pageText = remember(strings.languageCode) { translationSettingsMapText(strings.languageCode) }
    val languageOptions = remember(strings.languageCode) {
        translationLanguageOptions(strings.languageCode)
    }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        when (currentPage) {
            TranslationSettingsPage.OVERVIEW -> {
                item {
                    val navItems = translationPageNavItems(pageText)
                    SettingsCard(title = pageText.areasTitle) {
                        navItems.forEachIndexed { index, navItem ->
                            SettingsNavItem(
                                icon = navItem.icon,
                                title = navItem.title,
                                description = null,
                                onClick = { onPageChange(navItem.page) }
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
            }
            TranslationSettingsPage.LANGUAGES -> {
                item {
                    TranslationBehaviorCard(uiState = uiState, strings = strings, viewModel = viewModel)
                }
                item {
                    TranslationSourceCard(
                        uiState = uiState,
                        sectionText = sectionText,
                        languageOptions = languageOptions,
                        viewModel = viewModel
                    )
                }
                item {
                    TranslationTargetCard(
                        uiState = uiState,
                        sectionText = sectionText,
                        languageOptions = languageOptions,
                        viewModel = viewModel
                    )
                }
            }
            TranslationSettingsPage.OCR -> {
                item {
                    OcrFiltersCard(uiState = uiState, sectionText = sectionText, viewModel = viewModel)
                }
                item {
                    OcrLanguageCard(uiState = uiState, strings = strings, viewModel = viewModel)
                }
            }
            TranslationSettingsPage.OVERLAY -> item {
                TranslationOverlayCard(uiState = uiState, sectionText = sectionText, viewModel = viewModel)
            }
            TranslationSettingsPage.SERVICES -> item {
                TranslationServicesGatewayPage(
                    uiState = uiState,
                    strings = strings,
                    onOpenAiServices = onOpenAiServices
                )
            }
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

/* ──── pageTitleForTranslation (fun) ──── */
internal fun pageTitleForTranslation(
    page: TranslationSettingsPage,
    text: TranslationSettingsMapText
): String = when (page) {
    TranslationSettingsPage.OVERVIEW -> text.overviewTitle
    TranslationSettingsPage.LANGUAGES -> text.languagesTitle
    TranslationSettingsPage.OCR -> text.ocrTitle
    TranslationSettingsPage.OVERLAY -> text.overlayTitle
    TranslationSettingsPage.SERVICES -> text.servicesTitle
}

/* ──── pageDescriptionForTranslation (fun) ──── */
internal fun pageDescriptionForTranslation(
    page: TranslationSettingsPage,
    text: TranslationSettingsMapText
): String = when (page) {
    TranslationSettingsPage.OVERVIEW -> text.overviewDescription
    TranslationSettingsPage.LANGUAGES -> text.languagesDescription
    TranslationSettingsPage.OCR -> text.ocrDescription
    TranslationSettingsPage.OVERLAY -> text.overlayDescription
    TranslationSettingsPage.SERVICES -> text.servicesDescription
}

/* ──── TranslationSettingsNavItem (data class) ──── */
internal data class TranslationSettingsNavItem(
    val page: TranslationSettingsPage,
    val title: String,
    val description: String,
    val icon: ImageVector
)

/* ──── translationPageNavItems (fun) ──── */
internal fun translationPageNavItems(
    text: TranslationSettingsMapText
): List<TranslationSettingsNavItem> = listOf(
    TranslationSettingsNavItem(
        page = TranslationSettingsPage.LANGUAGES,
        title = text.languagesTitle,
        description = text.languagesDescription,
        icon = Icons.Default.Translate
    ),
    TranslationSettingsNavItem(
        page = TranslationSettingsPage.OCR,
        title = text.ocrTitle,
        description = text.ocrDescription,
        icon = Icons.AutoMirrored.Filled.TextSnippet
    ),
    TranslationSettingsNavItem(
        page = TranslationSettingsPage.OVERLAY,
        title = text.overlayTitle,
        description = text.overlayDescription,
        icon = Icons.Default.Layers
    ),
    TranslationSettingsNavItem(
        page = TranslationSettingsPage.SERVICES,
        title = text.servicesTitle,
        description = text.servicesDescription,
        icon = Icons.Default.SettingsSuggest
    )
)

/* ──── TranslationBehaviorCard (fun) ──── */
@Composable
internal fun TranslationBehaviorCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = translationSectionText(strings.languageCode).translationBehaviorCard) {
        Text(
            strings.translationHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        ChipRow {
            listOf(
                "OFF" to strings.transOff,
                "OCR" to strings.transOcr,
                "DICTIONARY" to strings.transDict
            ).forEach { (key, label) ->
                MrComicFilterChip(
                    selected = uiState.translationMode == key,
                    onClick = { viewModel.setTranslationMode(key) },
                    label = { Text(label) }
                )
            }
        }
    }
}

/* ──── TranslationSourceCard (fun) ──── */
@Composable
internal fun TranslationSourceCard(
    uiState: SettingsUiState,
    sectionText: TranslationSectionText,
    languageOptions: List<Pair<String, String>>,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = sectionText.sourceLanguageCard) {
        LabelText(sectionText.sourceLanguageHint)
        ChipRow {
            MrComicFilterChip(
                selected = uiState.translationSourceLanguage == "AUTO",
                onClick = { viewModel.setTranslationSourceLanguage("AUTO") },
                label = { Text(sectionText.autoSource) }
            )
            languageOptions.forEach { (code, label) ->
                MrComicFilterChip(
                    selected = uiState.translationSourceLanguage == code,
                    onClick = { viewModel.setTranslationSourceLanguage(code) },
                    label = { Text(label) }
                )
            }
        }
    }
}

/* ──── TranslationTargetCard (fun) ──── */
@Composable
internal fun TranslationTargetCard(
    uiState: SettingsUiState,
    sectionText: TranslationSectionText,
    languageOptions: List<Pair<String, String>>,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = sectionText.targetLanguageCard) {
        LabelText(sectionText.targetLanguageHint)
        ChipRow {
            MrComicFilterChip(
                selected = uiState.translationTargetLanguage == "APP",
                onClick = { viewModel.setTranslationTargetLanguage("APP") },
                label = { Text(sectionText.appLanguageTarget) }
            )
            languageOptions.forEach { (code, label) ->
                MrComicFilterChip(
                    selected = uiState.translationTargetLanguage == code,
                    onClick = { viewModel.setTranslationTargetLanguage(code) },
                    label = { Text(label) }
                )
            }
        }
    }
}

/* ──── TranslationServicesGatewayPage (fun) ──── */
@Composable
internal fun TranslationServicesGatewayPage(
    uiState: SettingsUiState,
    strings: AppStrings,
    onOpenAiServices: () -> Unit
) {
    val overviewText = remember(strings.languageCode) { aiServicesOverviewText(strings.languageCode) }
    val summaryText = remember(strings.languageCode) { settingsSectionSummaryText(strings.languageCode) }
    val transportText = remember(strings.languageCode) { translationSectionText(strings.languageCode).transportCard }
    val aiServicesTitle = settingsSectionMeta(SettingsSection.AI_SERVICES, strings.languageCode, strings).title
    val readAloudTitle = settingsSectionMeta(SettingsSection.READ_ALOUD, strings.languageCode, strings).title
    val gatewayText = remember(strings.languageCode, aiServicesTitle, readAloudTitle) {
        translationServicesGatewayText(strings.languageCode, aiServicesTitle, readAloudTitle)
    }
    val transport = transportLabel(strings.languageCode, uiState.translationTransport)
    val explain = compactToggleLabel(strings.languageCode, uiState.translationExplainEnabled)

    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
        SettingsPreviewBanner(
            title = aiServicesTitle,
            subtitle = gatewayText.previewSubtitle,
            details = "$transport · ${overviewText.advancedExplainTitle}: $explain"
        )
        SettingsCompactSummaryCard(
            title = summaryText.title,
            hint = summaryText.hint,
            items = listOf(
                transportText to transport,
                overviewText.machineTranslationTitle to aiMachineTranslationStatus(uiState, strings.languageCode),
                overviewText.advancedExplainTitle to explain,
                overviewText.providersTitle to aiProvidersStatus(uiState, strings.languageCode)
            )
        )
        SettingsCard(title = gatewayText.ownershipTitle) {
            Text(
                text = gatewayText.ownershipBody,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            Spacer(Modifier.height(8.dp))
            LabelText(gatewayText.readAloudHint)
            Spacer(Modifier.height(12.dp))
            MrComicButton(
                onClick = onOpenAiServices,
                variant = MrComicButtonVariant.Outlined
            ) {
                Text(gatewayText.openButtonLabel)
            }
        }
    }
}

/* ──── OcrFiltersCard (fun) ──── */
@Composable
internal fun OcrFiltersCard(
    uiState: SettingsUiState,
    sectionText: TranslationSectionText,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = sectionText.comicFiltersCard) {
        LabelText(sectionText.comicFiltersHint)
        Spacer(Modifier.height(8.dp))
        MrComicSwitchRow(
            title = sectionText.dialoguesOnlyTitle,
            subtitle = sectionText.dialoguesOnlySubtitle,
            checked = uiState.ocrDialoguesOnly,
            onCheckedChange = viewModel::setOcrDialoguesOnly
        )
        Spacer(Modifier.height(12.dp))
        MrComicSwitchRow(
            title = sectionText.includeSfxTitle,
            subtitle = sectionText.includeSfxSubtitle,
            checked = uiState.ocrIncludeSfx,
            onCheckedChange = viewModel::setOcrIncludeSfx
        )
    }
}

/* ──── TranslationOverlayCard (fun) ──── */
@Composable
internal fun TranslationOverlayCard(
    uiState: SettingsUiState,
    sectionText: TranslationSectionText,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = sectionText.overlayCard) {
        LabelText(sectionText.overlayHint)
        Spacer(Modifier.height(12.dp))
        SettingsSliderTile(
            title = sectionText.overlayOpacityTitle,
            valueLabel = "${(uiState.ocrOverlayOpacity * 100).toInt()}%",
            value = uiState.ocrOverlayOpacity,
            onValueChange = viewModel::setOcrOverlayOpacity,
            valueRange = 0.45f..1.0f
        )
        Spacer(Modifier.height(12.dp))
        Text(
            text = sectionText.overlayFontScaleTitle,
            style = MaterialTheme.typography.titleSmall,
            color = MaterialTheme.colorScheme.onSurface
        )
        ChipRow {
            listOf(0.85f, 1.0f, 1.15f, 1.3f).forEach { scale ->
                MrComicFilterChip(
                    selected = kotlin.math.abs(uiState.ocrOverlayFontScale - scale) < 0.01f,
                    onClick = { viewModel.setOcrOverlayFontScale(scale) },
                    label = { Text("${(scale * 100).toInt()}%") }
                )
            }
        }
        Spacer(Modifier.height(12.dp))
        Text(
            text = sectionText.overlayStyleTitle,
            style = MaterialTheme.typography.titleSmall,
            color = MaterialTheme.colorScheme.onSurface
        )
        ChipRow {
            listOf(
                "AUTO" to sectionText.overlayStyleAuto,
                "LIGHT" to sectionText.overlayStyleLight,
                "DARK" to sectionText.overlayStyleDark
            ).forEach { (code, label) ->
                MrComicFilterChip(
                    selected = uiState.ocrOverlayStyle == code,
                    onClick = { viewModel.setOcrOverlayStyle(code) },
                    label = { Text(label) }
                )
            }
        }
    }
}

/* ──── OcrLanguageCard (fun) ──── */
@Composable
internal fun OcrLanguageCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.ocrLanguageCard) {
        LabelText(strings.ocrLanguageHint)
        ChipRow {
            ocrSourceLanguageOptions(strings.languageCode).forEach { option ->
                MrComicFilterChip(
                    selected = uiState.ocrLanguage == option.code.uppercase(),
                    onClick = { viewModel.setOcrLanguage(option.code.uppercase()) },
                    label = { Text(option.label) }
                )
            }
        }
        if (uiState.translationMode == "OFF") {
            Spacer(Modifier.height(4.dp))
            Text(
                strings.ocrNote,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.error.copy(alpha = 0.7f)
            )
        }
    }
}

