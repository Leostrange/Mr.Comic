package com.example.core.data.repository

import android.content.Context
import android.net.Uri
import android.os.Environment
import androidx.documentfile.provider.DocumentFile
import com.example.core.model.Comic
import com.example.core.model.SortOrder
import com.example.core.data.database.ComicDao
import com.example.core.data.database.ComicEntity
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject

interface ComicRepository {
    fun getComics(sortOrder: SortOrder, searchQuery: String): Flow<List<Comic>>
    suspend fun refreshComicsIfEmpty()
    suspend fun deleteComics(comicIds: Set<String>)
    suspend fun addComic(comic: Comic)
    suspend fun updateProgress(comicId: String, currentPage: Int)
    suspend fun clearCache()
}

class ComicRepositoryImpl @Inject constructor(
    @ApplicationContext private val context: Context,
    private val coverExtractor: CoverExtractor,
    private val comicDao: ComicDao,
    private val settingsRepository: SettingsRepository
) : ComicRepository {

    private val supportedExtensions = setOf("cbr", "cbz", "pdf", "djvu", "djv")

    override fun getComics(sortOrder: SortOrder, searchQuery: String): Flow<List<Comic>> {
        val comicsFlow = when (sortOrder) {
            SortOrder.TITLE_ASC -> comicDao.getComicsSortedByTitleAsc(searchQuery)
            SortOrder.TITLE_DESC -> comicDao.getComicsSortedByTitleDesc(searchQuery)
            SortOrder.DATE_ADDED_DESC -> comicDao.getComicsSortedByDateDesc(searchQuery)
        }
        return comicsFlow.map { entities ->
            entities.map { entity ->
                Comic(
                    title = entity.title,
                    author = "Unknown", // Assuming author is not in ComicEntity for now
                    filePath = entity.filePath,
                    coverPath = entity.coverPath
                )
            }
        }
    }

    override suspend fun refreshComicsIfEmpty() {
        val existingCount = comicDao.getComicCount()
        android.util.Log.d("ComicRepository", "📚 Checking comic count: $existingCount")
        if (existingCount > 0) {
            android.util.Log.d("ComicRepository", "✅ Comics already exist, skipping scan")
            return
        }
        android.util.Log.d("ComicRepository", "🔍 No comics found, starting scan...")

        val comicUris = mutableListOf<Uri>()
        var foldersToScan = settingsRepository.libraryFolders.first()

        // Если пользователь не выбрал ни одной папки, сканируем стандартные
        if (foldersToScan.isEmpty()) {
            android.util.Log.d("ComicRepository", "📁 Scanning default directories...")
            val downloadsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS)
            val documentsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)
            android.util.Log.d("ComicRepository", "📂 Scanning Downloads: ${downloadsDir.absolutePath}")
            scanDirectory(downloadsDir, comicUris)
            android.util.Log.d("ComicRepository", "📂 Scanning Documents: ${documentsDir.absolutePath}")
            scanDirectory(documentsDir, comicUris)
        } else {
            android.util.Log.d("ComicRepository", "📁 Scanning ${foldersToScan.size} user-selected folders...")
            foldersToScan.forEach { uriString ->
                android.util.Log.d("ComicRepository", "📂 Scanning folder: $uriString")
                scanDocumentTree(Uri.parse(uriString), comicUris)
            }
        }

        android.util.Log.d("ComicRepository", "📊 Found ${comicUris.size} comic files")
        
        withContext(Dispatchers.IO) {
            val comicEntities = comicUris.map { uri ->
                async {
                    android.util.Log.d("ComicRepository", "📖 Processing: $uri")
                    val coverPath = coverExtractor.extractAndSaveCover(uri)
                    ComicEntity(
                        filePath = uri.toString(),
                        title = getFileName(uri) ?: "Unknown",
                        coverPath = coverPath,
                        dateAdded = System.currentTimeMillis()
                    )
                }
            }.awaitAll()
            android.util.Log.d("ComicRepository", "💾 Saving ${comicEntities.size} comics to database")
            comicDao.insertAll(comicEntities)
            android.util.Log.d("ComicRepository", "✅ Comics saved successfully!")
        }
    }

    override suspend fun deleteComics(comicIds: Set<String>) {
        withContext(Dispatchers.IO) {
            // Сначала получаем сущности, чтобы найти пути к обложкам
            val comicsToDelete = comicDao.getComicsByFilePaths(comicIds.toList())

            comicsToDelete.forEach { entity ->
                // Удаляем сам файл комикса через DocumentFile для SAF-совместимости
                runCatching { DocumentFile.fromSingleUri(context, Uri.parse(entity.filePath))?.delete() }
                // Удаляем кэшированную обложку
                entity.coverPath?.let { File(it).delete() }
            }
            // Наконец, удаляем записи из базы данных
            comicDao.deleteComicsByFilePaths(comicIds.toList())
        }
    }

    override suspend fun addComic(comic: Comic) {
        withContext(Dispatchers.IO) {
            val comicEntity = ComicEntity(
                filePath = comic.filePath,
                title = comic.title,
                coverPath = comic.coverPath,
                dateAdded = System.currentTimeMillis()
            )
            comicDao.insertAll(listOf(comicEntity))
        }
    }

    override suspend fun updateProgress(comicId: String, currentPage: Int) {
        withContext(Dispatchers.IO) {
            comicDao.updateProgress(comicId, currentPage, System.currentTimeMillis())
        }
    }

    private fun scanDirectory(directory: File, uriList: MutableList<Uri>) {
        android.util.Log.d("ComicRepository", "🔍 Scanning directory: ${directory.absolutePath}")
        directory.listFiles()?.forEach { file ->
            if (file.isDirectory) {
                scanDirectory(file, uriList)
            } else if (supportedExtensions.contains(file.extension.lowercase())) {
                android.util.Log.d("ComicRepository", "📚 Found comic: ${file.name}")
                uriList.add(Uri.fromFile(file))
            }
        } ?: android.util.Log.w("ComicRepository", "⚠️ Cannot list files in: ${directory.absolutePath}")
    }

    private fun scanDocumentTree(treeUri: Uri, uriList: MutableList<Uri>) {
        val documentTree = DocumentFile.fromTreeUri(context, treeUri) ?: return
        val documents = documentTree.listFiles()

        for (doc in documents) {
            if (doc.isDirectory) {
                scanDocumentTree(doc.uri, uriList)
            } else if (doc.isFile) {
                val extension = doc.name?.substringAfterLast(
'.
', "")?.lowercase()
                if (supportedExtensions.contains(extension)) {
                    uriList.add(doc.uri)
                }
            }
        }
    }

    private fun getFileName(uri: Uri): String? {
        return DocumentFile.fromSingleUri(context, uri)?.name?.substringBeforeLast(
'.
')
    }
}

