package com.example.core.domain.usecase

import com.example.core.data.repository.ComicRepository
import com.example.core.domain.util.Result
import javax.inject.Inject

class DeleteComicUseCase @Inject constructor(
    private val repository: ComicRepository
) {
    suspend operator fun invoke(comicIds: Set<String>): Result<Unit> {
        return try {
            repository.deleteComics(comicIds)
            Result.Success(Unit)
        } catch (e: Exception) {
            Result.Error(e)
        }
    }
}

