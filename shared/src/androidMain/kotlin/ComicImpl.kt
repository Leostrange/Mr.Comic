package com.mrcomic.shared

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.example.core.reader.domain.BookReaderFactory
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.data.cache.BitmapCache
import com.example.core.reader.data.cache.ThumbnailCache
import java.io.ByteArrayOutputStream
import java.io.File

/**
 * Android implementation of the Comic interface
 * Bridges the shared interface with the actual Android comic readers
 */
class ComicImpl(
    private val context: Context,
    private val bitmapCache: BitmapCache,
    private val thumbnailCache: ThumbnailCache
) : Comic {
    
    private var currentReader: MediaReader? = null
    private var readerFactory: BookReaderFactory? = null
    private var metadata: ComicMetadata? = null
    
    override suspend fun openComic(path: String): Result<Int> {
        return try {
            // Initialize factory if needed
            if (readerFactory == null) {
                readerFactory = BookReaderFactory(context, bitmapCache, thumbnailCache)
            }
            
            // Create URI from path
            val uri = if (path.startsWith("content://")) {
                Uri.parse(path)
            } else {
                Uri.fromFile(File(path))
            }
            
            // Create appropriate reader
            currentReader = readerFactory!!.create(uri)
            
            // Open the comic
            val result = currentReader!!.open(context, uri)
            
            if (result.isSuccess) {
                val mediaMetadata = result.getOrNull()!!
                metadata = ComicMetadata(
                    title = mediaMetadata.title,
                    pageCount = mediaMetadata.pageCount,
                    fileSize = mediaMetadata.fileSize,
                    format = mediaMetadata.type.name
                )
                Result.success(mediaMetadata.pageCount)
            } else {
                Result.failure(result.exceptionOrNull() ?: Exception("Failed to open comic"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    override fun getPageCount(): Int? {
        return currentReader?.getPageCount()
    }
    
    override suspend fun renderPage(pageIndex: Int): Result<ByteArray> {
        return try {
            val reader = currentReader ?: return Result.failure(IllegalStateException("No comic opened"))
            
            // Render page as bitmap
            val bitmapResult = reader.renderPage(
                pageIndex = pageIndex,
                maxWidth = 2048,
                maxHeight = 2048,
                scale = 1.0f
            )
            
            if (bitmapResult.isSuccess) {
                val bitmap = bitmapResult.getOrNull()!!
                
                // Convert bitmap to byte array
                val outputStream = ByteArrayOutputStream()
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream)
                val byteArray = outputStream.toByteArray()
                
                Result.success(byteArray)
            } else {
                Result.failure(bitmapResult.exceptionOrNull() ?: Exception("Failed to render page"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    override fun closeComic() {
        try {
            kotlinx.coroutines.runBlocking {
                currentReader?.close()
            }
        } catch (e: Exception) {
            android.util.Log.w("ComicImpl", "Error closing comic: ${e.message}")
        } finally {
            currentReader = null
            metadata = null
        }
    }
    
    override fun getMetadata(): ComicMetadata? {
        return metadata
    }
}

/**
 * Factory function to create ComicImpl instances
 */
fun createComic(context: Context): Comic {
    // Create cache instances with reasonable defaults
    val bitmapCache = BitmapCache(maxSizeInMB = 50)
    val thumbnailCache = ThumbnailCache(context)
    
    return ComicImpl(context, bitmapCache, thumbnailCache)
}
