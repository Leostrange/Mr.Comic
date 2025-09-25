package com.example.mrcomic.feature.settings

import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.LibraryBackupManager
import com.example.core.data.repository.SettingsRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

/**
 * ViewModel для экрана настроек
 */
@HiltViewModel
class SettingsViewModel @Inject constructor(
    private val settingsRepository: SettingsRepository,
    private val backupManager: LibraryBackupManager
) : ViewModel() {

    // Текущие значения настроек
    val readingMode = settingsRepository.readingMode
    val scaleMode = settingsRepository.scaleMode
    val orientation = settingsRepository.orientation
    val theme = settingsRepository.theme
    val language = settingsRepository.language
    val cacheSize = settingsRepository.cacheSize
    val librarySize = settingsRepository.librarySize
    val targetLanguage = settingsRepository.targetLanguage
    val translationProvider = settingsRepository.translationProvider
    val ocrEngine = settingsRepository.ocrEngine
    val lastBackupUri = settingsRepository.lastBackupUri
    val lastBackupTime = settingsRepository.lastBackupTime

    private val _backupState = MutableStateFlow<BackupUiState>(BackupUiState.Idle)
    val backupState: StateFlow<BackupUiState> = _backupState.asStateFlow()

    // Методы сохранения
    fun setReadingMode(mode: String) {
        viewModelScope.launch {
            settingsRepository.setReadingMode(mode)
        }
    }

    fun setScaleMode(mode: String) {
        viewModelScope.launch {
            settingsRepository.setScaleMode(mode)
        }
    }

    fun setOrientation(mode: String) {
        viewModelScope.launch {
            settingsRepository.setOrientation(mode)
        }
    }

    fun setTheme(theme: String) {
        viewModelScope.launch {
            settingsRepository.setTheme(theme)
        }
    }

    fun setLanguage(language: String) {
        viewModelScope.launch {
            settingsRepository.setLanguage(language)
        }
    }

    fun setTargetLanguage(language: String) {
        viewModelScope.launch {
            settingsRepository.setTargetLanguage(language)
        }
    }

    fun setTranslationProvider(provider: String) {
        viewModelScope.launch {
            settingsRepository.setTranslationProvider(provider)
        }
    }

    fun setOcrEngine(engine: String) {
        viewModelScope.launch {
            settingsRepository.setOcrEngine(engine)
        }
    }

    fun exportBackup(uri: Uri) {
        viewModelScope.launch {
            _backupState.value = BackupUiState.InProgress
            val result = backupManager.exportBackup(uri)
            _backupState.value = result.fold(
                onSuccess = { summary ->
                    BackupUiState.Success("Создана резервная копия (${summary.comicsCount} комиксов)")
                },
                onFailure = { throwable ->
                    BackupUiState.Error(throwable.message ?: "Ошибка создания копии")
                }
            )
        }
    }

    fun importBackup(uri: Uri) {
        viewModelScope.launch {
            _backupState.value = BackupUiState.InProgress
            val result = backupManager.importBackup(uri)
            _backupState.value = result.fold(
                onSuccess = { summary ->
                    BackupUiState.Success(
                        if (summary.settingsRestored) {
                            "Восстановлено ${summary.comicsCount} комиксов и настройки"
                        } else {
                            "Восстановлено ${summary.comicsCount} комиксов"
                        }
                    )
                },
                onFailure = { throwable ->
                    BackupUiState.Error(throwable.message ?: "Ошибка восстановления")
                }
            )
        }
    }

    fun clearBackupState() {
        _backupState.value = BackupUiState.Idle
    }

    fun clearCache() {
        viewModelScope.launch {
            settingsRepository.clearCache()
        }
    }
}

sealed class BackupUiState {
    data object Idle : BackupUiState()
    data object InProgress : BackupUiState()
    data class Success(val message: String) : BackupUiState()
    data class Error(val message: String) : BackupUiState()
}
