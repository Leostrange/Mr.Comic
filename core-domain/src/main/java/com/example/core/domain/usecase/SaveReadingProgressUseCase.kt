package com.example.core.domain.usecase

import com.example.core.data.repository.ComicRepository
import javax.inject.Inject

class SaveReadingProgressUseCase @Inject constructor(
    private val repository: ComicRepository
) {
    suspend operator fun invoke(comicId: String, currentPage: Int) {
        repository.updateProgress(comicId, currentPage)
    }
}

