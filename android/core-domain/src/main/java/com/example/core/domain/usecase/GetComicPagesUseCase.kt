package com.example.core.domain.usecase

import android.graphics.Bitmap
import com.example.feature.reader.domain.BookReaderFactory
import javax.inject.Inject

class GetComicPagesUseCase @Inject constructor(
    private val bookReaderFactory: BookReaderFactory
) {
    fun getTotalPages(): Result<Int> {
        return try {
            val reader = bookReaderFactory.getCurrentReader()
            val uri = bookReaderFactory.getCurrentUri()
            
            if (reader == null || uri == null) {
                return Result.Error(IllegalStateException("No reader or URI available"))
            }
            
            val pages = reader.open(uri)
            Result.Success(pages)
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
}

