package com.example.feature.library

import com.example.core.model.Audiobook

internal data class AudiobookImportResolution(
    val audiobookToUpsert: Audiobook?,
    val duplicateIdsToDelete: List<String> = emptyList()
)

internal fun resolveAudiobookImport(
    existing: List<Audiobook>,
    imported: Audiobook
): AudiobookImportResolution {
    val existingBySameSource = existing.firstOrNull {
        it.sourceIsFolder == imported.sourceIsFolder &&
            normalizeAudiobookSourcePath(it.sourcePath) == normalizeAudiobookSourcePath(imported.sourcePath)
    }

    val mergedImport = imported.mergeImportedState(existingBySameSource)

    if (!mergedImport.sourceIsFolder) {
        val coveredByFolder = existing.any { audiobook ->
            audiobook.sourceIsFolder &&
                audiobook.chapters.any { chapter ->
                    normalizeAudiobookSourcePath(chapter.uri) == normalizeAudiobookSourcePath(mergedImport.sourcePath)
                }
        }
        if (coveredByFolder && existingBySameSource == null) {
            return AudiobookImportResolution(audiobookToUpsert = null)
        }
    }

    val duplicateIdsToDelete = if (mergedImport.sourceIsFolder) {
        val chapterUris = mergedImport.chapters
            .map { normalizeAudiobookSourcePath(it.uri) }
            .toSet()
        existing.filter { audiobook ->
            !audiobook.sourceIsFolder &&
                audiobook.id != mergedImport.id &&
                normalizeAudiobookSourcePath(audiobook.sourcePath) in chapterUris
        }.map { it.id }
    } else {
        emptyList()
    }

    return AudiobookImportResolution(
        audiobookToUpsert = mergedImport,
        duplicateIdsToDelete = duplicateIdsToDelete
    )
}

private fun Audiobook.mergeImportedState(existing: Audiobook?): Audiobook {
    if (existing == null) return this
    val chapterCount = chapters.size.coerceAtLeast(1)
    return copy(
        id = existing.id,
        coverUri = coverUri ?: existing.coverUri,
        lastChapterIndex = existing.lastChapterIndex.coerceIn(0, chapterCount - 1),
        lastPositionMs = existing.lastPositionMs,
        speed = existing.speed,
        addedAt = existing.addedAt
    )
}

private fun normalizeAudiobookSourcePath(value: String): String =
    value.trim().lowercase()
