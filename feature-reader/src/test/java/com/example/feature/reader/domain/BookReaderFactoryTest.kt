package com.example.feature.reader.domain

import android.content.Context
import com.example.feature.reader.data.CachingBookReader
import com.example.feature.reader.data.cache.BitmapCache
import com.google.common.truth.Truth.assertThat
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mock
import org.mockito.junit.MockitoJUnitRunner
import java.io.File

@RunWith(MockitoJUnitRunner::class)
class BookReaderFactoryTest {

    @Mock
    private lateinit var mockContext: Context

    @Mock
    private lateinit var mockBitmapCache: BitmapCache

    private lateinit var factory: BookReaderFactory

    @Before
    fun setUp() {
        factory = BookReaderFactory(mockContext, mockBitmapCache)
    }

    @Test
    fun `create returns CbrReader for cbr file`() {
        // Arrange
        val file = File("test.cbr")

        // Act
        val reader = factory.create(file)

        // Assert
        assertThat(reader).isInstanceOf(CachingBookReader::class.java)
    }

    @Test
    fun `create returns CbzReader for cbz file`() {
        // Arrange
        val file = File("test.cbz")

        // Act
        val reader = factory.create(file)

        // Assert
        assertThat(reader).isInstanceOf(CachingBookReader::class.java)
    }

    @Test
    fun `create returns PdfReader for pdf file`() {
        // Arrange
        val file = File("test.pdf")

        // Act
        val reader = factory.create(file)

        // Assert
        assertThat(reader).isInstanceOf(CachingBookReader::class.java)
    }

    @Test
    fun `create returns DjvuReader for djvu file`() {
        // Arrange
        val file = File("test.djvu")

        // Act
        val reader = factory.create(file)

        // Assert
        assertThat(reader).isInstanceOf(CachingBookReader::class.java)
    }

    @Test
    fun `create returns DjvuReader for djv file`() {
        // Arrange
        val file = File("test.djv")

        // Act
        val reader = factory.create(file)

        // Assert
        assertThat(reader).isInstanceOf(CachingBookReader::class.java)
    }

    @Test
    fun `create is case-insensitive and returns CbrReader for uppercase CBR extension`() {
        // Arrange
        val file = File("test.CBR")

        // Act
        val reader = factory.create(file)

        // Assert
        assertThat(reader).isInstanceOf(CachingBookReader::class.java)
    }

    @Test(expected = UnsupportedFormatException::class)
    fun `create throws UnsupportedFormatException for unknown extension`() {
        // Arrange
        val file = File("document.txt")

        // Act
        factory.create(file) // Assert: exception expected
    }

    @Test(expected = UnsupportedFormatException::class)
    fun `create throws UnsupportedFormatException for file with no extension`() {
        // Arrange
        val file = File("filewithnoextension")

        // Act
        factory.create(file) // Assert: exception expected
    }
}