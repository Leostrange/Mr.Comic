package io.leostrange.mrcomic.core.domain.usecase

import android.net.Uri
import io.leostrange.mrcomic.core.data.repository.ComicRepository
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.domain.util.runCatchingResult
import io.leostrange.mrcomic.core.model.Comic
import javax.inject.Inject

class AddComicUseCase @Inject constructor(
    private val repository: ComicRepository
) {
    /** Добавить один файл-комикс по URI (SAF) */
    suspend operator fun invoke(uri: Uri): Result<Comic?> = runCatchingResult {
        repository.addComic(uri)
    }
}
