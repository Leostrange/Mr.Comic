package reader

import android.content.Context
import android.net.Uri
import java.io.File
import java.io.FileOutputStream
import java.io.IOException

fun copyUriToFile(context: Context, uri: Uri): File {
    var inputStream: java.io.InputStream? = null
    var outputStream: FileOutputStream? = null
    var tempFile: File? = null
    
    try {
        inputStream = context.contentResolver.openInputStream(uri)
            ?: throw IllegalArgumentException("Не удается открыть поток для чтения из URI: $uri")
        
        // Создаем уникальное имя временного файла
        val timestamp = System.currentTimeMillis()
        val fileName = uri.lastPathSegment?.let { name ->
            val sanitizedName = name.replace(Regex("[^a-zA-Z0-9._-]"), "_")
            "tmp_${timestamp}_$sanitizedName"
        } ?: "tmp_${timestamp}_unknown"
        
        tempFile = File(context.cacheDir, fileName)
        
        // Проверяем доступность кеш-директории
        if (!context.cacheDir.exists()) {
            context.cacheDir.mkdirs()
        }
        
        outputStream = FileOutputStream(tempFile)
        
        // Копируем данные с проверкой размера
        val buffer = ByteArray(8192)
        var totalBytes = 0L
        var bytesRead: Int
        
        while (inputStream.read(buffer).also { bytesRead = it } != -1) {
            outputStream.write(buffer, 0, bytesRead)
            totalBytes += bytesRead
            
            // Проверяем лимит размера файла (например, 100MB)
            if (totalBytes > 100 * 1024 * 1024) {
                throw IOException("Файл слишком большой (более 100MB)")
            }
        }
        
        outputStream.flush()
        
        if (totalBytes == 0L) {
            throw IOException("Файл пустой или поврежден")
        }
        
        return tempFile
        
    } catch (e: Exception) {
        // Удаляем временный файл в случае ошибки
        tempFile?.delete()
        
        when (e) {
            is IllegalArgumentException, is IOException -> throw e
            is SecurityException -> throw IOException("Нет доступа к файлу: ${e.message}")
            else -> throw IOException("Ошибка при копировании файла: ${e.message}", e)
        }
    } finally {
        try {
            inputStream?.close()
        } catch (e: Exception) {
            // Игнорируем ошибки при закрытии
        }
        
        try {
            outputStream?.close()
        } catch (e: Exception) {
            // Игнорируем ошибки при закрытии
        }
    }
}


