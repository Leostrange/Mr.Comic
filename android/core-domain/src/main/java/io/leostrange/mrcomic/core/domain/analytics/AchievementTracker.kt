package io.leostrange.mrcomic.core.domain.analytics

import io.leostrange.mrcomic.core.model.Achievement
import io.leostrange.mrcomic.core.model.AchievementDefinitions
import io.leostrange.mrcomic.core.model.AchievementNotification
import io.leostrange.mrcomic.core.model.AchievementProgress
import io.leostrange.mrcomic.core.model.AchievementRequirement
import io.leostrange.mrcomic.core.model.AchievementStatus
import io.leostrange.mrcomic.core.model.MascotStage
import io.leostrange.mrcomic.core.model.UserAchievements
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.map
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Данные о прогрессе пользователя для проверки достижений
 */
data class UserProgressData(
    val pagesRead: Int = 0,
    val titlesCompleted: Int = 0,
    val streakDays: Int = 0,
    val readingTimeMinutes: Int = 0,
    val singleSessionPages: Int = 0,
    val weeklyGoalCompleted: Int = 0,
    val mascotStage: MascotStage = MascotStage.CHILD,
    val totalXp: Int = 0
)

/**
 * Трекер достижений
 */
@Singleton
class AchievementTracker @Inject constructor() {

    private val _userProgress = MutableStateFlow(UserProgressData())
    private val _unlockedAchievements = MutableStateFlow<Map<String, Long>>(emptyMap())
    private val _notifications = MutableStateFlow<List<AchievementNotification>>(emptyList())

    /**
     * Текущий прогресс пользователя
     */
    val userProgress: StateFlow<UserProgressData> = _userProgress.asStateFlow()

    /**
     * Разблокированные достижения (achievementId -> timestamp)
     */
    val unlockedAchievements: Flow<Map<String, Long>> = _unlockedAchievements.asStateFlow()

    /**
     * Уведомления о новых достижениях
     */
    val notifications: Flow<List<AchievementNotification>> = _notifications.asStateFlow()

    /**
     * Прогресс всех достижений
     */
    val achievementProgress: Flow<List<AchievementProgress>> = combine(
        _userProgress,
        _unlockedAchievements
    ) { progress, unlocked ->
        AchievementDefinitions.allAchievements.map { achievement ->
            val isUnlocked = unlocked.containsKey(achievement.id)
            val currentProgress = calculateProgress(achievement, progress)
            AchievementProgress(
                achievementId = achievement.id,
                status = when {
                    isUnlocked -> AchievementStatus.UNLOCKED
                    currentProgress >= 1f -> AchievementStatus.UNLOCKED
                    else -> AchievementStatus.LOCKED
                },
                currentProgress = currentProgress,
                unlockedAt = unlocked[achievement.id]
            )
        }
    }

    /**
     * Общая статистика достижений
     */
    val userAchievements: Flow<UserAchievements> = combine(
        achievementProgress,
        _unlockedAchievements
    ) { progressList, unlocked ->
        val unlockedCount = progressList.count { it.status == AchievementStatus.UNLOCKED }
        val totalXp = unlocked.keys.sumOf { id ->
            AchievementDefinitions.getById(id)?.xpReward ?: 0
        }
        UserAchievements(
            achievements = progressList,
            totalXpEarned = totalXp,
            unlockedCount = unlockedCount,
            totalCount = AchievementDefinitions.allAchievements.size
        )
    }

    /**
     * Обновить прогресс пользователя
     */
    fun updateProgress(progress: UserProgressData) {
        _userProgress.value = progress
        checkForNewAchievements(progress)
    }

    /**
     * Обновить конкретную метрику
     */
    fun updatePagesRead(pages: Int) {
        _userProgress.value = _userProgress.value.copy(pagesRead = pages)
        checkForNewAchievements(_userProgress.value)
    }

    fun updateTitlesCompleted(titles: Int) {
        _userProgress.value = _userProgress.value.copy(titlesCompleted = titles)
        checkForNewAchievements(_userProgress.value)
    }

    fun updateStreakDays(days: Int) {
        _userProgress.value = _userProgress.value.copy(streakDays = days)
        checkForNewAchievements(_userProgress.value)
    }

    fun updateReadingTime(minutes: Int) {
        _userProgress.value = _userProgress.value.copy(readingTimeMinutes = minutes)
        checkForNewAchievements(_userProgress.value)
    }

    fun updateSingleSessionPages(pages: Int) {
        _userProgress.value = _userProgress.value.copy(singleSessionPages = pages)
        checkForNewAchievements(_userProgress.value)
    }

    fun updateWeeklyGoalCompleted(count: Int) {
        _userProgress.value = _userProgress.value.copy(weeklyGoalCompleted = count)
        checkForNewAchievements(_userProgress.value)
    }

    fun updateMascotStage(stage: MascotStage) {
        _userProgress.value = _userProgress.value.copy(mascotStage = stage)
        checkForNewAchievements(_userProgress.value)
    }

    fun updateTotalXp(xp: Int) {
        _userProgress.value = _userProgress.value.copy(totalXp = xp)
        checkForNewAchievements(_userProgress.value)
    }

    /**
     * Проверить и разблокировать новые достижения
     */
    private fun checkForNewAchievements(progress: UserProgressData) {
        val currentUnlocked = _unlockedAchievements.value.toMutableMap()
        val newNotifications = mutableListOf<AchievementNotification>()

        AchievementDefinitions.allAchievements.forEach { achievement ->
            if (!currentUnlocked.containsKey(achievement.id)) {
                val isUnlocked = checkRequirement(achievement.requirement, progress)
                if (isUnlocked) {
                    currentUnlocked[achievement.id] = System.currentTimeMillis()
                    newNotifications.add(
                        AchievementNotification(
                            achievement = achievement,
                            xpEarned = achievement.xpReward,
                            timestamp = System.currentTimeMillis()
                        )
                    )
                }
            }
        }

        if (newNotifications.isNotEmpty()) {
            _unlockedAchievements.value = currentUnlocked
            _notifications.value = _notifications.value + newNotifications
        }
    }

    /**
     * Проверить выполнение требования
     */
    private fun checkRequirement(
        requirement: AchievementRequirement,
        progress: UserProgressData
    ): Boolean = when (requirement) {
        is AchievementRequirement.PagesRead -> progress.pagesRead >= requirement.pages
        is AchievementRequirement.TitlesCompleted -> progress.titlesCompleted >= requirement.titles
        is AchievementRequirement.StreakDays -> progress.streakDays >= requirement.days
        is AchievementRequirement.ReadingTimeMinutes -> progress.readingTimeMinutes >= requirement.minutes
        is AchievementRequirement.GenresExplored -> false // TODO: Implement genre tracking
        is AchievementRequirement.SingleSessionPages -> progress.singleSessionPages >= requirement.pages
        is AchievementRequirement.WeeklyGoalCompleted -> progress.weeklyGoalCompleted >= requirement.weeks
        is AchievementRequirement.MascotStage -> progress.mascotStage.ordinal >= requirement.stage.ordinal
        is AchievementRequirement.TotalXp -> progress.totalXp >= requirement.xp
        is AchievementRequirement.And -> requirement.requirements.all { checkRequirement(it, progress) }
        is AchievementRequirement.Or -> requirement.requirements.any { checkRequirement(it, progress) }
    }

    /**
     * Рассчитать прогресс достижения (0.0 - 1.0)
     */
    private fun calculateProgress(
        achievement: Achievement,
        progress: UserProgressData
    ): Float {
        if (_unlockedAchievements.value.containsKey(achievement.id)) return 1f

        return when (val req = achievement.requirement) {
            is AchievementRequirement.PagesRead ->
                (progress.pagesRead.toFloat() / req.pages).coerceIn(0f, 1f)
            is AchievementRequirement.TitlesCompleted ->
                (progress.titlesCompleted.toFloat() / req.titles).coerceIn(0f, 1f)
            is AchievementRequirement.StreakDays ->
                (progress.streakDays.toFloat() / req.days).coerceIn(0f, 1f)
            is AchievementRequirement.ReadingTimeMinutes ->
                (progress.readingTimeMinutes.toFloat() / req.minutes).coerceIn(0f, 1f)
            is AchievementRequirement.SingleSessionPages ->
                (progress.singleSessionPages.toFloat() / req.pages).coerceIn(0f, 1f)
            is AchievementRequirement.WeeklyGoalCompleted ->
                (progress.weeklyGoalCompleted.toFloat() / req.weeks).coerceIn(0f, 1f)
            is AchievementRequirement.MascotStage ->
                if (progress.mascotStage.ordinal >= req.stage.ordinal) 1f else 0f
            is AchievementRequirement.TotalXp ->
                (progress.totalXp.toFloat() / req.xp).coerceIn(0f, 1f)
            is AchievementRequirement.And ->
                req.requirements.minOf { calculateProgress(achievement.copy(requirement = it), progress) }
            is AchievementRequirement.Or ->
                req.requirements.maxOf { calculateProgress(achievement.copy(requirement = it), progress) }
            is AchievementRequirement.GenresExplored -> 0f // TODO: Implement genre tracking
        }
    }

    /**
     * Очистить уведомления
     */
    fun clearNotifications() {
        _notifications.value = emptyList()
    }

    /**
     * Отметить достижение как полученное
     */
    fun claimAchievement(achievementId: String) {
        // В текущей реализации достижения автоматически считаются полученными
        // Можно расширить для подтверждения получения награды
    }
}
