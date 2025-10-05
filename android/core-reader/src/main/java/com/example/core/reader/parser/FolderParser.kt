package com.example.core.reader.parser

import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import com.example.core.model.ComicFormat
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject

/**
 * Парсер для папок с изображениями
 * Обрабатывает директории, содержащие файлы изображений
 */
class FolderParser @Inject constructor(
    context: Context
) : BaseFileParser(context) {
    
    override suspend fun parse(file: File): ComicFile = withContext(Dispatchers.IO) {
        if (!file.exists()) {
            throw ParsingException("Folder not found: ${file.absolutePath}")
        }
        
        if (!file.isDirectory) {
            throw ParsingException("Not a directory: ${file.absolutePath}")
        }
        
        try {
            // Получаем список файлов изображений
            val imageFiles = file.listFiles { f ->
                f.isFile && isImageFile(f.name)
            }?.map { it.name } ?: emptyList()
            
            if (imageFiles.isEmpty()) {
                throw ParsingException("No image files found in folder: ${file.name}")
            }
            
            val sortedFiles = sortFilesNaturally(imageFiles)
            val pageCount = sortedFiles.size
            
            // Создаем информацию о страницах
            val pages = sortedFiles.mapIndexed { index, fileName ->
                val imageFile = File(file, fileName)
                PageInfo(
                    index = index,
                    name = fileName,
                    size = imageFile.length()
                )
            }
            
            // Вычисляем общий размер папки
            val totalSize = pages.sumOf { it.size }
            
            ComicFile(
                file = file,
                format = ComicFormat.FOLDER,
                pageCount = pageCount,
                title = file.name,
                fileSize = totalSize,
                pages = pages
            )
        } catch (e: ParsingException) {
            throw e
        } catch (e: Exception) {
            throw ParsingException("Failed to parse folder: ${file.name}", e)
        }
    }
    
    override fun getSupportedFormats(): List<String> {
        // Папки не имеют расширения, но мы возвращаем пустой список
        return emptyList()
    }
    
    override fun isSupported(file: File): Boolean {
        // Папка поддерживается, если она содержит хотя бы один файл изображения
        return file.isDirectory && file.listFiles { f ->
            f.isFile && isImageFile(f.name)
        }?.isNotEmpty() == true
    }
}
