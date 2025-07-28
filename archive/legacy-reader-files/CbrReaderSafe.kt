package reader

import com.github.junrar.Archive
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import java.io.File
import java.io.FileOutputStream

class CbrReaderSafe(private val file: File) {
    
    companion object {
        private val SUPPORTED_IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "webp", "bmp")
    }
    
    fun getPages(): List<Bitmap> {
        val pages = mutableListOf<Bitmap>()
        var archive: Archive? = null
        val tempFiles = mutableListOf<File>()
        
        try {
            if (!file.exists()) {
                throw IllegalArgumentException("CBR файл не найден: ${file.absolutePath}")
            }
            
            if (file.length() == 0L) {
                throw IllegalArgumentException("CBR файл пустой")
            }
            
            archive = Archive(file)
            
            if (archive.isEncrypted) {
                throw IllegalStateException("Зашифрованные CBR файлы не поддерживаются")
            }
            
            val imageHeaders = archive.fileHeaders
                .filter { header ->
                    !header.isDirectory && 
                    header.fileName.substringAfterLast('.', "").lowercase() in SUPPORTED_IMAGE_EXTENSIONS
                }
                .sortedBy { it.fileName }
            
            if (imageHeaders.isEmpty()) {
                throw IllegalStateException("В CBR файле не найдено изображений")
            }
            
            imageHeaders.forEachIndexed { index, header ->
                var tempFile: File? = null
                try {
                    tempFile = File.createTempFile("cbr_page_$index", ".jpg")
                    tempFiles.add(tempFile)
                    
                    FileOutputStream(tempFile).use { outputStream ->
                        archive.extractFile(header, outputStream)
                    }
                    
                    if (tempFile.exists() && tempFile.length() > 0) {
                        val bitmap = BitmapFactory.decodeFile(tempFile.absolutePath)
                        if (bitmap != null) {
                            pages.add(bitmap)
                        } else {
                            println("Предупреждение: не удалось декодировать изображение ${header.fileName}")
                        }
                    }
                } catch (e: Exception) {
                    println("Ошибка при извлечении изображения ${header.fileName}: ${e.message}")
                    // Продолжаем обработку других изображений
                }
            }
            
            if (pages.isEmpty()) {
                throw IllegalStateException("Не удалось загрузить ни одного изображения из CBR файла")
            }
            
        } catch (e: Exception) {
            pages.forEach { it.recycle() } // Освобождаем память
            pages.clear()
            when (e) {
                is IllegalArgumentException, is IllegalStateException -> throw e
                else -> throw IllegalStateException("Ошибка при чтении CBR файла: ${e.message}", e)
            }
        } finally {
            try {
                archive?.close()
            } catch (e: Exception) {
                // Игнорируем ошибки при закрытии архива
            }
            
            // Удаляем временные файлы
            tempFiles.forEach { tempFile ->
                try {
                    tempFile.delete()
                } catch (e: Exception) {
                    // Игнорируем ошибки при удалении временных файлов
                }
            }
        }
        
        return pages
    }
}


