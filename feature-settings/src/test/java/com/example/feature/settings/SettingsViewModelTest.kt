package com.example.feature.settings

import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import org.mockito.kotlin.mock
import org.mockito.kotlin.whenever

@OptIn(ExperimentalCoroutinesApi::class)
class SettingsViewModelTest {
    private lateinit var repository: SettingsRepository
    private lateinit var viewModel: SettingsViewModel

    @Before
    fun setup() {
        repository = mock()
        whenever(repository.getTheme()).thenReturn("Dark Theme")
        viewModel = SettingsViewModel(repository)
    }

    @Test
    fun `theme is loaded from repository`() = runTest {
        assertEquals("Dark Theme", viewModel.theme.value)
    }
} 