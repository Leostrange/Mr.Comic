package com.example.feature.library

import android.content.Context
import android.media.MediaMetadataRetriever
import android.net.Uri
import com.example.core.model.Audiobook
import java.io.File

internal object AudiobookCoverResolver {

    fun resolvePersistedCoverUri(
        context: Context,
        audiobook: Audiobook
    ): String? {
        val existingCover = audiobook.coverUri?.takeIf(::hasUsableCoverUri)
        if (existingCover != null) return existingCover

        val candidateSource = when {
            audiobook.sourceIsFolder -> audiobook.chapters.firstOrNull()?.uri
            audiobook.sourcePath.isNotBlank() -> audiobook.sourcePath
            else -> audiobook.chapters.firstOrNull()?.uri
        } ?: return null

        return extractEmbeddedCoverUri(
            context = context,
            sourceUriString = candidateSource,
            audiobookId = audiobook.id
        )
    }

    private fun extractEmbeddedCoverUri(
        context: Context,
        sourceUriString: String,
        audiobookId: String
    ): String? {
        val retriever = MediaMetadataRetriever()
        return try {
            retriever.setDataSource(context, Uri.parse(sourceUriString))
            val artwork = retriever.embeddedPicture ?: return null
            persistArtwork(context, artwork, audiobookId)
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

    private fun hasUsableCoverUri(value: String): Boolean {
        if (value.startsWith("content://")) return true
        val parsed = runCatching { Uri.parse(value) }.getOrNull()
        val path = when {
            parsed == null -> value
            parsed.scheme == "file" -> parsed.path
            parsed.scheme.isNullOrBlank() -> value
            else -> return true
        }
        return !path.isNullOrBlank() && File(path).exists()
    }
}
