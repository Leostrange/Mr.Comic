package com.example.core.data.scanner

import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import com.example.core.model.Comic
import com.example.core.reader.parser.FileParserFactory
import com.example.core.reader.parser.ParsingException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Экстрактор метаданных из файлов комиксов
 */
@Singleton
class MetadataExtractor @Inject constructor(
    @ApplicationContext private val context: Context,
    private val parserFactory: FileParserFactory
) {
    
    companion object {
        private const val TAG = "MetadataExtractor"
    }
    
    /**
     * Извлечь метаданные из файла
     * @param file файл комикса
     * @param folderId ID папки (опционально)
     * @return Comic с извлеченными метаданными
     */
    suspend fun extractMetadata(
        file: File,
        folderId: String? = null
    ): Comic? = withContext(Dispatchers.IO) {
        try {
            // Проверяем, поддерживается ли файл
            if (!parserFactory.isSupported(file)) {
                android.util.Log.w(TAG, "Unsupported file: ${file.name}")
                return@withContext null
            }
            
            // Парсим файл
            val comicFile = parserFactory.parse(file)
            
            val isSingle = folderId == null
            val displayGroup = if (isSingle) "Разное" else null

            // Создаем Comic из результата парсинга
            Comic(
                title = comicFile.title,
                path = file.absolutePath,
                format = comicFile.format,
                coverPath = null, // Обложка будет извлечена позже
                pageCount = comicFile.pageCount,
                fileSize = comicFile.fileSize,
                addedDate = System.currentTimeMillis(),
                lastModified = file.lastModified(),
                folderId = folderId,
                displayGroup = displayGroup,
                isSingle = isSingle,
                lastReadDate = null,
                readingProgress = 0f,
                isBookmarked = false,
                tags = "",
                series = extractSeries(file.nameWithoutExtension),
                volume = extractVolume(file.nameWithoutExtension),
                issue = extractIssue(file.nameWithoutExtension),
                year = extractYear(file.nameWithoutExtension),
                publisher = null,
                author = null,
                artist = null,
                genre = null,
                language = "en",
                isCompleted = false
            )
        } catch (e: ParsingException) {
            android.util.Log.e(TAG, "Failed to parse file: ${file.name}", e)
            null
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error extracting metadata: ${file.name}", e)
            null
        }
    }
    
    /**
     * Извлечь метаданные из списка файлов
     * @param files список файлов
     * @param folderId ID папки (опционально)
     * @return список Comics с метаданными
     */
    suspend fun extractMetadataFromFiles(
        files: List<File>,
        folderId: String? = null
    ): List<Comic> = withContext(Dispatchers.IO) {
        files.mapNotNull { file ->
            extractMetadata(file, folderId)
        }
    }
    
    /**
     * Извлечь название серии из имени файла
     * Примеры:
     * - "Batman #1" -> "Batman"
     * - "Spider-Man Vol 1 #5" -> "Spider-Man"
     * - "The Walking Dead 001" -> "The Walking Dead"
     */
    private fun extractSeries(fileName: String): String? {
        // Удаляем номера томов, выпусков и годы
        val cleaned = fileName
            .replace(Regex("\\s*[Vv]ol\\.?\\s*\\d+"), "")
            .replace(Regex("\\s*#\\d+"), "")
            .replace(Regex("\\s*\\d{4}\\s*"), "")
            .replace(Regex("\\s*\\d{3,}\\s*$"), "")
            .trim()
        
        return if (cleaned.isNotEmpty() && cleaned != fileName) {
            cleaned
        } else {
            null
        }
    }
    
    /**
     * Извлечь номер тома из имени файла
     * Примеры:
     * - "Batman Vol 1" -> 1
     * - "Spider-Man v2" -> 2
     */
    private fun extractVolume(fileName: String): Int? {
        val volumeRegex = Regex("[Vv]ol\\.?\\s*(\\d+)")
        val match = volumeRegex.find(fileName)
        return match?.groupValues?.get(1)?.toIntOrNull()
    }
    
    /**
     * Извлечь номер выпуска из имени файла
     * Примеры:
     * - "Batman #1" -> 1
     * - "Spider-Man 005" -> 5
     */
    private fun extractIssue(fileName: String): Int? {
        // Пробуем найти номер после #
        val hashRegex = Regex("#(\\d+)")
        val hashMatch = hashRegex.find(fileName)
        if (hashMatch != null) {
            return hashMatch.groupValues[1].toIntOrNull()
        }
        
        // Пробуем найти 3-4 цифры в конце
        val numberRegex = Regex("(\\d{3,4})\\s*$")
        val numberMatch = numberRegex.find(fileName)
        return numberMatch?.groupValues?.get(1)?.toIntOrNull()
    }
    
    /**
     * Извлечь год из имени файла
     * Примеры:
     * - "Batman (2016)" -> 2016
     * - "Spider-Man 2020" -> 2020
     */
    private fun extractYear(fileName: String): Int? {
        val yearRegex = Regex("\\(?\\s*(19\\d{2}|20\\d{2})\\s*\\)?")
        val match = yearRegex.find(fileName)
        return match?.groupValues?.get(1)?.toIntOrNull()
    }
    
    /**
     * Быстрая проверка метаданных без полного парсинга
     * Возвращает только базовую информацию
     */
    suspend fun quickCheck(file: File): QuickMetadata? = withContext(Dispatchers.IO) {
        try {
            if (!file.exists()) return@withContext null
            
            QuickMetadata(
                name = file.nameWithoutExtension,
                size = file.length(),
                lastModified = file.lastModified(),
                extension = file.extension.lowercase()
            )
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error in quick check: ${file.name}", e)
            null
        }
    }
}

/**
 * Быстрые метаданные без полного парсинга
 */
data class QuickMetadata(
    val name: String,
    val size: Long,
    val lastModified: Long,
    val extension: String
)
