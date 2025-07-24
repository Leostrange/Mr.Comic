package com.example.core.domain.usecase

import com.example.core.data.repository.LibraryRepository
import com.example.core.model.Comic
import com.mrcomic.shared.logging.Log
import javax.inject.Inject

class AddComicUseCase @Inject constructor(
    private val repository: LibraryRepository
) {
    suspend operator fun invoke(comic: Comic): Result<Unit> {
        return try {
            repository.addComic(comic)
            Result.Success(Unit)
        } catch (e: Exception) {
            Log.e("AddComicUseCase", "Failed to add comic", e)
            Result.Error(e)
        }
    }
}

