package io.leostrange.mrcomic.feature.settings.ui

import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import kotlinx.coroutines.launch

internal fun SettingsViewModel.setMascotRecapEnabled(enabled: Boolean) {
        val wasEnabled = uiState.value.mascotRecapEnabled
        viewModelScope.launch {
            preferences.set(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, enabled)
            updateToggleEnabledAt(
                key = PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED_AT,
                wasEnabled = wasEnabled,
                enabled = enabled
            )
        }
    }

internal fun SettingsViewModel.setQuestPromptsEnabled(enabled: Boolean) {
        val wasEnabled = uiState.value.questPromptsEnabled
        viewModelScope.launch {
            preferences.set(PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED, enabled)
            updateToggleEnabledAt(
                key = PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED_AT,
                wasEnabled = wasEnabled,
                enabled = enabled
            )
        }
    }

internal fun SettingsViewModel.setDailyReadingGoalEnabled(enabled: Boolean) {
        val currentState = uiState.value
        if (currentState.dailyReadingGoalEnabled == enabled) return
        viewModelScope.launch {
            dailyReadingGoalStore.setGoalEnabled(enabled)
            updateToggleEnabledAt(
                key = PreferencesKeys.DAILY_READING_GOAL_ENABLED_AT,
                wasEnabled = currentState.dailyReadingGoalEnabled,
                enabled = enabled
            )
            if (!enabled) {
                dailyReadingGoalStore.setStreakEnabled(false)
                dailyReadingGoalStore.setGraceEnabled(false)
            }
            analyticsTracker.track(
                ReadingAnalyticsEvent.GoalSet(
                    enabled = enabled,
                    targetPages = currentState.dailyReadingGoalTargetPages,
                    streakEnabled = if (enabled) currentState.dailyReadingStreakEnabled else false,
                    graceEnabled = if (enabled) currentState.dailyReadingGraceEnabled else false,
                    source = "goal_enabled_toggle"
                )
            )
        }
    }

internal fun SettingsViewModel.setDailyReadingGoalTargetPages(targetPages: Int) {
        val currentState = uiState.value
        if (currentState.dailyReadingGoalTargetPages == targetPages) return
        viewModelScope.launch {
            dailyReadingGoalStore.setTargetPages(targetPages)
            analyticsTracker.track(
                ReadingAnalyticsEvent.GoalSet(
                    enabled = currentState.dailyReadingGoalEnabled,
                    targetPages = targetPages,
                    streakEnabled = currentState.dailyReadingStreakEnabled,
                    graceEnabled = currentState.dailyReadingGraceEnabled,
                    source = "target_pages_changed"
                )
            )
        }
    }

internal fun SettingsViewModel.setDailyReadingStreakEnabled(enabled: Boolean) {
        viewModelScope.launch {
            if (enabled && !uiState.value.dailyReadingGoalEnabled) {
                dailyReadingGoalStore.setGoalEnabled(true)
                updateToggleEnabledAt(
                    key = PreferencesKeys.DAILY_READING_GOAL_ENABLED_AT,
                    wasEnabled = false,
                    enabled = true
                )
            }
            dailyReadingGoalStore.setStreakEnabled(enabled)
            if (!enabled) {
                dailyReadingGoalStore.setGraceEnabled(false)
            }
        }
    }

internal fun SettingsViewModel.setDailyReadingGraceEnabled(enabled: Boolean) {
        viewModelScope.launch {
            if (enabled && !uiState.value.dailyReadingGoalEnabled) {
                dailyReadingGoalStore.setGoalEnabled(true)
                updateToggleEnabledAt(
                    key = PreferencesKeys.DAILY_READING_GOAL_ENABLED_AT,
                    wasEnabled = false,
                    enabled = true
                )
            }
            if (enabled) {
                dailyReadingGoalStore.setStreakEnabled(true)
            }
            dailyReadingGoalStore.setGraceEnabled(enabled)
        }
    }
