package com.example.core.reader.parser

import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import com.example.core.model.ComicFormat
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import net.lingala.zip4j.ZipFile
import java.io.File
import javax.inject.Inject

/**
 * Парсер для CBZ/ZIP файлов
 * Использует Zip4j для работы с архивами
 */
class CbzParser @Inject constructor(
    context: Context
) : BaseFileParser(context) {
    
    override suspend fun parse(file: File): ComicFile = withContext(Dispatchers.IO) {
        if (!file.exists()) {
            throw ParsingException("File not found: ${file.absolutePath}")
        }
        
        if (!isSupported(file)) {
            throw ParsingException("Unsupported file format: ${file.extension}")
        }
        
        try {
            val zipFile = ZipFile(file)
            
            if (!zipFile.isValidZipFile) {
                throw ParsingException("Invalid ZIP file: ${file.name}")
            }
            
            // Получаем список файлов изображений
            val imageFiles = zipFile.fileHeaders
                .filter { !it.isDirectory && isImageFile(it.fileName) }
                .map { it.fileName }
                .let { sortFilesNaturally(it) }
            
            if (imageFiles.isEmpty()) {
                throw ParsingException("No image files found in archive: ${file.name}")
            }
            
            val pageCount = imageFiles.size
            val format = if (file.extension.lowercase() == "cbz") {
                ComicFormat.CBZ
            } else {
                ComicFormat.ZIP
            }
            
            // Создаем информацию о страницах
            val pages = imageFiles.mapIndexed { index, fileName ->
                val fileHeader = zipFile.getFileHeader(fileName)
                PageInfo(
                    index = index,
                    name = fileName,
                    size = fileHeader?.uncompressedSize ?: 0L
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
            throw ParsingException("Failed to parse CBZ file: ${file.name}", e)
        }
    }
    
    override fun getSupportedFormats(): List<String> {
        return listOf("cbz", "zip")
    }
}
