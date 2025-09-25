package com.example.core.domain.usecase

import android.graphics.Bitmap
import android.net.Uri
import com.example.core.domain.util.Result
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.domain.BookReaderFactory
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.just
import io.mockk.mockk
import io.mockk.runs
import io.mockk.verify
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class GetComicPagesUseCaseTest {

    private lateinit var bookReaderFactory: BookReaderFactory
    private lateinit var bookReader: MediaReader
    private lateinit var getComicPagesUseCase: GetComicPagesUseCase
    private lateinit var mockUri: Uri

    @Before
    fun setUp() {
        bookReaderFactory = mockk(relaxed = true)
        bookReader = mockk(relaxed = true)
        mockUri = mockk()
        every { bookReaderFactory.getCurrentReader() } returns bookReader
        every { bookReaderFactory.getCurrentUri() } returns mockUri
        every { bookReaderFactory.releaseResources() } just runs

        getComicPagesUseCase = GetComicPagesUseCase(bookReaderFactory)
    }

    @Test
    fun `getTotalPages should return success result with page count`() = runTest {
        // Given
        val expectedPageCount = 10
        every { bookReader.getPageCount() } returns expectedPageCount

        // When
        val result = getComicPagesUseCase.getTotalPages()

        // Then
        assertTrue(result is Result.Success)
        assertEquals(expectedPageCount, (result as Result.Success<Int>).data)
        verify(exactly = 1) { bookReader.getPageCount() }
    }

    @Test
    fun `getTotalPages should reuse cached value on subsequent calls`() = runTest {
        // Given
        val expectedPageCount = 5
        every { bookReader.getPageCount() } returns expectedPageCount

        // When
        val firstResult = getComicPagesUseCase.getTotalPages()
        val secondResult = getComicPagesUseCase.getTotalPages()

        // Then
        assertEquals(expectedPageCount, (firstResult as Result.Success<Int>).data)
        assertEquals(expectedPageCount, (secondResult as Result.Success<Int>).data)
        verify(exactly = 1) { bookReader.getPageCount() }
    }

    @Test
    fun `getTotalPages should return zero when no reader available`() = runTest {
        // Given
        every { bookReaderFactory.getCurrentReader() } returns null

        // When
        val result = getComicPagesUseCase.getTotalPages()

        // Then
        assertTrue(result is Result.Success)
        assertEquals(0, (result as Result.Success<Int>).data)
    }

    @Test
    fun `getPage should return success result with bitmap`() = runTest {
        // Given
        val pageIndex = 5
        val mockBitmap = mockk<Bitmap>()
        every { bookReader.getPageCount() } returns 10
        coEvery { bookReader.renderPage(pageIndex, 1920, 1080, 1.0f) } returns Result.success(mockBitmap)

        // When
        val result = getComicPagesUseCase.getPage(pageIndex)

        // Then
        assertTrue(result is Result.Success)
        assertEquals(mockBitmap, (result as Result.Success<Bitmap?>).data)
    }

    @Test
    fun `getPage should return success with null when no reader available`() = runTest {
        // Given
        every { bookReaderFactory.getCurrentReader() } returns null

        // When
        val result = getComicPagesUseCase.getPage(1)

        // Then
        assertTrue(result is Result.Success)
        assertNull((result as Result.Success<Bitmap?>).data)
    }

    @Test
    fun `getPage should return error when render fails`() = runTest {
        // Given
        val pageIndex = 3
        val exception = RuntimeException("Failed to render page")
        every { bookReader.getPageCount() } returns 10
        coEvery { bookReader.renderPage(pageIndex, 1920, 1080, 1.0f) } returns Result.failure(exception)

        // When
        val result = getComicPagesUseCase.getPage(pageIndex)

        // Then
        assertTrue(result is Result.Error)
        assertEquals(exception, (result as Result.Error).exception)
    }

    @Test
    fun `getPage should return error on negative index`() = runTest {
        // When
        val result = getComicPagesUseCase.getPage(-1)

        // Then
        assertTrue(result is Result.Error)
        assertTrue((result as Result.Error).exception is IndexOutOfBoundsException)
    }

    @Test
    fun `clearCache should release resources and reset cached count`() = runTest {
        // Given
        every { bookReader.getPageCount() } returnsMany listOf(3, 6)

        // When
        val firstResult = getComicPagesUseCase.getTotalPages()
        getComicPagesUseCase.clearCache()
        val secondResult = getComicPagesUseCase.getTotalPages()

        // Then
        assertEquals(3, (firstResult as Result.Success<Int>).data)
        assertEquals(6, (secondResult as Result.Success<Int>).data)
        coVerify { bookReaderFactory.releaseResources() }
        verify(exactly = 2) { bookReader.getPageCount() }
    }
}