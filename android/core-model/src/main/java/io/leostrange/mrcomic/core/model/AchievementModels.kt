package io.leostrange.mrcomic.core.model

/**
 * Типы достижений в системе геймификации
 */
enum class AchievementCategory {
    READING,        // Достижения связанные с чтением
    COLLECTION,     // Достижения связанные с коллекцией
    STREAK,         // Достижения связанные с сериями
    EXPLORATION,    // Достижения связанные с исследованием
    MILESTONE       // Веховые достижения
}

/**
 * Редкость достижения
 */
enum class AchievementRarity {
    COMMON,         // Обычное
    UNCOMMON,       // Необычное
    RARE,           // Редкое
    EPIC,           // Эпическое
    LEGENDARY       // Легендарное
}

/**
 * Статус достижения
 */
enum class AchievementStatus {
    LOCKED,         // Заблокировано
    UNLOCKED,       // Разблокировано
    CLAIMED         // Получено
}

/**
 * Модель достижения
 */
data class Achievement(
    val id: String,
    val category: AchievementCategory,
    val rarity: AchievementRarity,
    val title: String,
    val description: String,
    val iconRes: String? = null,
    val xpReward: Int = 0,
    val requirement: AchievementRequirement,
    val isSecret: Boolean = false
)

/**
 * Требования для получения достижения
 */
sealed class AchievementRequirement {
    data class PagesRead(val pages: Int) : AchievementRequirement()
    data class TitlesCompleted(val titles: Int) : AchievementRequirement()
    data class StreakDays(val days: Int) : AchievementRequirement()
    data class ReadingTimeMinutes(val minutes: Int) : AchievementRequirement()
    data class GenresExplored(val genres: Int) : AchievementRequirement()
    data class SingleSessionPages(val pages: Int) : AchievementRequirement()
    data class WeeklyGoalCompleted(val weeks: Int) : AchievementRequirement()
    data class MascotStage(
        val stage: io.leostrange.mrcomic.core.model.MascotStage,
    ) : AchievementRequirement()
    data class TotalXp(val xp: Int) : AchievementRequirement()
    data class And(val requirements: List<AchievementRequirement>) : AchievementRequirement()
    data class Or(val requirements: List<AchievementRequirement>) : AchievementRequirement()
}

/**
 * Прогресс достижения
 */
data class AchievementProgress(
    val achievementId: String,
    val status: AchievementStatus,
    val currentProgress: Float,  // 0.0 - 1.0
    val unlockedAt: Long? = null,
    val claimedAt: Long? = null
)

/**
 * Состояние всех достижений пользователя
 */
data class UserAchievements(
    val achievements: List<AchievementProgress>,
    val totalXpEarned: Int,
    val unlockedCount: Int,
    val totalCount: Int
) {
    val completionRate: Float
        get() = if (totalCount == 0) 0f else unlockedCount.toFloat() / totalCount.toFloat()
}

/**
 * Уведомление о новом достижении
 */
data class AchievementNotification(
    val achievement: Achievement,
    val xpEarned: Int,
    val timestamp: Long
)
