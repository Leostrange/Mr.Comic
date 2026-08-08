package io.leostrange.mrcomic.feature.library

import android.net.Uri
import androidx.documentfile.provider.DocumentFile
import io.leostrange.mrcomic.core.model.Audiobook

// Phase: Audiobook CRUD extracted from LibraryViewModel (extension functions).
// Since 4.1 (2026-08-09) the logic lives in LibraryAudiobookController and
// these extensions delegate to it (public API unchanged).

fun LibraryViewModel.observeAudiobooks() = audiobookController.observe()

internal suspend fun LibraryViewModel.repairMissingAudiobookCovers(audiobooks: List<Audiobook>) =
    audiobookController.repairMissingAudiobookCovers(audiobooks)

/** Add a single audio file as a 1-chapter audiobook. */
fun LibraryViewModel.addAudiobookFromUri(uri: Uri) = audiobookController.addAudiobookFromUri(uri)

/** Scan a folder tree and add direct audio files and nested audio folders separately. */
fun LibraryViewModel.addAudiobookFromFolder(treeUri: Uri) = audiobookController.addAudiobookFromFolder(treeUri)

fun LibraryViewModel.deleteAudiobook(audiobookId: String) = audiobookController.deleteAudiobook(audiobookId)

internal fun DocumentFile.toAudiobookImportNode(): AudiobookImportNode {
    val childNodes = if (isDirectory) {
        listFiles()
            .map { it.toAudiobookImportNode() }
            .sortedWith(
                compareBy<AudiobookImportNode>(
                    { !it.isDirectory },
                    { it.name.lowercase() }
                )
            )
    } else {
        emptyList()
    }
    return AudiobookImportNode(
        name = name?.trim()?.ifBlank { null } ?: uri.lastPathSegment.orEmpty().ifBlank { "Аудиокнига" },
        uri = uri.toString(),
        isDirectory = isDirectory,
        mimeType = type,
        children = childNodes
    )
}
