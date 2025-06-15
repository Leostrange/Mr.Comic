package com.example.mrcomic.workers

import android.content.Context
import androidx.documentfile.provider.DocumentFile
import androidx.work.CoroutineWorker
import androidx.work.WorkerParameters
import androidx.work.workDataOf
import com.example.mrcomic.data.AppDatabase
import com.example.mrcomic.utils.ComicScanner

class ComicScanWorker(appContext: Context, params: WorkerParameters) : CoroutineWorker(appContext, params) {
    override suspend fun doWork(): Result {
        val uriString = inputData.getString(KEY_DIRECTORY_PATH) ?: return Result.failure()
        val database = AppDatabase.getDatabase(applicationContext)
        val scanner = ComicScanner(database.comicDao())
        val uri = android.net.Uri.parse(uriString)
        val directory = DocumentFile.fromTreeUri(applicationContext, uri)
        if (directory == null || !directory.isDirectory) return Result.failure(workDataOf(KEY_RESULT to "Недействительная директория"))
        scanner.scanDirectoryFromUri(directory)
        return Result.success(workDataOf(KEY_RESULT to "Сканирование завершено"))
    }

    companion object {
        const val KEY_DIRECTORY_PATH = "directory_path"
        const val KEY_RESULT = "result"
    }
}

