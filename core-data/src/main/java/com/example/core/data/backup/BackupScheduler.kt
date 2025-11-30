package com.example.core.data.backup

import android.content.Context
import androidx.work.Constraints
import androidx.work.ExistingPeriodicWorkPolicy
import androidx.work.NetworkType
import androidx.work.PeriodicWorkRequestBuilder
import androidx.work.WorkManager
import dagger.hilt.android.qualifiers.ApplicationContext
import java.util.concurrent.TimeUnit
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Scheduler for automatic backups
 * Manages periodic backup work using WorkManager
 */
@Singleton
class BackupScheduler @Inject constructor(
    @ApplicationContext private val context: Context
) {
    
    private val workManager = WorkManager.getInstance(context)
    
    /**
     * Schedule automatic backups
     * @param frequency Backup frequency (DISABLED, DAILY, WEEKLY)
     */
    fun scheduleBackup(frequency: BackupFrequency) {
        when (frequency) {
            BackupFrequency.DISABLED -> cancelBackup()
            BackupFrequency.DAILY -> schedulePeriodicBackup(1, TimeUnit.DAYS)
            BackupFrequency.WEEKLY -> schedulePeriodicBackup(7, TimeUnit.DAYS)
        }
    }
    
    /**
     * Cancel automatic backups
     */
    fun cancelBackup() {
        workManager.cancelUniqueWork(BackupWorker.WORK_NAME)
        android.util.Log.d(TAG, "Automatic backup cancelled")
    }
    
    private fun schedulePeriodicBackup(interval: Long, timeUnit: TimeUnit) {
        val constraints = Constraints.Builder()
            .setRequiredNetworkType(NetworkType.CONNECTED)
            .setRequiresBatteryNotLow(true)
            .build()
        
        val backupRequest = PeriodicWorkRequestBuilder<BackupWorker>(interval, timeUnit)
            .setConstraints(constraints)
            .build()
        
        workManager.enqueueUniquePeriodicWork(
            BackupWorker.WORK_NAME,
            ExistingPeriodicWorkPolicy.UPDATE,
            backupRequest
        )
        
        android.util.Log.d(TAG, "Automatic backup scheduled: every $interval ${timeUnit.name}")
    }
    
    companion object {
        private const val TAG = "BackupScheduler"
    }
}

/**
 * Backup frequency options
 */
enum class BackupFrequency {
    DISABLED,
    DAILY,
    WEEKLY
}
