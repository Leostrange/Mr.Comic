package com.example.core.data.repository

import android.content.Context
import android.net.Uri
import androidx.annotation.WorkerThread
import com.example.core.data.database.dao.BookmarkDao
import com.example.core.data.database.dao.ComicDao
import com.example.core.model.Bookmark
import com.example.core.model.Comic
import com.example.core.model.ComicFormat
import dagger.hilt.android.qualifiers.ApplicationContext
import javax.inject.Inject
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.withContext
import org.json.JSONArray
import org.json.JSONObject

class LibraryBackupManager @Inject constructor(
    @ApplicationContext private val context: Context,
    private val comicDao: ComicDao,
    private val bookmarkDao: BookmarkDao,
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
            val comics = comicDao.getAllComics().first()
            val bookmarks = bookmarkDao.getAllBookmarks().first()
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

            val comicEntities = mutableListOf<Comic>()
            for (i in 0 until comicsArray.length()) {
                comicEntities += comicsArray.getJSONObject(i).toComic()
            }

            val bookmarkEntities = mutableListOf<Bookmark>()
            for (i in 0 until bookmarksArray.length()) {
                bookmarkEntities += bookmarksArray.getJSONObject(i).toBookmark()
            }

            if (comicEntities.isNotEmpty()) {
                comicDao.insertAll(comicEntities)
            }

            if (bookmarkEntities.isNotEmpty()) {
                bookmarkDao.insertAll(bookmarkEntities)
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
private fun Comic.toJson(): JSONObject {
    return JSONObject().apply {
        put("id", id)
        put("title", title)
        put("path", path)
        put("coverPath", coverPath ?: "")
        put("folderId", folderId ?: "")
        put("format", format.name)
        put("pageCount", pageCount)
        put("readingProgress", readingProgress)
        put("addedDate", addedDate)
        put("lastReadDate", lastReadDate ?: 0L)
        put("fileSize", fileSize)
        put("isBookmarked", isBookmarked)
    }
}

@WorkerThread
private fun Bookmark.toJson(): JSONObject {
    return JSONObject().apply {
        put("id", id)
        put("comicId", comicId)
        put("pageIndex", pageIndex)
        put("note", note ?: "")
        put("createdAt", createdAt)
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
private fun JSONObject.toComic(): Comic {
    val formatStr = optString("format", "UNKNOWN")
    val format = try {
        ComicFormat.valueOf(formatStr)
    } catch (e: IllegalArgumentException) {
        ComicFormat.UNKNOWN
    }
    
    return Comic(
        id = optString("id", java.util.UUID.randomUUID().toString()),
        title = optString("title", ""),
        path = getString("path"),
        coverPath = optString("coverPath").ifEmpty { null },
        folderId = optString("folderId").ifEmpty { null },
        format = format,
        pageCount = optInt("pageCount", 0),
        readingProgress = optDouble("readingProgress", 0.0).toFloat(),
        addedDate = optLong("addedDate", System.currentTimeMillis()),
        lastReadDate = optLong("lastReadDate", 0L).takeIf { it > 0 },
        fileSize = optLong("fileSize", 0L),
        isBookmarked = optBoolean("isBookmarked", false)
    )
}

@WorkerThread
private fun JSONObject.toBookmark(): Bookmark {
    return Bookmark(
        id = optString("id", java.util.UUID.randomUUID().toString()),
        comicId = getString("comicId"),
        pageIndex = optInt("pageIndex", 0),
        note = optString("note").ifEmpty { null },
        createdAt = optLong("createdAt", System.currentTimeMillis())
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
