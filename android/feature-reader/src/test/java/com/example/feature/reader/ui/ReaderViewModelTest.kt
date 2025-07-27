package com.example.feature.reader.ui

import android.graphics.Bitmap
import androidx.lifecycle.SavedStateHandle
import com.example.feature.reader.domain.BookReader
import com.example.feature.reader.domain.BookReaderFactory
import com.example.feature.reader.domain.UnsupportedFormatException
import com.example.feature.reader.util.MainCoroutineRule
import com.google.common.truth.Truth.assertThat
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.runTest
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mock
import org.mockito.junit.MockitoJUnitRunner
import org.mockito.kotlin.any
import org.mockito.kotlin.doReturn
import org.mockito.kotlin.doThrow
import org.mockito.kotlin.mock
import org.mockito.kotlin.never
import org.mockito.kotlin.verify
import org.mockito.kotlin.whenever
import java.io.File
import java.io.IOException

@ExperimentalCoroutinesApi
@RunWith(MockitoJUnitRunner::class)
class ReaderViewModelTest {

    @get:Rule
    val mainCoroutineRule = MainCoroutineRule()

    @Mock
    private lateinit var readerFactory: BookReaderFactory

    @Mock
    private lateinit var bookReader: BookReader

    private lateinit var savedStateHandle: SavedStateHandle

    private lateinit var viewModel: ReaderViewModel

    private val testFile = File("test.cbr")

    @Before
    fun setUp() {
        savedStateHandle = SavedStateHandle()
        // Common setup: factory creates a valid book reader by default
        whenever(readerFactory.create(any())).thenReturn(bookReader)
        viewModel = ReaderViewModel(readerFactory, savedStateHandle)
    }

    @Test
    fun `openBook success - loads first page and updates state`() = runTest {
        // Arrange
        val pageCount = 10
        val mockBitmap: Bitmap = mock()
        whenever(bookReader.open(testFile)).doReturn(pageCount)
        whenever(bookReader.renderPage(0)).doReturn(mockBitmap)

        // Act
        viewModel.openBook(testFile)

        // Assert
        val state = viewModel.uiState.value
        verify(readerFactory).create(testFile)
        verify(bookReader).open(testFile)
        verify(bookReader).renderPage(0)

        assertThat(state.isLoading).isFalse()
        assertThat(state.error).isNull()
        assertThat(state.pageCount).isEqualTo(pageCount)
        assertThat(state.currentPageIndex).isEqualTo(0)
        assertThat(state.currentPageBitmap).isEqualTo(mockBitmap)
    }

    @Test
    fun `openBook failure - unsupported format updates state with error`() = runTest {
        // Arrange
        val exception = UnsupportedFormatException("Unsupported format")
        whenever(readerFactory.create(testFile)).doThrow(exception)

        // Act
        viewModel.openBook(testFile)

        // Assert
        val state = viewModel.uiState.value
        assertThat(state.isLoading).isFalse()
        assertThat(state.error).contains("Unsupported format")
        assertThat(state.pageCount).isEqualTo(0)
    }

    @Test
    fun `openBook failure - IO exception updates state with error`() = runTest {
        // Arrange
        val exception = IOException("File not found")
        whenever(bookReader.open(testFile)).doThrow(exception)

        // Act
        viewModel.openBook(testFile)

        // Assert
        val state = viewModel.uiState.value
        assertThat(state.isLoading).isFalse()
        assertThat(state.error).contains("File not found")
        assertThat(state.pageCount).isEqualTo(0)
    }

    @Test
    fun `goToNextPage - loads next page when not on last page`() = runTest {
        // Arrange
        val mockBitmap: Bitmap = mock()
        whenever(bookReader.open(testFile)).doReturn(10)
        whenever(bookReader.renderPage(any())).doReturn(mockBitmap)
        viewModel.openBook(testFile) // initial state: page 0

        // Act
        viewModel.goToNextPage()

        // Assert
        verify(bookReader).renderPage(1)
        val state = viewModel.uiState.value
        assertThat(state.currentPageIndex).isEqualTo(1)
    }

    @Test
    fun `goToNextPage - does nothing when on last page`() = runTest {
        // Arrange
        val mockBitmap: Bitmap = mock()
        whenever(bookReader.open(testFile)).doReturn(2) // 2 pages (0, 1)
        whenever(bookReader.renderPage(any())).doReturn(mockBitmap)
        viewModel.openBook(testFile) // page 0
        viewModel.goToNextPage()     // page 1

        // Act
        viewModel.goToNextPage() // try to go to page 2

        // Assert
        verify(bookReader, never()).renderPage(2)
        val state = viewModel.uiState.value
        assertThat(state.currentPageIndex).isEqualTo(1)
    }

    @Test
    fun `goToPreviousPage - does nothing when on first page`() = runTest {
        // Arrange
        val mockBitmap: Bitmap = mock()
        whenever(bookReader.open(testFile)).doReturn(2) // 2 pages (0, 1)
        whenever(bookReader.renderPage(any())).doReturn(mockBitmap)
        viewModel.openBook(testFile) // initial state: page 0

        val stateBefore = viewModel.uiState.value
        clearInvocations(bookReader) // reset invocation history

        // Act
        viewModel.goToPreviousPage() // try to go before page 0

        // Assert
        verify(bookReader, never()).renderPage(any())
        val state = viewModel.uiState.value
        assertThat(state).isSameInstanceAs(stateBefore)
    }

    @Test
    fun `loadPage failure - renderPage returns null updates state with error`() = runTest {
        // Arrange
        whenever(bookReader.open(testFile)).doReturn(10)
        whenever(bookReader.renderPage(0)).doReturn(null) // Simulate render failure

        // Act
        viewModel.openBook(testFile)

        // Assert
        val state = viewModel.uiState.value
        assertThat(state.isLoading).isFalse()
        assertThat(state.error).isEqualTo("Failed to load page 1")
        assertThat(state.currentPageBitmap).isNull()
    }

    @Test
    fun `onCleared - closes bookReader`() = runTest {
        // Arrange
        whenever(bookReader.open(testFile)).doReturn(10)
        viewModel.openBook(testFile)

        // Act
        viewModel.onCleared()

        // Assert
        verify(bookReader).close()
    }
}