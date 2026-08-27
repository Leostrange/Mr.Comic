package io.leostrange.mrcomic.feature.settings.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import io.leostrange.mrcomic.core.domain.analytics.AchievementTracker
import io.leostrange.mrcomic.core.domain.analytics.GamificationIntegration
import io.leostrange.mrcomic.core.domain.analytics.MascotProgressState
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.model.AchievementNotification
import io.leostrange.mrcomic.core.model.UserAchievements
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.launch
import javax.inject.Inject

/**
 * Состояние экрана геймификации
 */
data class GamificationUiState(
    val userAchievements: UserAchievements? = null,
    val mascotProgress: MascotProgressState? = null,
    val goalState: DailyReadingGoalState? = null,
    val notifications: List<AchievementNotification> = emptyList(),
    val isLoading: Boolean = true,
    val error: String? = null
)

/**
 * ViewModel для экранов геймификации
 */
@HiltViewModel
class GamificationViewModel @Inject constructor(
    private val gamificationIntegration: GamificationIntegration,
    private val achievementTracker: AchievementTracker
) : ViewModel() {

    private val _uiState = MutableStateFlow(GamificationUiState())
    val uiState: StateFlow<GamificationUiState> = _uiState.asStateFlow()

    init {
        loadData()
        observeNotifications()
    }

    /**
     * Загрузить данные
     */
    private fun loadData() {
        viewModelScope.launch {
            try {
                _uiState.value = _uiState.value.copy(isLoading = true)

                // Подписываемся на изменения достижений
                combine(
                    gamificationIntegration.getUserAchievements(),
                    achievementTracker.userProgress
                ) { achievements, progress ->
                    GamificationUiState(
                        userAchievements = achievements,
                        mascotProgress = MascotProgressState(
                            approxPagesRead = progress.pagesRead,
                            completedTitles = progress.titlesCompleted,
                            xp = progress.totalXp,
                            stage = progress.mascotStage
                        ),
                        goalState = DailyReadingGoalState(
                            pagesReadToday = progress.pagesRead,
                            currentStreak = progress.streakDays
                        ),
                        isLoading = false
                    )
                }.collect { state ->
                    _uiState.value = state
                }
            } catch (e: Exception) {
                _uiState.value = _uiState.value.copy(
                    isLoading = false,
                    error = e.message
                )
            }
        }
    }

    /**
     * Наблюдать за уведомлениями
     */
    private fun observeNotifications() {
        viewModelScope.launch {
            gamificationIntegration.getAchievementNotifications().collect { notifications ->
                _uiState.value = _uiState.value.copy(notifications = notifications)
            }
        }
    }

    /**
     * Очистить уведомление
     */
    fun dismissNotification(notification: AchievementNotification) {
        gamificationIntegration.clearNotifications()
    }

    /**
     * Обновить прогресс чтения
     */
    fun updateReadingProgress(pagesRead: Int, sessionPages: Int = 0) {
        achievementTracker.updatePagesRead(pagesRead)
        if (sessionPages > 0) {
            gamificationIntegration.recordSingleSessionReading(sessionPages)
        }
    }

    /**
     * Обновить время чтения
     */
    fun updateReadingTime(durationMillis: Long) {
        gamificationIntegration.recordReadingTime(durationMillis)
    }

    /**
     * Обновить завершённые тайтлы
     */
    fun updateCompletedTitles(count: Int) {
        achievementTracker.updateTitlesCompleted(count)
    }

    /**
     * Обновить серию дней
     */
    fun updateStreak(days: Int) {
        achievementTracker.updateStreakDays(days)
    }

    /**
     * Обновить стадию маскота
     */
    fun updateMascotStage(stage: io.leostrange.mrcomic.core.model.MascotStage) {
        achievementTracker.updateMascotStage(stage)
    }

    /**
     * Обновить общий XP
     */
    fun updateTotalXp(xp: Int) {
        achievementTracker.updateTotalXp(xp)
    }
}
