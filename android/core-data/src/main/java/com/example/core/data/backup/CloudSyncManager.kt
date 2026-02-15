package com.example.core.data.backup

import android.content.Context
import android.net.Uri
import com.example.core.data.repository.LibraryBackupManager
import com.example.core.data.repository.SettingsRepository
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Cloud synchronization manager
 * Coordinates backup and sync operations with cloud providers
 */
@Singleton
class CloudSyncManager @Inject constructor(
    @ApplicationContext private val context: Context,
    private val libraryBackupManager: LibraryBackupManager,
    private val settingsRepository: SettingsRepository,
    private val googleDriveProvider: GoogleDriveBackupProvider,
    private val oneDriveProvider: OneDriveBackupProvider
) {
    enum class CloudProvider {
        GOOGLE_DRIVE,
        ONE_DRIVE
    }

    data class SyncProgress(
        val stage: String,
        val progress: Float,
        val message: String
    )

    /**
     * Get available cloud providers
     */
    fun getAvailableProviders(): List<CloudProvider> = listOf(CloudProvider.GOOGLE_DRIVE, CloudProvider.ONE_DRIVE)

    /**
     * Check if user is authenticated with a provider
     */
    suspend fun isAuthenticated(provider: CloudProvider): Boolean {
        return when (provider) {
            CloudProvider.GOOGLE_DRIVE -> googleDriveProvider.isAuthenticated()
            CloudProvider.ONE_DRIVE -> oneDriveProvider.isAuthenticated()
        }
    }

    /**
     * Get sign-in intent for a provider
     */
    fun getSignInIntent(provider: CloudProvider): Any {
        return when (provider) {
            CloudProvider.GOOGLE_DRIVE -> googleDriveProvider.getSignInIntent()
            CloudProvider.ONE_DRIVE -> oneDriveProvider.getSignInIntent()
        }
    }

    /**
     * Sign out from a provider
     */
    fun signOut(provider: CloudProvider) {
        when (provider) {
            CloudProvider.GOOGLE_DRIVE -> googleDriveProvider.signOut()
            CloudProvider.ONE_DRIVE -> oneDriveProvider.signOut()
        }
    }

    /**
     * Sync data to cloud provider
     */
    fun syncToCloud(provider: CloudProvider): Flow<SyncProgress> = flow {
        emit(SyncProgress("Preparing", 0.1f, "Creating local backup..."))

        try {
            // Create local backup
            val backupUri = withContext(Dispatchers.IO) {
                // Create a temporary backup file
                val tempFile = java.io.File(context.cacheDir, "sync_backup_${System.currentTimeMillis()}.mrcomic")
                val uri = Uri.fromFile(tempFile)

                // Export current data to backup
                libraryBackupManager.exportBackup(uri).getOrThrow()
                uri
            }

            emit(SyncProgress("Uploading", 0.5f, "Uploading to cloud..."))

            // Upload to cloud
            val result = when (provider) {
                CloudProvider.GOOGLE_DRIVE -> googleDriveProvider.uploadBackup(backupUri)
                CloudProvider.ONE_DRIVE -> oneDriveProvider.uploadBackup(backupUri)
            }

            result.fold(
                onSuccess = {
                    emit(SyncProgress("Complete", 1.0f, "Sync completed successfully"))
                },
                onFailure = { e ->
                    emit(SyncProgress("Error", 0.0f, "Sync failed: ${e.message}"))
                    throw e
                }
            )

            // Clean up temp file
            withContext(Dispatchers.IO) {
                java.io.File(backupUri.path!!).delete()
            }

        } catch (e: Exception) {
            emit(SyncProgress("Error", 0.0f, "Sync failed: ${e.message}"))
            throw e
        }
    }

    /**
     * Sync data from cloud provider
     */
    fun syncFromCloud(provider: CloudProvider): Flow<SyncProgress> = flow {
        emit(SyncProgress("Checking", 0.1f, "Checking for cloud backups..."))

        try {
            // List available backups
            val backups = when (provider) {
                CloudProvider.GOOGLE_DRIVE -> googleDriveProvider.listBackups()
                CloudProvider.ONE_DRIVE -> oneDriveProvider.listBackups()
            }.getOrThrow()

            if (backups.isEmpty()) {
                emit(SyncProgress("No backups", 1.0f, "No backups found in cloud"))
                return@flow
            }

            // Get the latest backup
            val latestBackup = backups.first()

            emit(SyncProgress("Downloading", 0.5f, "Downloading latest backup..."))

            // Download backup
            val backupUri = when (provider) {
                CloudProvider.GOOGLE_DRIVE -> googleDriveProvider.downloadBackup(latestBackup.fileId)
                CloudProvider.ONE_DRIVE -> oneDriveProvider.downloadBackup(latestBackup.fileId)
            }.getOrThrow()

            emit(SyncProgress("Restoring", 0.8f, "Restoring data..."))

            // Restore from backup
            libraryBackupManager.importBackup(backupUri).getOrThrow()

            emit(SyncProgress("Complete", 1.0f, "Sync completed successfully"))

            // Clean up temp file
            withContext(Dispatchers.IO) {
                java.io.File(backupUri.path!!).delete()
            }

        } catch (e: Exception) {
            emit(SyncProgress("Error", 0.0f, "Sync failed: ${e.message}"))
            throw e
        }
    }

    /**
     * Get list of cloud backups for a provider
     */
    suspend fun listCloudBackups(provider: CloudProvider): Result<List<CloudBackupInfo>> {
        return try {
            when (provider) {
                CloudProvider.GOOGLE_DRIVE -> googleDriveProvider.listBackups().map { list ->
                    list.map { DriveBackupInfo(it.fileId, it.fileName, it.size, it.modifiedTime) }
                }
                CloudProvider.ONE_DRIVE -> oneDriveProvider.listBackups().map { list ->
                    list.map { OneDriveBackupInfo(it.fileId, it.fileName, it.size, it.modifiedTime) }
                }
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    /**
     * Delete cloud backup
     */
    suspend fun deleteCloudBackup(provider: CloudProvider, backupId: String): Result<Unit> {
        return when (provider) {
            CloudProvider.GOOGLE_DRIVE -> googleDriveProvider.deleteBackup(backupId)
            CloudProvider.ONE_DRIVE -> oneDriveProvider.deleteBackup(backupId)
        }
    }
}
