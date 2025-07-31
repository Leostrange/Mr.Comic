package com.example.core.domain.usecase

import android.net.Uri
import com.example.feature.reader.domain.BookReaderFactory
import javax.inject.Inject

class LoadComicUseCase @Inject constructor(
    private val bookReaderFactory: BookReaderFactory
) {
    suspend operator fun invoke(uri: Uri): Result<Unit> {
        return try {
            // Create and store the reader for this URI
            val reader = bookReaderFactory.create(uri)
            // Open the reader to initialize it
            reader.open(uri)
            Result.Success(Unit)
        } catch (e: Exception) {
            Result.Error(e)
        }
    }

    fun releaseResources() {
        bookReaderFactory.releaseResources()
    }
}

