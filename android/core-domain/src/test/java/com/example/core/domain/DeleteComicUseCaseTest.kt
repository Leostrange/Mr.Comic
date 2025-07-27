package com.example.core.domain

import com.example.feature.library.LibraryRepository
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.junit.Before
import org.junit.Test

class DeleteComicUseCaseTest {

    private lateinit var repository: LibraryRepository
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
        deleteComicUseCase.invoke(comicId)

        // Then
        coVerify(exactly = 1) { repository.deleteComic(comicId) }
    }

    @Test
    fun `invoke should propagate repository exceptions`() = runTest {
        // Given
        val comicId = "test-comic-id"
        val exception = RuntimeException("Delete failed")
        coEvery { repository.deleteComic(comicId) } throws exception

        // When & Then
        try {
            deleteComicUseCase.invoke(comicId)
            assert(false) { "Expected exception to be thrown" }
        } catch (e: RuntimeException) {
            assert(e.message == "Delete failed")
        }
    }

    @Test
    fun `invoke should handle empty comic id`() = runTest {
        // Given
        val emptyComicId = ""

        // When
        deleteComicUseCase.invoke(emptyComicId)

        // Then
        coVerify(exactly = 1) { repository.deleteComic(emptyComicId) }
    }
}