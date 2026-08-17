package io.leostrange.mrcomic.core.data.repository

import kotlinx.coroutines.flow.map
import android.net.Uri
import android.os.Environment
import android.provider.DocumentsContract
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import java.io.File
import java.security.MessageDigest

    internal data class ResolvedComicSource(
        val path: String,
        val treeUri: String?
    )

    internal fun ComicRepository.resolveReadableSourceForComic(comic: Comic): ResolvedComicSource? {
        val storedTreeUri = comic.treeUri?.trim().orEmpty()
        val documentId = comic.documentId?.trim().orEmpty()

        if (storedTreeUri.isNotBlank()) {
            val storedUri = runCatching { Uri.parse(storedTreeUri) }.getOrNull()
            if (storedUri != null) {
                if (!DocumentsContract.isTreeUri(storedUri) && isReadableUri(storedUri)) {
                    return ResolvedComicSource(
                        path = storedTreeUri,
                        treeUri = storedTreeUri
                    )
                }
                if (DocumentsContract.isTreeUri(storedUri) && documentId.isNotBlank()) {
                    val rebuilt = runCatching { DocumentsContract.buildDocumentUriUsingTree(storedUri, documentId) }.getOrNull()
                    if (rebuilt != null && isReadableUri(rebuilt)) {
                        return ResolvedComicSource(
                            path = rebuilt.toString(),
                            treeUri = storedTreeUri
                        )
                    }
                }
            }
        }

        if (documentId.isNotBlank()) {
            context.contentResolver.persistedUriPermissions
                .asSequence()
                .map { it.uri }
                .forEach { grantedUri ->
                    runCatching {
                        when {
                            DocumentsContract.isTreeUri(grantedUri) &&
                                isDocumentInsideTree(DocumentsContract.getTreeDocumentId(grantedUri), documentId) -> {
                                val rebuilt = DocumentsContract.buildDocumentUriUsingTree(grantedUri, documentId)
                                if (isReadableUri(rebuilt)) {
                                    return ResolvedComicSource(
                                        path = rebuilt.toString(),
                                        treeUri = grantedUri.toString()
                                    )
                                }
                            }

                            DocumentsContract.isDocumentUri(context, grantedUri) &&
                                DocumentsContract.getDocumentId(grantedUri) == documentId &&
                                isReadableUri(grantedUri) -> {
                                return ResolvedComicSource(
                                    path = grantedUri.toString(),
                                    treeUri = grantedUri.toString()
                                )
                            }
                        }
                    }
                }

            documentIdToExternalPath(documentId)
                ?.takeIf(::isReadableStoredPath)
                ?.let { readablePath ->
                    return ResolvedComicSource(
                        path = readablePath,
                        treeUri = comic.treeUri
                    )
                }
        }

        return null
    }

    internal fun ComicRepository.isDocumentInsideTree(treeDocumentId: String, documentId: String): Boolean {
        val normalizedTreeId = treeDocumentId.trim().removeSuffix("/")
        val normalizedDocumentId = documentId.trim()
        return normalizedDocumentId == normalizedTreeId ||
            normalizedDocumentId.startsWith("$normalizedTreeId/")
    }

    internal fun ComicRepository.documentIdToExternalPath(documentId: String): String? {
        val separatorIndex = documentId.indexOf(':')
        if (separatorIndex <= 0 || separatorIndex >= documentId.lastIndex) return null
        val volume = documentId.substring(0, separatorIndex)
        val relativePath = documentId.substring(separatorIndex + 1).trim().removePrefix("/")
        if (relativePath.isBlank()) return null
        return when {
            volume.equals("primary", ignoreCase = true) -> {
                File(Environment.getExternalStorageDirectory(), relativePath).absolutePath
            }
            else -> null
        }
    }

    internal fun ComicRepository.isReadableUri(uri: Uri): Boolean {
        return runCatching {
            context.contentResolver.openInputStream(uri)?.use { true } ?: false
        }.getOrDefault(false)
    }

    internal fun ComicRepository.isReadableStoredPath(path: String): Boolean {
        if (path.isBlank()) return false
        return when {
            path.startsWith("content://") -> runCatching {
                context.contentResolver.openInputStream(Uri.parse(path))?.use { true } ?: false
            }.getOrDefault(false)
            else -> File(path).let { file -> file.exists() && file.isFile && file.canRead() }
        }
    }

    internal fun ComicRepository.resolveReadablePath(uri: Uri, displayName: String?, format: ComicFormat): String {
        if (uri.scheme != "content") {
            return uri.path ?: uri.toString()
        }

        if (canReadContentUriDirectly(uri, format)) {
            return uri.toString()
        }

        val extension = displayName
            ?.substringAfterLast('.', "")
            ?.lowercase()
            ?.takeIf { it.isNotBlank() }
            ?: when (format) {
                ComicFormat.CBZ -> "cbz"
                ComicFormat.ZIP -> "zip"
                ComicFormat.CBR -> "cbr"
                ComicFormat.RAR -> "rar"
                ComicFormat.PDF -> "pdf"
                ComicFormat.EPUB -> "epub"
                ComicFormat.SEVENZ -> "7z"
                ComicFormat.TAR -> "tar"
                ComicFormat.FB2 -> "fb2"
                ComicFormat.TXT -> "txt"
                ComicFormat.HTML -> "html"
                ComicFormat.MARKDOWN -> "md"
                ComicFormat.RTF -> "rtf"
                ComicFormat.MOBI -> "mobi"
                ComicFormat.AZW3 -> "azw3"
                ComicFormat.DOCX -> "docx"
                ComicFormat.ODT -> "odt"
                ComicFormat.DJVU -> "djvu"
                else -> "bin"
            }

        val managedDir = File(context.filesDir, "library").apply { mkdirs() }
        val hashedName = stableHash(uri.toString())
        val managedFile = File(managedDir, "$hashedName.$extension")

        if (!managedFile.exists() || managedFile.length() == 0L) {
            context.contentResolver.openInputStream(uri)?.use { input ->
                managedFile.outputStream().use { output -> input.copyTo(output) }
            } ?: return uri.toString()
        }

        return managedFile.absolutePath
    }

    internal fun ComicRepository.canReadContentUriDirectly(uri: Uri, format: ComicFormat): Boolean {
        return runCatching {
            when (format) {
                ComicFormat.PDF -> {
                    context.contentResolver.openFileDescriptor(uri, "r")?.use { true } ?: false
                }
                else -> {
                    context.contentResolver.openInputStream(uri)?.use { true } ?: false
                }
            }
        }.getOrDefault(false)
    }

    internal fun ComicRepository.stableHash(text: String): String {
        val digest = MessageDigest.getInstance("SHA-256").digest(text.toByteArray())
        return digest.joinToString("") { "%02x".format(it) }.take(24)
    }

