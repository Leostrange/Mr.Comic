package com.example.core.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.net.Uri
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.domain.MediaMetadata
import com.example.core.reader.domain.MediaType
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import nl.siegmann.epublib.domain.Book
import nl.siegmann.epublib.domain.Resource
import nl.siegmann.epublib.epub.EpubReader as EpubLibReader
import java.io.File
import java.io.FileInputStream

/**
 * A [MediaReader] implementation for reading EPUB files.
 * Uses epublib-core (LGPL) for EPUB parsing.
 */
class EpubReader(
    private val context: Context
) : MediaReader {
    
    private var book: Book? = null
    private var spineResources: List<Resource> = emptyList()
    private var pageCount: Int = 0
    private var tempFile: File? = null
    private var metadata: MediaMetadata? = null
    private var isOpen: Boolean = false
    
    override suspend fun open(context: Context, uri: Uri): Result<MediaMetadata> {
        return try {
            cleanup()
            
            val cacheDir = File(context.cacheDir, "reader_cache")
            if (!cacheDir.exists()) {
                cacheDir.mkdirs()
            }
            
            // Copy content from URI to a temporary file
            tempFile = File.createTempFile("temp_epub_", ".epub", cacheDir)
            
            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                tempFile?.outputStream()?.use { outputStream ->
                    inputStream.copyTo(outputStream)
                }
            }
            
            // Validate file exists and is not empty
            if (tempFile?.exists() != true || tempFile?.length() == 0L) {
                throw IllegalStateException("EPUB файл пустой или поврежден")
            }
            
            // Parse EPUB file
            val epubReader = EpubLibReader()
            book = epubReader.readEpub(FileInputStream(tempFile))
            
            // Get spine resources (reading order)
            spineResources = book?.spine?.spineReferences?.mapNotNull { spineRef ->
                spineRef.resource?.href?.let { href ->
                    book?.resources?.getByHref(href)
                }
            } ?: emptyList()
            
            pageCount = spineResources.size
            
            if (pageCount == 0) {
                throw IllegalStateException("В EPUB файле не найдено страниц для чтения")
            }
            
            // Create metadata
            metadata = MediaMetadata(
                title = book?.title ?: uri.lastPathSegment,
                author = book?.metadata?.authors?.firstOrNull()?.toString(),
                pageCount = pageCount,
                type = MediaType.EPUB,
                fileSize = tempFile?.length() ?: 0L,
                lastModified = System.currentTimeMillis(),
                hasTableOfContents = book?.tableOfContents?.tocReferences?.isNotEmpty() == true,
                language = book?.metadata?.language,
                publisher = book?.metadata?.publishers?.firstOrNull(),
                description = book?.metadata?.descriptions?.firstOrNull()
            )
            
            isOpen = true
            Result.success(metadata!!)
        } catch (e: Exception) {
            cleanup()
            Result.failure(when (e) {
                is IllegalStateException -> e
                else -> IllegalStateException("Ошибка при открытии EPUB файла: ${e.message}", e)
            })
        }
    }
    
    override fun getPageCount(): Int? = if (isOpen) pageCount else null
    
    override suspend fun renderPage(
        pageIndex: Int,
        maxWidth: Int,
        maxHeight: Int,
        scale: Float
    ): Result<Bitmap> {
        if (!isOpen) {
            return Result.failure(IllegalStateException("EPUB reader is not open"))
        }
        
        if (pageIndex < 0 || pageIndex >= spineResources.size) {
            android.util.Log.w("EpubReader", "Invalid page index: $pageIndex (total pages: ${spineResources.size})")
            return Result.failure(IndexOutOfBoundsException("Invalid page index: $pageIndex"))
        }
        
        return try {
            val resource = spineResources[pageIndex]
            val content = String(resource.data, Charsets.UTF_8)
            
            // For now, create a simple text-based bitmap
            // TODO: Implement proper HTML/CSS rendering with WebView
            val bitmap = createTextBitmap(content, maxWidth, maxHeight)
            Result.success(bitmap)
        } catch (e: Exception) {
            android.util.Log.e("EpubReader", "Error rendering page $pageIndex: ${e.message}", e)
            Result.failure(e)
        }
    }
    
    private fun createTextBitmap(htmlContent: String, width: Int, height: Int): Bitmap {
        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(bitmap)
        
        // Fill background
        canvas.drawColor(Color.WHITE)
        
        // Setup paint for text
        val paint = Paint().apply {
            color = Color.BLACK
            textSize = 24f
            isAntiAlias = true
        }
        
        // Extract text from HTML (simple approach)
        val text = htmlContent
            .replace(Regex("<[^>]*>"), "") // Remove HTML tags
            .replace("&nbsp;", " ")
            .replace("&amp;", "&")
            .replace("&lt;", "<")
            .replace("&gt;", ">")
            .trim()
        
        // Draw text (simple word wrapping)
        val words = text.split(" ")
        var x = 20f
        var y = 50f
        val lineHeight = 30f
        val maxWidth = width - 40f
        
        for (word in words) {
            val wordWidth = paint.measureText("$word ")
            
            if (x + wordWidth > maxWidth) {
                x = 20f
                y += lineHeight
                
                if (y > height - 50) break // Stop if we reach bottom
            }
            
            canvas.drawText("$word ", x, y, paint)
            x += wordWidth
        }
        
        return bitmap
    }
    
    override fun getMetadata(): MediaMetadata? {
        return metadata
    }
    
    override suspend fun close() {
        cleanup()
    }
    
    override fun isOpen(): Boolean {
        return isOpen
    }
    
    private fun cleanup() {
        book = null
        spineResources = emptyList()
        pageCount = 0
        metadata = null
        isOpen = false
        
        try {
            tempFile?.delete()
        } catch (e: Exception) {
            android.util.Log.w("EpubReader", "Failed to delete temp file: ${e.message}")
        }
        tempFile = null
    }
}