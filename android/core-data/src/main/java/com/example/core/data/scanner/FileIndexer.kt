package com.example.core.data.scanner

import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import com.example.core.model.ComicFormat
import com.example.core.reader.parser.FormatDetector
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOn
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Индексатор файлов для поиска комиксов в директориях
 */
@Singleton
class FileIndexer @Inject constructor(
    @ApplicationContext private val context: Context,
    private val formatDetector: FormatDetector
) {
    
    companion object {
        private const val TAG = "FileIndexer"
    }
    
    /**
     * Сканирование директории с отслеживанием прогресса
     * @param directory директория для сканирования
     * @param settings настройки сканирования
     * @return Flow с прогрессом сканирования
     */
    fun scanDirectory(
        directory: File,
        settings: ScanSettings = ScanSettings()
    ): Flow<ScanProgress> = flow {
        if (!directory.exists() || !directory.isDirectory) {
            emit(
                ScanProgress(
                    status = ScanStatus.FAILED,
                    error = "Directory not found or not accessible: ${directory.absolutePath}"
                )
            )
            return@flow
        }
        
        emit(ScanProgress(status = ScanStatus.PREPARING))
        
        try {
            // Собираем список всех файлов
            val allFiles = mutableListOf<File>()
            collectFiles(directory, allFiles, settings.scanSubfolders)
            
            val totalFiles = allFiles.size
            var processedFiles = 0
            var foundComics = 0
            
            emit(
                ScanProgress(
                    status = ScanStatus.SCANNING,
                    totalFiles = totalFiles
                )
            )
            
            // Обрабатываем каждый файл
            for (file in allFiles) {
                processedFiles++
                
                // Проверяем, является ли файл комиксом
                if (isComicFile(file, settings)) {
                    foundComics++
                }
                
                // Отправляем прогресс каждые 10 файлов или на последнем файле
                if (processedFiles % 10 == 0 || processedFiles == totalFiles) {
                    emit(
                        ScanProgress(
                            currentFile = file.name,
                            processedFiles = processedFiles,
                            totalFiles = totalFiles,
                            foundComics = foundComics,
                            status = ScanStatus.SCANNING
                        )
                    )
                }
            }
            
            // Завершено
            emit(
                ScanProgress(
                    processedFiles = processedFiles,
                    totalFiles = totalFiles,
                    foundComics = foundComics,
                    status = ScanStatus.COMPLETED
                )
            )
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error scanning directory", e)
            emit(
                ScanProgress(
                    status = ScanStatus.FAILED,
                    error = e.message ?: "Unknown error"
                )
            )
        }
    }.flowOn(Dispatchers.IO)
    
    /**
     * Найти все файлы комиксов в директории
     * @param directory директория для поиска
     * @param settings настройки сканирования
     * @return список найденных файлов комиксов
     */
    suspend fun findComicFiles(
        directory: File,
        settings: ScanSettings = ScanSettings()
    ): List<File> = withContext(Dispatchers.IO) {
        if (!directory.exists() || !directory.isDirectory) {
            return@withContext emptyList()
        }
        
        val comicFiles = mutableListOf<File>()
        val allFiles = mutableListOf<File>()
        
        collectFiles(directory, allFiles, settings.scanSubfolders)
        
        for (file in allFiles) {
            if (isComicFile(file, settings)) {
                comicFiles.add(file)
            }
        }
        
        comicFiles
    }
    
    /**
     * Рекурсивный сбор файлов из директории
     */
    private fun collectFiles(
        directory: File,
        result: MutableList<File>,
        recursive: Boolean
    ) {
        try {
            val files = directory.listFiles() ?: return
            
            for (file in files) {
                when {
                    file.isFile -> result.add(file)
                    file.isDirectory && recursive -> collectFiles(file, result, recursive)
                }
            }
        } catch (e: SecurityException) {
            android.util.Log.w(TAG, "Access denied to directory: ${directory.absolutePath}")
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error collecting files from: ${directory.absolutePath}", e)
        }
    }
    
    /**
     * Проверка, является ли файл комиксом согласно настройкам
     */
    private suspend fun isComicFile(file: File, settings: ScanSettings): Boolean {
        if (file.isDirectory) {
            // Проверяем папки с изображениями
            return settings.folderMode != ScanMode.NEVER && 
                   formatDetector.isSupported(file)
        }
        
        val format = formatDetector.detectFormat(file)
        
        return when (format) {
            ComicFormat.CBZ, ComicFormat.ZIP -> settings.cbzMode != ScanMode.NEVER
            ComicFormat.CBR, ComicFormat.RAR -> settings.cbrMode != ScanMode.NEVER
            ComicFormat.PDF -> settings.pdfMode != ScanMode.NEVER
            else -> false
        }
    }
    
    /**
     * Подсчет файлов в директории (быстрый метод без детальной проверки)
     */
    suspend fun countFiles(directory: File, recursive: Boolean = true): Int = withContext(Dispatchers.IO) {
        if (!directory.exists() || !directory.isDirectory) {
            return@withContext 0
        }
        
        var count = 0
        val files = directory.listFiles() ?: return@withContext 0
        
        for (file in files) {
            when {
                file.isFile -> count++
                file.isDirectory && recursive -> count += countFiles(file, recursive)
            }
        }
        
        count
    }
}
