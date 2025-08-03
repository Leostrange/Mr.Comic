package com.example.core.reader.pdf

import android.content.Context
import android.net.Uri
import kotlinx.coroutines.runBlocking
import java.io.File

/**
 * Тестовый класс для проверки работы PDF библиотек
 */
class PdfReaderTest(private val context: Context) {
    
    private val pdfReaderFactory = PdfReaderFactory()
    
    /**
     * Тестирует все доступные PDF ридеры
     */
    fun testAllReaders(uri: Uri): TestResult {
        val results = mutableListOf<ReaderTestResult>()
        
        // Тестируем каждый ридер
        for (reader in listOf(PdfiumReader(), PdfBoxReader())) {
            val result = testReader(reader, uri)
            results.add(result)
        }
        
        return TestResult(results)
    }
    
    /**
     * Тестирует конкретный ридер
     */
    private fun testReader(reader: PdfReader, uri: Uri): ReaderTestResult {
        return try {
            runBlocking {
                // Пытаемся открыть документ
                val openResult = reader.openDocument(context, uri)
                if (openResult.isFailure) {
                    return ReaderTestResult(
                        readerName = reader.javaClass.simpleName,
                        success = false,
                        error = openResult.exceptionOrNull()?.message ?: "Unknown error",
                        pageCount = null
                    )
                }
                
                // Получаем количество страниц
                val pageCount = reader.getPageCount()
                if (pageCount == null || pageCount <= 0) {
                    return ReaderTestResult(
                        readerName = reader.javaClass.simpleName,
                        success = false,
                        error = "Invalid page count: $pageCount",
                        pageCount = pageCount
                    )
                }
                
                // Пытаемся рендерить первую страницу
                val renderResult = reader.renderPage(0)
                if (renderResult.isFailure) {
                    return ReaderTestResult(
                        readerName = reader.javaClass.simpleName,
                        success = false,
                        error = "Failed to render page: ${renderResult.exceptionOrNull()?.message}",
                        pageCount = pageCount
                    )
                }
                
                // Закрываем ридер
                reader.close()
                
                ReaderTestResult(
                    readerName = reader.javaClass.simpleName,
                    success = true,
                    error = null,
                    pageCount = pageCount
                )
            }
        } catch (e: Exception) {
            ReaderTestResult(
                readerName = reader.javaClass.simpleName,
                success = false,
                error = e.message ?: "Unknown error",
                pageCount = null
            )
        }
    }
    
    /**
     * Тестирует фабрику с fallback механизмом
     */
    fun testFactoryWithFallback(uri: Uri): FactoryTestResult {
        return try {
            runBlocking {
                val result = pdfReaderFactory.openPdfWithFallback(context, uri)
                if (result.isSuccess) {
                    val reader = result.getOrThrow()
                    val pageCount = reader.getPageCount()
                    
                    FactoryTestResult(
                        success = true,
                        usedReader = reader.javaClass.simpleName,
                        pageCount = pageCount,
                        error = null
                    )
                } else {
                    FactoryTestResult(
                        success = false,
                        usedReader = null,
                        pageCount = null,
                        error = result.exceptionOrNull()?.message ?: "Unknown error"
                    )
                }
            }
        } catch (e: Exception) {
            FactoryTestResult(
                success = false,
                usedReader = null,
                pageCount = null,
                error = e.message ?: "Unknown error"
            )
        }
    }
    
    /**
     * Результат тестирования отдельного ридера
     */
    data class ReaderTestResult(
        val readerName: String,
        val success: Boolean,
        val error: String?,
        val pageCount: Int?
    )
    
    /**
     * Результат тестирования фабрики
     */
    data class FactoryTestResult(
        val success: Boolean,
        val usedReader: String?,
        val pageCount: Int?,
        val error: String?
    )
    
    /**
     * Общий результат тестирования
     */
    data class TestResult(
        val readerResults: List<ReaderTestResult>
    ) {
        val successfulReaders: List<ReaderTestResult> get() = readerResults.filter { it.success }
        val failedReaders: List<ReaderTestResult> get() = readerResults.filter { !it.success }
        val hasAnySuccess: Boolean get() = successfulReaders.isNotEmpty()
    }
}