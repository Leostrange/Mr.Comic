package io.leostrange.mrcomic.core.model.repository

import android.net.Uri
import io.leostrange.mrcomic.core.model.Comic

/**
 * Comic file import operations.
 *
 * Handles adding comics from URIs and directories.
 */
interface ImportRepository {
    suspend fun addComic(uri: Uri): Comic?
    suspend fun addComicsFromDirectory(treeUri: Uri)
}
