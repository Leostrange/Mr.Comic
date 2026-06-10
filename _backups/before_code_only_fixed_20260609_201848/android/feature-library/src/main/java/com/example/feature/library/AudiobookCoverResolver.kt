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
import java.io.InputStream

private const val FOLDER_AUDIOBOOK_EMBEDDED_COVER_SAMPLE_COUNT = 12

internal object AudiobookCoverResolver {
    enum class CoverSourceKind { FILE_PATH, URI }
    data class CoverSource(val kind: CoverSourceKind, val value: String)

    fun resolvePersistedCoverUri(
        context: Context,
        audiobook: Audiobook
    ): String? {
        // Single-file audiobook (standalone file OR folder import with exactly 1 chapter):
        // embedded artwork has priority over sidecar so the artist-provided cover wins.
        val isSingleFileBook = !audiobook.sourceIsFolder || audiobook.chapters.size <= 1
        if (isSingleFileBook) {
            for (candidateSource in audiobookCoverSourceCandidates(audiobook)) {
                val extracted = extractEmbeddedCoverUri(
                    context = context,
                    sourceUriString = candidateSource,
                    audiobookId = audiobook.id,
                    allowTempFileFallback = shouldAllowAudiobookTempCoverFallback(audiobook)
                )
                if (extracted != null) return extracted
            }
        }

        val existingCover = audiobook.coverUri?.takeIf { hasUsableCoverUri(context, it) }
        if (existingCover != null) return existingCover

        findDocumentTreeSidecarCoverUri(context, audiobook)?.let { return it }
        findFilesystemSidecarCoverUri(audiobook)?.let { return it }

        audiobookSidecarCoverCandidates(audiobook).firstOrNull { candidate ->
            hasUsableCoverUri(context, candidate)
        }?.let { return it }

        // Multi-chapter folder audiobook: embedded cover is the last resort fallback.
        if (audiobook.sourceIsFolder && !isSingleFileBook) {
            for (candidateSource in audiobookCoverSourceCandidates(audiobook)) {
                val extracted = extractEmbeddedCoverUri(
                    context = context,
                    sourceUriString = candidateSource,
                    audiobookId = audiobook.id,
                    allowTempFileFallback = shouldAllowAudiobookTempCoverFallback(audiobook)
                )
                if (extracted != null) return extracted
            }
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
        val source = resolveAudiobookCoverSource(sourceUriString) ?: return null
        return try {
            when (source.kind) {
                CoverSourceKind.URI -> retriever.setDataSource(context, Uri.parse(source.value))
                CoverSourceKind.FILE_PATH -> retriever.setDataSource(source.value)
            }
            retriever.embeddedPicture ?: extractId3ArtworkBytes(context, source)
        } catch (_: Exception) {
            extractId3ArtworkBytes(context, source)
        } finally {
            runCatching { retriever.release() }
        }
    }

    private fun extractId3ArtworkBytes(context: Context, source: CoverSource): ByteArray? {
        return when (source.kind) {
            CoverSourceKind.URI -> runCatching {
                context.contentResolver.openInputStream(Uri.parse(source.value))?.use(::extractArtworkBytesFromId3v2)
            }.getOrNull()
            CoverSourceKind.FILE_PATH -> runCatching {
                File(source.value).inputStream().use(::extractArtworkBytesFromId3v2)
            }.getOrNull()
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
            bytes.hasWebpSignature() -> "webp"
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

    private fun findFilesystemSidecarCoverUri(audiobook: Audiobook): String? {
        val source = when {
            audiobook.sourceIsFolder -> audiobook.sourcePath
            else -> audiobook.sourcePath.ifBlank { audiobook.chapters.firstOrNull()?.uri.orEmpty() }
        }
        val resolved = resolveAudiobookCoverSource(source) ?: return null
        if (resolved.kind != CoverSourceKind.FILE_PATH) return null
        val root = File(resolved.value)
        val directory = when {
            audiobook.sourceIsFolder -> root.takeIf(File::isDirectory)
            else -> root.parentFile?.takeIf(File::isDirectory)
        } ?: return null
        val audioBaseName = if (audiobook.sourceIsFolder) {
            audiobook.title.lowercase()
        } else {
            root.nameWithoutExtension.lowercase()
        }
        return directory.listFiles()
            ?.filter { file ->
                file.isFile && DOCUMENT_COVER_EXTENSIONS.any { ext ->
                    file.name.endsWith(".$ext", ignoreCase = true)
                }
            }
            ?.minWithOrNull(
                compareBy<File> { file ->
                    val normalized = file.nameWithoutExtension.lowercase()
                    DOCUMENT_COVER_NAME_PRIORITY.indexOfFirst { marker -> normalized.contains(marker) }
                        .let { if (it >= 0) it else Int.MAX_VALUE }
                }.thenByDescending { file ->
                    val normalized = file.nameWithoutExtension.lowercase()
                    when {
                        audioBaseName.isNotBlank() && normalized == audioBaseName -> 3
                        audioBaseName.isNotBlank() && normalized.contains(audioBaseName) -> 2
                        audioBaseName.isNotBlank() && audioBaseName.contains(normalized) -> 1
                        else -> 0
                    }
                }.thenBy { it.name.lowercase() }
            )
            ?.let { Uri.fromFile(it).toString() }
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
            .take(if (audiobook.sourceIsFolder) FOLDER_AUDIOBOOK_EMBEDDED_COVER_SAMPLE_COUNT else Int.MAX_VALUE)
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

internal fun extractArtworkBytesFromId3v2(input: InputStream): ByteArray? {
    val header = ByteArray(10)
    if (!input.readFully(header)) return null
    if (header[0] != 'I'.code.toByte() || header[1] != 'D'.code.toByte() || header[2] != '3'.code.toByte()) {
        return null
    }
    val majorVersion = header[3].toInt() and 0xFF
    if (majorVersion !in 2..4) return null
    val tagSize = synchsafeInt(header, 6)
    if (tagSize <= 0 || tagSize > MAX_ID3_ARTWORK_SCAN_BYTES) return null

    val body = ByteArray(tagSize)
    if (!input.readFully(body)) return null
    var offset = 0
    while (offset + 6 <= body.size) {
        val frameId: String
        val frameSize: Int
        val frameDataOffset: Int
        when (majorVersion) {
            2 -> {
                frameId = body.decodeAscii(offset, 3)
                frameSize = int24(body, offset + 3)
                frameDataOffset = offset + 6
                if (frameId.isBlank() || frameSize <= 0) break
            }
            3, 4 -> {
                if (offset + 10 > body.size) break
                frameId = body.decodeAscii(offset, 4)
                frameSize = if (majorVersion == 4) synchsafeInt(body, offset + 4) else int32(body, offset + 4)
                frameDataOffset = offset + 10
                if (frameId.isBlank() || frameSize <= 0) break
            }
            else -> return null
        }
        if (frameDataOffset + frameSize > body.size) break
        val frameData = body.copyOfRange(frameDataOffset, frameDataOffset + frameSize)
        when (frameId) {
            "APIC" -> parseApicFrame(frameData)?.let { return it }
            "PIC" -> parsePicFrame(frameData)?.let { return it }
        }
        offset = frameDataOffset + frameSize
    }
    return null
}

private fun parseApicFrame(frame: ByteArray): ByteArray? {
    if (frame.size < 5) return null
    var index = 1
    while (index < frame.size && frame[index] != 0.toByte()) index++
    index += 1
    if (index >= frame.size) return null
    index += 1
    if (index >= frame.size) return null
    val descriptionEnd = findEncodedTerminator(frame, index, frame[0].toInt() and 0xFF)
    val imageStart = descriptionEnd ?: index
    val dataStart = if (descriptionEnd != null) {
        descriptionEnd + if ((frame[0].toInt() and 0xFF) in setOf(1, 2)) 2 else 1
    } else {
        imageStart
    }
    return frame.copyOfRange(dataStart.coerceAtMost(frame.size), frame.size)
        .takeIf { it.isLikelyImageBytes() }
}

private fun parsePicFrame(frame: ByteArray): ByteArray? {
    if (frame.size < 6) return null
    var index = 1 + 3 + 1
    val descriptionEnd = findEncodedTerminator(frame, index, frame[0].toInt() and 0xFF)
    val dataStart = if (descriptionEnd != null) {
        descriptionEnd + if ((frame[0].toInt() and 0xFF) in setOf(1, 2)) 2 else 1
    } else {
        index
    }
    return frame.copyOfRange(dataStart.coerceAtMost(frame.size), frame.size)
        .takeIf { it.isLikelyImageBytes() }
}

private fun findEncodedTerminator(bytes: ByteArray, start: Int, encoding: Int): Int? {
    var index = start
    return if (encoding in setOf(1, 2)) {
        while (index + 1 < bytes.size) {
            if (bytes[index] == 0.toByte() && bytes[index + 1] == 0.toByte()) return index
            index += 2
        }
        null
    } else {
        while (index < bytes.size) {
            if (bytes[index] == 0.toByte()) return index
            index += 1
        }
        null
    }
}

private fun InputStream.readFully(target: ByteArray): Boolean {
    var offset = 0
    while (offset < target.size) {
        val read = read(target, offset, target.size - offset)
        if (read < 0) return false
        offset += read
    }
    return true
}

private fun ByteArray.decodeAscii(offset: Int, length: Int): String {
    if (offset < 0 || offset + length > size) return ""
    return copyOfRange(offset, offset + length)
        .takeWhile { it != 0.toByte() }
        .map { it.toInt().and(0xFF).toChar() }
        .joinToString("")
}

private fun synchsafeInt(bytes: ByteArray, offset: Int): Int {
    if (offset + 3 >= bytes.size) return 0
    return ((bytes[offset].toInt() and 0x7F) shl 21) or
        ((bytes[offset + 1].toInt() and 0x7F) shl 14) or
        ((bytes[offset + 2].toInt() and 0x7F) shl 7) or
        (bytes[offset + 3].toInt() and 0x7F)
}

private fun int24(bytes: ByteArray, offset: Int): Int {
    if (offset + 2 >= bytes.size) return 0
    return ((bytes[offset].toInt() and 0xFF) shl 16) or
        ((bytes[offset + 1].toInt() and 0xFF) shl 8) or
        (bytes[offset + 2].toInt() and 0xFF)
}

private fun int32(bytes: ByteArray, offset: Int): Int {
    if (offset + 3 >= bytes.size) return 0
    return ((bytes[offset].toInt() and 0xFF) shl 24) or
        ((bytes[offset + 1].toInt() and 0xFF) shl 16) or
        ((bytes[offset + 2].toInt() and 0xFF) shl 8) or
        (bytes[offset + 3].toInt() and 0xFF)
}

private fun ByteArray.isLikelyImageBytes(): Boolean {
    return size >= 4 && (
        (this[0] == 0xFF.toByte() && this[1] == 0xD8.toByte()) ||
            (size >= 8 &&
                this[0] == 0x89.toByte() &&
                this[1] == 0x50.toByte() &&
                this[2] == 0x4E.toByte() &&
                this[3] == 0x47.toByte()) ||
            (this[0] == 0x47.toByte() && this[1] == 0x49.toByte() && this[2] == 0x46.toByte()) ||
            hasWebpSignature()
    )
}

private fun ByteArray.hasWebpSignature(): Boolean {
    return size >= 12 &&
        this[0] == 'R'.code.toByte() &&
        this[1] == 'I'.code.toByte() &&
        this[2] == 'F'.code.toByte() &&
        this[3] == 'F'.code.toByte() &&
        this[8] == 'W'.code.toByte() &&
        this[9] == 'E'.code.toByte() &&
        this[10] == 'B'.code.toByte() &&
        this[11] == 'P'.code.toByte()
}

internal fun shouldAllowAudiobookTempCoverFallback(audiobook: Audiobook): Boolean =
    audiobook.sourceIsFolder || audiobook.isSingleContentUriAudiobook()

private fun Audiobook.isSingleContentUriAudiobook(): Boolean {
    if (sourceIsFolder) return false
    val candidates = audiobookCoverSourceCandidates(this)
        .filter { it.startsWith("content://", ignoreCase = true) }
        .distinct()
    if (candidates.size != 1) return false
    val chapterUris = chapters
        .mapNotNull { it.uri.takeIf(String::isNotBlank) }
        .distinct()
    return chapterUris.isEmpty() || chapterUris.size == 1
}

private const val MAX_ID3_ARTWORK_SCAN_BYTES = 16 * 1024 * 1024
