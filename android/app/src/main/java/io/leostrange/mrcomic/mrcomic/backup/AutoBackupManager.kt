package io.leostrange.mrcomic.backup

import android.content.Context
import android.os.Environment
import android.util.Log
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.leostrange.mrcomic.core.model.displayReadingProgress
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.withContext
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Handles automatic library backup to Documents/MrComic/.
 *
 * Backup is written once per calendar day to
 * `Documents/MrComic/mrcomic_backup_YYYY-MM-DD.json`.
 * If today's file already exists it is overwritten so the backup always
 * reflects the current reading state.
 *
 * Call [maybeBackupOnStartup] from [ComicApplication.onCreate] — it checks
 * the [PreferencesKeys.AUTO_BACKUP_ENABLED] flag and skips if disabled.
 */
@Singleton
class AutoBackupManager @Inject constructor(
    @ApplicationContext private val context: Context,
    private val libraryRepository: LibraryRepository
) {
    companion object {
        private const val TAG = "AutoBackupManager"
    }

    private val preferences = UserPreferences(context.dataStore)

    /** Called on every app launch; writes backup only if the feature is enabled. */
    suspend fun maybeBackupOnStartup() = withContext(Dispatchers.IO) {
        val enabled = preferences.get(PreferencesKeys.AUTO_BACKUP_ENABLED, false).first()
        if (!enabled) return@withContext
        performBackup()
    }

    /** Unconditionally writes a backup (caller is responsible for the enabled check). */
    suspend fun performBackup() = withContext(Dispatchers.IO) {
        try {
            val docsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)
            val backupDir = File(docsDir, "MrComic").apply { mkdirs() }
            // External storage may be unavailable on some devices/configs.
            if (!backupDir.exists()) {
                Log.w(TAG, "Backup dir unavailable: ${backupDir.absolutePath}")
                return@withContext
            }

            val date = SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Date())
            val backupFile = File(backupDir, "mrcomic_backup_$date.json")

            val comics = libraryRepository.getAllComics().first()
            val root = JSONObject().apply {
                put("version", 1)
                put("exportedAt", System.currentTimeMillis())
                put("entries", JSONArray().also { arr ->
                    comics.forEach { comic ->
                        arr.put(JSONObject().apply {
                            put("id",              comic.id)
                            put("path",            comic.path)
                            put("title",           comic.title)
                            put("currentPage",     comic.currentPage)
                            put("pageCount",       comic.pageCount)
                            put("readingProgress", comic.displayReadingProgress().toDouble())
                            put("lastReadDate",    comic.lastReadDate ?: 0L)
                            put("isBookmarked",    comic.isBookmarked)
                            put("isCompleted",     comic.isCompleted)
                        })
                    }
                })
            }

            backupFile.writeText(root.toString(2), Charsets.UTF_8)
            Log.i(TAG, "Backup written: ${backupFile.absolutePath} (${comics.size} comics)")
        } catch (e: Exception) {
            Log.w(TAG, "Auto-backup failed", e)
        }
    }
}
