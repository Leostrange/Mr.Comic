package com.example.core.domain.usecase

import android.graphics.Bitmap
import android.net.Uri
import com.example.core.domain.util.Result
import com.example.core.reader.domain.BookReader
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
    private lateinit var bookReader: BookReader
    private lateinit var getComicPagesUseCase: GetComicPagesUseCase
    private lateinit var mockUri: Uri

    @Before
    fun setUp() {
        bookReaderFactory = mockk(relaxed = true)
        bookReader = mockk()
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
        coEvery { bookReader.open(mockUri) } returns expectedPageCount

        // When
        val result = getComicPagesUseCase.getTotalPages()

        // Then
        assertTrue(result is Result.Success)
        assertEquals(expectedPageCount, (result as Result.Success).data)
        coVerify(exactly = 1) { bookReader.open(mockUri) }
    }

    @Test
    fun `getTotalPages should reuse cached value on subsequent calls`() = runTest {
        // Given
        val expectedPageCount = 5
        coEvery { bookReader.open(mockUri) } returns expectedPageCount

        // When
        val firstResult = getComicPagesUseCase.getTotalPages()
        val secondResult = getComicPagesUseCase.getTotalPages()

        // Then
        assertEquals(expectedPageCount, (firstResult as Result.Success).data)
        assertEquals(expectedPageCount, (secondResult as Result.Success).data)
        coVerify(exactly = 1) { bookReader.open(mockUri) }
    }

    @Test
    fun `getTotalPages should return zero when no reader available`() = runTest {
        // Given
        every { bookReaderFactory.getCurrentReader() } returns null

        // When
        val result = getComicPagesUseCase.getTotalPages()

        // Then
        assertTrue(result is Result.Success)
        assertEquals(0, (result as Result.Success).data)
    }

    @Test
    fun `getTotalPages should return error when open throws`() = runTest {
        // Given
        val exception = RuntimeException("Failed to open book")
        coEvery { bookReader.open(mockUri) } throws exception

        // When
        val result = getComicPagesUseCase.getTotalPages()

        // Then
        assertTrue(result is Result.Error)
        assertEquals(exception, (result as Result.Error).exception)
    }

    @Test
    fun `getTotalPages should fallback to current page count when uri missing`() = runTest {
        // Given
        val expectedPageCount = 7
        every { bookReaderFactory.getCurrentUri() } returns null
        every { bookReader.getPageCount() } returns expectedPageCount

        // When
        val result = getComicPagesUseCase.getTotalPages()

        // Then
        assertTrue(result is Result.Success)
        assertEquals(expectedPageCount, (result as Result.Success).data)
        coVerify(exactly = 0) { bookReader.open(any()) }
    }

    @Test
    fun `getPage should return success result with bitmap`() {
        // Given
        val pageIndex = 5
        val mockBitmap = mockk<Bitmap>()
        every { bookReader.getPageCount() } returns 10
        every { bookReader.renderPage(pageIndex) } returns mockBitmap

        // When
        val result = getComicPagesUseCase.getPage(pageIndex)

        // Then
        assertTrue(result is Result.Success)
        assertEquals(mockBitmap, (result as Result.Success).data)
    }

    @Test
    fun `getPage should return success with null when no reader available`() {
        // Given
        every { bookReaderFactory.getCurrentReader() } returns null

        // When
        val result = getComicPagesUseCase.getPage(1)

        // Then
        assertTrue(result is Result.Success)
        assertNull((result as Result.Success).data)
    }

    @Test
    fun `getPage should return error when render throws`() {
        // Given
        val pageIndex = 3
        val exception = RuntimeException("Failed to render page")
        every { bookReader.getPageCount() } returns 10
        every { bookReader.renderPage(pageIndex) } throws exception

        // When
        val result = getComicPagesUseCase.getPage(pageIndex)

        // Then
        assertTrue(result is Result.Error)
        assertEquals(exception, (result as Result.Error).exception)
    }

    @Test
    fun `getPage should return error on negative index`() {
        // When
        val result = getComicPagesUseCase.getPage(-1)

        // Then
        assertTrue(result is Result.Error)
        assertTrue((result as Result.Error).exception is IndexOutOfBoundsException)
    }

    @Test
    fun `clearCache should release resources and reset cached count`() = runTest {
        // Given
        coEvery { bookReader.open(mockUri) } returnsMany listOf(3, 6)

        // When
        val firstResult = getComicPagesUseCase.getTotalPages()
        getComicPagesUseCase.clearCache()
        val secondResult = getComicPagesUseCase.getTotalPages()

        // Then
        assertEquals(3, (firstResult as Result.Success).data)
        assertEquals(6, (secondResult as Result.Success).data)
        verify { bookReaderFactory.releaseResources() }
        coVerify(exactly = 2) { bookReader.open(mockUri) }
    }
}
