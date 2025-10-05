package com.example.core.data.scanner

import android.content.Context
import androidx.work.*
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import java.io.File
import java.util.UUID
import java.util.concurrent.TimeUnit
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Менеджер для управления сканированием библиотеки
 */
@Singleton
class LibraryScanManager @Inject constructor(
    @ApplicationContext private val context: Context
) {
    
    companion object {
        private const val TAG = "LibraryScanManager"
        private const val UNIQUE_WORK_NAME = "library_scan"
        private const val PERIODIC_WORK_NAME = "library_scan_periodic"
    }
    
    private val workManager = WorkManager.getInstance(context)
    
    /**
     * Запустить сканирование директории
     * @param directory директория для сканирования
     * @param settings настройки сканирования
     * @return UUID задачи WorkManager
     */
    fun startScan(
        directory: File,
        settings: ScanSettings = ScanSettings()
    ): UUID {
        val inputData = Data.Builder()
            .putString(LibraryScanWorker.KEY_DIRECTORY_PATH, directory.absolutePath)
            .putBoolean(LibraryScanWorker.KEY_SCAN_SUBFOLDERS, settings.scanSubfolders)
            .putString(LibraryScanWorker.KEY_CBZ_MODE, settings.cbzMode.name)
            .putString(LibraryScanWorker.KEY_CBR_MODE, settings.cbrMode.name)
            .putString(LibraryScanWorker.KEY_PDF_MODE, settings.pdfMode.name)
            .putString(LibraryScanWorker.KEY_FOLDER_MODE, settings.folderMode.name)
            .build()
        
        val constraints = Constraints.Builder()
            .setRequiresBatteryNotLow(true)
            .build()
        
        val scanRequest = OneTimeWorkRequestBuilder<LibraryScanWorker>()
            .setInputData(inputData)
            .setConstraints(constraints)
            .addTag(TAG)
            .build()
        
        workManager.enqueueUniqueWork(
            UNIQUE_WORK_NAME,
            ExistingWorkPolicy.REPLACE,
            scanRequest
        )
        
        android.util.Log.d(TAG, "Scan started for: ${directory.absolutePath}")
        
        return scanRequest.id
    }
    
    /**
     * Запустить периодическое сканирование
     * @param directory директория для сканирования
     * @param settings настройки сканирования
     * @param intervalHours интервал в часах
     */
    fun startPeriodicScan(
        directory: File,
        settings: ScanSettings = ScanSettings(),
        intervalHours: Long = 24
    ) {
        val inputData = Data.Builder()
            .putString(LibraryScanWorker.KEY_DIRECTORY_PATH, directory.absolutePath)
            .putBoolean(LibraryScanWorker.KEY_SCAN_SUBFOLDERS, settings.scanSubfolders)
            .putString(LibraryScanWorker.KEY_CBZ_MODE, settings.cbzMode.name)
            .putString(LibraryScanWorker.KEY_CBR_MODE, settings.cbrMode.name)
            .putString(LibraryScanWorker.KEY_PDF_MODE, settings.pdfMode.name)
            .putString(LibraryScanWorker.KEY_FOLDER_MODE, settings.folderMode.name)
            .build()
        
        val constraints = Constraints.Builder()
            .setRequiresBatteryNotLow(true)
            .setRequiresCharging(false)
            .build()
        
        val periodicRequest = PeriodicWorkRequestBuilder<LibraryScanWorker>(
            intervalHours,
            TimeUnit.HOURS
        )
            .setInputData(inputData)
            .setConstraints(constraints)
            .addTag(TAG)
            .build()
        
        workManager.enqueueUniquePeriodicWork(
            PERIODIC_WORK_NAME,
            ExistingPeriodicWorkPolicy.REPLACE,
            periodicRequest
        )
        
        android.util.Log.d(TAG, "Periodic scan scheduled every $intervalHours hours")
    }
    
    /**
     * Отменить текущее сканирование
     */
    fun cancelScan() {
        workManager.cancelUniqueWork(UNIQUE_WORK_NAME)
        android.util.Log.d(TAG, "Scan cancelled")
    }
    
    /**
     * Отменить периодическое сканирование
     */
    fun cancelPeriodicScan() {
        workManager.cancelUniqueWork(PERIODIC_WORK_NAME)
        android.util.Log.d(TAG, "Periodic scan cancelled")
    }
    
    /**
     * Отменить все сканирования
     */
    fun cancelAllScans() {
        workManager.cancelAllWorkByTag(TAG)
        android.util.Log.d(TAG, "All scans cancelled")
    }
    
    /**
     * Наблюдать за прогрессом сканирования
     * @param workId UUID задачи
     * @return Flow с прогрессом
     */
    fun observeScanProgress(workId: UUID): Flow<ScanProgress> {
        return workManager.getWorkInfoByIdFlow(workId).map { workInfo ->
            when (workInfo?.state) {
                WorkInfo.State.ENQUEUED -> ScanProgress(status = ScanStatus.PREPARING)
                WorkInfo.State.RUNNING -> {
                    val progress = workInfo.progress
                    ScanProgress(
                        processedFiles = progress.getInt(LibraryScanWorker.KEY_PROGRESS_CURRENT, 0),
                        totalFiles = progress.getInt(LibraryScanWorker.KEY_PROGRESS_TOTAL, 0),
                        status = ScanStatus.SCANNING
                    )
                }
                WorkInfo.State.SUCCEEDED -> {
                    val outputData = workInfo.outputData
                    ScanProgress(
                        foundComics = outputData.getInt(LibraryScanWorker.KEY_FOUND_COMICS, 0),
                        processedFiles = outputData.getInt(LibraryScanWorker.KEY_PROCESSED_FILES, 0),
                        status = ScanStatus.COMPLETED
                    )
                }
                WorkInfo.State.FAILED -> {
                    val error = workInfo.outputData.getString(LibraryScanWorker.KEY_ERROR_MESSAGE)
                    ScanProgress(
                        status = ScanStatus.FAILED,
                        error = error
                    )
                }
                WorkInfo.State.CANCELLED -> ScanProgress(status = ScanStatus.CANCELLED)
                else -> ScanProgress(status = ScanStatus.IDLE)
            }
        }
    }
    
    /**
     * Получить информацию о текущем сканировании
     */
    suspend fun getCurrentScanInfo(): WorkInfo? {
        val workInfos = workManager.getWorkInfosForUniqueWork(UNIQUE_WORK_NAME).await()
        return workInfos.firstOrNull()
    }
    
    /**
     * Проверить, выполняется ли сканирование
     */
    suspend fun isScanRunning(): Boolean {
        val workInfo = getCurrentScanInfo()
        return workInfo?.state == WorkInfo.State.RUNNING || 
               workInfo?.state == WorkInfo.State.ENQUEUED
    }
}
