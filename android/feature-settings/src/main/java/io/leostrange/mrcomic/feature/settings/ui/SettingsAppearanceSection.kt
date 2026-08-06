@file:OptIn(androidx.compose.foundation.ExperimentalFoundationApi::class)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.locale.AppStrings

// Appearance settings screen section (Phase C cascade, 2026-08-02).
// Split from SettingsAppearanceSection.kt (2026-08-06).
// Item blocks extracted into SettingsAppearanceCards.kt (2026-08-06).
@Composable
internal fun AppearanceSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    currentPage: AppearanceSettingsPage,
    onPageChange: (AppearanceSettingsPage) -> Unit,
    modifier: Modifier = Modifier
) {
    val menuText = remember(uiState.appLanguage) { mainMenuText(uiState.appLanguage) }
    val sectionText = remember(uiState.appLanguage) { appearanceSectionText(uiState.appLanguage) }
    val appThemePresetText = remember(uiState.appLanguage) { appThemePresetText(uiState.appLanguage) }
    val libraryText = remember(uiState.appLanguage) { librarySectionText(uiState.appLanguage) }

    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        if (currentPage == AppearanceSettingsPage.THEME ||
            currentPage == AppearanceSettingsPage.SCALE ||
            currentPage == AppearanceSettingsPage.COLORS
        ) {
            stickyHeader(key = "appearance_preview") {
                Box(modifier = Modifier.padding(bottom = 10.dp)) {
                    SettingsCard(title = strings.preview) {
                        ThemePreviewCard(
                            uiState = uiState,
                            strings = strings
                        )
                    }
                }
            }
        }
        if (currentPage == AppearanceSettingsPage.OVERVIEW) {
            item {
                AppearanceLanguageCard(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel
                )
            }
            item {
                AppearanceQuickBlocksCard(
                    sectionText = sectionText,
                    strings = strings,
                    onPageChange = onPageChange
                )
            }
        }
        if (currentPage == AppearanceSettingsPage.THEME_STUDIO) {
            item {
                AppearanceStudioOverviewCard(
                    uiState = uiState,
                    strings = strings,
                    sectionText = sectionText,
                    onPageChange = onPageChange
                )
            }
            item {
                AppearanceAppThemePresetsCard(
                    uiState = uiState,
                    strings = strings,
                    text = appThemePresetText,
                    viewModel = viewModel
                )
            }
        }
        if (currentPage == AppearanceSettingsPage.LIBRARY) item {
            LibraryLayoutCard(
                uiState = uiState,
                strings = strings,
                libraryText = libraryText,
                viewModel = viewModel,
                title = appearanceLibraryVisualsTitle(uiState.appLanguage)
            )
        }
        if (currentPage == AppearanceSettingsPage.LIBRARY) item {
            LibraryCardsStyleCard(
                uiState = uiState,
                strings = strings,
                libraryText = libraryText,
                viewModel = viewModel
            )
        }
        if (currentPage == AppearanceSettingsPage.LIBRARY) item {
            AppearanceLibraryBackgroundsCard(
                uiState = uiState,
                strings = strings,
                libraryText = libraryText,
                viewModel = viewModel
            )
        }
        if (currentPage == AppearanceSettingsPage.THEME) item {
            AppearanceThemePresetsCard(
                uiState = uiState,
                strings = strings,
                viewModel = viewModel
            )
        }
        if (currentPage == AppearanceSettingsPage.THEME) item {
            AppearanceThemeModeCard(
                uiState = uiState,
                strings = strings,
                viewModel = viewModel
            )
        }
        if (currentPage == AppearanceSettingsPage.SCALE) item {
            AppearanceScaleCard(
                uiState = uiState,
                strings = strings,
                sectionText = sectionText,
                viewModel = viewModel
            )
        }
        if (currentPage == AppearanceSettingsPage.COLORS) item {
            AppearanceAccentColorsCard(
                uiState = uiState,
                strings = strings,
                sectionText = sectionText,
                viewModel = viewModel
            )
        }
        if (currentPage == AppearanceSettingsPage.COLORS) item {
            AppearanceSurfacesCard(
                uiState = uiState,
                strings = strings,
                sectionText = sectionText,
                menuText = menuText,
                viewModel = viewModel
            )
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}
