package io.leostrange.mrcomic.core.domain.analytics

import io.leostrange.mrcomic.core.model.WeeklyChallengeDefinitions
import io.leostrange.mrcomic.core.model.WeeklyChallengeProgress
import io.leostrange.mrcomic.core.model.WeeklyChallengeStatus
import io.leostrange.mrcomic.core.model.WeeklyChallengeType
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.combine
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Данные о прогрессе для еженедельных челленджей
 */
data class WeeklyChallengeData(
    val pagesReadThisWeek: Int = 0,
    val titlesCompletedThisWeek: Int = 0,
    val streakDays: Int = 0,
    val readingTimeMinutes: Int = 0,
    val dailyGoalCompletedDays: Int = 0
)

/**
 * Трекер еженедельных челленджей
 */
@Singleton
class WeeklyChallengeTracker @Inject constructor() {

    private val _progress = MutableStateFlow(WeeklyChallengeData())
    private val _challengeProgress = MutableStateFlow<Map<String, WeeklyChallengeProgress>>(emptyMap())

    /**
     * Текущий прогресс
     */
    val progress: Flow<WeeklyChallengeData> = _progress.asStateFlow()

    /**
     * Прогресс челленджей
     */
    val challengeProgress: Flow<List<WeeklyChallengeProgress>> = combine(
        _progress,
        _challengeProgress
    ) { data, progressMap ->
        WeeklyChallengeDefinitions.challenges.map { challenge ->
            val current = when (challenge.type) {
                WeeklyChallengeType.PAGES_READ -> data.pagesReadThisWeek
                WeeklyChallengeType.TITLES_COMPLETED -> data.titlesCompletedThisWeek
                WeeklyChallengeType.STREAK_DAYS -> data.streakDays
                WeeklyChallengeType.READING_TIME -> data.readingTimeMinutes
                WeeklyChallengeType.DAILY_GOAL -> data.dailyGoalCompletedDays
                WeeklyChallengeType.NEW_GENRE -> 0 // TODO: Implement genre tracking
            }

            val existing = progressMap[challenge.id]
            val status = when {
                existing?.status == WeeklyChallengeStatus.COMPLETED -> WeeklyChallengeStatus.COMPLETED
                current >= challenge.target -> WeeklyChallengeStatus.COMPLETED
                System.currentTimeMillis() > challenge.endDate -> WeeklyChallengeStatus.EXPIRED
                else -> WeeklyChallengeStatus.ACTIVE
            }

            WeeklyChallengeProgress(
                challengeId = challenge.id,
                current = current,
                target = challenge.target,
                status = status,
                completedAt = if (status == WeeklyChallengeStatus.COMPLETED) {
                    existing?.completedAt ?: System.currentTimeMillis()
                } else null
            )
        }
    }

    /**
     * Обновить прогресс
     */
    fun updateProgress(data: WeeklyChallengeData) {
        _progress.value = data
        checkForCompletedChallenges(data)
    }

    /**
     * Обновить конкретную метрику
     */
    fun updatePagesRead(pages: Int) {
        _progress.value = _progress.value.copy(pagesReadThisWeek = pages)
        checkForCompletedChallenges(_progress.value)
    }

    fun updateTitlesCompleted(titles: Int) {
        _progress.value = _progress.value.copy(titlesCompletedThisWeek = titles)
        checkForCompletedChallenges(_progress.value)
    }

    fun updateStreakDays(days: Int) {
        _progress.value = _progress.value.copy(streakDays = days)
        checkForCompletedChallenges(_progress.value)
    }

    fun updateReadingTime(minutes: Int) {
        _progress.value = _progress.value.copy(readingTimeMinutes = minutes)
        checkForCompletedChallenges(_progress.value)
    }

    fun updateDailyGoalCompletedDays(days: Int) {
        _progress.value = _progress.value.copy(dailyGoalCompletedDays = days)
        checkForCompletedChallenges(_progress.value)
    }

    /**
     * Проверить завершённые челленджи
     */
    private fun checkForCompletedChallenges(data: WeeklyChallengeData) {
        val currentProgress = _challengeProgress.value.toMutableMap()

        WeeklyChallengeDefinitions.challenges.forEach { challenge ->
            if (!currentProgress.containsKey(challenge.id)) {
                val current = when (challenge.type) {
                    WeeklyChallengeType.PAGES_READ -> data.pagesReadThisWeek
                    WeeklyChallengeType.TITLES_COMPLETED -> data.titlesCompletedThisWeek
                    WeeklyChallengeType.STREAK_DAYS -> data.streakDays
                    WeeklyChallengeType.READING_TIME -> data.readingTimeMinutes
                    WeeklyChallengeType.DAILY_GOAL -> data.dailyGoalCompletedDays
                    WeeklyChallengeType.NEW_GENRE -> 0
                }

                if (current >= challenge.target) {
                    currentProgress[challenge.id] = WeeklyChallengeProgress(
                        challengeId = challenge.id,
                        current = current,
                        target = challenge.target,
                        status = WeeklyChallengeStatus.COMPLETED,
                        completedAt = System.currentTimeMillis()
                    )
                }
            }
        }

        _challengeProgress.value = currentProgress
    }

    /**
     * Получить завершённые челленджи
     */
    fun getCompletedChallenges(): List<WeeklyChallengeProgress> {
        return _challengeProgress.value.values.filter {
            it.status == WeeklyChallengeStatus.COMPLETED
        }
    }

    /**
     * Получить общий XP за завершённые челленджи
     */
    fun getTotalXpEarned(): Int {
        return getCompletedChallenges().sumOf { progress ->
            WeeklyChallengeDefinitions.getById(progress.challengeId)?.xpReward ?: 0
        }
    }

    /**
     * Сбросить прогресс (вызывается в начале новой недели)
     */
    fun resetWeeklyProgress() {
        _progress.value = WeeklyChallengeData()
        _challengeProgress.value = emptyMap()
    }
}
