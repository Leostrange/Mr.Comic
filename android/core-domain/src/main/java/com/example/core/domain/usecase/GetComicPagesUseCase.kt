package com.example.core.domain.usecase

import android.graphics.Bitmap
import com.example.core.domain.util.Result
import com.example.core.reader.domain.BookReaderFactory
import javax.inject.Inject

class GetComicPagesUseCase @Inject constructor(
    private val bookReaderFactory: BookReaderFactory,
) {
    private var cachedPageCount: Int? = null

    suspend fun getTotalPages(): Result<Int> {
        val reader = bookReaderFactory.getCurrentReader()
            ?: return Result.Success(0).also { cachedPageCount = 0 }

        return try {
            val totalPages = cachedPageCount ?: run {
                val uri = bookReaderFactory.getCurrentUri()
                if (uri != null) {
                    reader.open(uri)
                } else {
                    reader.getPageCount()
                }
            }

            cachedPageCount = totalPages
            Result.Success(totalPages)
        } catch (exception: Exception) {
            Result.Error(exception)
        }
    }

    fun getPage(pageIndex: Int): Result<Bitmap?> {
        val reader = bookReaderFactory.getCurrentReader()
            ?: return Result.Success(null)

        if (pageIndex < 0) {
            return Result.Error(IndexOutOfBoundsException("Page index must be non-negative"))
        }

        return try {
            val pageCount = cachedPageCount ?: reader.getPageCount()
            if (pageIndex >= pageCount) {
                Result.Success(null)
            } else {
                Result.Success(reader.renderPage(pageIndex))
            }
        } catch (exception: Exception) {
            Result.Error(exception)
        }
    }

    fun clearCache() {
        cachedPageCount = null
        bookReaderFactory.releaseResources()
    }
}

