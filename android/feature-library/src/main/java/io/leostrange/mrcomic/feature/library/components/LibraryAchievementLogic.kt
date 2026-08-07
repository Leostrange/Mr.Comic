package io.leostrange.mrcomic.feature.library.components

import androidx.compose.ui.graphics.Color

fun computeAchievements(
    totalComics: Int,
    completedComics: Int,
    bookmarkedComics: Int,
    allAuthors: List<String?>,
    allGenres: List<String?>,
    secretUnlocked: Boolean,
    strings: AchievementStrings
): List<LibraryAchievement> {
    val authorProgress = maxBooksBySingleAuthor(allAuthors)
    val genreProgress = countDistinctGenres(allGenres)

    return listOf(
    LibraryAchievement(
        id = AchievementId.FIRST_BOOK,
        title = strings.achFirstBook,
        description = strings.achFirstBookDesc,
        emoji = "📖",
        isUnlocked = totalComics >= 1,
        progressCurrent = totalComics.coerceAtMost(1),
        progressTarget = 1,
        gradientStart = Color(0xFF43CEA2),
        gradientEnd = Color(0xFF185A9D)
    ),
    LibraryAchievement(
        id = AchievementId.READER,
        title = strings.achReader,
        description = strings.achReaderDesc,
        emoji = "📚",
        isUnlocked = totalComics >= 10,
        progressCurrent = totalComics.coerceAtMost(10),
        progressTarget = 10,
        gradientStart = Color(0xFFFFB347),
        gradientEnd = Color(0xFFFF6B6B)
    ),
    LibraryAchievement(
        id = AchievementId.COLLECTOR,
        title = strings.achCollector,
        description = strings.achCollectorDesc,
        emoji = "🏆",
        isUnlocked = totalComics >= 25,
        progressCurrent = totalComics.coerceAtMost(25),
        progressTarget = 25,
        gradientStart = Color(0xFFFFD700),
        gradientEnd = Color(0xFFFFA500)
    ),
    LibraryAchievement(
        id = AchievementId.FIRST_COMPLETE,
        title = strings.achFirstComplete,
        description = strings.achFirstCompleteDesc,
        emoji = "✅",
        isUnlocked = completedComics >= 1,
        progressCurrent = completedComics.coerceAtMost(1),
        progressTarget = 1,
        gradientStart = Color(0xFF56AB2F),
        gradientEnd = Color(0xFFA8E063)
    ),
    LibraryAchievement(
        id = AchievementId.MARATHON,
        title = strings.achMarathon,
        description = strings.achMarathonDesc,
        emoji = "🌟",
        isUnlocked = completedComics >= 20,
        progressCurrent = completedComics.coerceAtMost(20),
        progressTarget = 20,
        gradientStart = Color(0xFF667EEA),
        gradientEnd = Color(0xFF764BA2)
    ),
    LibraryAchievement(
        id = AchievementId.AUTHOR_FAN,
        title = strings.achAuthorFan,
        description = strings.achAuthorFanDesc,
        emoji = "✍️",
        isUnlocked = authorProgress >= 5,
        progressCurrent = authorProgress.coerceAtMost(5),
        progressTarget = 5,
        gradientStart = Color(0xFFFF416C),
        gradientEnd = Color(0xFFFF4B2B)
    ),
    LibraryAchievement(
        id = AchievementId.GENRE_GOURMET,
        title = strings.achGenreGourmet,
        description = strings.achGenreGourmetDesc,
        emoji = "🎭",
        isUnlocked = genreProgress >= 3,
        progressCurrent = genreProgress.coerceAtMost(3),
        progressTarget = 3,
        gradientStart = Color(0xFFFC5C7D),
        gradientEnd = Color(0xFF6A3093)
    ),
    LibraryAchievement(
        id = AchievementId.BOOKMARKER,
        title = strings.achBookmarker,
        description = strings.achBookmarkerDesc,
        emoji = "🔖",
        isUnlocked = bookmarkedComics >= 1,
        progressCurrent = bookmarkedComics.coerceAtMost(1),
        progressTarget = 1,
        gradientStart = Color(0xFF4FACFE),
        gradientEnd = Color(0xFF00F2FE)
    ),
    LibraryAchievement(
        id = AchievementId.SECRET_CAT,
        title = if (secretUnlocked) strings.achSecretCat else "???",
        description = if (secretUnlocked) strings.achSecretCatDesc else strings.achSecretHint,
        emoji = if (secretUnlocked) "🐱" else "🔮",
        isUnlocked = secretUnlocked,
        isSecret = true,
        gradientStart = Color(0xFFDA22FF),
        gradientEnd = Color(0xFF9733EE)
    )
    )
}

fun nextUnlockAchievement(achievements: List<LibraryAchievement>): LibraryAchievement? =
    achievements
        .filter { !it.isUnlocked && !it.isSecret && it.progressTarget != null && it.progressTarget > 0 }
        .sortedWith(
            compareByDescending<LibraryAchievement> { it.progressFraction }
                .thenBy { it.remainingSteps ?: Int.MAX_VALUE }
                .thenBy { it.progressTarget ?: Int.MAX_VALUE }
        )
        .firstOrNull()

fun rememberedNextUnlockAchievement(
    achievements: List<LibraryAchievement>,
    rememberedAchievementId: String?
): LibraryAchievement? {
    val rememberedId = rememberedAchievementId
        ?.trim()
        ?.takeIf { it.isNotEmpty() }
        ?.let { runCatching { AchievementId.valueOf(it) }.getOrNull() }

    val remembered = rememberedId?.let { id ->
        achievements.firstOrNull { achievement ->
            achievement.id == id &&
                !achievement.isUnlocked &&
                !achievement.isSecret &&
                achievement.progressTarget != null &&
                achievement.progressTarget > 0
        }
    }

    return remembered ?: nextUnlockAchievement(achievements)
}

fun questTransitionFeedback(
    achievements: List<LibraryAchievement>,
    rememberedAchievementId: String?,
    nextAchievement: LibraryAchievement?
): AchievementQuestTransition? {
    val rememberedId = rememberedAchievementId
        ?.trim()
        ?.takeIf { it.isNotEmpty() }
        ?.let { runCatching { AchievementId.valueOf(it) }.getOrNull() }
        ?: return null

    if (nextAchievement?.id == rememberedId) return null

    val previousAchievement = achievements.firstOrNull { it.id == rememberedId } ?: return null
    val tone = when {
        previousAchievement.isUnlocked -> AchievementQuestFeedbackTone.COMPLETED
        nextAchievement != null -> AchievementQuestFeedbackTone.SWITCHED
        else -> AchievementQuestFeedbackTone.CLEARED
    }

    return AchievementQuestTransition(
        tone = tone,
        previousAchievementId = previousAchievement.id,
        previousTitle = previousAchievement.title,
        nextAchievementId = nextAchievement?.id,
        nextTitle = nextAchievement?.title,
        previousCompleted = previousAchievement.isUnlocked
    )
}

private fun maxBooksBySingleAuthor(allAuthors: List<String?>): Int =
    allAuthors
        .filterNotNull()
        .map { it.trim() }
        .filter { it.isNotEmpty() }
        .groupingBy { it }
        .eachCount()
        .maxOfOrNull { it.value }
        ?: 0

private fun countDistinctGenres(allGenres: List<String?>): Int =
    allGenres
        .filterNotNull()
        .flatMap { raw ->
            raw.split(",", ";", "/")
                .map { it.trim().lowercase() }
        }
        .filter { it.isNotEmpty() }
        .toSet()
        .size
