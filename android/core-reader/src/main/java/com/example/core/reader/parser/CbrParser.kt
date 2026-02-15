package com.example.core.reader.parser

import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import com.example.core.model.ComicFormat
import com.github.junrar.Archive
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject

/**
 * Парсер для CBR/RAR файлов
 * Использует Junrar для работы с RAR архивами
 */
class CbrParser @Inject constructor(
    context: Context
) : BaseFileParser(context) {
    
    override suspend fun parse(file: File): ComicFile = withContext(Dispatchers.IO) {
        if (!file.exists()) {
            throw ParsingException("File not found: ${file.absolutePath}")
        }
        
        if (!isSupported(file)) {
            throw ParsingException("Unsupported file format: ${file.extension}")
        }
        
        var archive: Archive? = null
        
        try {
            archive = Archive(file)
            
            // Получаем список файлов изображений
            val imageFiles = archive.fileHeaders
                .filter { !it.isDirectory && isImageFile(it.fileName) }
                .map { it.fileName }
                .let { sortFilesNaturally(it) }
            
            if (imageFiles.isEmpty()) {
                throw ParsingException("No image files found in archive: ${file.name}")
            }
            
            val pageCount = imageFiles.size
            val format = if (file.extension.lowercase() == "cbr") {
                ComicFormat.CBR
            } else {
                ComicFormat.RAR
            }
            
            // Создаем информацию о страницах
            val pages = imageFiles.mapIndexed { index, fileName ->
                val fileHeader = archive.fileHeaders.find { it.fileName == fileName }
                PageInfo(
                    index = index,
                    name = fileName,
                    size = fileHeader?.fullUnpackSize ?: 0L
                )
            }
            
            ComicFile(
                file = file,
                format = format,
                pageCount = pageCount,
                title = file.nameWithoutExtension,
                fileSize = file.length(),
                pages = pages
            )
        } catch (e: ParsingException) {
            throw e
        } catch (e: Exception) {
            throw ParsingException("Failed to parse CBR file: ${file.name}", e)
        } finally {
            archive?.close()
        }
    }
    
    override fun getSupportedFormats(): List<String> {
        return listOf("cbr", "rar")
    }
}
