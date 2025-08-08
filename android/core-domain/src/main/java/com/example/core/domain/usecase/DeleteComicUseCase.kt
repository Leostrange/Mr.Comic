package com.example.core.domain.usecase

import com.example.core.data.repository.LibraryRepository
import com.example.core.domain.util.Result
import javax.inject.Inject
import com.mrcomic.shared.logging.Log

class DeleteComicUseCase @Inject constructor(
    private val repository: LibraryRepository
) {
    suspend operator fun invoke(comicIds: Set<String>): Result<Unit> {
        return try {
            comicIds.forEach { repository.deleteComic(it) }
            Result.Success(Unit)
        } catch (e: Exception) {
            Log.e("DeleteComicUseCase", "Failed to delete comics", e)
            Result.Error(e)
        }
    }
}

