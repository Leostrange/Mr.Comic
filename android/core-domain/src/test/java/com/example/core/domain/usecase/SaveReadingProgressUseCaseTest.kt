package com.example.core.domain.usecase

import com.example.core.data.repository.ComicRepository
import com.example.core.domain.util.Result
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.junit.Before
import org.junit.Test
import org.junit.Assert.*

class SaveReadingProgressUseCaseTest {

    private lateinit var repository: ComicRepository
    private lateinit var saveReadingProgressUseCase: SaveReadingProgressUseCase

    @Before
    fun setUp() {
        repository = mockk(relaxed = true)
        saveReadingProgressUseCase = SaveReadingProgressUseCase(repository)
    }

    @Test
    fun `invoke should return success result when progress is saved successfully`() = runTest {
        // Given
        val comicId = "test-comic-id"
        val currentPage = 5
        coEvery { repository.updateProgress(comicId, currentPage) } returns Unit

        // When
        val result = saveReadingProgressUseCase.invoke(comicId, currentPage)

        // Then
        assertTrue(result is Result.Success)
        assertEquals(Unit, (result as Result.Success).data)
        coVerify(exactly = 1) { repository.updateProgress(comicId, currentPage) }
    }

    @Test
    fun `invoke should return error result when repository throws exception`() = runTest {
        // Given
        val comicId = "test-comic-id"
        val currentPage = 5
        val exception = RuntimeException("Update failed")
        coEvery { repository.updateProgress(comicId, currentPage) } throws exception

        // When
        val result = saveReadingProgressUseCase.invoke(comicId, currentPage)

        // Then
        assertTrue(result is Result.Error)
        assertEquals(exception, (result as Result.Error).exception)
        coVerify(exactly = 1) { repository.updateProgress(comicId, currentPage) }
    }

    @Test
    fun `invoke should handle zero page progress`() = runTest {
        // Given
        val comicId = "test-comic-id"
        val currentPage = 0
        coEvery { repository.updateProgress(comicId, currentPage) } returns Unit

        // When
        val result = saveReadingProgressUseCase.invoke(comicId, currentPage)

        // Then
        assertTrue(result is Result.Success)
        coVerify(exactly = 1) { repository.updateProgress(comicId, currentPage) }
    }

    @Test
    fun `invoke should handle negative page number`() = runTest {
        // Given
        val comicId = "test-comic-id"
        val currentPage = -1
        coEvery { repository.updateProgress(comicId, currentPage) } returns Unit

        // When
        val result = saveReadingProgressUseCase.invoke(comicId, currentPage)

        // Then
        assertTrue(result is Result.Success)
        coVerify(exactly = 1) { repository.updateProgress(comicId, currentPage) }
    }

    @Test
    fun `invoke should handle empty comic id`() = runTest {
        // Given
        val comicId = ""
        val currentPage = 5
        coEvery { repository.updateProgress(comicId, currentPage) } returns Unit

        // When
        val result = saveReadingProgressUseCase.invoke(comicId, currentPage)

        // Then
        assertTrue(result is Result.Success)
        coVerify(exactly = 1) { repository.updateProgress(comicId, currentPage) }
    }
}