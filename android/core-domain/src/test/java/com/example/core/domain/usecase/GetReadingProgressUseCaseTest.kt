package com.example.core.domain.usecase

import com.example.core.data.repository.ComicRepository
import com.example.core.domain.util.Result
import com.example.core.model.ReadingProgress
import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.junit.Before
import org.junit.Test
import org.junit.Assert.*

class GetReadingProgressUseCaseTest {

    private lateinit var repository: ComicRepository
    private lateinit var getReadingProgressUseCase: GetReadingProgressUseCase

    @Before
    fun setUp() {
        repository = mockk()
        getReadingProgressUseCase = GetReadingProgressUseCase(repository)
    }

    @Test
    fun `invoke should return success result with reading progress`() = runTest {
        // Given
        val comicId = "test-comic-id"
        val expectedProgress = ReadingProgress(currentPage = 5, totalPages = 100)
        coEvery { repository.getReadingProgress(comicId) } returns expectedProgress

        // When
        val result = getReadingProgressUseCase.invoke(comicId)

        // Then
        assertTrue(result is Result.Success)
        assertEquals(expectedProgress, (result as Result.Success).data)
    }

    @Test
    fun `invoke should return error result when repository throws exception`() = runTest {
        // Given
        val comicId = "test-comic-id"
        val exception = NoSuchElementException("Comic not found: $comicId")
        coEvery { repository.getReadingProgress(comicId) } throws exception

        // When
        val result = getReadingProgressUseCase.invoke(comicId)

        // Then
        assertTrue(result is Result.Error)
        assertEquals(exception, (result as Result.Error).exception)
    }

    @Test
    fun `invoke should handle zero progress`() = runTest {
        // Given
        val comicId = "new-comic-id"
        val expectedProgress = ReadingProgress(currentPage = 0, totalPages = 0)
        coEvery { repository.getReadingProgress(comicId) } returns expectedProgress

        // When
        val result = getReadingProgressUseCase.invoke(comicId)

        // Then
        assertTrue(result is Result.Success)
        assertEquals(expectedProgress, (result as Result.Success).data)
    }

    @Test
    fun `invoke should handle negative progress`() = runTest {
        // Given
        val comicId = "corrupted-comic-id"
        val expectedProgress = ReadingProgress(currentPage = -1, totalPages = 20)
        coEvery { repository.getReadingProgress(comicId) } returns expectedProgress

        // When
        val result = getReadingProgressUseCase.invoke(comicId)

        // Then
        assertTrue(result is Result.Success)
        assertEquals(expectedProgress, (result as Result.Success).data)
    }
}
