package com.example.feature.onboarding

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

/**
 * ViewModel для управления состоянием онбординга
 */
@HiltViewModel
class OnboardingViewModel @Inject constructor(
    private val userPreferences: UserPreferences
) : ViewModel() {

    /**
     * Состояние текущего шага онбординга
     */
    private val _currentStep = MutableStateFlow(OnboardingStep.WELCOME)
    val currentStep: StateFlow<OnboardingStep> = _currentStep.asStateFlow()

    /**
     * Общее количество шагов
     */
    val totalSteps = OnboardingStep.entries.size

    /**
     * Переход к следующему шагу
     */
    fun nextStep() {
        val nextStep = when (_currentStep.value) {
            OnboardingStep.WELCOME -> OnboardingStep.FEATURES
            OnboardingStep.FEATURES -> OnboardingStep.FINISH
            OnboardingStep.FINISH -> OnboardingStep.FINISH // Уже последний шаг
        }
        _currentStep.value = nextStep
    }

    /**
     * Переход к предыдущему шагу
     */
    fun previousStep() {
        val previousStep = when (_currentStep.value) {
            OnboardingStep.WELCOME -> OnboardingStep.WELCOME // Уже первый шаг
            OnboardingStep.FEATURES -> OnboardingStep.WELCOME
            OnboardingStep.FINISH -> OnboardingStep.FEATURES
        }
        _currentStep.value = previousStep
    }

    /**
     * Завершение онбординга и сохранение статуса
     */
    fun completeOnboarding() {
        viewModelScope.launch {
            userPreferences.set(PreferencesKeys.APP_ONBOARDING_COMPLETED, true)
        }
    }

    /**
     * Проверка, завершен ли онбординг
     */
    fun isOnboardingCompleted(): kotlinx.coroutines.flow.Flow<Boolean> {
        return userPreferences.get(PreferencesKeys.APP_ONBOARDING_COMPLETED, false)
    }
}

/**
 * Шаги онбординга
 */
enum class OnboardingStep {
    WELCOME,
    FEATURES,
    FINISH
}