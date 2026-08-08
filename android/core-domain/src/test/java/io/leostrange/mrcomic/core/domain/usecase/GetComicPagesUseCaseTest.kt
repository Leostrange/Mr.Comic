package io.leostrange.mrcomic.core.domain.usecase

import android.graphics.Bitmap
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.engine.api.FormatProvider
import io.leostrange.mrcomic.engine.api.FormatReaderHandle
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

    private lateinit var formatProvider: FormatProvider
    private lateinit var useCase: GetComicPagesUseCase

    @Before
    fun setUp() {
        formatProvider = mockk(relaxed = true)
        useCase = GetComicPagesUseCase(formatProvider)
    }

    @Test
    fun invoke_returnsSuccess_whenReaderProvidesPages() = runTest {
        val mockBitmap1 = mockk<Bitmap>()
        val mockBitmap2 = mockk<Bitmap>()
        val reader = mockk<FormatReaderHandle>(relaxed = true)
        every { formatProvider.createReader(any(), any()) } returns reader
        coEvery { formatProvider.getPages(reader) } returns listOf(mockBitmap1, mockBitmap2)

        val result = useCase("/path/to/comic.cbz", ComicFormat.CBZ)

        assertTrue(result is Result.Success)
        val pages = (result as Result.Success).data
        assertEquals(2, pages.size)
        assertEquals(mockBitmap1, pages[0])
        assertEquals(mockBitmap2, pages[1])
    }

    @Test
    fun invoke_returnsError_whenFormatNotSupported() = runTest {
        every { formatProvider.createReader(any(), any()) } returns null

        val result = useCase("/path/to/file.xyz", ComicFormat.UNKNOWN)

        assertTrue(result is Result.Error)
        assertTrue((result as Result.Error).exception.message!!.contains("не поддерживается"))
    }

    @Test
    fun invoke_returnsError_whenReaderThrows() = runTest {
        val reader = mockk<FormatReaderHandle>(relaxed = true)
        every { formatProvider.createReader(any(), any()) } returns reader
        coEvery { formatProvider.getPages(reader) } throws RuntimeException("Corrupt file")

        val result = useCase("/path/to/comic.cbz", ComicFormat.CBZ)

        assertTrue(result is Result.Error)
        assertEquals("Corrupt file", (result as Result.Error).exception.message)
    }

    @Test
    fun invoke_returnsPagesFromProvider() = runTest {
        val mockBitmap = mockk<Bitmap>()
        val reader = mockk<FormatReaderHandle>(relaxed = true)
        every { formatProvider.createReader(any(), any()) } returns reader
        // The provider contract already filters out null pages (see FormatProviderImpl).
        coEvery { formatProvider.getPages(reader) } returns listOf(mockBitmap, mockBitmap)

        val result = useCase("/path/to/comic.cbz", ComicFormat.CBZ)

        assertTrue(result is Result.Success)
        assertEquals(2, (result as Result.Success).data.size)
    }

    @Test
    fun invoke_closesReaderAfterUse() = runTest {
        val reader = mockk<FormatReaderHandle>(relaxed = true)
        every { formatProvider.createReader(any(), any()) } returns reader
        coEvery { formatProvider.getPages(reader) } returns listOf(mockk())

        useCase("/path/to/comic.cbz", ComicFormat.CBZ)

        verify { formatProvider.closeReader(reader) }
    }

    @Test
    fun invoke_usesAutoDetect_whenFormatIsUnknown() = runTest {
        val reader = mockk<FormatReaderHandle>(relaxed = true)
        every { formatProvider.detectByExtension("/path/to/file.epub") } returns ComicFormat.EPUB
        every { formatProvider.createReader(any(), any()) } returns reader
        coEvery { formatProvider.getPages(reader) } returns emptyList()

        useCase("/path/to/file.epub", ComicFormat.UNKNOWN)

        coVerify { formatProvider.createReader("/path/to/file.epub", ComicFormat.EPUB) }
    }

    @Test
    fun invoke_returnsEmptyList_whenZeroPages() = runTest {
        val reader = mockk<FormatReaderHandle>(relaxed = true)
        every { formatProvider.createReader(any(), any()) } returns reader
        coEvery { formatProvider.getPages(reader) } returns emptyList()

        val result = useCase("/path/to/comic.cbz", ComicFormat.CBZ)

        assertTrue(result is Result.Success)
        assertEquals(0, (result as Result.Success).data.size)
    }
}
