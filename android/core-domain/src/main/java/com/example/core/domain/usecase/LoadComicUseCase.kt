package com.example.core.domain.usecase

import android.net.Uri
import com.example.core.domain.util.Result
import com.example.core.reader.domain.BookReaderFactory
import javax.inject.Inject

class LoadComicUseCase @Inject constructor(
    private val bookReaderFactory: BookReaderFactory,
) {
    suspend operator fun invoke(uri: Uri): Result<Unit> {
        if (uri.toString().isBlank()) {
            return Result.Error(IllegalArgumentException("Empty URI"))
        }

        return runCatching {
            val reader = bookReaderFactory.create(uri)
            reader.open(uri)
        }.fold(
            onSuccess = { Result.Success(Unit) },
            onFailure = { exception -> Result.Error(exception) },
        )
    }

    fun releaseResources() {
        bookReaderFactory.releaseResources()
    }
}

