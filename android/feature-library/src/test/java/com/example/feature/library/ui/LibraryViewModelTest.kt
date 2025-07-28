package com.example.feature.library.ui

import androidx.arch.core.executor.testing.InstantTaskExecutorRule
import com.example.core.data.repository.ComicRepository
import com.example.core.model.ComicBook
import com.example.core.model.SortOrder
import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.UnconfinedTestDispatcher
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.junit.After
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.Assert.*

/**
 * Unit tests for LibraryViewModel comic counter functionality (Issue #24)
 */
@OptIn(ExperimentalCoroutinesApi::class)
class LibraryViewModelTest {

    @get:Rule
    val instantTaskExecutorRule = InstantTaskExecutorRule()

    private val testDispatcher = UnconfinedTestDispatcher()
    private val mockComicRepository = mockk<ComicRepository>()
    private lateinit var viewModel: LibraryViewModel

    private val sampleComics = listOf(
        ComicBook(
            id = "1",
            title = "Comic 1",
            filePath = "/path/comic1.cbz",
            coverPath = "/path/cover1.jpg",
            pageCount = 20,
            currentPage = 1
        ),
        ComicBook(
            id = "2", 
            title = "Comic 2",
            filePath = "/path/comic2.cbr",
            coverPath = "/path/cover2.jpg",
            pageCount = 30,
            currentPage = 1
        ),
        ComicBook(
            id = "3",
            title = "Comic 3", 
            filePath = "/path/comic3.pdf",
            coverPath = "/path/cover3.jpg",
            pageCount = 40,
            currentPage = 1
        )
    )

    @Before
    fun setup() {
        Dispatchers.setMain(testDispatcher)
        
        // Setup mock repository
        coEvery { 
            mockComicRepository.getComics(any(), any()) 
        } returns flowOf(sampleComics)
        
        coEvery { 
            mockComicRepository.refreshComicsIfEmpty() 
        } returns Unit
        
        viewModel = LibraryViewModel(mockComicRepository)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `when comics loaded, totalComicsCount should be correct`() = runTest {
        // Given: Comics are loaded from repository
        // When: ViewModel initializes
        // Then: Total count should match comics list size
        assertEquals(3, viewModel.uiState.value.totalComicsCount)
        assertEquals(3, viewModel.uiState.value.visibleComicsCount)
        assertEquals(sampleComics, viewModel.uiState.value.comics)
    }

    @Test
    fun `when no comics loaded, counts should be zero`() = runTest {
        // Given: Empty comics list
        coEvery { 
            mockComicRepository.getComics(any(), any()) 
        } returns flowOf(emptyList())
        
        val emptyViewModel = LibraryViewModel(mockComicRepository)
        
        // Then: Counts should be zero
        assertEquals(0, emptyViewModel.uiState.value.totalComicsCount)
        assertEquals(0, emptyViewModel.uiState.value.visibleComicsCount)
    }

    @Test
    fun `when comics marked for deletion, visibleComicsCount should decrease`() = runTest {
        // Given: Comics are loaded
        assertEquals(3, viewModel.uiState.value.visibleComicsCount)
        
        // When: Enter selection mode and select comics
        viewModel.onEnterSelectionMode("1")
        viewModel.onComicSelected("2")
        
        // And: Request deletion
        viewModel.onDeleteRequest()
        
        // Then: Visible count should decrease but total should remain
        assertEquals(3, viewModel.uiState.value.totalComicsCount)
        assertEquals(1, viewModel.uiState.value.visibleComicsCount) // Only comic 3 remains visible
        assertEquals(setOf("1", "2"), viewModel.uiState.value.pendingDeletionIds)
    }

    @Test
    fun `when deletion undone, visibleComicsCount should restore`() = runTest {
        // Given: Comics are marked for deletion
        viewModel.onEnterSelectionMode("1")
        viewModel.onDeleteRequest()
        assertEquals(2, viewModel.uiState.value.visibleComicsCount)
        
        // When: Undo deletion
        viewModel.onUndoDelete()
        
        // Then: Visible count should restore to total
        assertEquals(3, viewModel.uiState.value.totalComicsCount)
        assertEquals(3, viewModel.uiState.value.visibleComicsCount)
        assertEquals(emptySet<String>(), viewModel.uiState.value.pendingDeletionIds)
    }

    @Test
    fun `when search query changes, counts should reflect filtered results`() = runTest {
        // Given: Comics are loaded
        val filteredComics = listOf(sampleComics[0]) // Only "Comic 1"
        coEvery { 
            mockComicRepository.getComics(any(), "Comic 1") 
        } returns flowOf(filteredComics)
        
        // When: Search query is set
        viewModel.onSearchQueryChange("Comic 1")
        
        // Then: Counts should reflect filtered results
        // Note: In real implementation, filtering might happen at repository level
        // This test verifies the ViewModel handles the filtered data correctly
        assertEquals(1, viewModel.uiState.value.totalComicsCount)
        assertEquals(1, viewModel.uiState.value.visibleComicsCount)
    }

    @Test
    fun `when sort order changes, counts should remain consistent`() = runTest {
        // Given: Comics are loaded
        val sortedComics = sampleComics.reversed()
        coEvery { 
            mockComicRepository.getComics(SortOrder.TITLE_ASC, "") 
        } returns flowOf(sortedComics)
        
        // When: Sort order is changed
        viewModel.onSortOrderChange(SortOrder.TITLE_ASC)
        
        // Then: Counts should remain the same regardless of sort order
        assertEquals(3, viewModel.uiState.value.totalComicsCount)
        assertEquals(3, viewModel.uiState.value.visibleComicsCount)
        assertEquals(SortOrder.TITLE_ASC, viewModel.uiState.value.sortOrder)
    }

    @Test
    fun `when multiple operations performed, counts should be accurate`() = runTest {
        // Given: Comics are loaded
        assertEquals(3, viewModel.uiState.value.totalComicsCount)
        
        // When: Select and delete one comic
        viewModel.onEnterSelectionMode("1")
        viewModel.onDeleteRequest()
        assertEquals(2, viewModel.uiState.value.visibleComicsCount)
        
        // And: Select and delete another comic
        viewModel.onEnterSelectionMode("2") 
        viewModel.onDeleteRequest()
        assertEquals(1, viewModel.uiState.value.visibleComicsCount)
        
        // And: Undo all deletions
        viewModel.onUndoDelete()
        
        // Then: All comics should be visible again
        assertEquals(3, viewModel.uiState.value.totalComicsCount)
        assertEquals(3, viewModel.uiState.value.visibleComicsCount)
    }

    @Test
    fun `when selection mode toggled, counts should not change`() = runTest {
        // Given: Comics are loaded
        val initialVisible = viewModel.uiState.value.visibleComicsCount
        val initialTotal = viewModel.uiState.value.totalComicsCount
        
        // When: Enter and exit selection mode without deleting
        viewModel.onEnterSelectionMode("1")
        viewModel.onComicSelected("2")
        viewModel.onClearSelection()
        
        // Then: Counts should remain unchanged
        assertEquals(initialTotal, viewModel.uiState.value.totalComicsCount)
        assertEquals(initialVisible, viewModel.uiState.value.visibleComicsCount)
        assertFalse(viewModel.uiState.value.inSelectionMode)
    }
}