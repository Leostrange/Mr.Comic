package com.example.core.domain.usecase

import android.graphics.Bitmap
import com.example.core.domain.util.Result
import com.example.core.model.ComicFormat
import com.example.engine.formats.base.FormatFactory
import com.example.engine.formats.base.FormatReader
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import io.mockk.verify
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class GetComicPagesUseCaseTest {

    private lateinit var formatFactory: FormatFactory
    private lateinit var useCase: GetComicPagesUseCase

    @Before
    fun setUp() {
        formatFactory = mockk(relaxed = true)
        useCase = GetComicPagesUseCase(formatFactory)
    }

    @Test
    fun invoke_returnsSuccess_whenReaderProvidesPages() = runTest {
        val mockBitmap1 = mockk<Bitmap>()
        val mockBitmap2 = mockk<Bitmap>()
        val reader = mockk<FormatReader>(relaxed = true) {
            coEvery { getPageCount() } returns 2
            coEvery { getPage(0) } returns mockBitmap1
            coEvery { getPage(1) } returns mockBitmap2
        }
        coEvery { formatFactory.createReader(any(), any()) } returns reader

        val result = useCase("/path/to/comic.cbz", ComicFormat.CBZ)

        assertTrue(result is Result.Success)
        val pages = (result as Result.Success).data
        assertEquals(2, pages.size)
        assertEquals(mockBitmap1, pages[0])
        assertEquals(mockBitmap2, pages[1])
    }

    @Test
    fun invoke_returnsError_whenFormatNotSupported() = runTest {
        coEvery { formatFactory.createReader(any(), any()) } returns null

        val result = useCase("/path/to/file.xyz", ComicFormat.UNKNOWN)

        assertTrue(result is Result.Error)
        assertTrue((result as Result.Error).exception.message!!.contains("не поддерживается"))
    }

    @Test
    fun invoke_returnsError_whenReaderThrows() = runTest {
        coEvery { formatFactory.createReader(any(), any()) } throws RuntimeException("Corrupt file")

        val result = useCase("/path/to/comic.cbz", ComicFormat.CBZ)

        assertTrue(result is Result.Error)
        assertEquals("Corrupt file", (result as Result.Error).exception.message)
    }

    @Test
    fun invoke_filtersNullPages() = runTest {
        val mockBitmap = mockk<Bitmap>()
        val reader = mockk<FormatReader>(relaxed = true) {
            coEvery { getPageCount() } returns 3
            coEvery { getPage(0) } returns mockBitmap
            coEvery { getPage(1) } returns null
            coEvery { getPage(2) } returns mockBitmap
        }
        coEvery { formatFactory.createReader(any(), any()) } returns reader

        val result = useCase("/path/to/comic.cbz", ComicFormat.CBZ)

        assertTrue(result is Result.Success)
        assertEquals(2, (result as Result.Success).data.size)
    }

    @Test
    fun invoke_closesReaderAfterUse() = runTest {
        val reader = mockk<FormatReader>(relaxed = true) {
            coEvery { getPageCount() } returns 1
            coEvery { getPage(0) } returns mockk()
        }
        coEvery { formatFactory.createReader(any(), any()) } returns reader

        useCase("/path/to/comic.cbz", ComicFormat.CBZ)

        verify { reader.close() }
    }

    @Test
    fun invoke_usesAutoDetect_whenFormatIsUnknown() = runTest {
        val reader = mockk<FormatReader>(relaxed = true) {
            coEvery { getPageCount() } returns 0
        }
        coEvery { formatFactory.createReader(any(), any()) } returns reader

        useCase("/path/to/file.epub", ComicFormat.UNKNOWN)

        coVerify { formatFactory.createReader("/path/to/file.epub", any()) }
    }

    @Test
    fun invoke_returnsEmptyList_whenZeroPages() = runTest {
        val reader = mockk<FormatReader>(relaxed = true) {
            coEvery { getPageCount() } returns 0
        }
        coEvery { formatFactory.createReader(any(), any()) } returns reader

        val result = useCase("/path/to/comic.cbz", ComicFormat.CBZ)

        assertTrue(result is Result.Success)
        assertEquals(0, (result as Result.Success).data.size)
    }
}
