package com.example.core.reader.data

import android.content.Context
import android.net.Uri
import com.github.junrar.Archive
import java.io.*
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream
import javax.inject.Inject
import javax.inject.Singleton
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

/**
 * Конвертер CBR (RAR) файлов в CBZ (ZIP) для улучшения стабильности
 */
@Singleton
class CbrToCbzConverter @Inject constructor(
    private val context: Context
) {
    
    companion object {
        private const val TAG = "CbrToCbzConverter"
    }
    
    /**
     * Конвертирует CBR файл в CBZ
     * @param srcUri URI исходного CBR файла
     * @return URI созданного CBZ файла или null при ошибке
     */
    suspend fun convertCbrToCbz(srcUri: Uri): Uri? = withContext(Dispatchers.IO) {
        runCatching {
            android.util.Log.d(TAG, "Starting CBR to CBZ conversion for: $srcUri")
            
            // Создаем временную директорию для извлечения
            val tempDir = File(context.cacheDir, "cbr_conversion/${System.currentTimeMillis()}")
            tempDir.mkdirs()
            
            try {
                // Открываем CBR архив
                val inputStream = context.contentResolver.openInputStream(srcUri)
                    ?: throw IllegalStateException("Cannot open input stream for $srcUri")
                
                inputStream.use { input ->
                    // Создаем временный файл для junrar
                    val tempCbrFile = File(context.cacheDir, "temp_${System.currentTimeMillis()}.cbr")
                    tempCbrFile.outputStream().use { output ->
                        input.copyTo(output)
                    }
                    
                    // Извлекаем все файлы из RAR архива
                    Archive(tempCbrFile).use { archive ->
                        archive.fileHeaders
                            .filter { !it.isDirectory }
                            .forEach { fileHeader ->
                                val fileName = fileHeader.fileNameString.substringAfterLast('/')
                                val outputFile = File(tempDir, fileName)
                                
                                android.util.Log.d(TAG, "Extracting: ${fileHeader.fileNameString} -> $fileName")
                                
                                outputFile.outputStream().use { output ->
                                    archive.extractFile(fileHeader, output)
                                }
                            }
                    }
                    
                    // Удаляем временный CBR файл
                    tempCbrFile.delete()
                }
                
                // Создаем CBZ файл (ZIP архив)
                val cbzFile = File(context.cacheDir, "converted_${System.currentTimeMillis()}.cbz")
                ZipOutputStream(BufferedOutputStream(FileOutputStream(cbzFile))).use { zip ->
                    tempDir.listFiles()?.sortedBy { it.name }?.forEach { file ->
                        android.util.Log.d(TAG, "Adding to CBZ: ${file.name}")
                        
                        zip.putNextEntry(ZipEntry(file.name))
                        file.inputStream().use { input ->
                            input.copyTo(zip)
                        }
                        zip.closeEntry()
                    }
                }
                
                // Очищаем временную директорию
                tempDir.deleteRecursively()
                
                android.util.Log.d(TAG, "Conversion completed: ${cbzFile.absolutePath}")
                
                // Возвращаем URI созданного файла
                Uri.fromFile(cbzFile)
                
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Error during CBR to CBZ conversion", e)
                // Очищаем временную директорию в случае ошибки
                tempDir.deleteRecursively()
                throw e
            }
        }.getOrNull()
    }
    
    /**
     * Проверяет, нужна ли конвертация для данного файла
     * @param uri URI файла
     * @return true если файл является CBR и может потребовать конвертации
     */
    suspend fun shouldConvert(uri: Uri): Boolean = withContext(Dispatchers.IO) {
        runCatching {
            val fileName = uri.lastPathSegment?.lowercase() ?: ""
            fileName.endsWith(".cbr") || fileName.endsWith(".rar")
        }.getOrDefault(false)
    }
}
