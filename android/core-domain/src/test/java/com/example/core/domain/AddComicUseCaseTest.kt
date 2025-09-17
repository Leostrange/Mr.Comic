package com.example.core.domain

import com.example.core.data.repository.ComicRepository
import com.example.core.domain.util.Result
import com.example.core.model.Comic
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class AddComicUseCaseTest {

    private lateinit var repository: ComicRepository
    private lateinit var addComicUseCase: AddComicUseCase

    @Before
    fun setUp() {
        repository = mockk(relaxed = true)
        addComicUseCase = AddComicUseCase(repository)
    }

    @Test
    fun `invoke should return success and add comic to repository`() = runTest {
        // Given
        val comic = Comic(
            title = "Test Comic",
            author = "Test Author",
            filePath = "/path/to/comic",
            coverPath = "/path/to/cover"
        )
        coEvery { repository.addComic(comic) } returns Unit

        // When
        val result = addComicUseCase.invoke(comic)

        // Then
        assertTrue(result is Result.Success)
        assertEquals(Unit, (result as Result.Success).data)
        coVerify(exactly = 1) { repository.addComic(comic) }
    }

    @Test
    fun `invoke should return error when repository fails to add comic`() = runTest {
        // Given
        val comic = Comic(
            title = "Test Comic",
            author = "Test Author",
            filePath = "/path/to/comic",
            coverPath = "/path/to/cover"
        )
        val exception = RuntimeException("Database error")
        coEvery { repository.addComic(comic) } throws exception

        // When
        val result = addComicUseCase.invoke(comic)

        // Then
        assertTrue(result is Result.Error)
        assertEquals(exception, (result as Result.Error).exception)
        coVerify(exactly = 1) { repository.addComic(comic) }
    }
}