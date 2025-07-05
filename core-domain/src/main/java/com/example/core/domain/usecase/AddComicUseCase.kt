package com.example.core.domain.usecase

import com.example.core.data.repository.LibraryRepository
import com.example.core.model.Comic
import javax.inject.Inject

class AddComicUseCase @Inject constructor(
    private val repository: LibraryRepository
) {
    suspend operator fun invoke(comic: Comic) {
        repository.addComic(comic)
    }
}

