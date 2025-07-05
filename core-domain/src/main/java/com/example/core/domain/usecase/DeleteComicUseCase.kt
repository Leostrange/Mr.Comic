package com.example.core.domain.usecase

import com.example.core.data.repository.LibraryRepository
import javax.inject.Inject

class DeleteComicUseCase @Inject constructor(
    private val repository: LibraryRepository
) {
    suspend operator fun invoke(comicId: String) {
        repository.deleteComic(comicId)
    }
}

