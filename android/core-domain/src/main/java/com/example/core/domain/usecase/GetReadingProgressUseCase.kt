package com.example.core.domain.usecase

import com.example.core.data.repository.ComicRepository
import com.example.core.domain.util.Result
import javax.inject.Inject

class GetReadingProgressUseCase @Inject constructor(
    private val repository: ComicRepository
) {
    suspend operator fun invoke(comicId: String): Result<Int> {
        return try {
            val progress = repository.getReadingProgress(comicId)
            Result.Success(progress)
        } catch (e: Exception) {
            Result.Error(e)
        }
    }
}

