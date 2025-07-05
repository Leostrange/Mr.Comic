package com.example.core.domain.usecase

import android.graphics.Bitmap
import com.example.feature.reader.domain.BookReaderFactory
import javax.inject.Inject

class GetComicPagesUseCase @Inject constructor(
    private val bookReaderFactory: BookReaderFactory
) {
    fun getTotalPages(): Int {
        return bookReaderFactory.getCurrentReader()?.let { reader ->
            reader.open(bookReaderFactory.getCurrentUri()!!)
        } ?: 0
    }

    fun getPage(pageIndex: Int): Bitmap? {
        return bookReaderFactory.getCurrentReader()?.renderPage(pageIndex)
    }
}

