package com.example.core.domain.usecase

import android.graphics.Bitmap
import com.example.feature.reader.domain.BookReaderFactory
import javax.inject.Inject

class GetComicPagesUseCase @Inject constructor(
    private val bookReaderFactory: BookReaderFactory
) {
    fun getTotalPages(): Result<Int> {
        return try {
            val pages = bookReaderFactory.getCurrentReader()?.let { reader ->
                reader.open(bookReaderFactory.getCurrentUri()!!)
            } ?: 0
            Result.Success(pages)
        } catch (e: Exception) {
            Result.Error(e)
        }
    }

    fun getPage(pageIndex: Int): Result<Bitmap?> {
        return try {
            Result.Success(bookReaderFactory.getCurrentReader()?.renderPage(pageIndex))
        } catch (e: Exception) {
            Result.Error(e)
        }
    }
}

