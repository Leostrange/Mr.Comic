package com.example.core.domain

import com.example.feature.library.data.ComicEntity
import com.example.feature.library.LibraryRepository
import javax.inject.Inject

class AddComicUseCase @Inject constructor(
    private val repository: LibraryRepository
) {
    suspend operator fun invoke(comic: ComicEntity) {
        repository.addComic(comic)
    }
}


