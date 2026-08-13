// Phase R (2026-08-03):
// Label/i18n-хелперы (22 шт.) → SettingsReaderLabels.kt.
// Остались: ReaderSection, parseReaderSettingsPage, ReaderSelectionBehaviorCard.

// Phase N (2026-08-03):
// Интерактивные карточки (12 шт.) + SETTINGS_READER_MIN_TOOLBAR_OPACITY → SettingsReaderCards.kt.
// Остались: ReaderSection (маршрутизатор), parseReaderSettingsPage, ReaderSelectionBehaviorCard,
// label/i18n-хелперы.

// Phase M (2026-08-03):
// Превью-карточки (4 шт.) → SettingsReaderPreviews.kt.
// Интерактивные карточки и label-хелперы остаются в этом файле — Phase N.

// Phase F (2026-08-03): Reader-блок вынесен из SettingsScreen.kt.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.style

// SETTINGS_READER_MIN_TOOLBAR_OPACITY (const) → SettingsReaderCards.kt (Phase N 2026-08-03)

/**
 * Reader (Phase F, 2026-08-03): ReaderSection + its cards (text appearance,
 * page layout, landscape spread, header/footer, paging, presets, mode,
 * image layout, screen, selection behavior, wellness, progress, effects,
 * preload, text style), nav items and i18n helpers. Moved from
 * SettingsScreen.kt; behavior is unchanged.
 */

/* ──── ReaderSection (fun) ──── */
@Composable
internal fun ReaderSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    currentPage: ReaderSettingsPage,
    onPageChange: (ReaderSettingsPage) -> Unit,
    fontCatalogVersion: Int = 0,
    onImportCustomFont: () -> Unit = {},
    onImportReaderStyle: () -> Unit = {},
    onExportReaderStyle: () -> Unit = {},
    onDeleteCustomFont: (String) -> Unit = {},
    onOpenTranslationSettings: () -> Unit,
    modifier: Modifier = Modifier
) {
    val eyeRestText = remember(uiState.appLanguage) { eyeRestSettingsText(uiState.appLanguage) }
    val readingGoalText = remember(uiState.appLanguage) { readingGoalSettingsText(uiState.appLanguage) }
    val streakPolicyText = remember(uiState.appLanguage) { streakPolicySettingsText(uiState.appLanguage) }
    val pageText = remember(uiState.appLanguage) { readerSettingsMapText(uiState.appLanguage) }
    val streakProgressText = remember(
        uiState.appLanguage,
        uiState.dailyReadingCurrentStreak,
        uiState.dailyReadingBestStreak,
        uiState.dailyReadingGraceDaysRemainingThisWeek
    ) {
        streakPolicyProgressText(
            language = uiState.appLanguage,
            currentStreak = uiState.dailyReadingCurrentStreak,
            bestStreak = uiState.dailyReadingBestStreak,
            graceDaysRemainingThisWeek = uiState.dailyReadingGraceDaysRemainingThisWeek
        )
    }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        when (currentPage) {
            ReaderSettingsPage.OVERVIEW -> {
                item {
                    val navItems = readerPageNavItems(pageText)
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
                ReaderSettingsPage.TEXT_APPEARANCE -> {
                item {
                    ReaderTextAppearancePreviewCard(
                        uiState = uiState,
                        strings = strings
                    )
                }
                item {
                    ReaderTextStyleCard(
                        uiState = uiState,
                        strings = strings,
                        styleText = readerStyleSettingsText(uiState.appLanguage),
                        viewModel = viewModel,
                        fontCatalogVersion = fontCatalogVersion,
                        onImportCustomFont = onImportCustomFont,
                        onImportReaderStyle = onImportReaderStyle,
                        onExportReaderStyle = onExportReaderStyle,
                        onDeleteCustomFont = onDeleteCustomFont
                    )
                }
            }
            ReaderSettingsPage.PAGE_LAYOUT -> {
                item {
                    ReaderPageLayoutPreviewCard(uiState = uiState, strings = strings)
                }
                item {
                    ReaderModeCard(uiState = uiState, strings = strings, viewModel = viewModel)
                }
                item {
                    ReaderImageLayoutCard(uiState = uiState, language = uiState.appLanguage, viewModel = viewModel)
                }
                item {
                    ReaderLandscapeSpreadCard(uiState = uiState, language = uiState.appLanguage, viewModel = viewModel)
                }
                item {
                    ReaderPreloadCard(uiState = uiState, strings = strings, viewModel = viewModel)
                }
            }
            ReaderSettingsPage.HEADERS -> {
                stickyHeader(key = "reader_headers_preview") {
                    Box(modifier = Modifier.padding(bottom = 10.dp)) {
                        ReaderHeaderFooterPreviewCard(uiState = uiState, language = uiState.appLanguage)
                    }
                }
                item {
                    ReaderHeaderFooterSettingsCard(
                        uiState = uiState,
                        language = uiState.appLanguage,
                        viewModel = viewModel
                    )
                }
            }
            ReaderSettingsPage.PAGING -> {
                item {
                    ReaderPagingPreviewCard(uiState = uiState, language = uiState.appLanguage)
                }
                item {
                    ReaderPagingSettingsCard(
                        uiState = uiState,
                        language = uiState.appLanguage,
                        viewModel = viewModel
                    )
                }
                item {
                    ReaderEffectsCard(uiState = uiState, strings = strings, viewModel = viewModel)
                }
            }
            ReaderSettingsPage.BEHAVIOR -> {
                item {
                    ReaderScreenCard(uiState = uiState, strings = strings, viewModel = viewModel)
                }
                item {
                    ReaderSelectionBehaviorCard(
                        uiState = uiState,
                        strings = strings,
                        onOpenTranslationSettings = onOpenTranslationSettings
                    )
                }
                item {
                    ReaderWellnessCard(
                        uiState = uiState,
                        eyeRestText = eyeRestText,
                        viewModel = viewModel
                    )
                }
                item {
                    ReaderProgressCard(
                        uiState = uiState,
                        readingGoalText = readingGoalText,
                        streakPolicyText = streakPolicyText,
                        streakProgressText = streakProgressText,
                        viewModel = viewModel
                    )
                }
            }
        }

        item { Spacer(Modifier.height(16.dp)) }
    }
}

/* ──── parseReaderSettingsPage (fun) ──── */
internal fun parseReaderSettingsPage(raw: String): ReaderSettingsPage = when (raw) {
    "STYLE" -> ReaderSettingsPage.TEXT_APPEARANCE
    "BEHAVIOR" -> ReaderSettingsPage.BEHAVIOR
    "PROGRESS" -> ReaderSettingsPage.BEHAVIOR
    "EFFECTS" -> ReaderSettingsPage.PAGING
    "WELLNESS" -> ReaderSettingsPage.BEHAVIOR
    else -> runCatching { ReaderSettingsPage.valueOf(raw) }.getOrDefault(ReaderSettingsPage.OVERVIEW)
}

/* ──── ReaderTextAppearancePreviewCard (fun) ──── */
// ReaderTextAppearancePreviewCard (fun) → SettingsReaderPreviews.kt (Phase M 2026-08-03)
/* ──── ReaderPageLayoutPreviewCard (fun) ──── */
// ReaderPageLayoutPreviewCard (fun) → SettingsReaderPreviews.kt (Phase M 2026-08-03)
/* ──── ReaderLandscapeSpreadCard (fun) ──── */
// ReaderLandscapeSpreadCard (fun) → SettingsReaderCards.kt (Phase N 2026-08-03)

/* ──── readerInfoSlotLabel (fun) ──── */
// readerInfoSlotLabel → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerTapZoneActionLabel (fun) ──── */
// readerTapZoneActionLabel → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerInfoSlotPreviewValue (fun) ──── */
// readerInfoSlotPreviewValue → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerHeaderFooterPickerOptions (fun) ──── */
// readerHeaderFooterPickerOptions → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerTapZonePickerOptions (fun) ──── */
// readerTapZonePickerOptions → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── ReaderHeaderFooterPreviewCard (fun) ──── */
// ReaderHeaderFooterPreviewCard (fun) → SettingsReaderPreviews.kt (Phase M 2026-08-03)
/* ──── ReaderHeaderFooterSettingsCard (fun) ──── */
// ReaderHeaderFooterSettingsCard (fun) → SettingsReaderCards.kt (Phase N 2026-08-03)

/* ──── ReaderPagingPreviewCard (fun) ──── */
// ReaderPagingPreviewCard (fun) → SettingsReaderPreviews.kt (Phase M 2026-08-03)
/* ──── ReaderPagingSettingsCard (fun) ──── */
// ReaderPagingSettingsCard (fun) → SettingsReaderCards.kt (Phase N 2026-08-03)

/* ──── pageTitleForReader (fun) ──── */
// pageTitleForReader → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── pageDescriptionForReader (fun) ──── */
// pageDescriptionForReader → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerPageNavItems (fun) ──── */
// readerPageNavItems → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── ReaderSettingsNavItem (data class) ──── */
internal data class ReaderSettingsNavItem(
    val page: ReaderSettingsPage,
    val title: String,
    val description: String,
    val icon: ImageVector
)

/* ──── ReaderPresetsCard (fun) ──── */
// ReaderPresetsCard (fun) → SettingsReaderCards.kt (Phase N 2026-08-03)

/* ──── ReaderModeCard (fun) ──── */
// ReaderModeCard (fun) → SettingsReaderCards.kt (Phase N 2026-08-03)

/* ──── ReaderImageLayoutCard (fun) ──── */
// ReaderImageLayoutCard (fun) → SettingsReaderCards.kt (Phase N 2026-08-03)

/* ──── readerImageLayoutCardTitle (fun) ──── */
// readerImageLayoutCardTitle → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerImageLayoutCardHint (fun) ──── */
// readerImageLayoutCardHint → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerImageScaleModeTitle (fun) ──── */
// readerImageScaleModeTitle → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerImageScaleModeLabel (fun) ──── */
// readerImageScaleModeLabel → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerMarginCropHorizontalTitle (fun) ──── */
// readerMarginCropHorizontalTitle → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerMarginCropVerticalTitle (fun) ──── */
// readerMarginCropVerticalTitle → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerMarginCropPercentLabel (fun) ──── */
// readerMarginCropPercentLabel → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── ReaderScreenCard (fun) ──── */
// ReaderScreenCard (fun) → SettingsReaderCards.kt (Phase N 2026-08-03)

/* ──── readerToolbarSectionTitle (fun) ──── */
// readerToolbarSectionTitle → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerToolbarOpacityTitle (fun) ──── */
// readerToolbarOpacityTitle → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerToolbarBlurTitle (fun) ──── */
// readerToolbarBlurTitle → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerToolbarAutoHideTitle (fun) ──── */
// readerToolbarAutoHideTitle → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerToolbarAutoHideSubtitle (fun) ──── */
// readerToolbarAutoHideSubtitle → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── ReaderBehaviorText (data class) ──── */
internal data class ReaderBehaviorText(
    val keepScreenOnSubtitle: String,
    val immersiveSubtitle: String,
    val screenTimeoutTitle: String,
    val selectionCardTitle: String,
    val selectionHint: String,
    val selectionRouteLabel: String,
    val translationLinkTitle: String,
    val translationLinkDescription: String
)

/* ──── readerBehaviorText (fun) ──── */
// readerBehaviorText → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── readerScreenTimeoutLabel (fun) ──── */
// readerScreenTimeoutLabel → SettingsReaderLabels.kt (Phase R 2026-08-03)

/* ──── ReaderSelectionBehaviorCard (fun) ──── */
@Composable
internal fun ReaderSelectionBehaviorCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    onOpenTranslationSettings: () -> Unit
) {
    val text = remember(strings.languageCode) { readerBehaviorText(strings.languageCode) }
    val source = translationEndpointLabel(strings.languageCode, uiState.translationSourceLanguage, isTarget = false)
    val target = translationEndpointLabel(strings.languageCode, uiState.translationTargetLanguage, isTarget = true)
    val transport = transportLabel(strings.languageCode, uiState.translationTransport)
    SettingsCard(title = text.selectionCardTitle) {
        Text(
            text = text.selectionHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${text.selectionRouteLabel}: $source → $target · $transport")
        Spacer(Modifier.height(8.dp))
        HorizontalDivider(color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f))
        Spacer(Modifier.height(4.dp))
        SettingsNavItem(
            icon = Icons.Default.Translate,
            title = text.translationLinkTitle,
            description = text.translationLinkDescription,
            summary = "$source → $target",
            onClick = onOpenTranslationSettings
        )
    }
}

/* ──── ReaderWellnessCard (fun) ──── */
// ReaderWellnessCard (fun) → SettingsReaderCards.kt (Phase N 2026-08-03)

/* ──── ReaderProgressCard (fun) ──── */
// ReaderProgressCard (fun) → SettingsReaderCards.kt (Phase N 2026-08-03)

/* ──── ReaderEffectsCard (fun) ──── */
// ReaderEffectsCard (fun) → SettingsReaderCards.kt (Phase N 2026-08-03)

/* ──── ReaderPreloadCard (fun) ──── */
// ReaderPreloadCard (fun) → SettingsReaderCards.kt (Phase N 2026-08-03)

/* ──── ReaderTextStyleCard (fun) ──── */
// ReaderTextStyleCard (fun) → SettingsReaderCards.kt (Phase N 2026-08-03)

