package com.example.mrcomic.theme.data.repository

import com.example.mrcomic.theme.data.api.ThemeApiService
import com.example.mrcomic.theme.data.db.ThemeDao
import com.example.mrcomic.theme.data.model.Theme
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Репозиторий для работы с темами
 */
@Singleton
class ThemeRepository @Inject constructor(
    private val themeApiService: ThemeApiService,
    private val themeDao: ThemeDao
) {
    /**
     * Получение списка тем с сервера и сохранение в локальную БД
     */
    suspend fun refreshThemes(
        page: Int = 1,
        limit: Int = 20,
        sort: String? = null,
        order: String? = null,
        search: String? = null,
        tags: String? = null
    ) = withContext(Dispatchers.IO) {
        try {
            val response = themeApiService.getThemes(page, limit, sort, order, search, tags)
            if (response.isSuccessful) {
                response.body()?.let { themeListResponse ->
                    themeDao.insertThemes(themeListResponse.themes)
                }
            }
        } catch (e: Exception) {
            // Обработка ошибок
            e.printStackTrace()
        }
    }

    /**
     * Получение популярных тем с сервера и сохранение в локальную БД
     */
    suspend fun refreshTrendingThemes(limit: Int = 10) = withContext(Dispatchers.IO) {
        try {
            val response = themeApiService.getTrendingThemes(limit)
            if (response.isSuccessful) {
                response.body()?.let { themes ->
                    themeDao.insertThemes(themes)
                }
            }
        } catch (e: Exception) {
            // Обработка ошибок
            e.printStackTrace()
        }
    }

    /**
     * Получение рекомендованных тем с сервера и сохранение в локальную БД
     */
    suspend fun refreshRecommendedThemes(limit: Int = 10) = withContext(Dispatchers.IO) {
        try {
            val response = themeApiService.getRecommendedThemes(limit)
            if (response.isSuccessful) {
                response.body()?.let { themes ->
                    themeDao.insertThemes(themes)
                }
            }
        } catch (e: Exception) {
            // Обработка ошибок
            e.printStackTrace()
        }
    }

    /**
     * Получение детальной информации о теме с сервера и сохранение в локальную БД
     */
    suspend fun refreshTheme(themeId: String) = withContext(Dispatchers.IO) {
        try {
            val response = themeApiService.getTheme(themeId)
            if (response.isSuccessful) {
                response.body()?.let { theme ->
                    themeDao.insertTheme(theme)
                }
            }
        } catch (e: Exception) {
            // Обработка ошибок
            e.printStackTrace()
        }
    }

    /**
     * Создание новой темы
     */
    suspend fun createTheme(theme: Theme) = withContext(Dispatchers.IO) {
        try {
            val response = themeApiService.createTheme(theme)
            if (response.isSuccessful) {
                response.body()?.let { createdTheme ->
                    themeDao.insertTheme(createdTheme)
                    return@withContext Result.success(createdTheme)
                }
            }
            return@withContext Result.failure(Exception("Failed to create theme"))
        } catch (e: Exception) {
            // Обработка ошибок
            e.printStackTrace()
            return@withContext Result.failure(e)
        }
    }

    /**
     * Обновление существующей темы
     */
    suspend fun updateTheme(themeId: String, theme: Theme) = withContext(Dispatchers.IO) {
        try {
            val response = themeApiService.updateTheme(themeId, theme)
            if (response.isSuccessful) {
                response.body()?.let { updatedTheme ->
                    themeDao.updateTheme(updatedTheme)
                    return@withContext Result.success(updatedTheme)
                }
            }
            return@withContext Result.failure(Exception("Failed to update theme"))
        } catch (e: Exception) {
            // Обработка ошибок
            e.printStackTrace()
            return@withContext Result.failure(e)
        }
    }

    /**
     * Удаление темы
     */
    suspend fun deleteTheme(themeId: String) = withContext(Dispatchers.IO) {
        try {
            val response = themeApiService.deleteTheme(themeId)
            if (response.isSuccessful) {
                themeDao.deleteThemeById(themeId)
                return@withContext Result.success(Unit)
            }
            return@withContext Result.failure(Exception("Failed to delete theme"))
        } catch (e: Exception) {
            // Обработка ошибок
            e.printStackTrace()
            return@withContext Result.failure(e)
        }
    }

    /**
     * Получение всех тем из локальной БД
     */
    fun getAllThemes(): Flow<List<Theme>> {
        return themeDao.getAllThemes()
    }

    /**
     * Получение темы по ID из локальной БД
     */
    suspend fun getThemeById(themeId: String): Theme? {
        return themeDao.getThemeById(themeId)
    }

    /**
     * Получение тем пользователя из локальной БД
     */
    fun getThemesByAuthor(userId: String): Flow<List<Theme>> {
        return themeDao.getThemesByAuthor(userId)
    }

    /**
     * Получение популярных тем из локальной БД
     */
    fun getTopRatedThemes(limit: Int = 10): Flow<List<Theme>> {
        return themeDao.getTopRatedThemes(limit)
    }

    /**
     * Получение наиболее загружаемых тем из локальной БД
     */
    fun getMostDownloadedThemes(limit: Int = 10): Flow<List<Theme>> {
        return themeDao.getMostDownloadedThemes(limit)
    }
}
