package com.example.core.domain.usecase

import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import android.net.Uri
import com.example.core.domain.util.Result
import com.example.core.reader.domain.BookReaderFactory
import javax.inject.Inject

class LoadComicUseCase @Inject constructor(
    private val bookReaderFactory: BookReaderFactory,
    @ApplicationContext private val context: Context
) {
    suspend operator fun invoke(uri: Uri): Result<Unit> {
        if (uri.toString().isBlank()) {
            return Result.Error(IllegalArgumentException("Empty URI"))
        }

        return runCatching {
            val reader = bookReaderFactory.create(uri)
            val result = reader.open(context, uri)
            if (result.isFailure) {
                throw result.exceptionOrNull() ?: Exception("Failed to open comic")
            }
        }.fold(
            onSuccess = { Result.Success(Unit) },
            onFailure = { exception -> Result.Error(exception as? Exception ?: Exception(exception)) },
        )
    }

    fun releaseResources() {
        bookReaderFactory.releaseResources()
    }
}
