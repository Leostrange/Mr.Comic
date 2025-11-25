package com.example.core.data.scanner

import android.content.Context
import androidx.hilt.work.HiltWorker
import androidx.work.CoroutineWorker
import androidx.work.Data
import androidx.work.WorkerParameters
import com.example.core.data.repository.ComicRepository
import dagger.assisted.Assisted
import dagger.assisted.AssistedInject
import kotlinx.coroutines.flow.last
import java.io.File

/**
 * Worker для фонового сканирования библиотеки через WorkManager
 */
@HiltWorker
class LibraryScanWorker @AssistedInject constructor(
    @Assisted context: Context,
    @Assisted workerParams: WorkerParameters,
    private val fileIndexer: FileIndexer,
    private val metadataExtractor: MetadataExtractor,
    private val comicRepository: ComicRepository
) : CoroutineWorker(context, workerParams) {
    
    companion object {
        const val TAG = "LibraryScanWorker"
        
        // Ключи для входных данных
        const val KEY_DIRECTORY_PATH = "directory_path"
        const val KEY_SCAN_SUBFOLDERS = "scan_subfolders"
        const val KEY_CBZ_MODE = "cbz_mode"
        const val KEY_CBR_MODE = "cbr_mode"
        const val KEY_PDF_MODE = "pdf_mode"
        const val KEY_FOLDER_MODE = "folder_mode"
        
        // Ключи для выходных данных
        const val KEY_FOUND_COMICS = "found_comics"
        const val KEY_PROCESSED_FILES = "processed_files"
        const val KEY_ERROR_MESSAGE = "error_message"
        
        // Ключи для прогресса
        const val KEY_PROGRESS_CURRENT = "progress_current"
        const val KEY_PROGRESS_TOTAL = "progress_total"
        const val KEY_PROGRESS_PERCENTAGE = "progress_percentage"
    }
    
    override suspend fun doWork(): Result {
        try {
            // Получаем параметры
            val directoryPath = inputData.getString(KEY_DIRECTORY_PATH)
                ?: return Result.failure(createErrorData("Directory path not provided"))
            
            val directory = File(directoryPath)
            if (!directory.exists() || !directory.isDirectory) {
                return Result.failure(createErrorData("Directory not found: $directoryPath"))
            }
            
            // Создаем настройки сканирования
            val settings = ScanSettings(
                cbzMode = getScanMode(KEY_CBZ_MODE),
                cbrMode = getScanMode(KEY_CBR_MODE),
                pdfMode = getScanMode(KEY_PDF_MODE),
                folderMode = getScanMode(KEY_FOLDER_MODE),
                scanSubfolders = inputData.getBoolean(KEY_SCAN_SUBFOLDERS, true)
            )
            
            android.util.Log.d(TAG, "Starting scan of: $directoryPath")
            
            // Сканируем директорию
            var lastProgress: ScanProgress? = null
            fileIndexer.scanDirectory(directory, settings).collect { progress ->
                lastProgress = progress
                
                // Обновляем прогресс
                setProgress(createProgressData(progress))
                
                android.util.Log.d(
                    TAG,
                    "Progress: ${progress.processedFiles}/${progress.totalFiles}, Found: ${progress.foundComics}"
                )
            }
            
            val finalProgress = lastProgress
            if (finalProgress == null || finalProgress.status == ScanStatus.FAILED) {
                return Result.failure(
                    createErrorData(finalProgress?.error ?: "Scan failed")
                )
            }
            
            // Находим все файлы комиксов
            val comicFiles = fileIndexer.findComicFiles(directory, settings)
            android.util.Log.d(TAG, "Found ${comicFiles.size} comic files")
            
            // Извлекаем метаданные и добавляем в базу
             var addedCount = 0
             for (file in comicFiles) {
                 try {
                     val comic = metadataExtractor.extractMetadata(file)
                     if (comic != null) {
                         // Проверяем, не существует ли уже комикс с таким путем
                         val existing = comicRepository.getComicByPath(file.absolutePath)
                         if (existing == null) {
                             comicRepository.addComic(comic)
                             addedCount++
                         }
                     }
                 } catch (e: Exception) {
                     android.util.Log.e(TAG, "Error adding comic: ${file.name}", e)
                 }
             }
            
            android.util.Log.d(TAG, "Scan completed. Added $addedCount new comics")
            
            // Возвращаем результат
            return Result.success(
                Data.Builder()
                    .putInt(KEY_FOUND_COMICS, comicFiles.size)
                    .putInt(KEY_PROCESSED_FILES, finalProgress.processedFiles)
                    .build()
            )
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error during scan", e)
            return Result.failure(createErrorData(e.message ?: "Unknown error"))
        }
    }
    
    /**
     * Получить режим сканирования из входных данных
     */
    private fun getScanMode(key: String): ScanMode {
        val modeString = inputData.getString(key) ?: return ScanMode.ALWAYS
        return try {
            ScanMode.valueOf(modeString)
        } catch (e: IllegalArgumentException) {
            ScanMode.ALWAYS
        }
    }
    
    /**
     * Создать данные прогресса
     */
    private fun createProgressData(progress: ScanProgress): Data {
        return Data.Builder()
            .putInt(KEY_PROGRESS_CURRENT, progress.processedFiles)
            .putInt(KEY_PROGRESS_TOTAL, progress.totalFiles)
            .putInt(KEY_PROGRESS_PERCENTAGE, progress.percentage)
            .build()
    }
    
    /**
     * Создать данные ошибки
     */
    private fun createErrorData(message: String): Data {
        return Data.Builder()
            .putString(KEY_ERROR_MESSAGE, message)
            .build()
    }
}
