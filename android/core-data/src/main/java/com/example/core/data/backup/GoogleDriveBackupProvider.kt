package com.example.core.data.backup

import android.content.Context
import android.content.Intent
import android.net.Uri
import dagger.hilt.android.qualifiers.ApplicationContext
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Google Drive backup provider - STUB implementation
 */
@Singleton
class GoogleDriveBackupProvider @Inject constructor(
    @ApplicationContext private val context: Context
) {

    fun getSignInIntent(): Intent {
        return Intent() // Stub
    }

    fun signOut() {
        // Stub
    }

    suspend fun isAuthenticated(): Boolean {
        return false // Stub
    }

    suspend fun authenticate(): Result<Unit> {
        return Result.success(Unit) // Stub
    }

    suspend fun uploadBackup(localBackupUri: Uri): Result<String> {
        return Result.failure(Exception("Not implemented"))
    }

    suspend fun downloadBackup(driveFileId: String): Result<Uri> {
        return Result.failure(Exception("Not implemented"))
    }

    suspend fun listBackups(): Result<List<DriveBackupInfo>> {
        return Result.success(emptyList()) // Stub
    }

    suspend fun deleteBackup(driveFileId: String): Result<Unit> {
        return Result.success(Unit) // Stub
    }
}
