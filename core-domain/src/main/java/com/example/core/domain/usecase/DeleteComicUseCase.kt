package com.example.core.domain.usecase

import com.example.core.data.repository.LibraryRepository
import javax.inject.Inject

class DeleteComicUseCase @Inject constructor(
    private val repository: LibraryRepository
) {
    suspend operator fun invoke(comicIds: Set<String>): Result<Unit> {
        return try {
            comicIds.forEach { repository.deleteComic(it) }
            Result.Success(Unit)
        } catch (e: Exception) {
            Result.Error(e)
        }
    }
}

