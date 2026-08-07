package io.leostrange.mrcomic.feature.library.components

import androidx.compose.ui.graphics.Color

// ─────────────────────────────────────────────────────────────────────────────
// Achievement definitions
// ─────────────────────────────────────────────────────────────────────────────

enum class AchievementId {
    FIRST_BOOK,      // 1 комикс
    READER,          // 10 комиксов
    COLLECTOR,       // 25 комиксов
    FIRST_COMPLETE,  // 1 прочитан
    MARATHON,        // 20 прочитано
    AUTHOR_FAN,      // 5 книг одного автора
    GENRE_GOURMET,   // 3 разных жанра
    BOOKMARKER,      // добавил в избранное
    SECRET_CAT       // пасхалка 🐱
}

data class LibraryAchievement(
    val id: AchievementId,
    val title: String,
    val description: String,
    val emoji: String,
    val isUnlocked: Boolean,
    val isSecret: Boolean = false,
    val progressCurrent: Int? = null,
    val progressTarget: Int? = null,
    val gradientStart: Color = Color(0xFF6C63FF),
    val gradientEnd: Color = Color(0xFFFF6584)
) {
    val progressFraction: Float
        get() = when {
            progressCurrent == null || progressTarget == null || progressTarget <= 0 -> 0f
            else -> (progressCurrent.toFloat() / progressTarget.toFloat()).coerceIn(0f, 1f)
        }

    val remainingSteps: Int?
        get() = when {
            progressCurrent == null || progressTarget == null -> null
            else -> (progressTarget - progressCurrent).coerceAtLeast(0)
        }
}

data class AchievementQuestTransition(
    val tone: AchievementQuestFeedbackTone,
    val previousAchievementId: AchievementId,
    val previousTitle: String,
    val nextAchievementId: AchievementId?,
    val nextTitle: String?,
    val previousCompleted: Boolean
)

enum class AchievementQuestFeedbackTone {
    COMPLETED,
    SWITCHED,
    CLEARED
}

// ─────────────────────────────────────────────────────────────────────────────
// Achievement string bundle (passed from LocalStrings)
// ─────────────────────────────────────────────────────────────────────────────

data class AchievementStrings(
    val achFirstBook: String,
    val achFirstBookDesc: String,
    val achReader: String,
    val achReaderDesc: String,
    val achCollector: String,
    val achCollectorDesc: String,
    val achFirstComplete: String,
    val achFirstCompleteDesc: String,
    val achMarathon: String,
    val achMarathonDesc: String,
    val achAuthorFan: String,
    val achAuthorFanDesc: String,
    val achGenreGourmet: String,
    val achGenreGourmetDesc: String,
    val achBookmarker: String,
    val achBookmarkerDesc: String,
    val achSecretCat: String,
    val achSecretCatDesc: String,
    val achSecretHint: String
)
