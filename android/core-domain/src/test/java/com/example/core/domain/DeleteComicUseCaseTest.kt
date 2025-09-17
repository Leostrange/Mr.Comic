package com.example.core.domain

import com.example.core.data.repository.ComicRepository
import com.example.core.domain.util.Result
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
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
    fun `invoke should return success and delete all requested comics`() = runTest {
        // Given
        val comicIds = setOf("comic-1", "comic-2", "comic-3")
        coEvery { repository.deleteComics(comicIds) } returns Unit

        // When
        val result = deleteComicUseCase.invoke(comicIds)

        // Then
        assertTrue(result is Result.Success)
        assertEquals(Unit, (result as Result.Success).data)
        coVerify(exactly = 1) { repository.deleteComics(comicIds) }
    }

    @Test
    fun `invoke should return success when there are no comics to delete`() = runTest {
        // Given
        val comicIds = emptySet<String>()
        coEvery { repository.deleteComics(comicIds) } returns Unit

        // When
        val result = deleteComicUseCase.invoke(comicIds)

        // Then
        assertTrue(result is Result.Success)
        assertEquals(Unit, (result as Result.Success).data)
        coVerify(exactly = 1) { repository.deleteComics(comicIds) }
    }

    @Test
    fun `invoke should return error when repository fails to delete comics`() = runTest {
        // Given
        val comicIds = setOf("failed-id")
        val exception = RuntimeException("Delete failed")
        coEvery { repository.deleteComics(comicIds) } throws exception

        // When
        val result = deleteComicUseCase.invoke(comicIds)

        // Then
        assertTrue(result is Result.Error)
        assertEquals(exception, (result as Result.Error).exception)
        coVerify(exactly = 1) { repository.deleteComics(comicIds) }
    }
}