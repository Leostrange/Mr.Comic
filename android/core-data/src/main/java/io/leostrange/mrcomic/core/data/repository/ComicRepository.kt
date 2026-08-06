package io.leostrange.mrcomic.core.data.repository

import android.content.Context
import io.leostrange.mrcomic.core.data.db.entity.toDomain
import io.leostrange.mrcomic.core.data.db.entity.toEntity
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import android.net.Uri
import android.provider.DocumentsContract
import android.util.Log
import androidx.documentfile.provider.DocumentFile
import io.leostrange.mrcomic.core.data.db.AppDatabase
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.readingProgressForPage
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.withContext
import java.io.File
import java.io.InputStream
import io.leostrange.mrcomic.core.model.repository.BackupRepository
import io.leostrange.mrcomic.core.model.repository.CoverRepository
import io.leostrange.mrcomic.core.model.repository.ImportRepository
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import javax.inject.Inject
import javax.inject.Singleton



@Singleton
class ComicRepository @Inject constructor(
    @ApplicationContext internal val context: Context,
    db: AppDatabase
) : LibraryRepository, ImportRepository, CoverRepository, BackupRepository {
    private val comicDao = db.comicDao()
    private val quoteDao = db.quoteDao()
    internal val persistentCoversDir by lazy { File(context.filesDir, "covers").apply { mkdirs() } }
    internal val legacyCoversDir by lazy { File(context.cacheDir, "covers").apply { mkdirs() } }
    private val formatDetector by lazy {
        ComicFormatDetector(
            openInputStream = ::openInputStream,
            detectArchiveContentFormat = ::detectArchiveContentFormat,
            onMagicDetectionFailure = { uri, error -> Log.w(TAG, "Magic detection failed for $uri", error) }
        )
    }

    // RestoreComicResult and RepairLibraryAccessResult defined in BackupRepository interface

    companion object {
        internal const val TAG = "ComicRepository"
        private val DJVU_CONTAINER_MAGIC = "AT&TFORM".encodeToByteArray()
        private val DJVU_SINGLE_MAGIC = "DJVU".encodeToByteArray()
        private val DJVU_MULTI_MAGIC = "DJVM".encodeToByteArray()
        private const val XLINK_NS = "http://www.w3.org/1999/xlink"
    }

    override fun getAllComics(): Flow<List<Comic>> = comicDao.getAllComics().map { list -> list.map { it.toDomain() } }

    override fun searchComics(query: String): Flow<List<Comic>> {
        val normalized = query.trim().lowercase()
        if (normalized.isBlank()) return comicDao.getAllComics().map { list -> list.map { it.toDomain() } }
        return comicDao.searchComics(normalized).map { list -> list.map { it.toDomain() } }
    }

    override suspend fun getComicById(id: String): Comic? = comicDao.getComicById(id)?.toDomain()

    override suspend fun getComicByPath(path: String): Comic? = comicDao.getComicByPath(path)?.toDomain()

    override suspend fun restoreComicFromBackup(backupComic: Comic): BackupRepository.RestoreComicResult? = withContext(Dispatchers.IO) {
        val normalized = normalizeBackupComic(backupComic) ?: return@withContext null
        val existing = comicDao.getComicById(normalized.id)?.toDomain() ?: comicDao.getComicByPath(normalized.path)?.toDomain()
        if (existing != null) {
            val merged = repairComicAccessIfPossible(mergeExistingComicWithBackup(existing, normalized))
            comicDao.updateComic(merged.toEntity())
            refreshQuoteSnapshotsForComic(merged)
            return@withContext BackupRepository.RestoreComicResult(
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
        comicDao.insertComic(restored.toEntity())
        val insertedComic = comicDao.getComicById(comicId)?.toDomain() ?: comicDao.getComicByPath(restored.path)?.toDomain() ?: restored
        refreshQuoteSnapshotsForComic(insertedComic)
        BackupRepository.RestoreComicResult(
            comic = insertedComic,
            inserted = true,
            isReadable = isReadableStoredPath(insertedComic.path)
        )
    }

    override suspend fun addComic(uri: Uri): Comic? = withContext(Dispatchers.IO) {
        val sourcePath = uri.toString()
        val existing = comicDao.getComicByPath(sourcePath)?.toDomain()
        if (existing != null) return@withContext existing

        val localFile = if (uri.scheme == "file" || uri.scheme == null) {
            val candidatePath = uri.path ?: uri.toString()
            File(candidatePath)
        } else {
            null
        }
        val singleDoc = if (localFile == null) {
            DocumentFile.fromSingleUri(context, uri)
        } else {
            null
        }
        if (singleDoc?.isDirectory == true) return@withContext null
        if (singleDoc == null && (localFile == null || !localFile.exists() || localFile.isDirectory)) return@withContext null

        val displayName = singleDoc?.name ?: localFile?.name
        val fileSize = singleDoc?.length()?.coerceAtLeast(0L) ?: localFile?.length()?.coerceAtLeast(0L) ?: 0L
        val lastModified = singleDoc?.lastModified()?.takeIf { it > 0L } ?: localFile?.lastModified()
        val mimeType = singleDoc?.type

        val format = formatDetector.detect(uri, displayName, mimeType)
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
        comicDao.insertComic(comic.toEntity())
        comic
    }

    override suspend fun addComicsFromDirectory(treeUri: Uri) = withContext(Dispatchers.IO) {
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
                        val format = formatDetector.detect(child.uri, child.name, child.type)
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
            comicDao.insertComics(discovered.map { it.toEntity() })
        }
    }

    override suspend fun deleteComic(comicId: String) {
        comicDao.deleteComic(comicId)
    }

    override suspend fun toggleBookmark(comicId: String) {
        val comic = comicDao.getComicById(comicId)?.toDomain() ?: return
        comicDao.updateComic(comic.copy(isBookmarked = !comic.isBookmarked).toEntity())
    }

    override suspend fun updateComicMeta(comicId: String, title: String, tags: String, libraryShelf: String) {
        val comic = comicDao.getComicById(comicId)?.toDomain() ?: return
        val updated = comic.copy(
            title = title.trim().ifBlank { comic.title },
            tags = tags.trim(),
            libraryShelf = libraryShelf.trim().uppercase().takeIf {
                it == "GRAPHIC" || it == "BOOKS"
            }.orEmpty()
        )
        comicDao.updateComic(updated.toEntity())
        refreshQuoteSnapshotsForComic(updated)
    }

    suspend fun markCompleted(comicId: String) = markCompleted(comicId, true)

    override suspend fun markCompleted(comicId: String, completed: Boolean) {
        val comic = comicDao.getComicById(comicId)?.toDomain() ?: return
        comicDao.updateComic(
            comic.copy(
                isCompleted      = completed,
                readingProgress  = if (completed) 1f else comic.readingProgress,
                lastReadDate     = System.currentTimeMillis()
            ).toEntity()
        )
    }

    override suspend fun updateProgress(comicId: String, currentPage: Int, totalPages: Int, characterOffset: Int?) {
        // Guard: totalPages <= 1 means the book hasn't been properly paginated yet.
        // Saving progress here would produce 100% (page 0 of 1 = 100%).
        // This applies to all reflowable formats during initial load before
        // deferred page count resolution completes.
        if (totalPages <= 1) return
        val maxPage = (totalPages - 1).coerceAtLeast(0)
        val safePage = currentPage.coerceIn(0, maxPage)
        val progress = readingProgressForPage(safePage, totalPages)
        comicDao.updateProgress(
            comicId,
            safePage,
            progress.coerceIn(0f, 1f),
            System.currentTimeMillis(),
            totalPages.coerceAtLeast(0),
            characterOffset
        )
    }

    override suspend fun repairLibraryAccess(treeUri: Uri): BackupRepository.RepairLibraryAccessResult = withContext(Dispatchers.IO) {
        val treeDocumentId = runCatching { DocumentsContract.getTreeDocumentId(treeUri) }
            .getOrNull()
            ?.trim()
            .orEmpty()
        if (treeDocumentId.isBlank()) {
            return@withContext BackupRepository.RepairLibraryAccessResult(
                repaired = 0,
                alreadyReadable = 0,
                skipped = 0,
                missing = 0
            )
        }

        val treeUriString = treeUri.toString()
        val comics = comicDao.getAllComics().map { list -> list.map { it.toDomain() } }.first()
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
            comicDao.updateComic(updated.toEntity())
            refreshQuoteSnapshotsForComic(updated)
            repaired++
        }

        BackupRepository.RepairLibraryAccessResult(
            repaired = repaired,
            alreadyReadable = alreadyReadable,
            skipped = skipped,
            missing = missing
        )
    }

    override suspend fun repairStoredCovers(): Int = withContext(Dispatchers.IO) {
        val comics = comicDao.getAllComics().map { list -> list.map { it.toDomain() } }.first()
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
                comicDao.updateComic(comic.copy(coverPath = resolvedCoverPath).toEntity())
                repaired++
            }
        }

        repaired
    }
    private fun detectArchiveContentFormat(uri: Uri): ComicFormat? {
        // ZIP and TAR can be scanned through a plain stream. 7z and RAR need
        // random file access, so they are copied to a temp file first.
        val header = ByteArray(ComicFormatDetector.MAGIC_HEADER_SIZE)
        val read = runCatching { openInputStream(uri)?.use { it.read(header) } }.getOrNull() ?: -1
        if (read >= 4) {
            val isSevenZ = header.startsWithMagic(ComicFormatDetector.SEVENZ_MAGIC)
            val isRar = header.startsWithMagic(ComicFormatDetector.RAR4_MAGIC) ||
                header.startsWithMagic(ComicFormatDetector.RAR5_MAGIC)
            if (isSevenZ || isRar) {
                val extension = if (isSevenZ) "7z" else "rar"
                val tempFile = copyContentUriToTemp(uri, extension) ?: return null
                return try {
                    io.leostrange.mrcomic.core.data.repository.detectArchiveContentFormat(tempFile)
                } finally {
                    runCatching { tempFile.delete() }
                }
            }
        }
        return io.leostrange.mrcomic.core.data.repository.detectArchiveContentFormat(
            openStream = { openInputStream(uri) }
        )
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

