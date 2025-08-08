package com.example.core.domain.usecase

import android.graphics.Bitmap
import com.example.feature.reader.domain.BookReaderFactory
import com.example.core.domain.util.Result
import javax.inject.Inject

class GetComicPagesUseCase @Inject constructor(
    private val bookReaderFactory: BookReaderFactory
) {
    private var cachedPageCount: Int? = null
    
    fun getTotalPages(): Result<Int> {
        return try {
            val reader = bookReaderFactory.getCurrentReader()
            
            if (reader == null) {
                return Result.Error(IllegalStateException("No reader available"))
            }
            
            // Use cached page count if available
            if (cachedPageCount != null) {
                return Result.Success(cachedPageCount!!)
            }
            
            // Get page count from reader (should be set during open)
            val pageCount = reader.getPageCount()
            cachedPageCount = pageCount
            Result.Success(pageCount)
        } catch (e: Exception) {
            Result.Error(e)
        }
    }

    fun getPage(pageIndex: Int): Result<Bitmap?> {
        return try {
            val reader = bookReaderFactory.getCurrentReader()
            if (reader == null) {
                return Result.Error(IllegalStateException("No reader available"))
            }
            
            Result.Success(reader.renderPage(pageIndex))
        } catch (e: Exception) {
            Result.Error(e)
        }
    }
    
    fun clearCache() {
        cachedPageCount = null
    }
}

