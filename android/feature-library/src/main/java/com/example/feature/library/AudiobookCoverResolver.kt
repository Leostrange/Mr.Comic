package com.example.feature.library

import android.content.Context
import android.media.MediaMetadataRetriever
import android.net.Uri
import android.provider.DocumentsContract
import androidx.documentfile.provider.DocumentFile
import androidx.media3.common.Metadata
import androidx.media3.extractor.metadata.flac.PictureFrame
import androidx.media3.extractor.metadata.id3.ApicFrame
import com.example.core.model.Audiobook
import java.io.File

internal object AudiobookCoverResolver {
    enum class CoverSourceKind { FILE_PATH, URI }
    data class CoverSource(val kind: CoverSourceKind, val value: String)

    fun resolvePersistedCoverUri(
        context: Context,
        audiobook: Audiobook
    ): String? {
        val existingCover = audiobook.coverUri?.takeIf { hasUsableCoverUri(context, it) }
        if (existingCover != null) return existingCover

        findDocumentTreeSidecarCoverUri(context, audiobook)?.let { return it }

        audiobookSidecarCoverCandidates(audiobook).firstOrNull { candidate ->
            hasUsableCoverUri(context, candidate)
        }?.let { return it }

        for (candidateSource in audiobookCoverSourceCandidates(audiobook)) {
            val extracted = extractEmbeddedCoverUri(
                context = context,
                sourceUriString = candidateSource,
                audiobookId = audiobook.id,
                allowTempFileFallback = shouldAllowAudiobookTempCoverFallback(audiobook)
            )
            if (extracted != null) return extracted
        }
        return null
    }

    private fun extractEmbeddedCoverUri(
        context: Context,
        sourceUriString: String,
        audiobookId: String,
        allowTempFileFallback: Boolean
    ): String? {
        val direct = extractEmbeddedArtworkBytes(context, sourceUriString)
        if (direct != null) return persistArtwork(context, direct, audiobookId)
        if (!allowTempFileFallback || !sourceUriString.startsWith("content://")) return null

        val tempDir = File(context.cacheDir, "audiobook_cover_probe").apply { mkdirs() }
        val tempFile = File(tempDir, "cover_probe_${sourceUriString.hashCode()}_${System.currentTimeMillis()}.audio")
        return try {
            context.contentResolver.openInputStream(Uri.parse(sourceUriString))?.use { input ->
                tempFile.outputStream().use { output -> input.copyTo(output) }
            } ?: return null
            extractEmbeddedArtworkBytes(context, tempFile.absolutePath)
                ?.let { persistArtwork(context, it, audiobookId) }
        } catch (_: Exception) {
            null
        } finally {
            runCatching { tempFile.delete() }
        }
    }

    private fun extractEmbeddedArtworkBytes(context: Context, sourceUriString: String): ByteArray? {
        val retriever = MediaMetadataRetriever()
        return try {
            val source = resolveAudiobookCoverSource(sourceUriString) ?: return null
            when (source.kind) {
                CoverSourceKind.URI -> retriever.setDataSource(context, Uri.parse(source.value))
                CoverSourceKind.FILE_PATH -> retriever.setDataSource(source.value)
            }
            retriever.embeddedPicture
        } catch (_: Exception) {
            null
        } finally {
            runCatching { retriever.release() }
        }
    }

    private fun persistArtwork(
        context: Context,
        artworkBytes: ByteArray,
        audiobookId: String
    ): String? {
        val coversDir = File(context.filesDir, "audiobook_covers").apply { mkdirs() }
        val safeId = audiobookId.replace(Regex("[^a-zA-Z0-9._-]"), "_")
        val ext = detectArtworkExtension(artworkBytes)
        val target = File(coversDir, "$safeId.$ext")
        return runCatching {
            target.outputStream().use { it.write(artworkBytes) }
            Uri.fromFile(target).toString()
        }.getOrNull()
    }

    private fun detectArtworkExtension(bytes: ByteArray): String {
        return when {
            bytes.size >= 8 &&
                bytes[0] == 0x89.toByte() &&
                bytes[1] == 0x50.toByte() &&
                bytes[2] == 0x4E.toByte() &&
                bytes[3] == 0x47.toByte() -> "png"
            bytes.size >= 3 &&
                bytes[0] == 0x47.toByte() &&
                bytes[1] == 0x49.toByte() &&
                bytes[2] == 0x46.toByte() -> "gif"
            bytes.size >= 2 &&
                bytes[0] == 0xFF.toByte() &&
                bytes[1] == 0xD8.toByte() -> "jpg"
            else -> "img"
        }
    }

    private fun hasUsableCoverUri(context: Context, value: String): Boolean {
        if (value.startsWith("content://")) {
            return runCatching {
                context.contentResolver.openInputStream(Uri.parse(value))?.use { true } == true
            }.getOrDefault(false)
        }
        val parsed = runCatching { Uri.parse(value) }.getOrNull()
        val path = when {
            parsed == null -> value
            parsed.scheme == "file" -> parsed.path
            parsed.scheme.isNullOrBlank() -> value
            else -> return true
        }
        return !path.isNullOrBlank() && File(path).exists()
    }

    private fun findDocumentTreeSidecarCoverUri(context: Context, audiobook: Audiobook): String? {
        val targetUris = buildList {
            if (audiobook.sourcePath.isNotBlank()) add(audiobook.sourcePath)
            audiobook.chapters.forEach { chapter ->
                if (chapter.uri.isNotBlank()) add(chapter.uri)
            }
        }.toSet()
        if (targetUris.isEmpty()) return null

        val treeRoots = targetUris
            .mapNotNull { value ->
                val uri = runCatching { Uri.parse(value) }.getOrNull() ?: return@mapNotNull null
                val isTreeBacked = runCatching { DocumentsContract.isTreeUri(uri) }
                    .getOrDefault(value.contains("/tree/", ignoreCase = true))
                uri.takeIf { it.scheme.equals("content", ignoreCase = true) && isTreeBacked }
            }
            .distinctBy { it.toString().substringBefore("/document/") }

        for (treeUri in treeRoots) {
            val root = DocumentFile.fromTreeUri(context, treeUri) ?: continue
            findCoverNearAudiobookTargets(root, targetUris)?.let { return it }
        }
        return null
    }

    private fun findCoverNearAudiobookTargets(
        root: DocumentFile,
        targetUris: Set<String>,
        depth: Int = 0
    ): String? {
        if (depth > MAX_DOCUMENT_TREE_COVER_SCAN_DEPTH) return null
        val rootUri = root.uri.toString()
        val children = if (root.isDirectory) {
            runCatching { root.listFiles().toList() }.getOrDefault(emptyList())
        } else {
            emptyList()
        }

        if (rootUri in targetUris && root.isDirectory) {
            children.bestDocumentCoverUri()?.let { return it }
        }

        val containsTargetAudio = children.any { child ->
            !child.isDirectory && child.uri.toString() in targetUris
        }
        if (containsTargetAudio) {
            children.bestDocumentCoverUri()?.let { return it }
        }

        children
            .filter { it.isDirectory }
            .forEach { child ->
                findCoverNearAudiobookTargets(child, targetUris, depth + 1)?.let { return it }
            }
        return null
    }

    private fun List<DocumentFile>.bestDocumentCoverUri(): String? {
        return filter { it.isCoverImageCandidate() }
            .minWithOrNull(
                compareBy<DocumentFile> { file ->
                    val normalized = file.name
                        ?.substringBeforeLast('.')
                        ?.lowercase()
                        .orEmpty()
                    DOCUMENT_COVER_NAME_PRIORITY.indexOfFirst { marker -> normalized.contains(marker) }
                        .let { if (it >= 0) it else Int.MAX_VALUE }
                }.thenBy { it.name?.lowercase().orEmpty() }
            )
            ?.uri
            ?.toString()
    }

    private fun DocumentFile.isCoverImageCandidate(): Boolean {
        if (isDirectory) return false
        val normalizedType = type?.lowercase().orEmpty()
        if (normalizedType.startsWith("image/")) return true
        val normalizedName = name?.lowercase().orEmpty()
        return DOCUMENT_COVER_EXTENSIONS.any { normalizedName.endsWith(".$it") }
    }

    private val DOCUMENT_COVER_NAME_PRIORITY = listOf("cover", "folder", "front", "обложка")
    private val DOCUMENT_COVER_EXTENSIONS = listOf("jpg", "jpeg", "png", "webp")
    private const val MAX_DOCUMENT_TREE_COVER_SCAN_DEPTH = 5
}

internal fun audiobookCoverSourceCandidates(audiobook: Audiobook): List<String> {
    return buildList {
        if (!audiobook.sourceIsFolder && audiobook.sourcePath.isNotBlank()) {
            add(audiobook.sourcePath)
        }
        audiobook.chapters
            .sortedBy { it.index }
            .take(if (audiobook.sourceIsFolder) 3 else Int.MAX_VALUE)
            .forEach { chapter ->
                if (chapter.uri.isNotBlank()) add(chapter.uri)
            }
    }.distinct()
}

internal fun audiobookSidecarCoverCandidates(audiobook: Audiobook): List<String> {
    val extensions = listOf("jpg", "jpeg", "png", "webp")
    val folderNames = listOf("cover", "folder")
    return buildList {
        if (audiobook.sourceIsFolder) {
            val folder = audiobook.sourcePath.trimEnd('/', '\\')
            if (folder.isNotBlank()) {
                folderNames.forEach { name ->
                    extensions.forEach { ext -> add("$folder/$name.$ext") }
                }
            }
            return@buildList
        }

        val source = audiobook.sourcePath.ifBlank { audiobook.chapters.firstOrNull()?.uri.orEmpty() }
        val sourcePath = resolveAudiobookCoverSource(source)?.value.orEmpty()
        val separator = maxOf(sourcePath.lastIndexOf('/'), sourcePath.lastIndexOf('\\'))
        if (separator < 0) return@buildList
        val dir = sourcePath.substring(0, separator)
        val base = sourcePath.substring(separator + 1).substringBeforeLast('.', "")
        if (base.isNotBlank()) {
            extensions.forEach { ext -> add("$dir/$base.$ext") }
        }
        folderNames.forEach { name ->
            extensions.forEach { ext -> add("$dir/$name.$ext") }
        }
    }.distinct()
}

internal fun resolveAudiobookCoverSource(value: String): AudiobookCoverResolver.CoverSource? {
    if (value.isBlank()) return null
    val lowerValue = value.lowercase()
    if (lowerValue.startsWith("content://")) {
        return AudiobookCoverResolver.CoverSource(AudiobookCoverResolver.CoverSourceKind.URI, value)
    }
    if (lowerValue.startsWith("file://")) {
        return AudiobookCoverResolver.CoverSource(
            AudiobookCoverResolver.CoverSourceKind.FILE_PATH,
            value.removePrefix("file://")
        )
    }
    val parsed = runCatching { Uri.parse(value) }.getOrNull()
    val scheme = parsed?.scheme
    val parsedPath = parsed?.path
    return when {
        scheme.equals("content", ignoreCase = true) ->
            AudiobookCoverResolver.CoverSource(AudiobookCoverResolver.CoverSourceKind.URI, value)
        scheme.equals("file", ignoreCase = true) && !parsedPath.isNullOrBlank() ->
            AudiobookCoverResolver.CoverSource(AudiobookCoverResolver.CoverSourceKind.FILE_PATH, parsedPath)
        scheme.isNullOrBlank() || value.matches(Regex("""^[A-Za-z]:\\.*""")) ->
            AudiobookCoverResolver.CoverSource(AudiobookCoverResolver.CoverSourceKind.FILE_PATH, value)
        else -> AudiobookCoverResolver.CoverSource(AudiobookCoverResolver.CoverSourceKind.URI, value)
    }
}

internal fun isUsableCoverUriValue(
    value: String,
    fileExists: (String) -> Boolean = { File(it).exists() }
): Boolean {
    if (value.startsWith("content://")) return true
    val source = resolveAudiobookCoverSource(value) ?: return false
    return when (source.kind) {
        AudiobookCoverResolver.CoverSourceKind.URI -> true
        AudiobookCoverResolver.CoverSourceKind.FILE_PATH -> fileExists(source.value)
    }
}

internal fun extractArtworkBytesFromMetadata(metadata: Metadata?): ByteArray? {
    if (metadata == null) return null
    for (index in 0 until metadata.length()) {
        when (val entry = metadata[index]) {
            is ApicFrame -> return entry.pictureData
            is PictureFrame -> return entry.pictureData
        }
    }
    return null
}

internal fun shouldAllowAudiobookTempCoverFallback(audiobook: Audiobook): Boolean =
    audiobook.sourceIsFolder
