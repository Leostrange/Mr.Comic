package com.example.mrcomic.utils

import android.content.Context
import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File

/**
 * Тестирование поддержки архивных форматов и Unicode путей
 */
class ArchiveFormatTester(private val context: Context) {

    companion object {
        private const val TAG = "ArchiveFormatTester"
    }

    private val archiveExtractor = ArchiveExtractor(context)

    /**
     * Тестирование всех поддерживаемых форматов
     */
    suspend fun testAllFormats(testDirectory: File): TestResults = withContext(Dispatchers.IO) {
        val results = mutableMapOf<String, FormatTestResult>()
        
        if (!testDirectory.exists() || !testDirectory.isDirectory) {
            Log.e(TAG, "Test directory does not exist: ${testDirectory.path}")
            return@withContext TestResults(results)
        }

        val testFiles = testDirectory.listFiles { file ->
            archiveExtractor.isArchiveSupported(file.name)
        } ?: emptyArray()

        Log.i(TAG, "Found ${testFiles.size} test archive files")

        for (testFile in testFiles) {
            val format = testFile.extension.uppercase()
            Log.d(TAG, "Testing format: $format with file: ${testFile.name}")
            
            val result = testArchiveFormat(testFile)
            results[format] = result
        }

        TestResults(results)
    }

    /**
     * Тестирование конкретного архивного формата
     */
    private suspend fun testArchiveFormat(archiveFile: File): FormatTestResult = withContext(Dispatchers.IO) {
        val startTime = System.currentTimeMillis()
        
        try {
            // Получаем информацию об архиве
            val archiveInfo = archiveExtractor.getArchiveInfo(archiveFile)
            
            // Извлекаем изображения
            val images = archiveExtractor.extractImages(archiveFile)
            
            // Тестируем Unicode пути
            val unicodeTest = archiveExtractor.testUnicodePaths(archiveFile)
            
            val endTime = System.currentTimeMillis()
            val duration = endTime - startTime
            
            Log.i(TAG, "Successfully tested ${archiveFile.name}: ${images.size} images, ${duration}ms")
            
            FormatTestResult(
                fileName = archiveFile.name,
                format = archiveInfo.format,
                success = true,
                imageCount = images.size,
                archiveSize = archiveInfo.size,
                extractionTimeMs = duration,
                unicodeSupport = unicodeTest.success,
                unicodeFileCount = unicodeTest.unicodeFiles,
                errorMessage = null
            )
            
        } catch (e: Exception) {
            val endTime = System.currentTimeMillis()
            val duration = endTime - startTime
            
            Log.e(TAG, "Failed to test ${archiveFile.name}", e)
            
            FormatTestResult(
                fileName = archiveFile.name,
                format = archiveFile.extension.uppercase(),
                success = false,
                imageCount = 0,
                archiveSize = archiveFile.length(),
                extractionTimeMs = duration,
                unicodeSupport = false,
                unicodeFileCount = 0,
                errorMessage = e.message
            )
        }
    }

    /**
     * Создание тестовых архивов для проверки
     */
    suspend fun createTestArchives(outputDirectory: File): List<File> = withContext(Dispatchers.IO) {
        val testFiles = mutableListOf<File>()
        
        if (!outputDirectory.exists()) {
            outputDirectory.mkdirs()
        }

        // Создаём тестовые изображения
        val testImages = createTestImages(outputDirectory)
        
        // Создаём ZIP архив
        val zipFile = File(outputDirectory, "test_comic.cbz")
        createZipArchive(zipFile, testImages)
        testFiles.add(zipFile)
        
        Log.i(TAG, "Created ${testFiles.size} test archive files")
        testFiles
    }

    /**
     * Создание тестовых изображений
     */
    private fun createTestImages(directory: File): List<File> {
        val images = mutableListOf<File>()
        
        // Создаём простые тестовые файлы (заглушки)
        for (i in 1..5) {
            val imageFile = File(directory, "page_${i.toString().padStart(3, '0')}.jpg")
            imageFile.writeText("Test image data for page $i")
            images.add(imageFile)
        }
        
        // Создаём файл с Unicode именем
        val unicodeFile = File(directory, "страница_тест_漫画.jpg")
        unicodeFile.writeText("Unicode test image")
        images.add(unicodeFile)
        
        return images
    }

    /**
     * Создание ZIP архива
     */
    private fun createZipArchive(zipFile: File, imageFiles: List<File>) {
        // Простая реализация создания ZIP
        // В реальном проекте использовать java.util.zip.ZipOutputStream
        Log.d(TAG, "Creating test ZIP archive: ${zipFile.name}")
        zipFile.writeText("Test ZIP archive with ${imageFiles.size} files")
    }

    /**
     * Результат тестирования формата
     */
    data class FormatTestResult(
        val fileName: String,
        val format: String,
        val success: Boolean,
        val imageCount: Int,
        val archiveSize: Long,
        val extractionTimeMs: Long,
        val unicodeSupport: Boolean,
        val unicodeFileCount: Int,
        val errorMessage: String?
    )

    /**
     * Общие результаты тестирования
     */
    data class TestResults(
        val formatResults: Map<String, FormatTestResult>
    ) {
        val totalFormats: Int get() = formatResults.size
        val successfulFormats: Int get() = formatResults.values.count { it.success }
        val failedFormats: Int get() = formatResults.values.count { !it.success }
        val unicodeSupportedFormats: Int get() = formatResults.values.count { it.unicodeSupport }
        
        fun getSummary(): String {
            return "Tested $totalFormats formats: $successfulFormats successful, $failedFormats failed, $unicodeSupportedFormats with Unicode support"
        }
    }
}

