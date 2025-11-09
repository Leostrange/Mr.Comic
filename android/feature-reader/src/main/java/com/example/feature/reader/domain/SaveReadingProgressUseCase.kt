package com.example.feature.reader.domain

import com.example.core.data.repository.SettingsRepository
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.first
import javax.inject.Inject

/**
 * Use case для сохранения и восстановления прогресса чтения
 * Обеспечивает сохранение номера последней прочитанной страницы для каждого файла
 */
class SaveReadingProgressUseCase @Inject constructor(
    private val settingsRepository: SettingsRepository
) {
    
    /**
     * Сохранить прогресс чтения для файла
     * @param filePath путь к файлу комикса
     * @param pageIndex номер страницы
     */
    suspend fun saveProgress(filePath: String, pageIndex: Int) {
        settingsRepository.setReadingProgress(filePath, pageIndex)
    }
    
    /**
     * Получить сохраненный прогресс чтения для файла
     * @param filePath путь к файлу комикса
     * @return номер страницы или 0 если прогресс не найден
     */
    suspend fun getProgress(filePath: String): Int {
        return settingsRepository.getReadingProgress(filePath).first()
    }
    
    /**
     * Получить Flow прогресса чтения для файла
     * @param filePath путь к файлу комикса
     * @return Flow с номером страницы
     */
    fun getProgressFlow(filePath: String): Flow<Int> {
        return settingsRepository.getReadingProgress(filePath)
    }
    
    /**
     * Очистить прогресс чтения для файла
     * @param filePath путь к файлу комикса
     */
    suspend fun clearProgress(filePath: String) {
        settingsRepository.clearReadingProgress(filePath)
    }
}
