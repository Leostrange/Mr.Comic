package io.leostrange.mrcomic.core.data.repository

import android.net.Uri
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.readingProgressForPage
import java.io.File

    internal fun ComicRepository.normalizeBackupComic(comic: Comic): Comic? {
        val normalizedPath = comic.path.trim()
        if (normalizedPath.isBlank()) return null
        val normalizedPageCount = comic.pageCount.coerceAtLeast(0)
        val normalizedCurrentPage = if (normalizedPageCount > 0) {
            comic.currentPage.coerceIn(0, (normalizedPageCount - 1).coerceAtLeast(0))
        } else {
            comic.currentPage.coerceAtLeast(0)
        }
        val normalizedProgress = when {
            comic.isCompleted -> 1f
            comic.lastReadDate != null || comic.readingProgress > 0f || normalizedCurrentPage > 0 ->
                if (normalizedPageCount > 0) {
                    readingProgressForPage(normalizedCurrentPage, normalizedPageCount)
                } else {
                    comic.readingProgress.coerceIn(0f, 1f)
                }
            else -> comic.readingProgress.coerceIn(0f, 1f)
        }
        val normalizedTitle = comic.title.trim().ifBlank { deriveComicTitleFromPath(normalizedPath) }
        val normalizedLanguage = comic.language.trim().ifBlank { "en" }
        return comic.copy(
            title = normalizedTitle,
            path = normalizedPath,
            pageCount = normalizedPageCount,
            currentPage = normalizedCurrentPage,
            readingProgress = normalizedProgress,
            lastModified = comic.lastModified.takeIf { it > 0L } ?: System.currentTimeMillis(),
            addedDate = comic.addedDate.takeIf { it > 0L } ?: System.currentTimeMillis(),
            fileSize = comic.fileSize.coerceAtLeast(0L),
            language = normalizedLanguage
        )
    }

    internal fun ComicRepository.mergeExistingComicWithBackup(existing: Comic, backup: Comic): Comic {
        val effectivePageCount = existing.pageCount.takeIf { it > 0 } ?: backup.pageCount
        val mergedCurrentPage = if (effectivePageCount > 0) {
            backup.currentPage.coerceIn(0, (effectivePageCount - 1).coerceAtLeast(0))
        } else {
            backup.currentPage.coerceAtLeast(0)
        }
        val mergedProgress = when {
            backup.isCompleted -> 1f
            backup.lastReadDate != null || backup.readingProgress > 0f || mergedCurrentPage > 0 ->
                if (effectivePageCount > 0) {
                    readingProgressForPage(mergedCurrentPage, effectivePageCount)
                } else {
                    backup.readingProgress.coerceIn(0f, 1f)
                }
            else -> backup.readingProgress.coerceIn(0f, 1f)
        }
        val preferredPath = if (shouldReplacePath(existing.path, backup.path)) backup.path else existing.path
        val preferredTreeUri = when {
            existing.treeUri.isNullOrBlank() -> backup.treeUri
            shouldReplacePath(existing.path, backup.path) && !backup.treeUri.isNullOrBlank() -> backup.treeUri
            else -> existing.treeUri
        }
        val preferredCoverPath = when {
            preferredPath == existing.path && !existing.coverPath.isNullOrBlank() -> existing.coverPath
            else -> createRestoredCoverPath(existing.id, preferredPath, if (existing.format != ComicFormat.UNKNOWN) existing.format else backup.format)
        }
        return existing.copy(
            title = existing.title.ifBlank { backup.title },
            path = preferredPath,
            format = if (existing.format != ComicFormat.UNKNOWN) existing.format else backup.format,
            coverPath = preferredCoverPath,
            treeUri = preferredTreeUri,
            documentId = existing.documentId ?: backup.documentId,
            pageCount = effectivePageCount,
            fileSize = existing.fileSize.takeIf { it > 0L } ?: backup.fileSize,
            addedDate = existing.addedDate.takeIf { it > 0L } ?: backup.addedDate,
            lastModified = maxOf(existing.lastModified, backup.lastModified),
            folderId = existing.folderId ?: backup.folderId,
            lastReadDate = maxOf(existing.lastReadDate ?: 0L, backup.lastReadDate ?: 0L).takeIf { it > 0L },
            readingProgress = maxOf(existing.readingProgress, mergedProgress),
            currentPage = maxOf(existing.currentPage, mergedCurrentPage),
            isBookmarked = existing.isBookmarked || backup.isBookmarked,
            tags = existing.tags.ifBlank { backup.tags },
            series = existing.series ?: backup.series,
            volume = existing.volume ?: backup.volume,
            issue = existing.issue ?: backup.issue,
            year = existing.year ?: backup.year,
            publisher = existing.publisher ?: backup.publisher,
            author = existing.author ?: backup.author,
            artist = existing.artist ?: backup.artist,
            genre = existing.genre ?: backup.genre,
            language = existing.language.ifBlank { backup.language },
            isCompleted = existing.isCompleted || backup.isCompleted
        )
    }

    internal fun ComicRepository.createRestoredCoverPath(comicId: String, readablePath: String, format: ComicFormat): String? {
        if (format == ComicFormat.UNKNOWN || readablePath.isBlank()) return null
        return runCatching { generateCoverPath(comicId, readablePath, format) }.getOrNull()
    }

    internal fun ComicRepository.repairComicAccessIfPossible(comic: Comic): Comic {
        val rebuilt = when {
            isReadableStoredPath(comic.path) -> comic
            else -> {
                val repairedSource = resolveReadableSourceForComic(comic)
                if (repairedSource != null) {
                    comic.copy(
                        path = repairedSource.path,
                        treeUri = repairedSource.treeUri ?: comic.treeUri
                    )
                } else {
                    comic
                }
            }
        }

        val needsCoverRefresh = rebuilt.coverPath.isNullOrBlank() || !File(rebuilt.coverPath!!).exists()
        if (!needsCoverRefresh || !isReadableStoredPath(rebuilt.path)) return rebuilt

        return rebuilt.copy(
            coverPath = createRestoredCoverPath(rebuilt.id, rebuilt.path, rebuilt.format)
        )
    }

    internal fun ComicRepository.shouldReplacePath(existingPath: String, backupPath: String): Boolean {
        if (backupPath.isBlank()) return false
        if (existingPath.isBlank()) return true
        if (existingPath == backupPath) return false
        return !isReadableStoredPath(existingPath) && isReadableStoredPath(backupPath)
    }

