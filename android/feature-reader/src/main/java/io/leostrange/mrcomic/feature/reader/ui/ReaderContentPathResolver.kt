package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.net.Uri
import android.os.Environment
import android.provider.DocumentsContract
import android.util.Log
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.engine.api.EpubReadablePath
import io.leostrange.mrcomic.engine.api.FormatDetector

/**
 * Resolves content URIs and file paths to readable local paths.
 *
 * Extracted from [ReaderViewModel] to reduce its size.
 * All functions are stateless — they only need a [Context].
 */
internal object ReaderContentPathResolver {

    fun detectFormatForPath(context: Context, path: String): ComicFormat {
        val byExtension = FormatDetector.detectByExtension(path)
        if (byExtension != ComicFormat.UNKNOWN) return byExtension

        return try {
            val uri = Uri.parse(path)
            if (uri.scheme == "content") {
                context.contentResolver.openInputStream(uri)?.use { stream ->
                    FormatDetector.detect(stream, path)
                } ?: ComicFormat.UNKNOWN
            } else {
                val file = java.io.File(path)
                if (!file.exists()) {
                    ComicFormat.UNKNOWN
                } else {
                    file.inputStream().use { stream ->
                        FormatDetector.detect(stream, file.name)
                    }
                }
            }
        } catch (e: Exception) {
            Log.w("ReaderContentPathResolver", "Fallback format detection failed for $path", e)
            ComicFormat.UNKNOWN
        }
    }

    fun resolveReadablePath(context: Context, comic: Comic, fallbackPath: String): String? {
        val treeUri = comic.treeUri
        val documentId = comic.documentId
        if (!treeUri.isNullOrBlank() && !documentId.isNullOrBlank() &&
            DocumentsContract.isTreeUri(Uri.parse(treeUri))
        ) {
            runCatching {
                DocumentsContract.buildDocumentUriUsingTree(Uri.parse(treeUri), documentId).toString()
            }.getOrNull()?.takeIf { hasReadAccess(context, it) }?.let { resolvedUri ->
                cacheContentUriForEpub(context, comic, resolvedUri)?.let { return it }
                return resolvedUri
            }
        }

        if (!fallbackPath.startsWith("content://")) {
            val normalizedPath = fallbackPath.removePrefix("file://")
            EpubReadablePath.ensureLocal(context, normalizedPath)?.let { return it }
            if (isLocalFileReadable(normalizedPath)) return java.io.File(normalizedPath).absolutePath
            val sourceUri = comic.treeUri
            if (!sourceUri.isNullOrBlank() && !DocumentsContract.isTreeUri(Uri.parse(sourceUri)) && hasReadAccess(context, sourceUri)) {
                return sourceUri
            }
            resolveReadablePathFromPersistedPermissions(context, comic)?.let { return it }
            return null
        }
        if (hasReadAccess(context, fallbackPath)) {
            cacheContentUriForEpub(context, comic, fallbackPath)?.let { return it }
            return fallbackPath
        }

        val sourceUri = comic.treeUri
        if (!sourceUri.isNullOrBlank() && !DocumentsContract.isTreeUri(Uri.parse(sourceUri)) && hasReadAccess(context, sourceUri)) {
            return sourceUri
        }

        if (treeUri.isNullOrBlank() || documentId.isNullOrBlank()) {
            return resolveReadablePathFromPersistedPermissions(context, comic)
        }

        return runCatching {
            val rebuilt = DocumentsContract.buildDocumentUriUsingTree(Uri.parse(treeUri), documentId).toString()
            if (hasReadAccess(context, rebuilt)) rebuilt else null
        }.getOrElse {
            resolveReadablePathFromPersistedPermissions(context, comic)
        }
    }

    fun cacheContentUriForEpub(context: Context, comic: Comic, contentUri: String): String? {
        if (!contentUri.startsWith("content://")) return null
        val format = comic.format
        if (format != ComicFormat.EPUB && format != ComicFormat.UNKNOWN) return null
        return EpubReadablePath.ensureLocalFromContentUri(context, contentUri)
    }

    fun resolveReadablePathFromPersistedPermissions(context: Context, comic: Comic): String? {
        val documentId = comic.documentId?.trim().orEmpty()
        if (documentId.isBlank()) return null

        context.contentResolver.persistedUriPermissions
            .asSequence()
            .map { it.uri }
            .forEach { grantedUri ->
                runCatching {
                    when {
                        DocumentsContract.isTreeUri(grantedUri) &&
                            isDocumentInsideTree(DocumentsContract.getTreeDocumentId(grantedUri), documentId) -> {
                            val rebuilt = DocumentsContract.buildDocumentUriUsingTree(grantedUri, documentId).toString()
                            if (hasReadAccess(context, rebuilt)) return rebuilt
                        }

                        DocumentsContract.isDocumentUri(context, grantedUri) &&
                            DocumentsContract.getDocumentId(grantedUri) == documentId &&
                            hasReadAccess(context, grantedUri.toString()) -> {
                            return grantedUri.toString()
                        }
                    }
                }
            }

        return documentIdToExternalPath(documentId)?.takeIf(::isLocalFileReadable)
    }

    fun isDocumentInsideTree(treeDocumentId: String, documentId: String): Boolean {
        val normalizedTreeId = treeDocumentId.trim().removeSuffix("/")
        val normalizedDocumentId = documentId.trim()
        return normalizedDocumentId == normalizedTreeId ||
            normalizedDocumentId.startsWith("$normalizedTreeId/")
    }

    fun documentIdToExternalPath(documentId: String): String? {
        val separatorIndex = documentId.indexOf(':')
        if (separatorIndex <= 0 || separatorIndex >= documentId.lastIndex) return null
        val volume = documentId.substring(0, separatorIndex)
        val relativePath = documentId.substring(separatorIndex + 1).trim().removePrefix("/")
        if (relativePath.isBlank()) return null
        return when {
            volume.equals("primary", ignoreCase = true) -> {
                java.io.File(Environment.getExternalStorageDirectory(), relativePath).absolutePath
            }
            else -> null
        }
    }

    fun isLocalFileReadable(path: String): Boolean {
        return runCatching {
            java.io.File(path).let { file ->
                file.exists() && file.isFile && file.canRead()
            }
        }.getOrDefault(false)
    }

    fun hasReadAccess(context: Context, path: String): Boolean {
        return try {
            context.contentResolver.openInputStream(Uri.parse(path))?.use { true } ?: false
        } catch (_: Exception) {
            false
        }
    }
}
