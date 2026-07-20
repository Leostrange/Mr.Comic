package io.leostrange.mrcomic.core.domain.usecase

import io.leostrange.mrcomic.core.data.repository.ComicRepository
import io.leostrange.mrcomic.core.domain.util.Result
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class SaveReadingProgressUseCaseTest {

    private lateinit var repository: ComicRepository
    private lateinit var useCase: SaveReadingProgressUseCase

    @Before
    fun setUp() {
        repository = mockk(relaxed = true)
        useCase = SaveReadingProgressUseCase(repository)
    }

    @Test
    fun invoke_returnsSuccess_whenRepositorySucceeds() = runTest {
        coEvery { repository.updateProgress(any(), any(), any()) } returns Unit

        val result = useCase(comicId = "comic-1", pageIndex = 5, totalPages = 20)

        assertTrue(result is Result.Success)
    }

    @Test
    fun invoke_returnsError_whenRepositoryThrows() = runTest {
        coEvery { repository.updateProgress(any(), any(), any()) } throws RuntimeException("DB error")

        val result = useCase(comicId = "comic-1", pageIndex = 5, totalPages = 20)

        assertTrue(result is Result.Error)
        assertEquals("DB error", (result as Result.Error).exception.message)
    }

    @Test
    fun invoke_callsRepositoryWithCorrectParameters() = runTest {
        coEvery { repository.updateProgress(any(), any(), any()) } returns Unit

        useCase(comicId = "comic-42", pageIndex = 10, totalPages = 50)

        coVerify { repository.updateProgress("comic-42", 10, 50) }
    }

    @Test
    fun invoke_handlesZeroPageCount() = runTest {
        coEvery { repository.updateProgress(any(), any(), any()) } returns Unit

        val result = useCase(comicId = "comic-1", pageIndex = 0, totalPages = 0)

        assertTrue(result is Result.Success)
        coVerify { repository.updateProgress("comic-1", 0, 0) }
    }

    @Test
    fun invoke_handlesNegativePageIndex() = runTest {
        coEvery { repository.updateProgress(any(), any(), any()) } returns Unit

        val result = useCase(comicId = "comic-1", pageIndex = -1, totalPages = 10)

        assertTrue(result is Result.Success)
    }
}
