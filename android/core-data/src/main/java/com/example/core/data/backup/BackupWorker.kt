package com.example.core.data.backup

import android.content.Context
import android.net.Uri
import androidx.hilt.work.HiltWorker
import androidx.work.CoroutineWorker
import androidx.work.WorkerParameters
import com.example.core.data.repository.LibraryBackupManager
import com.example.core.data.repository.SettingsRepository
import dagger.assisted.Assisted
import dagger.assisted.AssistedInject
import kotlinx.coroutines.flow.first
import java.io.File

/**
 * Worker for automatic backup scheduling
 * Performs periodic backups in the background
 */
@HiltWorker
class BackupWorker @AssistedInject constructor(
    @Assisted appContext: Context,
    @Assisted workerParams: WorkerParameters,
    private val backupManager: LibraryBackupManager,
    private val settingsRepository: SettingsRepository
) : CoroutineWorker(appContext, workerParams) {

    override suspend fun doWork(): Result {
        return try {
            android.util.Log.d(TAG, "Starting automatic backup")

            // Create backup directory if it doesn't exist
            val backupsDir = File(applicationContext.getExternalFilesDir(null), "backups")
            if (!backupsDir.exists()) {
                backupsDir.mkdirs()
            }

            // Create backup file with timestamp
            val timestamp = System.currentTimeMillis()
            val backupFileName = "mrcomic_auto_backup_$timestamp.mrcomic"
            val backupFile = File(backupsDir, backupFileName)
            val backupUri = Uri.fromFile(backupFile)

            // Perform backup
            val result = backupManager.exportBackup(backupUri)

            if (result.isSuccess) {
                val backupSize = backupFile.length()
                android.util.Log.d(TAG, "✅ Automatic backup completed: ${backupFile.name} (${backupSize} bytes)")

                // Clean up old backups - keep only last 5 automatic backups
                cleanupOldBackups(backupsDir)

                Result.success()
            } else {
                val error = result.exceptionOrNull()
                android.util.Log.e(TAG, "❌ Automatic backup failed", error)

                // Retry on failure (WorkManager will handle retry logic)
                if (runAttemptCount < MAX_RETRY_ATTEMPTS) {
                    Result.retry()
                } else {
                    Result.failure()
                }
            }

        } catch (e: Exception) {
            android.util.Log.e(TAG, "❌ Automatic backup failed with exception", e)

            if (runAttemptCount < MAX_RETRY_ATTEMPTS) {
                Result.retry()
            } else {
                Result.failure()
            }
        }
    }

    /**
     * Clean up old automatic backups, keeping only the most recent ones
     */
    private fun cleanupOldBackups(backupsDir: File) {
        try {
            val autoBackups = backupsDir.listFiles { file ->
                file.name.startsWith("mrcomic_auto_backup_") && file.name.endsWith(".mrcomic")
            }?.sortedByDescending { it.lastModified() } ?: return

            // Keep only the last MAX_BACKUPS_TO_KEEP backups
            if (autoBackups.size > MAX_BACKUPS_TO_KEEP) {
                autoBackups.drop(MAX_BACKUPS_TO_KEEP).forEach { oldBackup ->
                    if (oldBackup.delete()) {
                        android.util.Log.d(TAG, "Deleted old backup: ${oldBackup.name}")
                    }
                }
            }
        } catch (e: Exception) {
            android.util.Log.w(TAG, "Failed to cleanup old backups", e)
            // Non-critical error, don't fail the backup
        }
    }

    companion object {
        private const val TAG = "BackupWorker"
        const val WORK_NAME = "automatic_backup"
        private const val MAX_BACKUPS_TO_KEEP = 5
        private const val MAX_RETRY_ATTEMPTS = 3
    }
}
