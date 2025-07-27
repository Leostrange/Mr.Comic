package com.example.core.domain.usecase

import android.graphics.Bitmap
import android.net.Uri
import com.example.core.domain.util.Result
import com.example.feature.reader.domain.BookReader
import com.example.feature.reader.domain.BookReaderFactory
import io.mockk.every
import io.mockk.mockk
import org.junit.Before
import org.junit.Test
import org.junit.Assert.*

class GetComicPagesUseCaseTest {

    private lateinit var bookReaderFactory: BookReaderFactory
    private lateinit var bookReader: BookReader
    private lateinit var getComicPagesUseCase: GetComicPagesUseCase
    private lateinit var mockUri: Uri

    @Before
    fun setUp() {
        bookReaderFactory = mockk()
        bookReader = mockk()
        mockUri = mockk()
        getComicPagesUseCase = GetComicPagesUseCase(bookReaderFactory)
    }

    @Test
    fun `getTotalPages should return success result with page count`() {
        // Given
        val expectedPageCount = 10
        every { bookReaderFactory.getCurrentReader() } returns bookReader
        every { bookReaderFactory.getCurrentUri() } returns mockUri
        every { bookReader.open(mockUri) } returns expectedPageCount

        // When
        val result = getComicPagesUseCase.getTotalPages()

        // Then
        assertTrue(result is Result.Success)
        assertEquals(expectedPageCount, (result as Result.Success).data)
    }

    @Test
    fun `getTotalPages should return success with zero when no reader available`() {
        // Given
        every { bookReaderFactory.getCurrentReader() } returns null

        // When
        val result = getComicPagesUseCase.getTotalPages()

        // Then
        assertTrue(result is Result.Success)
        assertEquals(0, (result as Result.Success).data)
    }

    @Test
    fun `getTotalPages should return error result when exception occurs`() {
        // Given
        val exception = RuntimeException("Failed to open book")
        every { bookReaderFactory.getCurrentReader() } returns bookReader
        every { bookReaderFactory.getCurrentUri() } returns mockUri
        every { bookReader.open(mockUri) } throws exception

        // When
        val result = getComicPagesUseCase.getTotalPages()

        // Then
        assertTrue(result is Result.Error)
        assertEquals(exception, (result as Result.Error).exception)
    }

    @Test
    fun `getTotalPages should return success with zero when uri is null`() {
        // Given
        every { bookReaderFactory.getCurrentReader() } returns bookReader
        every { bookReaderFactory.getCurrentUri() } returns null

        // When
        val result = getComicPagesUseCase.getTotalPages()

        // Then
        assertTrue(result is Result.Success)
        assertEquals(0, (result as Result.Success).data)
    }

    @Test
    fun `getPage should return success result with bitmap`() {
        // Given
        val pageIndex = 5
        val mockBitmap = mockk<Bitmap>()
        every { bookReaderFactory.getCurrentReader() } returns bookReader
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
        val pageIndex = 5
        every { bookReaderFactory.getCurrentReader() } returns null

        // When
        val result = getComicPagesUseCase.getPage(pageIndex)

        // Then
        assertTrue(result is Result.Success)
        assertNull((result as Result.Success).data)
    }

    @Test
    fun `getPage should return error result when exception occurs`() {
        // Given
        val pageIndex = 5
        val exception = RuntimeException("Failed to render page")
        every { bookReaderFactory.getCurrentReader() } returns bookReader
        every { bookReader.renderPage(pageIndex) } throws exception

        // When
        val result = getComicPagesUseCase.getPage(pageIndex)

        // Then
        assertTrue(result is Result.Error)
        assertEquals(exception, (result as Result.Error).exception)
    }

    @Test
    fun `getPage should handle negative page index`() {
        // Given
        val pageIndex = -1
        every { bookReaderFactory.getCurrentReader() } returns bookReader
        every { bookReader.renderPage(pageIndex) } returns null

        // When
        val result = getComicPagesUseCase.getPage(pageIndex)

        // Then
        assertTrue(result is Result.Success)
        assertNull((result as Result.Success).data)
    }
}