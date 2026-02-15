package com.example.core.data.cover

import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.pdf.PdfRenderer
import android.os.ParcelFileDescriptor
import com.example.core.model.ComicFormat
import com.example.core.reader.parser.FormatDetector
import com.github.junrar.Archive
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.util.zip.ZipFile
import java.io.ByteArrayOutputStream
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Экстрактор обложек из файлов комиксов
 * Извлекает первую страницу как обложку
 */
@Singleton
class CoverExtractor @Inject constructor(
    @ApplicationContext private val context: Context,
    private val formatDetector: FormatDetector
) {
    
    companion object {
        private const val TAG = "CoverExtractor"
        private const val COVER_MAX_WIDTH = 512
        private const val COVER_MAX_HEIGHT = 768
    }
    
    /**
     * Извлечь обложку из файла комикса
     * @param file файл комикса
     * @return Bitmap обложки или null при ошибке
     */
    suspend fun extractCover(file: File): Bitmap? = withContext(Dispatchers.IO) {
        try {
            if (!file.exists()) {
                android.util.Log.w(TAG, "File not found: ${file.absolutePath}")
                return@withContext null
            }
            
            val format = formatDetector.detectFormat(file)
            
            when (format) {
                ComicFormat.CBZ, ComicFormat.ZIP -> extractCoverFromZip(file)
                ComicFormat.CBR, ComicFormat.RAR -> extractCoverFromRar(file)
                ComicFormat.PDF -> extractCoverFromPdf(file)
                ComicFormat.FOLDER -> extractCoverFromFolder(file)
                else -> {
                    android.util.Log.w(TAG, "Unsupported format: $format")
                    null
                }
            }
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error extracting cover from: ${file.name}", e)
            null
        }
    }
    
    /**
     * Извлечь обложку из ZIP/CBZ архива
     */
    private suspend fun extractCoverFromZip(file: File): Bitmap? = withContext(Dispatchers.IO) {
        var zipFile: ZipFile? = null
        try {
            zipFile = ZipFile(file)
            
            // Находим первый файл изображения
            val imageEntry = zipFile.entries().toList()
                .filter { !it.isDirectory && isImageFile(it.name) }
                .sortedBy { it.name.lowercase() }
                .firstOrNull()
            
            if (imageEntry == null) {
                android.util.Log.w(TAG, "No image files found in ZIP: ${file.name}")
                return@withContext null
            }
            
            // Читаем изображение напрямую из архива
            val inputStream = zipFile.getInputStream(imageEntry)
            val bytes = inputStream.readBytes()
            inputStream.close()
            
            // Декодируем изображение
            BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error extracting cover from ZIP", e)
            null
        } finally {
            zipFile?.close()
        }
    }
    
    /**
     * Извлечь обложку из RAR/CBR архива
     */
    private suspend fun extractCoverFromRar(file: File): Bitmap? = withContext(Dispatchers.IO) {
        var archive: Archive? = null
        try {
            archive = Archive(file)
            
            // Находим первый файл изображения
            val imageFile = archive.fileHeaders
                .filter { !it.isDirectory && isImageFile(it.fileName) }
                .sortedBy { it.fileName.lowercase() }
                .firstOrNull()
            
            if (imageFile == null) {
                android.util.Log.w(TAG, "No image files found in RAR: ${file.name}")
                return@withContext null
            }
            
            // Извлекаем файл в память
            val outputStream = ByteArrayOutputStream()
            archive.extractFile(imageFile, outputStream)
            val imageData = outputStream.toByteArray()
            
            if (imageData.isEmpty()) {
                return@withContext null
            }
            
            // Декодируем изображение
            decodeBitmapOptimized(imageData)
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error extracting cover from RAR", e)
            null
        } finally {
            archive?.close()
        }
    }
    
    /**
     * Извлечь обложку из PDF файла
     */
    private suspend fun extractCoverFromPdf(file: File): Bitmap? = withContext(Dispatchers.IO) {
        var pdfRenderer: PdfRenderer? = null
        var fileDescriptor: ParcelFileDescriptor? = null
        var page: PdfRenderer.Page? = null
        
        try {
            fileDescriptor = ParcelFileDescriptor.open(
                file,
                ParcelFileDescriptor.MODE_READ_ONLY
            )
            
            pdfRenderer = PdfRenderer(fileDescriptor)
            
            if (pdfRenderer.pageCount == 0) {
                return@withContext null
            }
            
            // Открываем первую страницу
            page = pdfRenderer.openPage(0)
            
            // Вычисляем размеры с сохранением пропорций
            val aspectRatio = page.width.toFloat() / page.height.toFloat()
            val width: Int
            val height: Int
            
            if (aspectRatio > 1) {
                // Альбомная ориентация
                width = COVER_MAX_WIDTH
                height = (COVER_MAX_WIDTH / aspectRatio).toInt()
            } else {
                // Портретная ориентация
                height = COVER_MAX_HEIGHT
                width = (COVER_MAX_HEIGHT * aspectRatio).toInt()
            }
            
            // Создаем Bitmap
            val bitmap = Bitmap.createBitmap(
                width,
                height,
                Bitmap.Config.ARGB_8888
            )
            
            // Рендерим страницу
            page.render(
                bitmap,
                null,
                null,
                PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY
            )
            
            bitmap
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error extracting cover from PDF", e)
            null
        } finally {
            page?.close()
            pdfRenderer?.close()
            fileDescriptor?.close()
        }
    }
    
    /**
     * Извлечь обложку из папки с изображениями
     */
    private suspend fun extractCoverFromFolder(folder: File): Bitmap? = withContext(Dispatchers.IO) {
        try {
            if (!folder.isDirectory) {
                return@withContext null
            }
            
            // Находим первый файл изображения
            val imageFile = folder.listFiles { f ->
                f.isFile && isImageFile(f.name)
            }?.sortedBy { it.name.lowercase() }?.firstOrNull()
            
            if (imageFile == null) {
                android.util.Log.w(TAG, "No image files found in folder: ${folder.name}")
                return@withContext null
            }
            
            // Декодируем изображение
            decodeBitmapOptimized(imageFile)
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error extracting cover from folder", e)
            null
        }
    }
    
    /**
     * Декодировать Bitmap с оптимизацией размера
     */
    private fun decodeBitmapOptimized(file: File): Bitmap? {
        return try {
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
                inPreferredConfig = Bitmap.Config.RGB_565
            }
            
            // Получаем размеры изображения
            BitmapFactory.decodeFile(file.absolutePath, options)
            
            // Вычисляем inSampleSize
            options.inSampleSize = calculateInSampleSize(
                options,
                COVER_MAX_WIDTH,
                COVER_MAX_HEIGHT
            )
            
            // Декодируем изображение
            options.inJustDecodeBounds = false
            BitmapFactory.decodeFile(file.absolutePath, options)
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error decoding bitmap from file", e)
            null
        }
    }
    
    /**
     * Декодировать Bitmap из массива байтов с оптимизацией
     */
    private fun decodeBitmapOptimized(data: ByteArray): Bitmap? {
        return try {
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
                inPreferredConfig = Bitmap.Config.RGB_565
            }
            
            // Получаем размеры изображения
            BitmapFactory.decodeByteArray(data, 0, data.size, options)
            
            // Вычисляем inSampleSize
            options.inSampleSize = calculateInSampleSize(
                options,
                COVER_MAX_WIDTH,
                COVER_MAX_HEIGHT
            )
            
            // Декодируем изображение
            options.inJustDecodeBounds = false
            BitmapFactory.decodeByteArray(data, 0, data.size, options)
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error decoding bitmap from bytes", e)
            null
        }
    }
    
    /**
     * Вычислить inSampleSize для оптимизации памяти
     */
    private fun calculateInSampleSize(
        options: BitmapFactory.Options,
        reqWidth: Int,
        reqHeight: Int
    ): Int {
        val height = options.outHeight
        val width = options.outWidth
        var inSampleSize = 1
        
        if (height > reqHeight || width > reqWidth) {
            val halfHeight = height / 2
            val halfWidth = width / 2
            
            while ((halfHeight / inSampleSize) >= reqHeight &&
                (halfWidth / inSampleSize) >= reqWidth
            ) {
                inSampleSize *= 2
            }
        }
        
        return inSampleSize
    }
    
    /**
     * Проверить, является ли файл изображением
     */
    private fun isImageFile(fileName: String): Boolean {
        val extension = fileName.substringAfterLast('.', "").lowercase()
        return extension in setOf("jpg", "jpeg", "png", "gif", "bmp", "webp")
    }
}
