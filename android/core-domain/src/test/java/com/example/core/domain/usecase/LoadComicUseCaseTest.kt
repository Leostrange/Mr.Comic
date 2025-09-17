package com.example.core.domain.usecase

import android.net.Uri
import com.example.core.domain.util.Result
import com.example.core.reader.domain.BookReader
import com.example.core.reader.domain.BookReaderFactory
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.justRun
import io.mockk.mockk
import io.mockk.verify
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class LoadComicUseCaseTest {

    private lateinit var bookReaderFactory: BookReaderFactory
    private lateinit var bookReader: BookReader
    private lateinit var uri: Uri
    private lateinit var useCase: LoadComicUseCase

    @Before
    fun setUp() {
        bookReaderFactory = mockk()
        bookReader = mockk()
        uri = mockk()
        useCase = LoadComicUseCase(bookReaderFactory)
    }

    @Test
    fun `invoke returns success when reader opens`() = runTest {
        every { uri.toString() } returns "content://comic"
        every { bookReaderFactory.create(uri) } returns bookReader
        coEvery { bookReader.open(uri) } returns 5

        val result = useCase(uri)

        assertTrue(result is Result.Success)
        coVerify(exactly = 1) { bookReader.open(uri) }
    }

    @Test
    fun `invoke returns error for blank uri`() = runTest {
        every { uri.toString() } returns ""

        val result = useCase(uri)

        assertTrue(result is Result.Error)
        verify(exactly = 0) { bookReaderFactory.create(any()) }
    }

    @Test
    fun `invoke returns error when factory throws`() = runTest {
        every { uri.toString() } returns "content://comic"
        every { bookReaderFactory.create(uri) } throws IllegalStateException("boom")

        val result = useCase(uri)

        assertTrue(result is Result.Error)
    }

    @Test
    fun `invoke returns error when reader open fails`() = runTest {
        every { uri.toString() } returns "content://comic"
        every { bookReaderFactory.create(uri) } returns bookReader
        coEvery { bookReader.open(uri) } throws IllegalArgumentException("fail")

        val result = useCase(uri)

        assertTrue(result is Result.Error)
    }

    @Test
    fun `releaseResources delegates to factory`() {
        justRun { bookReaderFactory.releaseResources() }

        useCase.releaseResources()

        verify(exactly = 1) { bookReaderFactory.releaseResources() }
    }
}
