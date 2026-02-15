package com.example.core.data.backup

/**
 * Base class for cloud backup information
 */
sealed class CloudBackupInfo {
    abstract val fileId: String
    abstract val fileName: String
    abstract val size: Long
    abstract val modifiedTime: Long
}

/**
 * Information about a backup stored on Google Drive
 */
data class DriveBackupInfo(
    override val fileId: String,
    override val fileName: String,
    override val size: Long,
    override val modifiedTime: Long
) : CloudBackupInfo()

/**
 * Information about a backup stored on OneDrive
 */
data class OneDriveBackupInfo(
    override val fileId: String,
    override val fileName: String,
    override val size: Long,
    override val modifiedTime: Long
) : CloudBackupInfo()
