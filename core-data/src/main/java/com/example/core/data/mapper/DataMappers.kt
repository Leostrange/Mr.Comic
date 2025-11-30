package com.example.core.data.mapper

import com.example.core.model.Bookmark
import com.example.core.model.Comic
import com.example.core.model.ComicFormat
import com.example.core.model.Folder
import com.example.core.model.ReadingSession
import java.io.File

/**
 * Маппинг между слоями данных
 * Extension функции для преобразования моделей
 */

/**
 * Преобразование File в Comic
 */
fun File.toComic(
    folderId: String? = null,
    coverPath: String? = null
): Comic {
    val format = when (extension.lowercase()) {
        "cbz" -> ComicFormat.CBZ
        "cbr" -> ComicFormat.CBR
        "zip" -> ComicFormat.ZIP
        "rar" -> ComicFormat.RAR
        "pdf" -> ComicFormat.PDF
        "7z" -> ComicFormat.SEVENZ
        "tar" -> ComicFormat.TAR
        "epub" -> ComicFormat.EPUB
        else -> ComicFormat.UNKNOWN
    }
    
    return Comic(
        title = nameWithoutExtension,
        path = absolutePath,
        format = format,
        coverPath = coverPath,
        pageCount = 0,
        fileSize = length(),
        addedDate = System.currentTimeMillis(),
        lastModified = lastModified(),
        folderId = folderId
    )
}

/**
 * Преобразование пути в ComicFormat
 */
fun String.toComicFormat(): ComicFormat {
    val extension = substringAfterLast('.', "").lowercase()
    return when (extension) {
        "cbz" -> ComicFormat.CBZ
        "cbr" -> ComicFormat.CBR
        "zip" -> ComicFormat.ZIP
        "rar" -> ComicFormat.RAR
        "pdf" -> ComicFormat.PDF
        "7z" -> ComicFormat.SEVENZ
        "tar" -> ComicFormat.TAR
        "epub" -> ComicFormat.EPUB
        else -> ComicFormat.UNKNOWN
    }
}

/**
 * Проверка, является ли файл поддерживаемым форматом комикса
 */
fun File.isSupportedComicFormat(): Boolean {
    val supportedExtensions = setOf("cbz", "cbr", "zip", "rar", "pdf", "7z", "tar", "epub")
    return extension.lowercase() in supportedExtensions
}

/**
 * Проверка, является ли путь поддерживаемым форматом комикса
 */
fun String.isSupportedComicFormat(): Boolean {
    val extension = substringAfterLast('.', "").lowercase()
    val supportedExtensions = setOf("cbz", "cbr", "zip", "rar", "pdf", "7z", "tar", "epub")
    return extension in supportedExtensions
}

/**
 * Получить расширение файла из пути
 */
fun String.getFileExtension(): String {
    return substringAfterLast('.', "")
}

/**
 * Получить имя файла без расширения из пути
 */
fun String.getFileNameWithoutExtension(): String {
    val fileName = substringAfterLast('/')
    return fileName.substringBeforeLast('.')
}

/**
 * Создать Folder из пути
 */
fun String.toFolder(
    name: String? = null,
    parentId: String? = null
): Folder {
    return Folder(
        name = name ?: substringAfterLast('/'),
        path = this,
        parentId = parentId,
        comicCount = 0
    )
}

/**
 * Создать ReadingSession для комикса
 */
fun Comic.toReadingSession(
    currentPage: Int = 0,
    readingSettings: String? = null
): ReadingSession {
    return ReadingSession(
        comicId = id,
        currentPage = currentPage,
        totalPages = pageCount,
        lastReadAt = System.currentTimeMillis(),
        readingSettings = readingSettings
    )
}

/**
 * Создать Bookmark для комикса
 */
fun Comic.toBookmark(
    pageIndex: Int,
    note: String? = null
): Bookmark {
    return Bookmark(
        comicId = id,
        pageIndex = pageIndex,
        note = note,
        createdAt = System.currentTimeMillis()
    )
}

/**
 * Обновить Comic с прогрессом из ReadingSession
 */
fun Comic.withSession(session: ReadingSession): Comic {
    return copy(
        readingProgress = if (session.totalPages > 0) {
            session.currentPage.toFloat() / session.totalPages.toFloat()
        } else {
            0f
        },
        lastReadDate = session.lastReadAt
    )
}

/**
 * Получить процент прочитанного
 */
fun ReadingSession.getProgressPercentage(): Float {
    if (totalPages == 0) return 0f
    return (currentPage.toFloat() / totalPages.toFloat()) * 100f
}

/**
 * Проверка, завершено ли чтение
 */
fun ReadingSession.isCompleted(): Boolean {
    return currentPage >= totalPages - 1
}

/**
 * Проверка, начато ли чтение
 */
fun ReadingSession.isStarted(): Boolean {
    return currentPage > 0
}

/**
 * Форматирование прогресса для отображения
 */
fun ReadingSession.formatProgress(): String {
    return "${currentPage + 1}/$totalPages"
}

/**
 * Получить процент прочитанного из Comic
 */
fun Comic.getProgressPercentage(): Float {
    return readingProgress * 100f
}

/**
 * Проверка, прочитан ли комикс
 */
fun Comic.isRead(): Boolean {
    return readingProgress >= 0.95f // Считаем прочитанным, если прогресс >= 95%
}

/**
 * Проверка, начато ли чтение комикса
 */
fun Comic.isStarted(): Boolean {
    return readingProgress > 0f
}

/**
 * Форматирование размера файла
 */
fun Long.formatFileSize(): String {
    val kb = this / 1024.0
    val mb = kb / 1024.0
    val gb = mb / 1024.0
    
    return when {
        gb >= 1 -> String.format("%.2f GB", gb)
        mb >= 1 -> String.format("%.2f MB", mb)
        kb >= 1 -> String.format("%.2f KB", kb)
        else -> "$this B"
    }
}

/**
 * Форматирование даты
 */
fun Long.formatDate(): String {
    val dateFormat = java.text.SimpleDateFormat("dd.MM.yyyy HH:mm", java.util.Locale.getDefault())
    return dateFormat.format(java.util.Date(this))
}

/**
 * Форматирование относительной даты
 */
fun Long.formatRelativeDate(): String {
    val now = System.currentTimeMillis()
    val diff = now - this
    
    val seconds = diff / 1000
    val minutes = seconds / 60
    val hours = minutes / 60
    val days = hours / 24
    
    return when {
        days > 0 -> "$days дн. назад"
        hours > 0 -> "$hours ч. назад"
        minutes > 0 -> "$minutes мин. назад"
        else -> "только что"
    }
}
