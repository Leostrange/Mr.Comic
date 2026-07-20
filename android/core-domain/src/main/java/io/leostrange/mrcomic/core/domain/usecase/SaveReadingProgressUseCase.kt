package io.leostrange.mrcomic.core.domain.usecase

import io.leostrange.mrcomic.core.data.repository.ComicRepository
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.domain.util.runCatchingResult
import javax.inject.Inject

class SaveReadingProgressUseCase @Inject constructor(
    private val repository: ComicRepository
) {
    suspend operator fun invoke(
        comicId: String,
        pageIndex: Int,
        totalPages: Int
    ): Result<Unit> = runCatchingResult {
        repository.updateProgress(
            comicId = comicId,
            currentPage = pageIndex,
            totalPages = totalPages
        )
    }
}
