package reader

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import java.io.File
import java.util.zip.ZipFile

class CbzReaderSafe(private val file: File) {
    
    companion object {
        private val SUPPORTED_IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "webp", "bmp")
    }
    
    fun getPages(): List<Bitmap> {
        val pages = mutableListOf<Bitmap>()
        var zipFile: ZipFile? = null
        
        try {
            if (!file.exists()) {
                throw IllegalArgumentException("CBZ файл не найден: ${file.absolutePath}")
            }
            
            if (file.length() == 0L) {
                throw IllegalArgumentException("CBZ файл пустой")
            }
            
            zipFile = ZipFile(file)
            
            val imageEntries = zipFile.entries().asSequence()
                .filter { entry ->
                    !entry.isDirectory && 
                    entry.name.substringAfterLast('.', "").lowercase() in SUPPORTED_IMAGE_EXTENSIONS
                }
                .sortedBy { it.name }
                .toList()
            
            if (imageEntries.isEmpty()) {
                throw IllegalStateException("В CBZ файле не найдено изображений")
            }
            
            imageEntries.forEach { entry ->
                try {
                    zipFile.getInputStream(entry)?.use { stream ->
                        val bitmap = BitmapFactory.decodeStream(stream)
                        if (bitmap != null) {
                            pages.add(bitmap)
                        } else {
                            println("Предупреждение: не удалось декодировать изображение ${entry.name}")
                        }
                    }
                } catch (e: Exception) {
                    println("Ошибка при чтении изображения ${entry.name}: ${e.message}")
                    // Продолжаем чтение других изображений
                }
            }
            
            if (pages.isEmpty()) {
                throw IllegalStateException("Не удалось загрузить ни одного изображения из CBZ файла")
            }
            
        } catch (e: Exception) {
            pages.forEach { it.recycle() } // Освобождаем память
            pages.clear()
            when (e) {
                is IllegalArgumentException, is IllegalStateException -> throw e
                else -> throw IllegalStateException("Ошибка при чтении CBZ файла: ${e.message}", e)
            }
        } finally {
            try {
                zipFile?.close()
            } catch (e: Exception) {
                // Игнорируем ошибки при закрытии
            }
        }
        
        return pages
    }
}


