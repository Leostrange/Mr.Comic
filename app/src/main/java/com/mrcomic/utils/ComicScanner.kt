package com.example.mrcomic.utils

import android.content.Context
import android.graphics.pdf.PdfRenderer
import android.net.Uri
import android.os.Environment
import android.provider.DocumentsContract
import android.util.Log
import com.example.mrcomic.data.repository.ComicRepository
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.IOException
import java.util.regex.Pattern
import java.util.zip.ZipInputStream

class ComicScanner(private val context: Context, private val repository: ComicRepository) {
    private val comicPattern = Pattern.compile(
        """^(.*?)(?:\s*\((\w+)\))?(?:\s*#(\d+))?(?:\s*-\s*(.*))?\.(cbz|zip|pdf)$""",
        Pattern.CASE_INSENSITIVE
    )

    suspend fun scanDirectory(treeUri: Uri? = null) = withContext(Dispatchers.IO) {
        val rootUri = treeUri ?: DocumentsContract.buildTreeDocumentUri(
            "com.android.externalstorage.documents",
            "primary:${Environment.DIRECTORY_DOCUMENTS}"
        )
        scanUri(rootUri)
    }

    private suspend fun scanUri(uri: Uri) {
        val childrenUri = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri))
        val cursor = context.contentResolver.query(
            childrenUri,
            arrayOf(DocumentsContract.Document.COLUMN_DOCUMENT_ID, DocumentsContract.Document.COLUMN_MIME_TYPE, DocumentsContract.Document.COLUMN_DISPLAY_NAME),
            null, null, null
        ) ?: return

        cursor.use {
            while (it.moveToNext()) {
                val docId = it.getString(0)
                val mimeType = it.getString(1)
                val displayName = it.getString(2)
                val docUri = DocumentsContract.buildDocumentUriUsingTree(uri, docId)

                if (mimeType == DocumentsContract.Document.MIME_TYPE_DIR) {
                    scanUri(docUri) // Рекурсивный вызов для поддиректорий
                } else if (isComicFile(displayName)) {
                    val metadata = extractMetadata(displayName)
                    if (metadata != null) {
                        val filePath = docUri.toString() // Сохраняем Uri как путь
                        // Проверка на существование комикса по пути, чтобы избежать дубликатов
                        val existingComic = repository.getComicByPath(filePath)
                        if (existingComic == null) {
                            val comic = com.example.mrcomic.data.model.Comic(
                                title = metadata.title,
                                series = metadata.series,
                                issueNumber = metadata.issueNumber,
                                filePath = filePath,
                                totalPages = estimateTotalPages(docUri),
                                lastReadPage = 0,
                                lastReadTimestamp = 0
                            )
                            repository.addComic(comic)
                        } else {
                            // Если комикс уже существует, можно обновить его данные, если необходимо
                            // Например, обновить totalPages или lastReadTimestamp
                            // existingComic.totalPages = estimateTotalPages(docUri)
                            // repository.updateComic(existingComic)
                        }
                    }
                }
            }
        }
    }

    private fun isComicFile(fileName: String): Boolean {
        return fileName.lowercase().endsWith(".cbz") || fileName.lowercase().endsWith(".zip") || fileName.lowercase().endsWith(".pdf")
    }

    private data class Metadata(val title: String, val series: String?, val issueNumber: String?)

    private fun extractMetadata(fileName: String): Metadata? {
        val matcher = comicPattern.matcher(fileName)
        return if (matcher.matches()) {
            Metadata(
                title = matcher.group(1)?.trim() ?: fileName.substringBeforeLast("."),
                series = matcher.group(2),
                issueNumber = matcher.group(3)
            )
        } else null
    }

    private fun estimateTotalPages(uri: Uri): Int {
        return try {
            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                when {
                    uri.toString().endsWith(".cbz", true) || uri.toString().endsWith(".zip", true) -> {
                        ZipInputStream(inputStream).use { zip ->
                            var entry = zip.nextEntry
                            var count = 0
                            while (entry != null) {
                                if (!entry.isDirectory && (entry.name.endsWith(".jpg", true) || entry.name.endsWith(".png", true))) {
                                    count++
                                }
                                entry = zip.nextEntry
                            }
                            count
                        }
                    }
                    uri.toString().endsWith(".pdf", true) -> {
                        context.contentResolver.openFileDescriptor(uri, "r")?.use { pfd ->
                            PdfRenderer(pfd).use { renderer ->
                                renderer.pageCount
                            }
                        } ?: 0
                    }
                    else -> 0
                }
            } ?: 0
        } catch (e: Exception) {
            Log.e("ComicScanner", "Error estimating total pages for $uri", e)
            -1 // Возвращаем -1, чтобы указать на ошибку
        }
    }
}

