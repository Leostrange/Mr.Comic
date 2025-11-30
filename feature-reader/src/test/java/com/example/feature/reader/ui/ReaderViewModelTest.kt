package com.example.feature.reader.ui

import android.content.Context
import androidx.arch.core.executor.testing.InstantTaskExecutorRule
import com.example.core.domain.usecase.GetReadingProgressUseCase
import com.example.core.domain.usecase.SaveReadingProgressUseCase
import com.example.core.reader.domain.BookReaderFactory
import com.example.core.analytics.AnalyticsHelper
import com.example.core.data.repository.SettingsRepository
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.UnconfinedTestDispatcher
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.setMain
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.mockito.kotlin.mock

@OptIn(ExperimentalCoroutinesApi::class)
class ReaderViewModelTest {

    @get:Rule
    val instantTaskExecutorRule = InstantTaskExecutorRule()

    private val testDispatcher = UnconfinedTestDispatcher()

    private lateinit var viewModel: ReaderViewModel

    private val readerFactory: BookReaderFactory = mock()
    private val settingsRepository: SettingsRepository = mock()
    private val saveReadingProgressUseCase: SaveReadingProgressUseCase = mock()
    private val getReadingProgressUseCase: GetReadingProgressUseCase = mock()
    private val context: Context = mock()
    private val analyticsHelper: AnalyticsHelper = mock()

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        viewModel = ReaderViewModel(
            readerFactory = readerFactory,
            settingsRepository = settingsRepository,
            saveReadingProgressUseCase = saveReadingProgressUseCase,
            getReadingProgressUseCase = getReadingProgressUseCase,
            context = context,
            analyticsHelper = analyticsHelper,
            savedStateHandle = androidx.lifecycle.SavedStateHandle()
        )
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `toggleScaleMode cycles width - height - fit - width`() {
        val initial = viewModel.uiState.value.scaleMode
        assertEquals("width", initial)
        viewModel.toggleScaleMode()
        assertEquals("height", viewModel.uiState.value.scaleMode)
        viewModel.toggleScaleMode()
        assertEquals("fit", viewModel.uiState.value.scaleMode)
        viewModel.toggleScaleMode()
        assertEquals("width", viewModel.uiState.value.scaleMode)
    }
}
