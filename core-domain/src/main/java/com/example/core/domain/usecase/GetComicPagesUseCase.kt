package com.example.core.domain.usecase

import android.graphics.Bitmap
import com.example.core.domain.util.Result
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.domain.BookReaderFactory
import javax.inject.Inject

class GetComicPagesUseCase @Inject constructor(
    private val bookReaderFactory: BookReaderFactory,
) {
    private var cachedPageCount: Int? = null

    suspend fun getTotalPages(): Result<Int> {
        val reader = bookReaderFactory.getCurrentReader()
            ?: return Result.Success(0).also { cachedPageCount = 0 }

        return runCatching {
            cachedPageCount ?: fetchPageCount(reader)
        }.fold(
            onSuccess = { totalPages ->
                cachedPageCount = totalPages
                Result.Success(totalPages)
            },
            onFailure = { exception -> Result.Error(exception as? Exception ?: Exception("${exception.message ?: "Unknown error"}")) },
        )
    }

    suspend fun getPage(pageIndex: Int): Result<Bitmap?> {
        val reader = bookReaderFactory.getCurrentReader()
            ?: return Result.Success(null)

        if (pageIndex < 0) {
            return Result.Error(IndexOutOfBoundsException("Page index must be non-negative"))
        }

        return runCatching {
            val pageCount = cachedPageCount ?: reader.getPageCount() ?: 0
            if (pageIndex >= pageCount) {
                Result.Success(null)
            } else {
                val result = reader.renderPage(pageIndex, 1920, 1080, 1.0f)
                if (result.isSuccess) {
                    Result.Success(result.getOrNull())
                } else {
                    Result.Error(Exception("${result.exceptionOrNull()?.message ?: "Failed to render page"}"))
                }
            }
        }.fold(
            onSuccess = { result -> result },
            onFailure = { exception -> Result.Error(exception as? Exception ?: Exception("${exception.message ?: "Unknown error"}")) },
        )
    }

    fun clearCache() {
        cachedPageCount = null
        kotlinx.coroutines.runBlocking {
            bookReaderFactory.releaseResources()
        }
    }

    private suspend fun fetchPageCount(reader: MediaReader): Int {
        val currentCount = reader.getPageCount()
        if (currentCount != null && currentCount > 0) {
            return currentCount
        }

        // For MediaReader, we don't need to reopen as it should already be open
        return currentCount ?: 0
    }
}
