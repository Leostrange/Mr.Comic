// Phase N (2026-08-03): интерактивные карточки вынесены из SettingsReaderSection.kt.
// SettingsReaderCards.kt split into topic files (2026-08-06): comfort cards.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.style

/* ──── ReaderWellnessCard ──── */
@Composable
internal fun ReaderWellnessCard(
    uiState: SettingsUiState,
    eyeRestText: EyeRestSettingsText,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = eyeRestText.cardTitle) {
        SwitchRow(
            title = eyeRestText.enabledTitle,
            subtitle = eyeRestText.enabledSubtitle,
            checked = uiState.readerEyeRestEnabled,
            onCheckedChange = viewModel::setReaderEyeRestEnabled
        )
        if (uiState.readerEyeRestEnabled) {
            Spacer(Modifier.height(4.dp))
            LabelText("${eyeRestText.intervalLabel}: ${uiState.readerEyeRestMinutes} ${eyeRestText.minutesSuffix}")
            ChipRow {
                listOf(10, 20, 30, 45, 60).forEach { minutes ->
                    MrComicFilterChip(
                        selected = uiState.readerEyeRestMinutes == minutes,
                        onClick = { viewModel.setReaderEyeRestMinutes(minutes) },
                        label = { Text("$minutes ${eyeRestText.minutesSuffix}") }
                    )
                }
            }
            Spacer(Modifier.height(4.dp))
            Text(
                eyeRestText.hint,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

/* ──── ReaderProgressCard ──── */
@Composable
internal fun ReaderProgressCard(
    uiState: SettingsUiState,
    readingGoalText: ReadingGoalSettingsText,
    streakPolicyText: StreakPolicySettingsText,
    streakProgressText: String,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = readingGoalText.cardTitle) {
        SwitchRow(
            title = readingGoalText.enabledTitle,
            subtitle = readingGoalText.enabledSubtitle,
            checked = uiState.dailyReadingGoalEnabled,
            onCheckedChange = viewModel::setDailyReadingGoalEnabled
        )
        if (uiState.dailyReadingGoalEnabled) {
            Spacer(Modifier.height(4.dp))
            LabelText(
                readingGoalText.progressLabel(
                    uiState.dailyReadingGoalProgressPages,
                    uiState.dailyReadingGoalTargetPages
                )
            )
            LabelText(
                readingGoalText.weeklyProgressLabel(
                    uiState.dailyReadingWeekProgressPages,
                    uiState.dailyReadingWeekTargetPages,
                    uiState.dailyReadingWeekCompletedDays
                )
            )
            LabelText(
                readingGoalText.calendarLabel(
                    uiState.dailyReadingRecentActiveDays,
                    uiState.dailyReadingRecentGoalDays
                )
            )
            LabelText("${readingGoalText.targetLabel}: ${uiState.dailyReadingGoalTargetPages} ${readingGoalText.pagesSuffix}")
            ChipRow {
                listOf(10, 20, 30, 50).forEach { targetPages ->
                    MrComicFilterChip(
                        selected = uiState.dailyReadingGoalTargetPages == targetPages,
                        onClick = { viewModel.setDailyReadingGoalTargetPages(targetPages) },
                        label = { Text("$targetPages ${readingGoalText.pagesSuffix}") }
                    )
                }
            }
            if (uiState.dailyReadingGoalProgressPages >= uiState.dailyReadingGoalTargetPages) {
                Spacer(Modifier.height(4.dp))
                Text(
                    readingGoalText.completedHint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.primary
                )
            }
        }
        if (uiState.dailyReadingGoalEnabled || uiState.dailyReadingStreakEnabled) {
            Spacer(Modifier.height(10.dp))
            HorizontalDivider(color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f))
            Spacer(Modifier.height(10.dp))
            Text(
                streakPolicyText.title,
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.SemiBold
            )
            SwitchRow(
                title = streakPolicyText.enabledTitle,
                subtitle = streakPolicyText.enabledSubtitle,
                checked = uiState.dailyReadingStreakEnabled,
                onCheckedChange = viewModel::setDailyReadingStreakEnabled
            )
            if (uiState.dailyReadingStreakEnabled) {
                SwitchRow(
                    title = streakPolicyText.graceTitle,
                    subtitle = streakPolicyText.graceSubtitle,
                    checked = uiState.dailyReadingGraceEnabled,
                    onCheckedChange = viewModel::setDailyReadingGraceEnabled
                )
                Text(
                    streakProgressText,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    streakPolicyText.summary,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

/* ──── ReaderEffectsCard ──── */
@Composable
internal fun ReaderEffectsCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.animSoundCard) {
        LabelText(strings.pageAnimLabel)
        ChipRow {
            listOf(
                "NONE" to strings.animNone,
                "SLIDE" to strings.animSlide,
                "FADE" to strings.animFade
            ).forEach { (key, label) ->
                MrComicFilterChip(
                    selected = uiState.readerPageAnimation == key,
                    onClick = { viewModel.setReaderPageAnimation(key) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        SwitchRow(
            title = strings.pageFlipSound,
            subtitle = strings.pageFlipSoundSubtitle,
            checked = uiState.readerPageSound,
            onCheckedChange = viewModel::setReaderPageSound
        )
        if (uiState.readerPageSound) {
            Spacer(Modifier.height(4.dp))
            LabelText(strings.soundStyleLabel)
            ChipRow {
                listOf(
                    "PAPER" to strings.soundPaper,
                    "CRISP" to strings.soundCrisp,
                    "SOFT" to strings.soundSoft
                ).forEach { (key, label) ->
                    MrComicFilterChip(
                        selected = uiState.readerPageSoundStyle == key,
                        onClick = { viewModel.setReaderPageSoundStyle(key) },
                        label = { Text(label) }
                    )
                }
            }
        }
    }
}

/* ──── ReaderPreloadCard ──── */
@Composable
internal fun ReaderPreloadCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.preloadCard) {
        SettingsSliderTile(
            title = strings.preloadLabel,
            valueLabel = uiState.readerPreloadPages.toString(),
            value = uiState.readerPreloadPages.toFloat(),
            onValueChange = { viewModel.setReaderPreloadPages(it.toInt()) },
            valueRange = 2f..8f,
            steps = 5,
            subtitle = strings.preloadHint
        )
    }
}

