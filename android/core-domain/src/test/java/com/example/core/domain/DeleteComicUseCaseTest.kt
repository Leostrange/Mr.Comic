package com.example.core.domain

import com.example.core.data.repository.ComicRepository
import com.example.core.domain.util.Result
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.junit.Before
import org.junit.Test

class DeleteComicUseCaseTest {

    private lateinit var repository: ComicRepository
    private lateinit var deleteComicUseCase: DeleteComicUseCase

    @Before
    fun setUp() {
        repository = mockk(relaxed = true)
        deleteComicUseCase = DeleteComicUseCase(repository)
    }

    @Test
    fun `invoke should call repository deleteComic with correct id`() = runTest {
        // Given
        val comicId = "test-comic-id"

        // When
        val result = deleteComicUseCase.invoke(setOf(comicId))

        // Then
        assert(result is Result.Success)
        coVerify(exactly = 1) { repository.deleteComics(setOf(comicId)) }
    }

    @Test
    fun `invoke should propagate repository exceptions`() = runTest {
        // Given
        val comicId = "test-comic-id"
        val exception = RuntimeException("Delete failed")
        coEvery { repository.deleteComics(setOf(comicId)) } throws exception

        // When & Then
        val result = deleteComicUseCase.invoke(setOf(comicId))
        assert(result is Result.Error)
        val error = result as Result.Error
        assert(error.exception.message == "Delete failed")
    }

    @Test
    fun `invoke should handle empty comic id`() = runTest {
        // Given
        val comicIds = emptySet<String>()

        // When
        val result = deleteComicUseCase.invoke(comicIds)

        // Then
        assert(result is Result.Success)
        coVerify(exactly = 1) { repository.deleteComics(comicIds) }
    }
}