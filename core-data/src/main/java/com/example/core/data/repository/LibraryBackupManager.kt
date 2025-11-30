package com.example.core.data.repository

import android.content.Context
import android.net.Uri
import androidx.annotation.WorkerThread
import com.example.core.data.database.BookmarkEntity
import com.example.core.data.database.ComicDao
import com.example.core.data.database.ComicEntity
import dagger.hilt.android.qualifiers.ApplicationContext
import javax.inject.Inject
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.json.JSONArray
import org.json.JSONObject

class LibraryBackupManager @Inject constructor(
    @ApplicationContext private val context: Context,
    private val comicDao: ComicDao,
    private val settingsRepository: SettingsRepository
) {
    data class BackupSummary(
        val comicsCount: Int,
        val bookmarksCount: Int,
        val settingsRestored: Boolean
    )

    companion object {
        private const val BACKUP_VERSION = 1
    }

    suspend fun exportBackup(outputUri: Uri): Result<BackupSummary> = withContext(Dispatchers.IO) {
        runCatching {
            val comics = comicDao.getAllComics()
            val bookmarks = comicDao.getAllBookmarks()
            val snapshot = settingsRepository.getSettingsSnapshot()
            val timestamp = System.currentTimeMillis()

            val root = JSONObject().apply {
                put("version", BACKUP_VERSION)
                put("timestamp", timestamp)
                put("settings", snapshot.toJson())
                put("comics", JSONArray().apply {
                    comics.forEach { comic ->
                        put(comic.toJson())
                    }
                })
                put("bookmarks", JSONArray().apply {
                    bookmarks.forEach { bookmark ->
                        put(bookmark.toJson())
                    }
                })
            }

            context.contentResolver.openOutputStream(outputUri, "wt")?.use { stream ->
                stream.bufferedWriter().use { writer ->
                    writer.write(root.toString())
                }
            } ?: error("Unable to open output stream for backup")

            settingsRepository.updateLastBackup(outputUri.toString(), timestamp)
            BackupSummary(comics.size, bookmarks.size, settingsRestored = false)
        }
    }

    suspend fun importBackup(inputUri: Uri): Result<BackupSummary> = withContext(Dispatchers.IO) {
        runCatching {
            val jsonText = context.contentResolver.openInputStream(inputUri)?.use { stream ->
                stream.bufferedReader().use { it.readText() }
            } ?: error("Unable to open backup file")

            val root = JSONObject(jsonText)
            val comicsArray = root.optJSONArray("comics") ?: JSONArray()
            val bookmarksArray = root.optJSONArray("bookmarks") ?: JSONArray()
            val settingsJson = root.optJSONObject("settings")

            val comicEntities = mutableListOf<ComicEntity>()
            for (i in 0 until comicsArray.length()) {
                comicEntities += comicsArray.getJSONObject(i).toComicEntity()
            }

            val bookmarkEntities = mutableListOf<BookmarkEntity>()
            for (i in 0 until bookmarksArray.length()) {
                bookmarkEntities += bookmarksArray.getJSONObject(i).toBookmarkEntity()
            }

            if (comicEntities.isNotEmpty()) {
                comicDao.insertAll(comicEntities)
            }

            bookmarkEntities.forEach { bookmark ->
                comicDao.insertBookmark(bookmark)
            }

            val settingsRestored = if (settingsJson != null) {
                settingsRepository.applySettingsSnapshot(SettingsRepository.SettingsSnapshot.fromJson(settingsJson))
                true
            } else {
                false
            }

            settingsRepository.updateLastBackup(inputUri.toString(), System.currentTimeMillis())

            BackupSummary(comicEntities.size, bookmarkEntities.size, settingsRestored)
        }
    }
}

@WorkerThread
private fun ComicEntity.toJson(): JSONObject {
    return JSONObject().apply {
        put("filePath", filePath)
        put("title", title)
        put("coverPath", coverPath)
        put("dateAdded", dateAdded)
        put("currentPage", currentPage)
        put("totalPages", totalPages)
    }
}

@WorkerThread
private fun BookmarkEntity.toJson(): JSONObject {
    return JSONObject().apply {
        put("id", id)
        put("comicId", comicId)
        put("page", page)
        put("label", label)
        put("timestamp", timestamp)
    }
}

@WorkerThread
private fun SettingsRepository.SettingsSnapshot.toJson(): JSONObject {
    return JSONObject().apply {
        put("readingMode", readingMode)
        put("scaleMode", scaleMode)
        put("orientation", orientation)
        put("theme", theme)
        put("language", language)
        put("targetLanguage", targetLanguage)
        put("translationProvider", translationProvider)
        put("ocrEngine", ocrEngine)
        put("libraryFolders", JSONArray(libraryFolders.toList()))
    }
}

@WorkerThread
private fun JSONObject.toComicEntity(): ComicEntity {
    return ComicEntity(
        filePath = getString("filePath"),
        title = optString("title"),
        coverPath = optString("coverPath"),
        dateAdded = optLong("dateAdded", System.currentTimeMillis()),
        currentPage = optInt("currentPage", 0),
        totalPages = optInt("totalPages", 0)
    )
}

@WorkerThread
private fun JSONObject.toBookmarkEntity(): BookmarkEntity {
    return BookmarkEntity(
        id = optLong("id", 0L),
        comicId = getString("comicId"),
        page = optInt("page", 0),
        label = optString("label"),
        timestamp = optLong("timestamp", System.currentTimeMillis())
    )
}

private fun SettingsRepository.SettingsSnapshot.Companion.fromJson(json: JSONObject): SettingsRepository.SettingsSnapshot {
    val folders = mutableSetOf<String>()
    val foldersArray = json.optJSONArray("libraryFolders")
    if (foldersArray != null) {
        for (i in 0 until foldersArray.length()) {
            folders += foldersArray.optString(i)
        }
    }
    return SettingsRepository.SettingsSnapshot(
        readingMode = json.optString("readingMode", "page"),
        scaleMode = json.optString("scaleMode", "width"),
        orientation = json.optString("orientation", "auto"),
        theme = json.optString("theme", "system"),
        language = json.optString("language", "ru"),
        targetLanguage = json.optString("targetLanguage", "en"),
        translationProvider = json.optString("translationProvider", "google"),
        ocrEngine = json.optString("ocrEngine", "tesseract"),
        libraryFolders = folders
    )
}
