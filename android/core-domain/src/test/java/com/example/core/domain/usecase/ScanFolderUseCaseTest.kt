package com.example.core.domain.usecase

import android.net.Uri
import com.example.core.data.repository.ComicRepository
import com.example.core.domain.util.Result
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import io.mockk.mockkStatic
import io.mockk.unmockkStatic
import kotlinx.coroutines.test.runTest
import org.junit.After
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class ScanFolderUseCaseTest {

    private lateinit var repository: ComicRepository
    private lateinit var useCase: ScanFolderUseCase

    @Before
    fun setUp() {
        repository = mockk(relaxed = true)
        useCase = ScanFolderUseCase(repository)
        mockkStatic(Uri::class)
    }

    @After
    fun tearDown() {
        unmockkStatic(Uri::class)
    }

    @Test
    fun invoke_returnsSuccess_whenRepositorySucceeds() = runTest {
        val treeUri = mockk<Uri>()
        coEvery { repository.addComicsFromDirectory(treeUri) } returns Unit

        val result = useCase(treeUri)

        assertTrue(result is Result.Success)
    }

    @Test
    fun invoke_returnsError_whenRepositoryThrows() = runTest {
        val treeUri = mockk<Uri>()
        coEvery { repository.addComicsFromDirectory(treeUri) } throws RuntimeException("Access denied")

        val result = useCase(treeUri)

        assertTrue(result is Result.Error)
        assertTrue((result as Result.Error).exception.message!!.contains("Access denied"))
    }

    @Test
    fun invoke_callsRepositoryWithCorrectUri() = runTest {
        val treeUri = mockk<Uri>()
        coEvery { repository.addComicsFromDirectory(any()) } returns Unit

        useCase(treeUri)

        coVerify { repository.addComicsFromDirectory(treeUri) }
    }

    @Test
    fun invoke_wrapsCancellationException_inResult() = runTest {
        val treeUri = mockk<Uri>()
        coEvery { repository.addComicsFromDirectory(treeUri) } throws kotlinx.coroutines.CancellationException()

        val result = useCase(treeUri)

        assertTrue(result is Result.Error)
        assertTrue((result as Result.Error).exception is kotlinx.coroutines.CancellationException)
    }
}
