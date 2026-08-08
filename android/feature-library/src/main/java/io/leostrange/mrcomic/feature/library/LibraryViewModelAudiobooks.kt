package io.leostrange.mrcomic.feature.library

import android.net.Uri
import android.util.Log
import androidx.documentfile.provider.DocumentFile
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.model.AudioChapter
import io.leostrange.mrcomic.core.model.Audiobook
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

// Phase: Audiobook CRUD extracted from LibraryViewModel (extension functions).

fun LibraryViewModel.observeAudiobooks() {
    viewModelScope.launch {
        audiobookRepository.getAllFlow().collect { list ->
            _uiState.update { it.copy(audiobooks = list) }
            repairMissingAudiobookCovers(list)
        }
    }
}

internal suspend fun LibraryViewModel.repairMissingAudiobookCovers(audiobooks: List<Audiobook>) = withContext(Dispatchers.IO) {
    // Runs on every audiobook list emission; each resolve does MediaMetadataRetriever + file
    // copy + DocumentTree walk. Must stay off the main thread to avoid jank/ANR on library open.
    audiobooks.forEach { audiobook ->
        val hasValidStoredCover = audiobook.coverUri
            ?.takeIf { cover -> runCatching { android.net.Uri.parse(cover) }.isSuccess }
            ?.let { AudiobookCoverResolver.resolvePersistedCoverUri(context, audiobook) == audiobook.coverUri }
            ?: false
        if (hasValidStoredCover) {
            return@forEach
        }
        if (audiobook.id in repairedAudiobookCoverIds) return@forEach
        val resolvedCover = AudiobookCoverResolver.resolvePersistedCoverUri(context, audiobook)
        if (!resolvedCover.isNullOrBlank() && resolvedCover != audiobook.coverUri) {
            audiobookRepository.upsert(audiobook.copy(coverUri = resolvedCover))
            repairedAudiobookCoverIds += audiobook.id
        } else {
            repairedAudiobookCoverIds.remove(audiobook.id)
        }
    }
}

/** Add a single audio file as a 1-chapter audiobook. */
fun LibraryViewModel.addAudiobookFromUri(uri: Uri) {
    viewModelScope.launch(Dispatchers.IO) {
        try {
            val title = DocumentFile.fromSingleUri(context, uri)?.name
                ?.substringBeforeLast('.')
                ?: uri.lastPathSegment ?: "Аудиокнига"
            val chapter = AudioChapter(index = 0, title = title, uri = uri.toString())
            val audiobook = Audiobook(
                title = title,
                sourcePath = uri.toString(),
                sourceIsFolder = false,
                chapters = listOf(chapter)
            )
            val coverUri = AudiobookCoverResolver.resolvePersistedCoverUri(context, audiobook)
            audiobookRepository.upsert(audiobook.copy(coverUri = coverUri ?: audiobook.coverUri))
            Log.i("LibraryViewModel", "Audiobook added: $title")
        } catch (e: Exception) {
            Log.e("LibraryViewModel", "Failed to add audiobook from URI: $uri", e)
            _uiState.update { it.copy(error = "Не удалось добавить аудио: ${e.localizedMessage}") }
        }
    }
}

/** Scan a folder tree and add direct audio files and nested audio folders separately. */
fun LibraryViewModel.addAudiobookFromFolder(treeUri: Uri) {
    viewModelScope.launch(Dispatchers.IO) {
        try {
            val root = DocumentFile.fromTreeUri(context, treeUri) ?: run {
                Log.w("LibraryViewModel", "Could not resolve tree URI: $treeUri")
                _uiState.update { it.copy(error = "Не удалось открыть папку") }
                return@launch
            }
            val planned = planAudiobookImports(root.toAudiobookImportNode())
            if (planned.isEmpty()) {
                Log.i("LibraryViewModel", "No audio files in folder tree: $treeUri")
                return@launch
            }
            planned.forEach { audiobook ->
                val resolvedCover = AudiobookCoverResolver.resolvePersistedCoverUri(context, audiobook)
                audiobookRepository.upsert(audiobook.copy(coverUri = resolvedCover ?: audiobook.coverUri))
            }
            Log.i("LibraryViewModel", "Audiobook imports added from folder: ${planned.size}")
        } catch (e: Exception) {
            Log.e("LibraryViewModel", "Failed to add audiobook from folder: $treeUri", e)
            _uiState.update { it.copy(error = "Не удалось добавить аудио: ${e.localizedMessage}") }
        }
    }
}

fun LibraryViewModel.deleteAudiobook(audiobookId: String) {
    viewModelScope.launch {
        audiobookRepository.delete(audiobookId)
    }
}

private fun DocumentFile.toAudiobookImportNode(): AudiobookImportNode {
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
