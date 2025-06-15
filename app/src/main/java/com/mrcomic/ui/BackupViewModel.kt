package com.example.mrcomic.ui

import android.content.Context
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.backup.BackupData
import com.example.mrcomic.backup.BackupManager
import com.example.mrcomic.theme.data.repository.ComicRepository
import com.example.mrcomic.theme.data.repository.UserRepository
import com.example.mrcomic.theme.data.repository.ReadingStatsRepository
import com.example.mrcomic.data.ReaderSettingsManager
import com.example.mrcomic.data.ReaderSettings
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import java.io.File

class BackupViewModel(
    private val context: Context,
    private val comicRepository: ComicRepository,
    private val userRepository: UserRepository,
    private val statsRepository: ReadingStatsRepository
) : ViewModel() {
    data class UiState(
        val password: String = "",
        val isLoading: Boolean = false,
        val error: String? = null,
        val successMessage: String? = null,
        val selectedFile: File? = null
    )
    private val _state = MutableStateFlow(UiState())
    val state: StateFlow<UiState> = _state

    fun onPasswordChange(new: String) { _state.value = _state.value.copy(password = new) }
    fun onFileSelected(file: File) { _state.value = _state.value.copy(selectedFile = file) }

    fun createBackup() {
        viewModelScope.launch {
            _state.value = _state.value.copy(isLoading = true, error = null, successMessage = null)
            try {
                val comics = comicRepository.getAllComics().first()
                val users = userRepository.getAllUsers().first()
                val stats = statsRepository.getAllStats().first()
                val readerSettings = ReaderSettingsManager.getReaderSettings(context).first()
                val backupData = BackupData(
                    comics = comics,
                    users = users,
                    readerSettings = readerSettings,
                    readingStats = stats
                )
                val file = File(context.filesDir, "backup.mrbackup")
                BackupManager.exportBackup(context, backupData, _state.value.password, file)
                _state.value = _state.value.copy(isLoading = false, successMessage = "Резервная копия успешно создана", selectedFile = file)
            } catch (e: Exception) {
                _state.value = _state.value.copy(isLoading = false, error = "Ошибка резервного копирования: ${e.message}")
            }
        }
    }

    fun restoreBackup() {
        viewModelScope.launch {
            _state.value = _state.value.copy(isLoading = true, error = null, successMessage = null)
            try {
                val file = _state.value.selectedFile ?: throw Exception("Файл не выбран")
                val data = BackupManager.importBackup(context, _state.value.password, file)
                // Очистка и восстановление данных
                comicRepository.deleteAllComics()
                comicRepository.insertComics(data.comics)
                userRepository.deleteAllUsers()
                data.users.forEach { userRepository.insertUser(it) }
                // Статистика
                data.readingStats.forEach { statsRepository.insertOrUpdateStats(it) }
                // Настройки ридера
                ReaderSettingsManager.saveReaderSettings(context, data.readerSettings)
                _state.value = _state.value.copy(isLoading = false, successMessage = "Восстановление успешно завершено")
            } catch (e: Exception) {
                _state.value = _state.value.copy(isLoading = false, error = "Ошибка восстановления: ${e.message}")
            }
        }
    }
} 