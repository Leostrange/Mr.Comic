package com.example.core.domain.usecase

import com.example.core.data.repository.ComicRepository
import com.example.core.domain.util.Result
import com.example.core.model.ReadingProgress
import javax.inject.Inject

class GetReadingProgressUseCase @Inject constructor(
    private val repository: ComicRepository
) {
    suspend operator fun invoke(comicId: String): Result<ReadingProgress> {
        return try {
            // TODO: Implement getReadingProgress method in ComicRepository
            // val progress = repository.getReadingProgress(comicId)
            val progress = ReadingProgress(0, 0)
            Result.Success(progress)
        } catch (e: Exception) {
            Result.Error(e)
        }
    }
}

