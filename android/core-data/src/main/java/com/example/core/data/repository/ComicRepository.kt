package com.example.core.data.repository

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.LinearGradient
import android.graphics.Matrix
import android.graphics.Paint
import android.graphics.RectF
import android.graphics.Shader
import android.graphics.Typeface
import android.graphics.pdf.PdfRenderer
import android.net.Uri
import android.os.Environment
import android.os.ParcelFileDescriptor
import android.provider.DocumentsContract
import android.util.Base64
import android.util.Log
import android.util.Xml
import androidx.documentfile.provider.DocumentFile
import com.example.core.data.db.AppDatabase
import com.example.core.model.Comic
import com.example.core.model.ComicFormat
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.withContext
import net.sf.sevenzipjbinding.ExtractOperationResult
import net.sf.sevenzipjbinding.IInArchive
import net.sf.sevenzipjbinding.PropID
import net.sf.sevenzipjbinding.SevenZip
import net.sf.sevenzipjbinding.SevenZipException
import net.sf.sevenzipjbinding.impl.RandomAccessFileInStream
import net.lingala.zip4j.ZipFile
import org.apache.commons.compress.archivers.sevenz.SevenZFile
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream
import org.xmlpull.v1.XmlPullParser
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.Closeable
import java.io.File
import java.io.InputStream
import java.io.RandomAccessFile
import java.net.URLDecoder
import java.security.MessageDigest
import java.util.zip.ZipInputStream
import kotlin.math.min
import kotlin.math.roundToInt
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class ComicRepository @Inject constructor(
    @ApplicationContext private val context: Context,
    db: AppDatabase
) {
    private val comicDao = db.comicDao()
    private val quoteDao = db.quoteDao()
    private val persistentCoversDir by lazy { File(context.filesDir, "covers").apply { mkdirs() } }
    private val legacyCoversDir by lazy { File(context.cacheDir, "covers").apply { mkdirs() } }

    data class RestoreComicResult(
        val comic: Comic,
        val inserted: Boolean,
        val isReadable: Boolean
    )

    data class RepairLibraryAccessResult(
        val repaired: Int,
        val alreadyReadable: Int,
        val skipped: Int,
        val missing: Int
    )

    companion object {
        private const val TAG = "ComicRepository"
        private val IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
        private val ZIP_MAGIC    = byteArrayOf(0x50, 0x4B, 0x03, 0x04)
        private val RAR4_MAGIC   = byteArrayOf(0x52, 0x61, 0x72, 0x21, 0x1A, 0x07, 0x00)
        private val RAR5_MAGIC   = byteArrayOf(0x52, 0x61, 0x72, 0x21, 0x1A, 0x07, 0x01, 0x00)
        private val PDF_MAGIC    = byteArrayOf(0x25, 0x50, 0x44, 0x46)
        private val SEVENZ_MAGIC = byteArrayOf(0x37, 0x7A, 0xBC.toByte(), 0xAF.toByte(), 0x27, 0x1C)
        private val MOBI_MAGIC   = "BOOKMOBI".encodeToByteArray()
        private val DJVU_CONTAINER_MAGIC = "AT&TFORM".encodeToByteArray()
        private val DJVU_SINGLE_MAGIC = "DJVU".encodeToByteArray()
        private val DJVU_MULTI_MAGIC = "DJVM".encodeToByteArray()
        private const val XLINK_NS = "http://www.w3.org/1999/xlink"
    }

    fun getAllComics(): Flow<List<Comic>> = comicDao.getAllComics()

    fun searchComics(query: String): Flow<List<Comic>> {
        val normalized = query.trim().lowercase()
        if (normalized.isBlank()) return comicDao.getAllComics()
        return comicDao.searchComics(normalized)
    }

    suspend fun getComicById(id: String): Comic? = comicDao.getComicById(id)

    suspend fun getComicByPath(path: String): Comic? = comicDao.getComicByPath(path)

    suspend fun restoreComicFromBackup(backupComic: Comic): RestoreComicResult? = withContext(Dispatchers.IO) {
        val normalized = normalizeBackupComic(backupComic) ?: return@withContext null
        val existing = comicDao.getComicById(normalized.id) ?: comicDao.getComicByPath(normalized.path)
        if (existing != null) {
            val merged = repairComicAccessIfPossible(mergeExistingComicWithBackup(existing, normalized))
            comicDao.updateComic(merged)
            refreshQuoteSnapshotsForComic(merged)
            return@withContext RestoreComicResult(
                comic = merged,
                inserted = false,
                isReadable = isReadableStoredPath(merged.path)
            )
        }

        val comicId = normalized.id.ifBlank { java.util.UUID.randomUUID().toString() }
        val restored = repairComicAccessIfPossible(normalized.copy(
            id = comicId,
            coverPath = createRestoredCoverPath(comicId, normalized.path, normalized.format)
        ))
        comicDao.insertComic(restored)
        val insertedComic = comicDao.getComicById(comicId) ?: comicDao.getComicByPath(restored.path) ?: restored
        refreshQuoteSnapshotsForComic(insertedComic)
        RestoreComicResult(
            comic = insertedComic,
            inserted = true,
            isReadable = isReadableStoredPath(insertedComic.path)
        )
    }

    suspend fun addComic(uri: Uri): Comic? = withContext(Dispatchers.IO) {
        val sourcePath = uri.toString()
        val existing = comicDao.getComicByPath(sourcePath)
        if (existing != null) return@withContext existing

        val singleDoc = DocumentFile.fromSingleUri(context, uri)
        val localFile = if (singleDoc == null && (uri.scheme == "file" || uri.scheme == null)) {
            val candidatePath = uri.path ?: uri.toString()
            File(candidatePath)
        } else {
            null
        }
        if (singleDoc?.isDirectory == true) return@withContext null
        if (singleDoc == null && (localFile == null || !localFile.exists() || localFile.isDirectory)) return@withContext null

        val displayName = singleDoc?.name ?: localFile?.name
        val fileSize = singleDoc?.length()?.coerceAtLeast(0L) ?: localFile?.length()?.coerceAtLeast(0L) ?: 0L
        val lastModified = singleDoc?.lastModified()?.takeIf { it > 0L } ?: localFile?.lastModified()
        val mimeType = singleDoc?.type

        val format = detectFormat(uri, displayName, mimeType)
        if (format == ComicFormat.UNKNOWN) {
            Log.w(TAG, "Unsupported format, skipping: ${displayName ?: uri}")
            return@withContext null
        }
        val readablePath = resolveReadablePath(uri, displayName, format)

        val now = System.currentTimeMillis()
        val comicId = java.util.UUID.randomUUID().toString()
        val defaultTitle = displayName?.substringBeforeLast('.')?.ifBlank { displayName } ?: "Untitled"

        // Extract ComicInfo.xml metadata for CBZ/ZIP archives
        val meta = if (format == ComicFormat.CBZ || format == ComicFormat.ZIP) {
            runCatching { extractComicInfoMeta(readablePath) }.getOrNull()
        } else null

        val comic = Comic(
            id = comicId,
            title = meta?.title ?: defaultTitle,
            path = readablePath,
            format = format,
            coverPath = generateCoverPath(comicId, readablePath, format),
            fileSize = fileSize,
            lastModified = lastModified ?: now,
            treeUri = uri.toString().takeIf { uri.scheme == "content" },
            documentId = runCatching {
                if (DocumentsContract.isDocumentUri(context, uri)) DocumentsContract.getDocumentId(uri) else null
            }.getOrNull(),
            series    = meta?.series,
            volume    = meta?.volume,
            issue     = meta?.number,
            year      = meta?.year,
            publisher = meta?.publisher,
            author    = meta?.writer,
            artist    = meta?.penciller,
            genre     = meta?.genre,
            language  = meta?.languageISO ?: "en"
        )
        comicDao.insertComic(comic)
        comic
    }

    suspend fun addComicsFromDirectory(treeUri: Uri) = withContext(Dispatchers.IO) {
        val root = DocumentFile.fromTreeUri(context, treeUri) ?: return@withContext
        val treeUriString = treeUri.toString()

        // Pre-load existing paths from Room for fast in-scan dedup
        val existingPaths = comicDao.getAllPaths().toHashSet()

        val discovered = mutableListOf<Comic>()
        val now = System.currentTimeMillis()
        val stack = ArrayDeque<Pair<DocumentFile, String?>>()
        stack.add(root to null)

        while (stack.isNotEmpty()) {
            val (dir, folderPath) = stack.removeLast()
            dir.listFiles()
                .sortedWith(
                    compareBy<DocumentFile>(
                        { !it.isDirectory },
                        { it.name?.lowercase() ?: "" }
                    )
                )
                .forEach { child ->
                when {
                    child.isDirectory -> {
                        val childName = child.name?.trim()?.ifBlank { "Folder" } ?: "Folder"
                        val childFolderPath = folderPath
                            ?.let { "$it/$childName" }
                            ?: childName
                        stack.add(child to childFolderPath)
                    }
                    child.isFile -> {
                        val format = detectFormat(child.uri, child.name, child.type)
                        if (format != ComicFormat.UNKNOWN) {
                            // Tree URI child documents remain accessible via persistent permission granted
                            // on ACTION_OPEN_DOCUMENT_TREE — no need to copy files to internal storage.
                            val readablePath = child.uri.toString()
                            if (readablePath in existingPaths) return@forEach
                            val comicId = java.util.UUID.randomUUID().toString()
                            discovered.add(
                                Comic(
                                    id = comicId,
                                    title = child.name?.substringBeforeLast('.')?.ifBlank { child.name } ?: "Untitled",
                                    path = readablePath,
                                    format = format,
                                    coverPath = generateCoverPath(comicId, readablePath, format),
                                    fileSize = child.length().coerceAtLeast(0L),
                                    lastModified = child.lastModified().takeIf { it > 0L } ?: now,
                                    folderId = folderPath,
                                    treeUri = treeUriString,
                                    documentId = runCatching { DocumentsContract.getDocumentId(child.uri) }.getOrNull()
                                )
                            )
                            existingPaths += readablePath
                        }
                    }
                }
            }
        }

        if (discovered.isNotEmpty()) {
            comicDao.insertComics(discovered)
        }
    }

    suspend fun deleteComic(comicId: String) {
        comicDao.deleteComic(comicId)
    }

    suspend fun toggleBookmark(comicId: String) {
        val comic = comicDao.getComicById(comicId) ?: return
        comicDao.updateComic(comic.copy(isBookmarked = !comic.isBookmarked))
    }

    suspend fun updateComicMeta(comicId: String, title: String, tags: String, libraryShelf: String) {
        val comic = comicDao.getComicById(comicId) ?: return
        val updated = comic.copy(
            title = title.trim().ifBlank { comic.title },
            tags = tags.trim(),
            libraryShelf = libraryShelf.trim().uppercase().takeIf {
                it == "GRAPHIC" || it == "BOOKS"
            }.orEmpty()
        )
        comicDao.updateComic(updated)
        refreshQuoteSnapshotsForComic(updated)
    }

    suspend fun markCompleted(comicId: String, completed: Boolean = true) {
        val comic = comicDao.getComicById(comicId) ?: return
        comicDao.updateComic(
            comic.copy(
                isCompleted      = completed,
                readingProgress  = if (completed) 1f else comic.readingProgress,
                lastReadDate     = System.currentTimeMillis()
            )
        )
    }

    suspend fun updateProgress(comicId: String, currentPage: Int, totalPages: Int) {
        val maxPage = (totalPages - 1).coerceAtLeast(0)
        val safePage = currentPage.coerceIn(0, maxPage)
        val progress = if (totalPages <= 0) 0f else ((safePage + 1).toFloat() / totalPages.toFloat())
        comicDao.updateProgress(comicId, safePage, progress.coerceIn(0f, 1f), System.currentTimeMillis(), totalPages.coerceAtLeast(0))
    }

    suspend fun repairLibraryAccess(treeUri: Uri): RepairLibraryAccessResult = withContext(Dispatchers.IO) {
        val treeDocumentId = runCatching { DocumentsContract.getTreeDocumentId(treeUri) }
            .getOrNull()
            ?.trim()
            .orEmpty()
        if (treeDocumentId.isBlank()) {
            return@withContext RepairLibraryAccessResult(
                repaired = 0,
                alreadyReadable = 0,
                skipped = 0,
                missing = 0
            )
        }

        val treeUriString = treeUri.toString()
        val comics = comicDao.getAllComics().first()
        var repaired = 0
        var alreadyReadable = 0
        var skipped = 0
        var missing = 0

        comics.forEach { comic ->
            val documentId = comic.documentId?.trim().orEmpty()
            if (documentId.isBlank() || !isDocumentInsideTree(treeDocumentId, documentId)) {
                skipped++
                return@forEach
            }

            val rebuiltUri = runCatching {
                DocumentsContract.buildDocumentUriUsingTree(treeUri, documentId)
            }.getOrNull()

            if (rebuiltUri == null || !isReadableUri(rebuiltUri)) {
                missing++
                return@forEach
            }

            val rebuiltPath = rebuiltUri.toString()
            val currentReadable = isReadableStoredPath(comic.path)
            val needsPathRefresh = comic.path != rebuiltPath || comic.treeUri != treeUriString
            val needsCoverRefresh = comic.coverPath.isNullOrBlank() || !File(comic.coverPath!!).exists()

            if (!needsPathRefresh && currentReadable && !needsCoverRefresh) {
                alreadyReadable++
                return@forEach
            }

            val updated = repairComicAccessIfPossible(
                comic.copy(
                path = rebuiltPath,
                treeUri = treeUriString,
                coverPath = createRestoredCoverPath(comic.id, rebuiltPath, comic.format)
                )
            )
            comicDao.updateComic(updated)
            refreshQuoteSnapshotsForComic(updated)
            repaired++
        }

        RepairLibraryAccessResult(
            repaired = repaired,
            alreadyReadable = alreadyReadable,
            skipped = skipped,
            missing = missing
        )
    }

    suspend fun repairStoredCovers(): Int = withContext(Dispatchers.IO) {
        val comics = comicDao.getAllComics().first()
        var repaired = 0

        comics.forEach { comic ->
            if (comic.format == ComicFormat.UNKNOWN || comic.path.isBlank() || !isReadableStoredPath(comic.path)) {
                return@forEach
            }

            val expectedPersistentCover = coverFileForComic(comic.id)
            val legacyCover = legacyCoverFileForComic(comic.id)
            val currentCover = comic.coverPath?.takeIf { it.isNotBlank() }?.let(::File)

            var resolvedCoverPath: String? = when {
                expectedPersistentCover.exists() -> expectedPersistentCover.absolutePath
                legacyCover.exists() -> {
                    runCatching {
                        legacyCover.copyTo(expectedPersistentCover, overwrite = true)
                    }
                    expectedPersistentCover.takeIf { it.exists() }?.absolutePath
                }
                currentCover?.exists() == true && currentCover.absolutePath != expectedPersistentCover.absolutePath -> {
                    runCatching {
                        currentCover.copyTo(expectedPersistentCover, overwrite = true)
                    }
                    expectedPersistentCover.takeIf { it.exists() }?.absolutePath
                }
                else -> null
            }

            if (resolvedCoverPath == null) {
                resolvedCoverPath = createRestoredCoverPath(comic.id, comic.path, comic.format)
            }

            if (!resolvedCoverPath.isNullOrBlank() && resolvedCoverPath != comic.coverPath) {
                comicDao.updateComic(comic.copy(coverPath = resolvedCoverPath))
                repaired++
            }
        }

        repaired
    }

    private fun detectFormat(uri: Uri, name: String?, mimeType: String?): ComicFormat {
        // Extension is checked FIRST — EPUB files are ZIP archives at the byte level,
        // so magic-byte detection would incorrectly return CBZ for them.
        val ext = name?.substringAfterLast('.', missingDelimiterValue = "")?.lowercase()
        val byExt = when (ext) {
            "cbz"       -> ComicFormat.CBZ
            "zip"       -> ComicFormat.ZIP
            "cbr"       -> ComicFormat.CBR
            "rar"       -> ComicFormat.RAR
            "cb7", "7z" -> ComicFormat.SEVENZ
            "cbt", "tar"-> ComicFormat.TAR
            "pdf"       -> ComicFormat.PDF
            "epub"      -> ComicFormat.EPUB
            "fb2"       -> ComicFormat.FB2
            "txt", "text" -> ComicFormat.TXT
            "htm", "html", "xhtml" -> ComicFormat.HTML
            "md", "markdown" -> ComicFormat.MARKDOWN
            "rtf" -> ComicFormat.RTF
            "mobi", "prc" -> ComicFormat.MOBI
            "azw", "azw3", "kf8" -> ComicFormat.AZW3
            "docx" -> ComicFormat.DOCX
            "odt" -> ComicFormat.ODT
            "djvu", "djv" -> ComicFormat.DJVU
            else        -> ComicFormat.UNKNOWN
        }
        if (byExt != ComicFormat.UNKNOWN) return byExt

        // MIME type second
        val byMime = when (mimeType) {
            "application/pdf"                              -> ComicFormat.PDF
            "application/epub+zip"                         -> ComicFormat.EPUB
            "application/zip", "application/x-cbz"        -> ComicFormat.CBZ
            "application/x-cbr",
            "application/vnd.comicbook-rar",
            "application/x-rar-compressed",
            "application/x-rar",
            "application/vnd.rar"                          -> ComicFormat.CBR
            "application/x-fictionbook+xml",
            "text/xml"                                     -> ComicFormat.FB2
            "text/plain"                                   -> ComicFormat.TXT
            "text/html", "application/xhtml+xml"           -> ComicFormat.HTML
            "text/markdown"                                -> ComicFormat.MARKDOWN
            "application/rtf", "text/rtf"                  -> ComicFormat.RTF
            "application/x-mobipocket-ebook",
            "application/vnd.amazon.ebook",
            "application/vnd.amazon.mobi8-ebook"           -> ComicFormat.MOBI
            "image/vnd.djvu",
            "image/x-djvu",
            "image/vnd.djvu+multipage",
            "application/x-djvu"                           -> ComicFormat.DJVU
            "application/vnd.openxmlformats-officedocument.wordprocessingml.document" -> ComicFormat.DOCX
            "application/vnd.oasis.opendocument.text"      -> ComicFormat.ODT
            else                                           -> ComicFormat.UNKNOWN
        }
        if (byMime != ComicFormat.UNKNOWN) return byMime

        // Magic bytes last (fallback for files without recognizable extension or MIME)
        return detectByMagic(uri)
    }

    private fun normalizeBackupComic(comic: Comic): Comic? {
        val normalizedPath = comic.path.trim()
        if (normalizedPath.isBlank()) return null
        val normalizedPageCount = comic.pageCount.coerceAtLeast(0)
        val normalizedCurrentPage = if (normalizedPageCount > 0) {
            comic.currentPage.coerceIn(0, (normalizedPageCount - 1).coerceAtLeast(0))
        } else {
            comic.currentPage.coerceAtLeast(0)
        }
        val normalizedProgress = when {
            normalizedPageCount > 0 -> ((normalizedCurrentPage + 1).toFloat() / normalizedPageCount.toFloat()).coerceIn(0f, 1f)
            else -> comic.readingProgress.coerceIn(0f, 1f)
        }
        val normalizedTitle = comic.title.trim().ifBlank { deriveTitleFromPath(normalizedPath) }
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

    private fun mergeExistingComicWithBackup(existing: Comic, backup: Comic): Comic {
        val effectivePageCount = existing.pageCount.takeIf { it > 0 } ?: backup.pageCount
        val mergedCurrentPage = if (effectivePageCount > 0) {
            backup.currentPage.coerceIn(0, (effectivePageCount - 1).coerceAtLeast(0))
        } else {
            backup.currentPage.coerceAtLeast(0)
        }
        val mergedProgress = when {
            effectivePageCount > 0 -> ((mergedCurrentPage + 1).toFloat() / effectivePageCount.toFloat()).coerceIn(0f, 1f)
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

    private fun createRestoredCoverPath(comicId: String, readablePath: String, format: ComicFormat): String? {
        if (format == ComicFormat.UNKNOWN || readablePath.isBlank()) return null
        return runCatching { generateCoverPath(comicId, readablePath, format) }.getOrNull()
    }

    private fun repairComicAccessIfPossible(comic: Comic): Comic {
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

    private fun shouldReplacePath(existingPath: String, backupPath: String): Boolean {
        if (backupPath.isBlank()) return false
        if (existingPath.isBlank()) return true
        if (existingPath == backupPath) return false
        return !isReadableStoredPath(existingPath) && isReadableStoredPath(backupPath)
    }

    private data class ResolvedComicSource(
        val path: String,
        val treeUri: String?
    )

    private fun resolveReadableSourceForComic(comic: Comic): ResolvedComicSource? {
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

    private fun isDocumentInsideTree(treeDocumentId: String, documentId: String): Boolean {
        val normalizedTreeId = treeDocumentId.trim().removeSuffix("/")
        val normalizedDocumentId = documentId.trim()
        return normalizedDocumentId == normalizedTreeId ||
            normalizedDocumentId.startsWith("$normalizedTreeId/")
    }

    private fun documentIdToExternalPath(documentId: String): String? {
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

    private fun isReadableUri(uri: Uri): Boolean {
        return runCatching {
            context.contentResolver.openInputStream(uri)?.use { true } ?: false
        }.getOrDefault(false)
    }

    private fun isReadableStoredPath(path: String): Boolean {
        if (path.isBlank()) return false
        return when {
            path.startsWith("content://") -> runCatching {
                context.contentResolver.openInputStream(Uri.parse(path))?.use { true } ?: false
            }.getOrDefault(false)
            else -> File(path).let { file -> file.exists() && file.isFile && file.canRead() }
        }
    }

    private fun deriveTitleFromPath(path: String): String {
        val parsed = runCatching { Uri.parse(path) }.getOrNull()
        val rawName = parsed?.lastPathSegment
            ?: path.substringAfterLast('/')
                .substringAfterLast('\\')
        return runCatching { URLDecoder.decode(rawName, "UTF-8") }
            .getOrDefault(rawName)
            .substringBeforeLast('.')
            .ifBlank { "Untitled" }
    }

    private fun detectByMagic(uri: Uri): ComicFormat {
        return try {
            val header = ByteArray(80)
            val read = when (uri.scheme) {
                "content" -> context.contentResolver.openInputStream(uri)?.use { it.read(header) } ?: -1
                "file" -> {
                    val path = uri.path ?: return ComicFormat.UNKNOWN
                    File(path).inputStream().use { it.read(header) }
                }
                null -> {
                    val path = uri.path ?: uri.toString()
                    val file = File(path)
                    if (!file.exists()) return ComicFormat.UNKNOWN
                    file.inputStream().use { it.read(header) }
                }
                else -> -1
            }
            if (read < 4) return ComicFormat.UNKNOWN
            when {
                header.startsWithMagic(ZIP_MAGIC) -> detectZipContainerFormat(uri)
                header.startsWithMagic(RAR4_MAGIC) || header.startsWithMagic(RAR5_MAGIC) -> ComicFormat.CBR
                header.startsWithMagic(PDF_MAGIC) -> ComicFormat.PDF
                header.startsWithMagic(SEVENZ_MAGIC) -> ComicFormat.SEVENZ
                header.hasSliceAt(60, MOBI_MAGIC) -> ComicFormat.MOBI
                header.isDjvuDocument() -> ComicFormat.DJVU
                else -> ComicFormat.UNKNOWN
            }
        } catch (e: Exception) {
            Log.w(TAG, "Magic detection failed for $uri", e)
            ComicFormat.UNKNOWN
        }
    }

    private fun detectZipContainerFormat(uri: Uri): ComicFormat {
        val containerFormat = runCatching {
            openInputStream(uri)?.use { input ->
                ZipInputStream(input.buffered()).use { zip ->
                    generateSequence { zip.nextEntry }
                        .take(12)
                        .map { it.name.lowercase() }
                        .firstNotNullOfOrNull { entryName ->
                            when {
                                entryName == "word/document.xml" -> ComicFormat.DOCX
                                entryName == "mimetype" -> {
                                    val mime = zip.readBytes().toString(Charsets.UTF_8).trim()
                                    if (mime == "application/vnd.oasis.opendocument.text") ComicFormat.ODT else null
                                }
                                entryName == "content.xml" -> ComicFormat.ODT
                                else -> null
                            }
                        }
                }
            }
        }.getOrNull()
        return containerFormat ?: ComicFormat.CBZ
    }

    private fun generateCoverPath(comicId: String, sourcePath: String, format: ComicFormat): String? {
        return try {
            val coverFile = coverFileForComic(comicId)
            if (coverFile.exists()) return coverFile.absolutePath
            val legacyCoverFile = legacyCoverFileForComic(comicId)
            if (legacyCoverFile.exists()) {
                runCatching { legacyCoverFile.copyTo(coverFile, overwrite = true) }
                if (coverFile.exists()) return coverFile.absolutePath
            }

            val bitmap = when (format) {
                ComicFormat.CBZ, ComicFormat.ZIP -> extractCoverFromZip(sourcePath)
                ComicFormat.CBR, ComicFormat.RAR -> extractCoverFromRar(sourcePath)
                ComicFormat.PDF -> extractCoverFromPdf(sourcePath)
                ComicFormat.SEVENZ -> extractCoverFrom7z(sourcePath)
                ComicFormat.TAR -> extractCoverFromTar(sourcePath)
                ComicFormat.FB2 -> extractCoverFromFb2(sourcePath)
                ComicFormat.EPUB -> extractCoverFromEpub(sourcePath)
                ComicFormat.DJVU -> extractCoverFromDjvuPlaceholder(sourcePath)
                else -> null
            } ?: return null

            coverFile.outputStream().use { out ->
                bitmap.compress(Bitmap.CompressFormat.JPEG, 82, out)
            }
            if (!bitmap.isRecycled) bitmap.recycle()
            coverFile.absolutePath
        } catch (e: Throwable) {
            Log.w(TAG, "Cover generation failed for $sourcePath", e)
            null
        }
    }

    private fun coverFileForComic(comicId: String): File = File(persistentCoversDir, "$comicId.jpg")

    private fun legacyCoverFileForComic(comicId: String): File = File(legacyCoversDir, "$comicId.jpg")

    private fun extractCoverFromDjvuPlaceholder(sourcePath: String): Bitmap? {
        val width = 600
        val height = 900
        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(bitmap)
        val background = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            shader = LinearGradient(
                0f,
                0f,
                width.toFloat(),
                height.toFloat(),
                intArrayOf(
                    Color.parseColor("#1C2438"),
                    Color.parseColor("#344A72"),
                    Color.parseColor("#101828")
                ),
                floatArrayOf(0f, 0.45f, 1f),
                Shader.TileMode.CLAMP
            )
        }
        canvas.drawRect(0f, 0f, width.toFloat(), height.toFloat(), background)

        val frameRect = RectF(34f, 34f, width - 34f, height - 34f)
        val framePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = Color.argb(34, 255, 255, 255)
            style = Paint.Style.FILL
        }
        canvas.drawRoundRect(frameRect, 42f, 42f, framePaint)

        val strokePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = Color.argb(86, 255, 255, 255)
            style = Paint.Style.STROKE
            strokeWidth = 3f
        }
        canvas.drawRoundRect(frameRect, 42f, 42f, strokePaint)

        val badgePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = Color.parseColor("#EEF2FF")
            textSize = 40f
            typeface = Typeface.create(Typeface.DEFAULT_BOLD, Typeface.BOLD)
            letterSpacing = 0.12f
        }
        canvas.drawText("DJVU", 74f, 124f, badgePaint)

        val title = resolveDisplayName(sourcePath)
            .substringBeforeLast('.')
            .ifBlank { "Document" }
            .trim()
            .take(48)

        val titlePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = Color.WHITE
            textSize = 60f
            typeface = Typeface.create(Typeface.SERIF, Typeface.BOLD)
        }
        val maxTextWidth = width - 148f
        drawCoverTextBlock(
            canvas = canvas,
            text = title,
            x = 74f,
            startY = 270f,
            maxWidth = maxTextWidth,
            lineHeight = 72f,
            maxLines = 5,
            paint = titlePaint
        )

        val notePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = Color.argb(220, 232, 236, 245)
            textSize = 30f
            typeface = Typeface.create(Typeface.SANS_SERIF, Typeface.NORMAL)
        }
        canvas.drawText("DjVu placeholder cover", 74f, height - 116f, notePaint)
        canvas.drawText("The file is saved and can be reopened later.", 74f, height - 74f, notePaint)

        return bitmap
    }

    private fun extractCoverFromZip(sourcePath: String): Bitmap? {
        var tempFile: File? = null
        var zip: ZipFile? = null
        return try {
            zip = if (sourcePath.startsWith("content://")) {
                tempFile = copyContentUriToTemp(Uri.parse(sourcePath), "zip")
                tempFile?.let { ZipFile(it) }
            } else {
                ZipFile(sourcePath)
            } ?: return null

            val candidates = zip.fileHeaders
                .filter { !it.isDirectory }
                .sortedBy { it.fileName }

            val coverBitmap = candidates
                .asSequence()
                .filter { isImageName(it.fileName) }
                .mapNotNull { header -> zip.getInputStream(header).use(::decodeCoverBitmap) }
                .firstOrNull()
                ?: candidates
                    .asSequence()
                    .mapNotNull { header -> zip.getInputStream(header).use(::decodeCoverBitmap) }
                    .firstOrNull()

            coverBitmap
        } catch (e: Exception) {
            Log.w(TAG, "ZIP cover extraction failed for $sourcePath", e)
            null
        } finally {
            try { zip?.close() } catch (_: Exception) {}
            tempFile?.delete()
        }
    }

    private fun extractCoverFromRar(sourcePath: String): Bitmap? {
        var tempFile: File? = null
        var randomAccessFile: RandomAccessFile? = null
        var inputStream: RandomAccessFileInStream? = null
        var archive: IInArchive? = null
        return try {
            val file = if (sourcePath.startsWith("content://")) {
                tempFile = copyContentUriToTemp(Uri.parse(sourcePath), "rar")
                tempFile
            } else {
                File(sourcePath)
            } ?: return null

            randomAccessFile = RandomAccessFile(file, "r")
            inputStream = RandomAccessFileInStream(randomAccessFile)
            archive = SevenZip.openInArchive(null, inputStream)

            val itemIndices = (0 until archive.getNumberOfItems())
                .filter { index ->
                    val fileName = archive.getStringProperty(index, PropID.PATH)?.trim().orEmpty()
                    fileName.isNotBlank() && !archive.getProperty(index, PropID.IS_FOLDER).asBooleanFlag()
                }

            val coverBitmap = itemIndices
                .asSequence()
                .filter { index ->
                    val fileName = archive.getStringProperty(index, PropID.PATH)?.trim().orEmpty()
                    isImageName(fileName)
                }
                .mapNotNull { index -> extractRarEntryBytes(archive, index)?.let(::decodeCoverBytes) }
                .firstOrNull()
                ?: itemIndices
                    .asSequence()
                    .mapNotNull { index -> extractRarEntryBytes(archive, index)?.let(::decodeCoverBytes) }
                    .firstOrNull()

            coverBitmap
        } catch (e: Throwable) {
            // Catch Throwable: 7-Zip bindings can still surface native errors for corrupted archives.
            Log.w(TAG, "RAR cover extraction failed for $sourcePath", e)
            null
        } finally {
            try { archive?.close() } catch (_: Exception) {}
            try { inputStream?.close() } catch (_: Exception) {}
            try { randomAccessFile?.close() } catch (_: Exception) {}
            tempFile?.delete()
        }
    }

    private fun extractCoverFromPdf(sourcePath: String): Bitmap? {
        var descriptor: ParcelFileDescriptor? = null
        var renderer: PdfRenderer? = null
        return try {
            descriptor = if (sourcePath.startsWith("content://")) {
                context.contentResolver.openFileDescriptor(Uri.parse(sourcePath), "r")
            } else {
                ParcelFileDescriptor.open(File(sourcePath), ParcelFileDescriptor.MODE_READ_ONLY)
            }
            renderer = descriptor?.let { PdfRenderer(it) } ?: return null
            if (renderer.pageCount <= 0) return null

            val page = renderer.openPage(0)
            try {
                val targetWidth = 420
                val targetHeight = ((page.height.toFloat() / page.width.toFloat()) * targetWidth).roundToInt().coerceAtLeast(1)
                // ARGB_8888 обязателен: PdfRenderer не поддерживает RGB_565 (рендер упадёт)
                val bitmap = Bitmap.createBitmap(targetWidth, targetHeight, Bitmap.Config.ARGB_8888)
                bitmap.eraseColor(android.graphics.Color.WHITE)
                val matrix = Matrix().apply {
                    setScale(targetWidth / page.width.toFloat(), targetHeight / page.height.toFloat())
                }
                page.render(bitmap, null, matrix, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
                scaleForCover(bitmap)
            } finally {
                page.close()
            }
        } catch (e: Exception) {
            Log.w(TAG, "PDF cover extraction failed for $sourcePath", e)
            null
        } finally {
            try { renderer?.close() } catch (_: Exception) {}
            try { descriptor?.close() } catch (_: Exception) {}
        }
    }

    private fun extractCoverFrom7z(sourcePath: String): Bitmap? {
        var tempFile: File? = null
        var szFile: SevenZFile? = null
        return try {
            val file = if (sourcePath.startsWith("content://")) {
                tempFile = copyContentUriToTemp(Uri.parse(sourcePath), "7z")
                tempFile ?: return null
            } else {
                File(sourcePath)
            }
            @Suppress("DEPRECATION")
            szFile = SevenZFile(file)
            val candidates = szFile.entries.toList()
                .filter { !it.isDirectory }
                .sortedBy { it.name }

            val coverBitmap = candidates
                .asSequence()
                .filter { isImageName(it.name) }
                .mapNotNull { entry -> szFile.getInputStream(entry).use(::decodeCoverBitmap) }
                .firstOrNull()
                ?: candidates
                    .asSequence()
                    .mapNotNull { entry -> szFile.getInputStream(entry).use(::decodeCoverBitmap) }
                    .firstOrNull()

            coverBitmap
        } catch (e: Exception) {
            Log.w(TAG, "7z cover extraction failed for $sourcePath", e)
            null
        } finally {
            try { szFile?.close() } catch (_: Exception) {}
            tempFile?.delete()
        }
    }

    private fun extractCoverFromTar(sourcePath: String): Bitmap? {
        return try {
            val inputStream: InputStream = if (sourcePath.startsWith("content://"))
                context.contentResolver.openInputStream(Uri.parse(sourcePath)) ?: return null
            else
                File(sourcePath).inputStream()
            TarArchiveInputStream(inputStream).use { tis ->
                val fallbackBitmaps = mutableListOf<Pair<String, Bitmap>>()
                var entry = tis.nextEntry
                while (entry != null) {
                    if (!entry.isDirectory) {
                        val name = entry.name ?: ""
                        val bitmap = decodeCoverBitmap(ByteArrayInputStream(tis.readBytes()))
                        if (bitmap != null) {
                            if (isImageName(name)) {
                                return bitmap
                            }
                            fallbackBitmaps += name to bitmap
                        }
                    }
                    entry = tis.nextEntry
                }
                fallbackBitmaps.sortedBy { it.first }.firstOrNull()?.second
            }
        } catch (e: Exception) {
            Log.w(TAG, "TAR cover extraction failed for $sourcePath", e)
            null
        }
    }

    private fun extractRarEntryBytes(archive: IInArchive, index: Int): ByteArray? {
        val bytes = ByteArrayOutputStream()
        val result = archive.extractSlow(index, object : net.sf.sevenzipjbinding.ISequentialOutStream {
            override fun write(data: ByteArray?): Int {
                if (data == null || data.isEmpty()) return 0
                bytes.write(data)
                return data.size
            }
        })
        return if (result == ExtractOperationResult.OK) bytes.toByteArray() else null
    }

    private fun decodeCoverBytes(bytes: ByteArray): Bitmap? =
        decodeCoverBitmap(ByteArrayInputStream(bytes))

    private fun extractCoverFromFb2(sourcePath: String): Bitmap? {
        return try {
            val rawBytes: ByteArray = if (sourcePath.startsWith("content://"))
                context.contentResolver.openInputStream(Uri.parse(sourcePath))?.use { it.readBytes() } ?: return null
            else
                File(sourcePath).readBytes()

            // Apply the same entity/charset preprocessing as Fb2FormatReader to avoid
            // XmlPullParserException on HTML entities like &nbsp; common in Russian FB2 files
            val bytes = preprocessFb2ForCover(rawBytes)

            val parser = Xml.newPullParser().apply {
                setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, true)
                setInput(bytes.inputStream(), "UTF-8")
            }
            var event = parser.eventType
            while (event != XmlPullParser.END_DOCUMENT) {
                if (event == XmlPullParser.START_TAG && parser.name == "binary") {
                    val contentType = parser.getAttributeValue(null, "content-type") ?: ""
                    if (contentType.startsWith("image/")) {
                        event = parser.next()
                        if (event == XmlPullParser.TEXT) {
                            val base64Data = parser.text.replace("\\s".toRegex(), "")
                            val bytes2 = Base64.decode(base64Data, Base64.DEFAULT)
                            if (bytes2.isNotEmpty()) return decodeCoverBitmap(ByteArrayInputStream(bytes2))
                        }
                    }
                }
                event = parser.next()
            }
            null
        } catch (e: Exception) {
            Log.w(TAG, "FB2 cover extraction failed for $sourcePath", e)
            null
        }
    }

    /** Minimal FB2 preprocessing: detect charset + strip illegal HTML entities */
    private fun preprocessFb2ForCover(raw: ByteArray): ByteArray {
        val peek = raw.take(300).toByteArray().toString(Charsets.ISO_8859_1)
        val declaredEnc = Regex("""encoding\s*=\s*["']([^"']+)["']""", RegexOption.IGNORE_CASE)
            .find(peek)?.groupValues?.get(1) ?: "UTF-8"
        val charset = try { java.nio.charset.Charset.forName(declaredEnc) } catch (_: Exception) { Charsets.UTF_8 }
        var text = raw.toString(charset)
        // Remove common HTML entities illegal in XML
        text = Regex("&(?!(?:amp|lt|gt|apos|quot|#[0-9]+|#x[0-9a-fA-F]+);)\\w+;").replace(text, "")
        // Fix bare &
        text = Regex("&(?!(amp|lt|gt|apos|quot|#[0-9]+|#x[0-9a-fA-F]+);)").replace(text, "&amp;")
        if (!declaredEnc.equals("UTF-8", ignoreCase = true) && !declaredEnc.equals("UTF8", ignoreCase = true)) {
            text = text.replaceFirst(Regex("""encoding\s*=\s*["'][^"']+["']""", RegexOption.IGNORE_CASE), """encoding="UTF-8"""")
        }
        return text.toByteArray(Charsets.UTF_8)
    }

    // ── EPUB cover ────────────────────────────────────────────────────────────

    private fun extractCoverFromEpub(sourcePath: String): Bitmap? {
        var tempFile: File? = null
        var zip: ZipFile? = null
        return try {
            zip = if (sourcePath.startsWith("content://")) {
                tempFile = copyContentUriToTemp(Uri.parse(sourcePath), "epub")
                tempFile?.let { ZipFile(it) }
            } else {
                ZipFile(sourcePath)
            } ?: return null

            val stream = findEpubCoverStream(zip) ?: return null
            stream.use { decodeCoverBitmap(it) }
        } catch (e: Exception) {
            Log.w(TAG, "EPUB cover extraction failed for $sourcePath", e)
            null
        } finally {
            try { zip?.close() } catch (_: Exception) {}
            tempFile?.delete()
        }
    }

    private fun findEpubCoverStream(zip: ZipFile): InputStream? {
        // Step 1: find OPF via container.xml
        val containerHeader = zip.getFileHeader("META-INF/container.xml")
            ?: return firstZipImageStream(zip)
        val opfPath = zip.getInputStream(containerHeader).use { stream ->
            val parser = Xml.newPullParser().apply {
                setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, false)
                setInput(stream, null)
            }
            var ev = parser.eventType
            while (ev != XmlPullParser.END_DOCUMENT) {
                if (ev == XmlPullParser.START_TAG && parser.name == "rootfile")
                    return@use parser.getAttributeValue(null, "full-path")
                ev = parser.next()
            }
            null
        } ?: return firstZipImageStream(zip)

        val opfDir = opfPath.substringBeforeLast('/', "")
        val opfHeader = zip.getFileHeader(opfPath) ?: return firstZipImageStream(zip)

        // Step 2: parse OPF manifest for cover-image
        data class ManifestItem(val href: String, val mediaType: String, val properties: String)
        val manifest = mutableMapOf<String, ManifestItem>()
        var coverId: String? = null

        zip.getInputStream(opfHeader).use { stream ->
            val parser = Xml.newPullParser().apply {
                setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, false)
                setInput(stream, null)
            }
            var inManifest = false
            var ev = parser.eventType
            while (ev != XmlPullParser.END_DOCUMENT) {
                when (ev) {
                    XmlPullParser.START_TAG -> when (parser.name.lowercase()) {
                        "manifest" -> inManifest = true
                        "item" -> if (inManifest) {
                            val id    = parser.getAttributeValue(null, "id") ?: ""
                            val href  = parser.getAttributeValue(null, "href") ?: ""
                            val mt    = parser.getAttributeValue(null, "media-type") ?: ""
                            val props = parser.getAttributeValue(null, "properties") ?: ""
                            if (id.isNotEmpty() && href.isNotEmpty() && mt.startsWith("image/"))
                                manifest[id] = ManifestItem(href, mt, props)
                        }
                        // EPUB2: <meta name="cover" content="itemId"/>
                        "meta" -> {
                            if (parser.getAttributeValue(null, "name") == "cover")
                                coverId = parser.getAttributeValue(null, "content")
                        }
                    }
                    XmlPullParser.END_TAG ->
                        if (parser.name.lowercase() == "manifest") inManifest = false
                }
                ev = parser.next()
            }
        }

        // Priority: EPUB3 properties="cover-image" > EPUB2 meta > first image
        val item = manifest.values.firstOrNull { "cover-image" in it.properties }
            ?: coverId?.let { manifest[it] }
            ?: manifest.values.firstOrNull()
            ?: return firstZipImageStream(zip)

        val decoded = try { URLDecoder.decode(item.href, "UTF-8") } catch (_: Exception) { item.href }
        val entry = normalizePaths(if (opfDir.isEmpty()) decoded else "$opfDir/$decoded")
        return zip.getFileHeader(entry)?.let { zip.getInputStream(it) }
            ?: firstZipImageStream(zip)
    }

    private fun firstZipImageStream(zip: ZipFile): InputStream? {
        val header = zip.fileHeaders
            .filter { !it.isDirectory && isImageName(it.fileName) }
            .minByOrNull { it.fileName }
            ?: return null
        return zip.getInputStream(header)
    }

    /** Resolves `..` segments in ZIP entry paths */
    private fun normalizePaths(p: String): String {
        val stack = ArrayDeque<String>()
        for (part in p.split('/')) when (part) {
            ".." -> if (stack.isNotEmpty()) stack.removeLast()
            ".", "" -> {}
            else -> stack.addLast(part)
        }
        return stack.joinToString("/")
    }

    // ── ComicInfo.xml (CBZ metadata standard) ────────────────────────────────

    private data class ComicMeta(
        val title: String? = null,
        val series: String? = null,
        val number: Int? = null,
        val volume: Int? = null,
        val year: Int? = null,
        val publisher: String? = null,
        val writer: String? = null,
        val penciller: String? = null,
        val genre: String? = null,
        val languageISO: String? = null
    )

    private fun extractComicInfoMeta(sourcePath: String): ComicMeta? {
        var tempFile: File? = null
        var zip: ZipFile? = null
        return try {
            zip = if (sourcePath.startsWith("content://")) {
                tempFile = copyContentUriToTemp(Uri.parse(sourcePath), "zip")
                tempFile?.let { ZipFile(it) }
            } else {
                ZipFile(sourcePath)
            } ?: return null

            // ComicInfo.xml is usually at root; some tools place it in subdirs
            val header = zip.fileHeaders.firstOrNull {
                it.fileName.equals("ComicInfo.xml", ignoreCase = true) ||
                it.fileName.endsWith("/ComicInfo.xml", ignoreCase = true)
            } ?: return null

            zip.getInputStream(header).use { parseComicInfoXml(it) }
        } catch (e: Exception) {
            Log.w(TAG, "ComicInfo.xml parsing failed for $sourcePath", e)
            null
        } finally {
            try { zip?.close() } catch (_: Exception) {}
            tempFile?.delete()
        }
    }

    private fun parseComicInfoXml(stream: InputStream): ComicMeta {
        val values = mutableMapOf<String, String>()
        val parser = Xml.newPullParser().apply {
            setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, false)
            setInput(stream, null)
        }
        var currentTag = ""
        var ev = parser.eventType
        while (ev != XmlPullParser.END_DOCUMENT) {
            when (ev) {
                XmlPullParser.START_TAG -> currentTag = parser.name
                XmlPullParser.TEXT -> {
                    val text = parser.text?.trim() ?: ""
                    if (text.isNotEmpty() && currentTag.isNotEmpty()) values[currentTag] = text
                }
                XmlPullParser.END_TAG -> currentTag = ""
            }
            ev = parser.next()
        }
        return ComicMeta(
            title       = values["Title"]?.ifBlank { null },
            series      = values["Series"]?.ifBlank { null },
            number      = values["Number"]?.toIntOrNull(),
            volume      = values["Volume"]?.toIntOrNull(),
            year        = values["Year"]?.toIntOrNull(),
            publisher   = values["Publisher"]?.ifBlank { null },
            writer      = values["Writer"]?.ifBlank { null },
            penciller   = values["Penciller"]?.ifBlank { null },
            genre       = values["Genre"]?.ifBlank { null },
            languageISO = values["LanguageISO"]?.ifBlank { null }
        )
    }

    // ── FB2 cover (with charset-aware parsing) ────────────────────────────────

    private fun decodeCoverBitmap(input: InputStream): Bitmap? {
        val bytes = input.readBytes()
        if (bytes.isEmpty()) return null

        val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeByteArray(bytes, 0, bytes.size, bounds)
        val sample = calculateInSampleSize(bounds.outWidth, bounds.outHeight, 700, 1000)

        val options = BitmapFactory.Options().apply {
            inPreferredConfig = Bitmap.Config.RGB_565
            inSampleSize = sample.coerceAtLeast(1)
        }
        val decoded = BitmapFactory.decodeByteArray(bytes, 0, bytes.size, options) ?: return null
        return scaleForCover(decoded)
    }

    private fun scaleForCover(source: Bitmap): Bitmap {
        val maxWidth = 360
        val maxHeight = 520
        val scale = min(maxWidth / source.width.toFloat(), maxHeight / source.height.toFloat())
        if (scale >= 1f) return source
        val width = (source.width * scale).roundToInt().coerceAtLeast(1)
        val height = (source.height * scale).roundToInt().coerceAtLeast(1)
        val resized = Bitmap.createScaledBitmap(source, width, height, true)
        if (resized != source) source.recycle()
        return resized
    }

    private fun resolveDisplayName(sourcePath: String): String = runCatching {
        if (sourcePath.startsWith("content://")) {
            context.contentResolver.query(
                Uri.parse(sourcePath),
                arrayOf(android.provider.OpenableColumns.DISPLAY_NAME),
                null,
                null,
                null
            )?.use { cursor ->
                if (cursor.moveToFirst()) cursor.getString(0) else null
            }
        } else {
            File(sourcePath).name
        }
    }.getOrNull().orEmpty().ifBlank { "Document" }

    private fun drawCoverTextBlock(
        canvas: Canvas,
        text: String,
        x: Float,
        startY: Float,
        maxWidth: Float,
        lineHeight: Float,
        maxLines: Int,
        paint: Paint
    ) {
        val words = text.split(Regex("\\s+")).filter { it.isNotBlank() }
        if (words.isEmpty()) return

        val lines = mutableListOf<String>()
        var currentLine = ""
        for (word in words) {
            val candidate = if (currentLine.isBlank()) word else "$currentLine $word"
            if (paint.measureText(candidate) <= maxWidth || currentLine.isBlank()) {
                currentLine = candidate
            } else {
                lines += currentLine
                currentLine = word
                if (lines.size == maxLines - 1) break
            }
        }
        if (currentLine.isNotBlank() && lines.size < maxLines) {
            lines += currentLine
        }
        if (lines.size == maxLines && words.joinToString(" ").length > lines.joinToString(" ").length) {
            lines[lines.lastIndex] = lines.last().trimEnd('.', '…') + "…"
        }

        lines.forEachIndexed { index, line ->
            canvas.drawText(line, x, startY + index * lineHeight, paint)
        }
    }

    private fun calculateInSampleSize(width: Int, height: Int, reqWidth: Int, reqHeight: Int): Int {
        var inSampleSize = 1
        if (height > reqHeight || width > reqWidth) {
            var halfHeight = height / 2
            var halfWidth = width / 2
            while ((halfHeight / inSampleSize) >= reqHeight && (halfWidth / inSampleSize) >= reqWidth) {
                inSampleSize *= 2
            }
        }
        return inSampleSize
    }

    private fun copyContentUriToTemp(uri: Uri, extension: String): File? {
        return try {
            val tempDir = File(context.cacheDir, "import_tmp").apply { mkdirs() }
            val tempFile = File(tempDir, "comic_${uri.hashCode()}_${System.nanoTime()}.$extension")
            context.contentResolver.openInputStream(uri)?.use { input ->
                tempFile.outputStream().use { output -> input.copyTo(output) }
            } ?: return null
            tempFile
        } catch (e: Exception) {
            Log.w(TAG, "Temp copy failed for $uri", e)
            null
        }
    }

    private fun resolveReadablePath(uri: Uri, displayName: String?, format: ComicFormat): String {
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

    private fun canReadContentUriDirectly(uri: Uri, format: ComicFormat): Boolean {
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

    private fun stableHash(text: String): String {
        val digest = MessageDigest.getInstance("SHA-256").digest(text.toByteArray())
        return digest.joinToString("") { "%02x".format(it) }.take(24)
    }

    private suspend fun refreshQuoteSnapshotsForComic(comic: Comic) {
        quoteDao.refreshComicSnapshot(
            comicId = comic.id,
            comicTitle = comic.title,
            comicPath = comic.path,
            updatedAt = System.currentTimeMillis()
        )
    }

    private fun openInputStream(uri: Uri): InputStream? = when (uri.scheme) {
        "content" -> context.contentResolver.openInputStream(uri)
        "file" -> uri.path?.let { File(it).takeIf(File::exists)?.inputStream() }
        null -> {
            val path = uri.path ?: uri.toString()
            File(path).takeIf(File::exists)?.inputStream()
        }
        else -> null
    }

    private fun isImageName(name: String?): Boolean {
        val ext = name?.lowercase()?.substringAfterLast('.', "") ?: return false
        return ext in IMAGE_EXTENSIONS
    }

    private fun ByteArray.startsWithMagic(other: ByteArray): Boolean {
        if (size < other.size) return false
        return other.indices.all { this[it] == other[it] }
    }

    private fun ByteArray.hasSliceAt(offset: Int, other: ByteArray): Boolean {
        if (offset < 0 || size < offset + other.size) return false
        return other.indices.all { index -> this[offset + index] == other[index] }
    }

    private fun ByteArray.isDjvuDocument(): Boolean {
        return startsWithMagic(DJVU_CONTAINER_MAGIC) &&
            (hasSliceAt(12, DJVU_SINGLE_MAGIC) || hasSliceAt(12, DJVU_MULTI_MAGIC))
    }
}

private fun Any?.asBooleanFlag(): Boolean = when (this) {
    is Boolean -> this
    is Number -> toInt() != 0
    is String -> equals("true", ignoreCase = true) || equals("1")
    else -> false
}
