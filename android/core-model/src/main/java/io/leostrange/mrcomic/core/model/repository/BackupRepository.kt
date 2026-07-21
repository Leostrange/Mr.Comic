package io.leostrange.mrcomic.core.model.repository

import android.net.Uri
import io.leostrange.mrcomic.core.model.Comic

/**
 * Backup, restore, and library repair operations.
 */
interface BackupRepository {
    data class RestoreComicResult(
        val comic: Comic,
        val inserted: Boolean,
        val isReadable: Boolean
    )

    data class RepairLibraryAccessResult(
        val repaired: Int,
        val alreadyReadable: Int,
        val skipped: Int,
        val missing: Int
    )

    suspend fun restoreComicFromBackup(backupComic: Comic): RestoreComicResult?
    suspend fun repairLibraryAccess(treeUri: Uri): RepairLibraryAccessResult
}
