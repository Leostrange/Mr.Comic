package io.leostrange.mrcomic.core.domain.analytics

import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.model.Comic
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.launch
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Интеграция системы достижений с существующими системами геймификации
 */
@Singleton
class GamificationIntegration @Inject constructor(
    private val achievementTracker: AchievementTracker,
    private val mascotProgressCalculator: MascotProgressCalculator,
    private val dailyReadingGoalStore: DailyReadingGoalStore
) {
    /**
     * Инициализировать интеграцию
     */
    fun initialize(scope: CoroutineScope) {
        // Подписываемся на изменения в ежедневных целях
        scope.launch {
            dailyReadingGoalStore.goalState.collect { goalState ->
                updateFromGoalState(goalState)
            }
        }
    }

    /**
     * Обновить данные о достижениях на основе состояния ежедневных целей
     */
    private fun updateFromGoalState(goalState: DailyReadingGoalState) {
        // Обновляем прогресс страниц
        achievementTracker.updatePagesRead(goalState.pagesReadToday)

        // Обновляем серии
        achievementTracker.updateStreakDays(goalState.currentStreak)

        // Обновляем недельные цели
        if (goalState.isWeeklyPlanCompleted) {
            achievementTracker.updateWeeklyGoalCompleted(
                achievementTracker.userProgress.value.weeklyGoalCompleted + 1
            )
        }
    }

    /**
     * Обновить данные о достижениях на основе прогресса маскота
     */
    fun updateFromMascotProgress(progress: MascotProgressState) {
        achievementTracker.updateMascotStage(progress.stage)
        achievementTracker.updateTotalXp(progress.xp)
        achievementTracker.updatePagesRead(progress.approxPagesRead)
        achievementTracker.updateTitlesCompleted(progress.completedTitles)
    }

    /**
     * Обновить данные о достижениях на основе списка комиксов
     */
    fun updateFromComics(comics: List<Comic>) {
        val completedTitles = comics.count { it.isCompleted }
        achievementTracker.updateTitlesCompleted(completedTitles)
    }

    /**
     * Записать время чтения
     */
    fun recordReadingTime(durationMillis: Long) {
        val minutes = (durationMillis / 60_000).toInt()
        if (minutes > 0) {
            achievementTracker.updateReadingTime(
                achievementTracker.userProgress.value.readingTimeMinutes + minutes
            )
        }
    }

    /**
     * Записать чтение за одну сессию
     */
    fun recordSingleSessionReading(pages: Int) {
        val currentMax = achievementTracker.userProgress.value.singleSessionPages
        if (pages > currentMax) {
            achievementTracker.updateSingleSessionPages(pages)
        }
    }

    /**
     * Получить поток уведомлений о достижениях
     */
    fun getAchievementNotifications(): Flow<List<io.leostrange.mrcomic.core.model.AchievementNotification>> {
        return achievementTracker.notifications
    }

    /**
     * Очистить уведомления
     */
    fun clearNotifications() {
        achievementTracker.clearNotifications()
    }

    /**
     * Получить общий прогресс достижений
     */
    fun getUserAchievements(): Flow<io.leostrange.mrcomic.core.model.UserAchievements> {
        return achievementTracker.userAchievements
    }

    /**
     * Получить прогресс конкретного достижения
     */
    fun getAchievementProgress(achievementId: String): Flow<io.leostrange.mrcomic.core.model.AchievementProgress?> {
        return achievementTracker.achievementProgress.map { progressList ->
            progressList.find { it.achievementId == achievementId }
        }.distinctUntilChanged()
    }
}

/**
 * Расширение для Flow
 */
private fun <T, R> Flow<T>.map(transform: (T) -> R): Flow<R> {
    return kotlinx.coroutines.flow.flow {
        collect { value ->
            emit(transform(value))
        }
    }
}
