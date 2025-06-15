package com.example.mrcomic.data

import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import androidx.core.app.NotificationCompat
import androidx.work.CoroutineWorker
import androidx.work.PeriodicWorkRequestBuilder
import androidx.work.WorkManager
import androidx.work.WorkerParameters
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.util.concurrent.TimeUnit
import androidx.room.Room

class AutoImportService(appContext: Context, params: WorkerParameters) : CoroutineWorker(appContext, params) {
    override suspend fun doWork(): Result = withContext(Dispatchers.IO) {
        val sharedPrefs = applicationContext.getSharedPreferences("MrComicPrefs", Context.MODE_PRIVATE)
        val folderPath = sharedPrefs.getString("import_folder", null) ?: return@withContext Result.failure()
        val db = Room.databaseBuilder(applicationContext, com.example.mrcomic.theme.data.db.ThemeDatabase::class.java, "comic-database").build()
        val dao = db.comicDao()
        var newComics = 0

        File(folderPath).walk().forEach { file ->
            if (file.extension.lowercase() in listOf("cbz", "cbr", "pdf", "epub", "mobi")) {
                val existingComics = dao.getAllComics()
                // Здесь можно добавить проверку на существование файла в базе (асинхронно)
                // Для простоты пропускаем, если файл уже есть
                // ...
                try {
                    val comic = ComicImporter.importComic(applicationContext, file)
                    dao.insertComic(comic)
                    newComics++
                } catch (e: Exception) {
                    dao.insertFailedImport(FailedImport(filePath = file.absolutePath, error = e.message ?: "Unknown error"))
                }
            }
        }

        if (newComics > 0) {
            val notificationManager = applicationContext.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            val channelId = "mrcomic_import"
            val channel = NotificationChannel(channelId, "Comic Imports", NotificationManager.IMPORTANCE_DEFAULT)
            notificationManager.createNotificationChannel(channel)

            val notification = NotificationCompat.Builder(applicationContext, channelId)
                .setSmallIcon(android.R.drawable.stat_notify_more)
                .setContentTitle("Новые комиксы")
                .setContentText("Импортировано $newComics новых комиксов")
                .setPriority(NotificationCompat.PRIORITY_DEFAULT)
                .build()

            notificationManager.notify(1, notification)
        }

        Result.success()
    }

    companion object {
        fun schedulePeriodicImport(context: Context, intervalDays: Long = 1) {
            val workRequest = PeriodicWorkRequestBuilder<AutoImportService>(intervalDays, TimeUnit.DAYS)
                .build()
            WorkManager.getInstance(context).enqueue(workRequest)
        }

        fun cancelPeriodicImport(context: Context) {
            WorkManager.getInstance(context).cancelAllWorkByTag("auto_import")
        }
    }
} 