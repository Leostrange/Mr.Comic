package com.example.core.domain.usecase

import com.example.core.data.repository.ComicRepository
import com.example.core.domain.util.Result
import com.example.core.model.Comic
import javax.inject.Inject

class AddComicUseCase @Inject constructor(
    private val repository: ComicRepository
) {
    suspend operator fun invoke(comic: Comic): Result<Unit> {
        return try {
            repository.addComic(comic)
            Result.Success(Unit)
        } catch (e: Exception) {
            Result.Error(e)
        }
    }
}

