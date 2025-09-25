package com.example.core.domain.usecase

import android.content.Context
import android.net.Uri
import com.example.core.domain.util.Result
import com.example.core.reader.domain.MediaReader
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
    private lateinit var bookReader: MediaReader
    private lateinit var uri: Uri
    private lateinit var context: Context
    private lateinit var useCase: LoadComicUseCase

    @Before
    fun setUp() {
        bookReaderFactory = mockk()
        bookReader = mockk()
        uri = mockk()
        context = mockk()
        useCase = LoadComicUseCase(bookReaderFactory, context)
    }

    @Test
    fun `invoke returns success when reader opens`() = runTest {
        every { uri.toString() } returns "content://comic"
        every { bookReaderFactory.create(uri) } returns bookReader
        coEvery { bookReader.open(context, uri) } returns Result.success(mockk())

        val result = useCase(uri)

        assertTrue(result is Result.Success<Unit>)
        coVerify(exactly = 1) { bookReader.open(context, uri) }
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
        coEvery { bookReader.open(context, uri) } returns Result.failure(IllegalArgumentException("fail"))

        val result = useCase(uri)

        assertTrue(result is Result.Error)
    }

    @Test
    fun `releaseResources delegates to factory`() = runTest {
        coEvery { bookReaderFactory.releaseResources() } justRun {}

        useCase.releaseResources()

        coVerify(exactly = 1) { bookReaderFactory.releaseResources() }
    }
}