package com.example.core.domain.usecase

import com.example.core.data.repository.ComicRepository
import com.example.core.domain.util.Result
import javax.inject.Inject

class SaveReadingProgressUseCase @Inject constructor(
    private val repository: ComicRepository
) {
    suspend operator fun invoke(comicId: String, currentPage: Int, totalPages: Int): Result<Unit> {
        return try {
            // TODO: Implement updateProgress method in ComicRepository
            // repository.updateProgress(comicId, currentPage, totalPages)
            Result.Success(Unit)
        } catch (e: Exception) {
            Result.Error(e)
        }
    }
}

