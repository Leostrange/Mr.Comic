package com.example.feature.reader

import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import org.mockito.kotlin.mock
import org.mockito.kotlin.whenever

@OptIn(ExperimentalCoroutinesApi::class)
class ReaderViewModelTest {
    private lateinit var repository: ReaderRepository
    private lateinit var viewModel: ReaderViewModel

    @Before
    fun setup() {
        repository = mock()
        whenever(repository.getCurrentComic()).thenReturn("Berserk")
        viewModel = ReaderViewModel(repository)
    }

    @Test
    fun `state is loaded from repository`() = runTest {
        assertEquals(Pair("Berserk", 1), viewModel.state.value)
    }
} 