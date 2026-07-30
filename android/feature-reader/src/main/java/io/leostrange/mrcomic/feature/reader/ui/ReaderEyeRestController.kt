package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.launch

/**
 * Manages the eye-rest reminder timer: starts/stops the periodic reminder
 * based on user settings and reader state.
 */
internal class ReaderEyeRestController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val readerPreferences: UserPreferences,
    private val _eyeRestReminder: MutableSharedFlow<Int>
) {
    private var eyeRestJob: Job? = null

    fun snoozeEyeRestReminder(minutes: Int = 5) {
        restartEyeRestTimer(initialDelayMinutes = minutes.coerceAtLeast(1))
    }

    fun restartEyeRestTimer(initialDelayMinutes: Int? = null) {
        eyeRestJob?.cancel()
        val state = _uiState.value
        if (!state.eyeRestEnabled || state.eyeRestMinutes <= 0 || state.comic == null || state.isLoading || state.error != null) {
            return
        }
        eyeRestJob = viewModelScope.launch {
            var nextDelayMinutes = initialDelayMinutes ?: state.eyeRestMinutes
            while (true) {
                delay(nextDelayMinutes * 60_000L)
                val currentState = _uiState.value
                if (!currentState.eyeRestEnabled || currentState.eyeRestMinutes <= 0 || currentState.comic == null || currentState.isLoading || currentState.error != null) {
                    break
                }
                _eyeRestReminder.emit(currentState.eyeRestMinutes)
                nextDelayMinutes = currentState.eyeRestMinutes
            }
        }
    }

    fun cancel() {
        eyeRestJob?.cancel()
    }
}
