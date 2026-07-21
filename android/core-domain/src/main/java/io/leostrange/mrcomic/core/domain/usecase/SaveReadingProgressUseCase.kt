package io.leostrange.mrcomic.core.domain.usecase

import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.domain.util.runCatchingResult
import javax.inject.Inject

class SaveReadingProgressUseCase @Inject constructor(
    private val repository: LibraryRepository
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
