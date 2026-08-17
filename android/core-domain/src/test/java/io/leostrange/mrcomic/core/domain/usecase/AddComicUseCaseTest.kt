package io.leostrange.mrcomic.core.domain.usecase

import android.net.Uri
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.repository.ImportRepository
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import io.mockk.mockkStatic
import io.mockk.unmockkStatic
import kotlinx.coroutines.test.runTest
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class AddComicUseCaseTest {

    private lateinit var repository: ImportRepository
    private lateinit var useCase: AddComicUseCase

    @Before
    fun setUp() {
        repository = mockk(relaxed = true)
        useCase = AddComicUseCase(repository)
        mockkStatic(Uri::class)
    }

    @After
    fun tearDown() {
        unmockkStatic(Uri::class)
    }

    @Test
    fun invoke_returnsSuccess_whenRepositorySucceeds() = runTest {
        val uri = mockk<Uri>()
        val expectedComic = Comic(id = "1", title = "Test", format = ComicFormat.CBZ)
        coEvery { repository.addComic(uri) } returns expectedComic

        val result = useCase(uri)

        assertTrue(result is Result.Success)
        assertEquals(expectedComic, (result as Result.Success).data)
    }

    @Test
    fun invoke_returnsNullSuccess_whenRepositoryReturnsNull() = runTest {
        val uri = mockk<Uri>()
        coEvery { repository.addComic(uri) } returns null

        val result = useCase(uri)

        assertTrue(result is Result.Success)
        assertNull((result as Result.Success).data)
    }

    @Test
    fun invoke_returnsError_whenRepositoryThrows() = runTest {
        val uri = mockk<Uri>()
        coEvery { repository.addComic(uri) } throws RuntimeException("IO error")

        val result = useCase(uri)

        assertTrue(result is Result.Error)
        assertEquals("IO error", (result as Result.Error).exception.message)
    }

    @Test
    fun invoke_callsRepositoryWithCorrectUri() = runTest {
        val uri = mockk<Uri>()
        coEvery { repository.addComic(any()) } returns null

        useCase(uri)

        coVerify { repository.addComic(uri) }
    }
}
