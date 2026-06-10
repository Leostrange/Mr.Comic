package com.example.core.domain.usecase

import android.net.Uri
import com.example.core.data.repository.ComicRepository
import com.example.core.domain.util.Result
import com.example.core.domain.util.runCatchingResult
import com.example.core.model.Comic
import javax.inject.Inject

class AddComicUseCase @Inject constructor(
    private val repository: ComicRepository
) {
    /** Добавить один файл-комикс по URI (SAF) */
    suspend operator fun invoke(uri: Uri): Result<Comic?> = runCatchingResult {
        repository.addComic(uri)
    }
}
