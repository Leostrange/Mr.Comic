package com.example.feature.library

import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import org.mockito.kotlin.mock
import org.mockito.kotlin.whenever

@OptIn(ExperimentalCoroutinesApi::class)
class LibraryViewModelTest {
    private lateinit var repository: LibraryRepository
    private lateinit var viewModel: LibraryViewModel

    @Before
    fun setup() {
        repository = mock()
        whenever(repository.getComics()).thenReturn(listOf("Berserk", "One Piece"))
        viewModel = LibraryViewModel(repository)
    }

    @Test
    fun `comics are loaded from repository`() = runTest {
        assertEquals(listOf("Berserk", "One Piece"), viewModel.comics.value)
    }
} 