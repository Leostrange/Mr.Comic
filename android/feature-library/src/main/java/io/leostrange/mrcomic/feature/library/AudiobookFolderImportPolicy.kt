package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.model.AudioChapter
import io.leostrange.mrcomic.core.model.Audiobook
import java.util.Locale

internal data class AudiobookImportNode(
    val name: String,
    val uri: String,
    val isDirectory: Boolean,
    val mimeType: String? = null,
    val children: List<AudiobookImportNode> = emptyList()
)

internal fun planAudiobookImports(
    root: AudiobookImportNode,
    preferFolderImports: Boolean = true,
    isRoot: Boolean = true
): List<Audiobook> {
    if (!root.isDirectory) {
        return if (root.isAudioNode()) listOf(root.toSingleFileAudiobook()) else emptyList()
    }

    val childDirectories = root.children
        .filter { it.isDirectory }
        .sortedBy { it.name.lowercase(Locale.ROOT) }
    val childFiles = root.children
        .filterNot { it.isDirectory }
        .sortedBy { it.name.lowercase(Locale.ROOT) }

    val directAudioFiles = childFiles.filter { it.isAudioNode() }
    val directImageFiles = childFiles.filter { it.isImageNode() }
    val coverUri = directImageFiles.bestCoverUri()
    val directNonAudioMediaFiles = childFiles.filterNot { it.isAudioNode() || it.isImageNode() }
    val currentLevelImports = when {
        directAudioFiles.isEmpty() -> emptyList()
        isRoot && (childDirectories.isNotEmpty() || directNonAudioMediaFiles.isNotEmpty()) ->
            directAudioFiles.map { file ->
                file.toSingleFileAudiobook(
                    coverUri = coverUri
                )
            }
        preferFolderImports -> listOf(
            Audiobook(
                title = root.name.ifBlank { "Аудиокнига" },
                coverUri = coverUri,
                sourcePath = root.uri,
                sourceIsFolder = true,
                chapters = directAudioFiles.mapIndexed { index, file ->
                    AudioChapter(
                        index = index,
                        title = file.name.substringBeforeLast('.').ifBlank { "Глава ${index + 1}" },
                        uri = file.uri
                    )
                }
            )
        )
        !preferFolderImports -> directAudioFiles.map { file ->
            file.toSingleFileAudiobook(
                coverUri = coverUri
            )
        }
        else -> emptyList()
    }

    return currentLevelImports + childDirectories.flatMap { child ->
        planAudiobookImports(
            root = child,
            preferFolderImports = true,
            isRoot = false
        )
    }
}

private fun AudiobookImportNode.toSingleFileAudiobook(coverUri: String? = null): Audiobook {
    val title = name.substringBeforeLast('.').ifBlank { "Аудиокнига" }
    return Audiobook(
        title = title,
        coverUri = coverUri,
        sourcePath = uri,
        sourceIsFolder = false,
        chapters = listOf(
            AudioChapter(
                index = 0,
                title = title,
                uri = uri
            )
        )
    )
}

private fun List<AudiobookImportNode>.bestCoverUri(): String? {
    if (isEmpty()) return null
    val preferredNames = listOf("cover", "folder", "front", "обложка")
    return minWithOrNull(
        compareBy<AudiobookImportNode> { node ->
            val normalized = node.name.substringBeforeLast('.').lowercase(Locale.ROOT)
            preferredNames.indexOfFirst { marker -> normalized.contains(marker) }
                .let { if (it >= 0) it else Int.MAX_VALUE }
        }.thenBy { it.name.lowercase(Locale.ROOT) }
    )?.uri
}

private fun AudiobookImportNode.isAudioNode(): Boolean {
    val normalizedMime = mimeType?.trim()?.lowercase(Locale.ROOT)
    if (normalizedMime?.startsWith("audio/") == true) return true
    return name.lowercase(Locale.ROOT).let { candidate ->
        candidate.endsWith(".mp3") ||
            candidate.endsWith(".m4a") ||
            candidate.endsWith(".m4b") ||
            candidate.endsWith(".ogg") ||
            candidate.endsWith(".flac") ||
            candidate.endsWith(".wav") ||
            candidate.endsWith(".aac") ||
            candidate.endsWith(".opus") ||
            candidate.endsWith(".wma")
    }
}

private fun AudiobookImportNode.isImageNode(): Boolean {
    val normalizedMime = mimeType?.trim()?.lowercase(Locale.ROOT)
    if (normalizedMime?.startsWith("image/") == true) return true
    return name.lowercase(Locale.ROOT).let { candidate ->
        candidate.endsWith(".jpg") ||
            candidate.endsWith(".jpeg") ||
            candidate.endsWith(".png") ||
            candidate.endsWith(".webp")
    }
}
