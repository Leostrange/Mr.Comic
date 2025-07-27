package com.example.mrcomic.data

import android.app.Application
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.os.ParcelFileDescriptor
import android.graphics.pdf.PdfRenderer
import android.provider.OpenableColumns
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipInputStream
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class ComicRepository @Inject constructor(
    private val comicDao: ComicDao,
    private val application: Application
) {

    fun getAllComics(): Flow<List<ComicEntity>> = comicDao.getAllComics()

    fun getComicById(comicId: Long): Flow<ComicEntity?> = comicDao.getComicById(comicId)

    suspend fun getComicByIdSync(comicId: Long): ComicEntity? = comicDao.getComicByIdSync(comicId)

    suspend fun addComic(comic: ComicEntity) {
        comicDao.insertComic(comic)
    }

    suspend fun deleteComic(comic: ComicEntity) {
        comicDao.deleteComic(comic)
    }

    suspend fun setFavorite(comicId: Long, isFavorite: Boolean) = comicDao.setFavorite(comicId, isFavorite)

    suspend fun updateProgress(comicId: Long, page: Int) = comicDao.updateProgress(comicId, page)

    // Методы для работы с закладками
    suspend fun addBookmark(bookmark: BookmarkEntity) = comicDao.insertBookmark(bookmark)

    suspend fun removeBookmark(bookmark: BookmarkEntity) = comicDao.deleteBookmark(bookmark)

    suspend fun getBookmarks(comicId: Long): List<BookmarkEntity> = comicDao.getBookmarksForComic(comicId)

    // Методы для отслеживания времени
    suspend fun updateLastOpened(comicId: Long) = comicDao.updateLastOpened(comicId, System.currentTimeMillis())

    suspend fun addReadingTime(comicId: Long, delta: Long) = comicDao.addReadingTime(comicId, delta)

    suspend fun getRecentComics(limit: Int = 5): List<ComicEntity> = comicDao.getRecentComics(limit)

    suspend fun importComicFromUri(uri: Uri) {
        withContext(Dispatchers.IO) {
            val fileName = getFileName(uri) ?: "comic_${System.currentTimeMillis()}.cbz"
            val comicsDir = File(application.filesDir, "comics")
            if (!comicsDir.exists()) comicsDir.mkdirs()

            val newFile = File(comicsDir, fileName)

            application.contentResolver.openInputStream(uri)?.use { inputStream ->
                FileOutputStream(newFile).use { outputStream ->
                    inputStream.copyTo(outputStream)
                }
            }

            val extension = fileName.substringAfterLast('.').lowercase()
            val pageCount: Int
            val coverPath: String?
            if (extension == "pdf") {
                pageCount = getPageCountFromPdf(newFile)
                coverPath = extractCoverFromPdf(newFile)
            } else {
                pageCount = getPageCountFromCbz(newFile)
                coverPath = extractCoverFromCbz(newFile)
            }

            val entity = ComicEntity(
                title = fileName.removeSuffix(".$extension").replace("_", " "),
                author = "Неизвестен",
                description = "Импортировано из файла: $fileName",
                filePath = newFile.absolutePath,
                coverPath = coverPath,
                pageCount = pageCount,
                currentPage = 0,
                readingTime = 0
            )

            comicDao.insertComic(entity)
        }
    }

    private fun getFileName(uri: Uri): String? {
        var result: String? = null
        if (uri.scheme == "content") {
            val cursor = application.contentResolver.query(uri, null, null, null, null)
            cursor?.use {
                if (it.moveToFirst()) {
                    val nameIndex = it.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                    if (nameIndex != -1) {
                        result = it.getString(nameIndex)
                    }
                }
            }
        }
        if (result == null) {
            result = uri.path
            val cut = result?.lastIndexOf('/')
            if (cut != null && cut != -1) {
                result = result?.substring(cut + 1)
            }
        }
        return result
    }

    private fun getPageCountFromCbz(file: File): Int {
        var count = 0
        try {
            ZipInputStream(file.inputStream()).use { zipInputStream ->
                var entry = zipInputStream.nextEntry
                while (entry != null) {
                    if (!entry.isDirectory && isImageFile(entry.name)) {
                        count++
                    }
                    entry = zipInputStream.nextEntry
                }
            }
        } catch (e: Exception) {
            // Log error
        }
        return count
    }

    private fun getPageCountFromPdf(file: File): Int {
        return try {
            val descriptor = ParcelFileDescriptor.open(file, ParcelFileDescriptor.MODE_READ_ONLY)
            val renderer = PdfRenderer(descriptor)
            val count = renderer.pageCount
            renderer.close()
            descriptor.close()
            count
        } catch (e: Exception) {
            0
        }
    }

    private fun isImageFile(fileName: String): Boolean {
        val lowercased = fileName.lowercase()
        return lowercased.endsWith(".jpg") ||
                lowercased.endsWith(".jpeg") ||
                lowercased.endsWith(".png") ||
                lowercased.endsWith(".webp")
    }

    private fun extractCoverFromCbz(cbzFile: File): String? {
        val coversDir = File(application.filesDir, "covers")
        if (!coversDir.exists()) coversDir.mkdirs()
        try {
            ZipInputStream(cbzFile.inputStream()).use { zipInputStream ->
                var entry: ZipEntry? = zipInputStream.nextEntry
                while (entry != null) {
                    if (!entry.isDirectory && isImageFile(entry.name)) {
                        // Сохраняем первую найденную картинку
                        val ext = entry.name.substringAfterLast('.', "jpg")
                        val coverFile = File(coversDir, cbzFile.nameWithoutExtension + ".cover." + ext)
                        FileOutputStream(coverFile).use { out ->
                            zipInputStream.copyTo(out)
                        }
                        return coverFile.absolutePath
                    }
                    entry = zipInputStream.nextEntry
                }
            }
        } catch (e: Exception) {
            // TODO: Log error
        }
        return null
    }

    private fun extractCoverFromPdf(pdfFile: File): String? {
        val coversDir = File(application.filesDir, "covers")
        if (!coversDir.exists()) coversDir.mkdirs()
        var descriptor: ParcelFileDescriptor? = null
        var renderer: PdfRenderer? = null
        return try {
            descriptor = ParcelFileDescriptor.open(pdfFile, ParcelFileDescriptor.MODE_READ_ONLY)
            renderer = PdfRenderer(descriptor!!)
            if (renderer.pageCount > 0) {
                val page = renderer.openPage(0)
                val bitmap = Bitmap.createBitmap(page.width, page.height, Bitmap.Config.ARGB_8888)
                page.render(bitmap, null, null, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
                page.close()
                val coverFile = File(coversDir, pdfFile.nameWithoutExtension + ".cover.jpg")
                FileOutputStream(coverFile).use { fos ->
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 90, fos)
                }
                coverFile.absolutePath
            } else null
        } catch (e: Exception) {
            null
        } finally {
            renderer?.close()
            descriptor?.close()
        }
    }

    suspend fun getComicPage(filePath: String, pageIndex: Int): Bitmap? {
        return withContext(Dispatchers.IO) {
            try {
                ZipInputStream(File(filePath).inputStream()).use { zipInputStream ->
                    var currentIndex = -1
                    var entry = zipInputStream.nextEntry
                    while (entry != null) {
                        if (!entry.isDirectory && isImageFile(entry.name)) {
                            currentIndex++
                            if (currentIndex == pageIndex) {
                                // Нашли нужную страницу, декодируем в Bitmap
                                return@withContext BitmapFactory.decodeStream(zipInputStream)
                            }
                        }
                        entry = zipInputStream.nextEntry
                    }
                }
            } catch (e: Exception) {
                // TODO: Log error
            }
            null
        }
    }

    // В будущем здесь можно добавить методы для работы с файлами,
    // например, для извлечения обложек или подсчета страниц.
} 