package com.example.core.data.repository

import com.example.core.data.database.dao.ReadingSessionDao
import com.example.core.model.ReadingSession
import kotlinx.coroutines.flow.Flow
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Репозиторий для работы с сессиями чтения
 * Предоставляет методы для сохранения и восстановления прогресса чтения
 */
@Singleton
class ReadingSessionRepository @Inject constructor(
    private val readingSessionDao: ReadingSessionDao
) {
    
    /**
     * Получить все сессии чтения
     */
    fun getAllSessions(): Flow<List<ReadingSession>> {
        return readingSessionDao.getAllSessions()
    }
    
    /**
     * Получить сессию чтения для комикса
     */
    suspend fun getSessionByComicId(comicId: String): ReadingSession? {
        return readingSessionDao.getByComicId(comicId)
    }
    
    /**
     * Наблюдать за сессией чтения для комикса
     */
    fun observeSessionByComicId(comicId: String): Flow<ReadingSession?> {
        return readingSessionDao.observeByComicId(comicId)
    }
    
    /**
     * Получить недавние сессии чтения
     */
    fun getRecentSessions(limit: Int = 10): Flow<List<ReadingSession>> {
        return readingSessionDao.getRecentSessions(limit)
    }
    
    /**
     * Сохранить или обновить сессию чтения
     */
    suspend fun saveSession(session: ReadingSession) {
        readingSessionDao.insert(session)
    }
    
    /**
     * Создать или обновить сессию чтения
     */
    suspend fun createOrUpdateSession(
        comicId: String,
        currentPage: Int,
        totalPages: Int,
        readingSettings: String? = null
    ): ReadingSession {
        val session = ReadingSession(
            comicId = comicId,
            currentPage = currentPage,
            totalPages = totalPages,
            lastReadAt = System.currentTimeMillis(),
            readingSettings = readingSettings
        )
        readingSessionDao.insert(session)
        return session
    }
    
    /**
     * Обновить сессию
     */
    suspend fun updateSession(session: ReadingSession) {
        readingSessionDao.update(session)
    }
    
    /**
     * Удалить сессию
     */
    suspend fun deleteSession(session: ReadingSession) {
        readingSessionDao.delete(session)
    }
    
    /**
     * Удалить сессию по ID комикса
     */
    suspend fun deleteSessionByComicId(comicId: String) {
        readingSessionDao.deleteByComicId(comicId)
    }
    
    /**
     * Обновить прогресс чтения
     */
    suspend fun updateProgress(comicId: String, currentPage: Int) {
        readingSessionDao.updateProgress(
            comicId = comicId,
            currentPage = currentPage,
            timestamp = System.currentTimeMillis()
        )
    }
    
    /**
     * Удалить старые сессии
     * @param daysOld количество дней, после которых сессия считается старой
     */
    suspend fun deleteOldSessions(daysOld: Int = 90) {
        val timestamp = System.currentTimeMillis() - (daysOld * 24 * 60 * 60 * 1000L)
        readingSessionDao.deleteOlderThan(timestamp)
    }
    
    /**
     * Получить или создать сессию чтения
     */
    suspend fun getOrCreateSession(comicId: String, totalPages: Int): ReadingSession {
        return readingSessionDao.getByComicId(comicId) ?: run {
            val newSession = ReadingSession(
                comicId = comicId,
                currentPage = 0,
                totalPages = totalPages,
                lastReadAt = System.currentTimeMillis(),
                readingSettings = null
            )
            readingSessionDao.insert(newSession)
            newSession
        }
    }
    
    /**
     * Сохранить прогресс и настройки чтения
     */
    suspend fun saveProgressAndSettings(
        comicId: String,
        currentPage: Int,
        totalPages: Int,
        readingSettings: String?
    ) {
        val existingSession = readingSessionDao.getByComicId(comicId)
        
        val session = if (existingSession != null) {
            existingSession.copy(
                currentPage = currentPage,
                totalPages = totalPages,
                lastReadAt = System.currentTimeMillis(),
                readingSettings = readingSettings
            )
        } else {
            ReadingSession(
                comicId = comicId,
                currentPage = currentPage,
                totalPages = totalPages,
                lastReadAt = System.currentTimeMillis(),
                readingSettings = readingSettings
            )
        }
        
        readingSessionDao.insert(session)
    }
    
    /**
     * Получить процент прочитанного
     */
    suspend fun getReadingPercentage(comicId: String): Float {
        val session = readingSessionDao.getByComicId(comicId) ?: return 0f
        if (session.totalPages == 0) return 0f
        return (session.currentPage.toFloat() / session.totalPages.toFloat()) * 100f
    }
}
