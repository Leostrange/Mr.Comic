package com.example.core.domain.usecase

import android.graphics.Bitmap
import com.example.core.domain.util.Result
import com.example.core.reader.domain.BookReader
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
            onFailure = { exception -> Result.Error(exception) },
        )
    }

    fun getPage(pageIndex: Int): Result<Bitmap?> {
        val reader = bookReaderFactory.getCurrentReader()
            ?: return Result.Success(null)

        if (pageIndex < 0) {
            return Result.Error(IndexOutOfBoundsException("Page index must be non-negative"))
        }

        return runCatching {
            val pageCount = cachedPageCount ?: reader.getPageCount()
            if (pageIndex >= pageCount) {
                null
            } else {
                reader.renderPage(pageIndex)
            }
        }.fold(
            onSuccess = { bitmap -> Result.Success(bitmap) },
            onFailure = { exception -> Result.Error(exception) },
        )
    }

    fun clearCache() {
        cachedPageCount = null
        bookReaderFactory.releaseResources()
    }

    private suspend fun fetchPageCount(reader: BookReader): Int {
        val uri = bookReaderFactory.getCurrentUri()
        return if (uri != null) {
            reader.open(uri)
        } else {
            reader.getPageCount()
        }
    }
}

