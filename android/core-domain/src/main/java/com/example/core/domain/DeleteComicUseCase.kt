package com.example.core.domain

import com.example.feature.library.LibraryRepository
import javax.inject.Inject

class DeleteComicUseCase @Inject constructor(
    private val repository: LibraryRepository
) {
    suspend operator fun invoke(comicId: String) {
        repository.deleteComic(comicId)
    }
}


