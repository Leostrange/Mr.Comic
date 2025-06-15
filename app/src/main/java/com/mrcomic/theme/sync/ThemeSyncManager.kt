package com.example.mrcomic.theme.sync

import android.content.Context
import androidx.work.*
import com.example.mrcomic.theme.data.repository.ThemeRepository
import dagger.hilt.android.qualifiers.ApplicationContext
import java.util.concurrent.TimeUnit
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Менеджер синхронизации тем между сервером и клиентом
 */
@Singleton
class ThemeSyncManager @Inject constructor(
    @ApplicationContext private val context: Context,
    private val themeRepository: ThemeRepository
) {
    /**
     * Инициализация периодической синхронизации
     */
    fun initialize() {
        // Настройка периодической синхронизации
        val syncRequest = PeriodicWorkRequestBuilder<ThemeSyncWorker>(
            6, TimeUnit.HOURS,
            1, TimeUnit.HOURS
        )
            .setConstraints(
                Constraints.Builder()
                    .setRequiredNetworkType(NetworkType.CONNECTED)
                    .build()
            )
            .build()

        WorkManager.getInstance(context).enqueueUniquePeriodicWork(
            SYNC_WORK_NAME,
            ExistingPeriodicWorkPolicy.KEEP,
            syncRequest
        )
    }

    /**
     * Запуск немедленной синхронизации
     */
    fun syncNow() {
        val syncRequest = OneTimeWorkRequestBuilder<ThemeSyncWorker>()
            .setConstraints(
                Constraints.Builder()
                    .setRequiredNetworkType(NetworkType.CONNECTED)
                    .build()
            )
            .build()

        WorkManager.getInstance(context).enqueueUniqueWork(
            SYNC_WORK_NAME_IMMEDIATE,
            ExistingWorkPolicy.REPLACE,
            syncRequest
        )
    }

    /**
     * Отмена всех задач синхронизации
     */
    fun cancelAllSync() {
        WorkManager.getInstance(context).cancelUniqueWork(SYNC_WORK_NAME)
        WorkManager.getInstance(context).cancelUniqueWork(SYNC_WORK_NAME_IMMEDIATE)
    }

    companion object {
        private const val SYNC_WORK_NAME = "theme_sync_periodic"
        private const val SYNC_WORK_NAME_IMMEDIATE = "theme_sync_immediate"
    }
}

/**
 * Worker для выполнения синхронизации в фоновом режиме
 */
class ThemeSyncWorker(
    context: Context,
    params: WorkerParameters,
    private val themeRepository: ThemeRepository
) : CoroutineWorker(context, params) {

    override suspend fun doWork(): Result {
        return try {
            // Синхронизация тем
            themeRepository.refreshThemes()
            
            // Синхронизация популярных тем
            themeRepository.refreshTrendingThemes()
            
            // Синхронизация рекомендованных тем
            themeRepository.refreshRecommendedThemes()
            
            Result.success()
        } catch (e: Exception) {
            // Если произошла ошибка, повторяем попытку
            Result.retry()
        }
    }

    class Factory @Inject constructor(
        private val themeRepository: ThemeRepository
    ) : WorkerFactory() {
        override fun createWorker(
            appContext: Context,
            workerClassName: String,
            workerParameters: WorkerParameters
        ): ListenableWorker? {
            return if (workerClassName == ThemeSyncWorker::class.java.name) {
                ThemeSyncWorker(appContext, workerParameters, themeRepository)
            } else {
                null
            }
        }
    }
}
