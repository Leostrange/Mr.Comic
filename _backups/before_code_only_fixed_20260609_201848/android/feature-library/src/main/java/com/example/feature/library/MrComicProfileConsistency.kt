package com.example.feature.library

import com.example.feature.library.components.LibraryAchievement
import com.example.feature.library.components.rememberedNextUnlockAchievement

internal data class MrComicAchievementSummary(
    val unlockedCount: Int,
    val visibleTotal: Int,
    val visiblePendingCount: Int,
    val hasUnlockedSecret: Boolean,
    val nextAchievement: LibraryAchievement?
) {
    val completionFraction: Float
        get() = if (visibleTotal <= 0) 0f else (unlockedCount.toFloat() / visibleTotal.toFloat()).coerceIn(0f, 1f)
}

internal fun resolveMrComicNextAchievementTarget(
    achievements: List<LibraryAchievement>,
    rememberedAchievementId: String?
): LibraryAchievement? = rememberedNextUnlockAchievement(
    achievements = achievements,
    rememberedAchievementId = rememberedAchievementId
)

internal fun resolveMrComicAchievementSummary(
    achievements: List<LibraryAchievement>,
    rememberedAchievementId: String?
): MrComicAchievementSummary {
    val visibleAchievements = achievements.filter { achievement ->
        !achievement.isSecret || achievement.isUnlocked
    }
    val unlockedCount = visibleAchievements.count { it.isUnlocked }
    val nextAchievement = resolveMrComicNextAchievementTarget(
        achievements = achievements,
        rememberedAchievementId = rememberedAchievementId
    )
    return MrComicAchievementSummary(
        unlockedCount = unlockedCount,
        visibleTotal = visibleAchievements.size,
        visiblePendingCount = visibleAchievements.count { !it.isUnlocked },
        hasUnlockedSecret = achievements.any { it.isSecret && it.isUnlocked },
        nextAchievement = nextAchievement
    )
}
