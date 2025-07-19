package com.example.core.domain.usecase

import android.net.Uri
import com.example.feature.reader.domain.BookReaderFactory
import javax.inject.Inject

class LoadComicUseCase @Inject constructor(
    private val bookReaderFactory: BookReaderFactory
) {
    suspend operator fun invoke(uri: Uri) {
        bookReaderFactory.create(uri)
    }

    fun releaseResources() {
        bookReaderFactory.releaseResources()
    }
}

