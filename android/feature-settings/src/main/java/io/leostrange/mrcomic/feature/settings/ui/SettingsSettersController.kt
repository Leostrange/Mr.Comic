// 4.1 (2026-08-09):
// Explicit-dependency holder for the settings setter functions
// (SettingsViewModelAppearance/Reader/Text/Goals/Library/Performance/
// Translation/ReaderInput Setters). The functions themselves remain
// extension functions on this class in their original files; the ViewModel
// keeps the public API via one-line delegates.

package io.leostrange.mrcomic.feature.settings.ui

import androidx.datastore.preferences.core.Preferences
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.ui.theme.ThemePreferencesRepository
import kotlinx.coroutines.CoroutineScope
import org.json.JSONObject

/**
 * Dependency holder for all settings setters (4.1). Extracted from
 * SettingsViewModel so setters can be tested without constructing the
 * ViewModel; callbacks keep it decoupled from state and lifecycle.
 */
internal class SettingsSettersController(
    internal val preferences: UserPreferences,
    internal val themePreferencesRepository: ThemePreferencesRepository,
    internal val dailyReadingGoalStore: DailyReadingGoalStore,
    internal val analyticsTracker: ReadingAnalyticsTracker,
    internal val scope: CoroutineScope,
    internal val uiState: () -> SettingsUiState,
    internal val settingsPreferencesController: SettingsPreferencesController,
    internal val setSlider: (String, suspend () -> Unit) -> Unit,
    internal val updateToggleEnabledAt: suspend (Preferences.Key<Long>, Boolean, Boolean) -> Unit,
    internal val persistNullableReaderColor: suspend (Preferences.Key<Long>, Long?) -> Unit,
    internal val parseImportedTypography: suspend (JSONObject) -> ImportedReaderTypographyPreset?,
)
