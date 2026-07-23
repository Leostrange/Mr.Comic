package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.locale.libraryFileCountLabel
import io.leostrange.mrcomic.core.ui.locale.libraryFolderCountLabel
import io.leostrange.mrcomic.core.ui.locale.librarySetCountLabel
import io.leostrange.mrcomic.core.ui.locale.libraryVolumeCountLabel
import io.leostrange.mrcomic.feature.library.components.AchievementQuestTransition
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

internal fun folderDescription(folder: LibraryFolderItem, strings: AppStrings): String {
    val filesText = strings.libraryFileCountLabel(folder.fileCount)
    val foldersText = if (folder.subfolderCount <= 0) {
        ""
    } else {
        " • ${strings.libraryFolderCountLabel(folder.subfolderCount)}"
    }
    return filesText + foldersText
}

internal fun folderCollectionLabel(strings: AppStrings): String = strings.libraryCollectionLabel

internal fun folderVolumesLabel(fileCount: Int, strings: AppStrings): String =
    strings.libraryVolumeCountLabel(fileCount)

internal fun folderSubcollectionsLabel(subfolderCount: Int, strings: AppStrings): String? {
    if (subfolderCount <= 0) return null
    return strings.librarySetCountLabel(subfolderCount)
}

internal fun formatFileSize(bytes: Long): String = when {
    bytes < 1_024 -> "$bytes B"
    bytes < 1_048_576 -> "%.1f KB".format(bytes / 1_024.0)
    bytes < 1_073_741_824L -> "%.1f MB".format(bytes / 1_048_576.0)
    else -> "%.2f GB".format(bytes / 1_073_741_824.0)
}

internal fun mrComicUseCompactStagePreview(
    searchActive: Boolean,
    hasStagePreview: Boolean,
    hasQuestFeedback: Boolean
): Boolean = searchActive && hasStagePreview && hasQuestFeedback

internal fun mrComicShowQuestFeedback(
    searchActive: Boolean,
    hasQuestFeedback: Boolean
): Boolean = hasQuestFeedback && !searchActive

internal fun mrComicShowReadingCalendarCard(
    searchActive: Boolean,
    goalState: DailyReadingGoalState,
    hasStagePreview: Boolean,
    hasQuestFeedback: Boolean
): Boolean {
    if (searchActive || !goalState.enabled || hasStagePreview || hasQuestFeedback) return false
    return goalState.recentActivity.any { day ->
        day.pagesRead > 0 || day.goalCompleted || day.minutesRead > 0 || day.completedCheckpoints > 0
    } || goalState.pagesReadToday > 0 ||
        goalState.pagesReadThisWeek > 0 ||
        goalState.currentStreak > 0 ||
        goalState.isWeeklyPlanCompleted
}

internal fun mrComicQuestFeedbackAction(
    searchActive: Boolean,
    feedback: AchievementQuestTransition,
    hintAction: MrComicDiscoveryAction?
): MrComicDiscoveryAction? {
    if (searchActive) return null
    if (feedback.nextAchievementId == null) return null
    if (hintAction == MrComicDiscoveryAction.OPEN_RECENT) return null
    return hintAction
}

internal fun mrComicShowSearchContextCard(
    searchActive: Boolean,
    hasStagePreview: Boolean,
    hasQuestFeedback: Boolean
): Boolean = searchActive && !hasStagePreview && !hasQuestFeedback

internal fun mrComicUseCompactSupportCards(
    searchActive: Boolean,
    hasStagePreview: Boolean,
    hasQuestFeedback: Boolean
): Boolean = searchActive || hasStagePreview || hasQuestFeedback

internal fun formatQuoteDate(timestamp: Long, language: String): String {
    val pattern = when (language) {
        "en" -> "MMM d"
        "ja", "zh", "ko" -> "yyyy-MM-dd"
        else -> "dd.MM.yyyy"
    }
    val locale = when (language) {
        "ru", "en", "ja", "zh", "ko" -> Locale.forLanguageTag(language)
        else -> Locale.getDefault()
    }
    return SimpleDateFormat(pattern, locale).format(Date(timestamp))
}
