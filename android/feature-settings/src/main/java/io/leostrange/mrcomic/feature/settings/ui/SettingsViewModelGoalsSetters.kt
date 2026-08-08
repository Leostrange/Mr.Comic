package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import kotlinx.coroutines.launch

internal fun SettingsSettersController.setMascotRecapEnabled(enabled: Boolean) {
        val wasEnabled = uiState().mascotRecapEnabled
        scope.launch {
            preferences.set(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, enabled)
            updateToggleEnabledAt(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED_AT, wasEnabled, enabled)
        }
    }

internal fun SettingsSettersController.setQuestPromptsEnabled(enabled: Boolean) {
        val wasEnabled = uiState().questPromptsEnabled
        scope.launch {
            preferences.set(PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED, enabled)
            updateToggleEnabledAt(PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED_AT, wasEnabled, enabled)
        }
    }

internal fun SettingsSettersController.setDailyReadingGoalEnabled(enabled: Boolean) {
        val currentState = uiState()
        if (currentState.dailyReadingGoalEnabled == enabled) return
        scope.launch {
            dailyReadingGoalStore.setGoalEnabled(enabled)
            updateToggleEnabledAt(PreferencesKeys.DAILY_READING_GOAL_ENABLED_AT, currentState.dailyReadingGoalEnabled, enabled)
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

internal fun SettingsSettersController.setDailyReadingGoalTargetPages(targetPages: Int) {
        val currentState = uiState()
        if (currentState.dailyReadingGoalTargetPages == targetPages) return
        scope.launch {
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

internal fun SettingsSettersController.setDailyReadingStreakEnabled(enabled: Boolean) {
        scope.launch {
            if (enabled && !uiState().dailyReadingGoalEnabled) {
                dailyReadingGoalStore.setGoalEnabled(true)
                updateToggleEnabledAt(PreferencesKeys.DAILY_READING_GOAL_ENABLED_AT, false, true)
            }
            dailyReadingGoalStore.setStreakEnabled(enabled)
            if (!enabled) {
                dailyReadingGoalStore.setGraceEnabled(false)
            }
        }
    }

internal fun SettingsSettersController.setDailyReadingGraceEnabled(enabled: Boolean) {
        scope.launch {
            if (enabled && !uiState().dailyReadingGoalEnabled) {
                dailyReadingGoalStore.setGoalEnabled(true)
                updateToggleEnabledAt(PreferencesKeys.DAILY_READING_GOAL_ENABLED_AT, false, true)
            }
            if (enabled) {
                dailyReadingGoalStore.setStreakEnabled(true)
            }
            dailyReadingGoalStore.setGraceEnabled(enabled)
        }
    }
