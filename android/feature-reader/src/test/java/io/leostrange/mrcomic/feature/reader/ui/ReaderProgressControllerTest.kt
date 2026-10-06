package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import io.leostrange.mrcomic.feature.reader.domain.progress.ReaderPositionCodec
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionCoordinator
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import io.mockk.slot
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.test.TestScope
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@OptIn(ExperimentalCoroutinesApi::class)
@RunWith(RobolectricTestRunner::class)
class ReaderProgressControllerTest {

    private val repository = mockk<LibraryRepository>(relaxed = true)
    private val goalStore = mockk<DailyReadingGoalStore>(relaxed = true).also {
        every { it.goalState } returns flowOf(DailyReadingGoalState())
    }

    private val comic = Comic(id = "book", format = ComicFormat.EPUB)

    private val pagedTextState = ReaderUiState(
        comic = comic,
        isLoading = false,
        readerRendersHtmlContent = true,
        readerContainerKind = ReaderContainerKind.TEXT_PAGE,
        readingMode = ReadingMode.PAGE_LTR,
        totalPages = 3,
        currentPage = 1,
        currentHtmlSectionIndex = 1,
        sectionPageCount = 4,
        sectionCurrentPage = 2,
        sectionCharacterOffset = 900
    )

    @Test
    fun unsettledPositionIsNeverPersisted() = runTest {
        val (controller, _) = controller(this, pagedTextState)

        controller.saveProgress(1, ReaderNavigationProgressSource.READING)
        advanceUntilIdle()

        coVerify(exactly = 0) { repository.updateReaderPosition(any(), any()) }
        coVerify(exactly = 0) { repository.updateTextProgress(any(), any(), any(), any(), any()) }
    }

    @Test
    fun settledTextPositionStoresCanonicalProgressAndCursor() = runTest {
        val (controller, _) = controller(this, pagedTextState, weights = listOf(1000, 3000, 6000))
        controller.loadSectionWeights(comic, sectionCount = 3)
        advanceUntilIdle()
        val json = slot<String>()

        controller.onTextRuntimeSettledChanged(true)
        advanceUntilIdle()

        // Section 1 is 30% of the text and the reader is half-way through it: 10% + 15%.
        coVerify { repository.updateTextProgress("book", 1, 3, 0.25f, 900) }
        coVerify { repository.updateReaderPosition("book", capture(json)) }
        val position = ReaderPositionCodec.decode(json.captured)!!
        assertEquals(1, position.engineSectionIndex)
        assertEquals(2, position.visualPageIndex)
        assertEquals(900, position.characterOffset)
        assertEquals(null, position.domAnchor)
    }

    @Test
    fun cursorOnlySaveKeepsThePendingProgressAndMovesTheStructuredPosition() = runTest {
        val (controller, state) = controller(this, pagedTextState, weights = listOf(1000, 3000, 6000))
        controller.loadSectionWeights(comic, sectionCount = 3)
        controller.onTextRuntimeSettledChanged(true)
        advanceUntilIdle()
        val positions = mutableListOf<String>()

        state.update { it.copy(sectionCurrentPage = 3, sectionCharacterOffset = 1400) }
        controller.saveProgress(1, ReaderNavigationProgressSource.READING)
        // The next section starts loading before the debounce fires: its progress is unknown.
        state.update { it.copy(currentPage = 2, sectionCurrentPage = 0, sectionCharacterOffset = 0) }
        controller.saveProgress(2, ReaderNavigationProgressSource.READING)
        advanceUntilIdle()

        coVerify { repository.updateTextProgress("book", 1, 3, 0.325f, 1400) }
        coVerify { repository.updateReaderPosition("book", capture(positions)) }
        assertEquals(2, ReaderPositionCodec.decode(positions.last())!!.engineSectionIndex)
    }

    @Test
    fun reopeningMidBookEarnsGoalPagesOnlyForPagesActuallyTurned() = runTest {
        val (controller, state) = controller(this, pagedTextState, weights = listOf(1000, 3000, 6000))
        controller.sectionPageCounts.recordAndSnapshot(1, 4)
        controller.loadSectionWeights(comic, sectionCount = 3)
        controller.onTextRuntimeSettledChanged(true)
        advanceUntilIdle()
        coVerify(exactly = 0) { goalStore.recordProgressDelta(any(), any()) }

        state.update { it.copy(sectionCurrentPage = 3) }
        controller.saveProgress(1, ReaderNavigationProgressSource.READING)
        advanceUntilIdle()

        coVerify(exactly = 1) { goalStore.recordProgressDelta(1, any()) }
    }

    @Test
    fun inPlaceSeekEarnsNoGoalPages() = runTest {
        val (controller, state) = controller(this, pagedTextState.copy(sectionCurrentPage = 0), weights = listOf(1000, 3000, 6000))
        controller.sectionPageCounts.recordAndSnapshot(1, 4)
        controller.loadSectionWeights(comic, sectionCount = 3)
        controller.onTextRuntimeSettledChanged(true)
        advanceUntilIdle()

        controller.markGoalJump()
        // The seek's layout reports its new page like any other page change.
        state.update { it.copy(sectionCurrentPage = 3) }
        controller.saveProgress(1, ReaderNavigationProgressSource.READING)
        advanceUntilIdle()

        coVerify(exactly = 0) { goalStore.recordProgressDelta(any(), any()) }
    }

    @Test
    fun readingIntoTheNextSectionEarnsItsPageOnceTheSectionSettles() = runTest {
        val lastPage = pagedTextState.copy(sectionCurrentPage = 3)
        val (controller, state) = controller(this, lastPage, weights = listOf(1000, 3000, 6000))
        controller.sectionPageCounts.recordAndSnapshot(1, 4)
        controller.loadSectionWeights(comic, sectionCount = 3)
        controller.onTextRuntimeSettledChanged(true)
        advanceUntilIdle()

        // navigateTo saves synchronously; the WebView starts the new section's load afterwards.
        state.update { it.copy(currentPage = 2) }
        controller.saveProgress(2, ReaderNavigationProgressSource.READING)
        controller.onTextRuntimeSettledChanged(false)
        controller.sectionPageCounts.recordAndSnapshot(2, 8)
        state.update { it.copy(currentHtmlSectionIndex = 2, sectionPageCount = 8, sectionCurrentPage = 0) }
        controller.onTextRuntimeSettledChanged(true)
        advanceUntilIdle()

        coVerify(exactly = 1) { goalStore.recordProgressDelta(1, any()) }
    }

    @Test
    fun scrollingEarnsStandardPagesWhenOnlyOnePageSectionsWereMeasured() = runTest {
        val webtoon = pagedTextState.copy(
            readerContainerKind = ReaderContainerKind.TEXT_WEBTOON,
            readingMode = ReadingMode.WEBTOON,
            freeScrollCharacterOffset = 0,
            freeScrollProgression = 0.1
        )
        val (controller, state) = controller(this, webtoon, weights = listOf(1000, 3000, 6000))
        controller.sectionPageCounts.recordAndSnapshot(0, 1) // a title page
        controller.loadSectionWeights(comic, sectionCount = 3)
        controller.onTextRuntimeSettledChanged(true)
        advanceUntilIdle()

        state.update { it.copy(freeScrollCharacterOffset = 1800) }
        controller.saveProgress(1, ReaderNavigationProgressSource.READING)
        advanceUntilIdle()

        coVerify(exactly = 1) { goalStore.recordProgressDelta(1, any()) }
    }

    @Test
    fun verticalDocumentEndCompletesOnlyInTheLastSection() = runTest {
        val webtoon = pagedTextState.copy(
            readerContainerKind = ReaderContainerKind.TEXT_WEBTOON,
            readingMode = ReadingMode.WEBTOON,
            freeScrollCharacterOffset = 2900,
            freeScrollProgression = 1.0
        )
        val (controller, state) = controller(this, webtoon, weights = listOf(1000, 3000, 6000))
        controller.loadSectionWeights(comic, sectionCount = 3)
        controller.onTextRuntimeSettledChanged(true)
        controller.saveProgress(1, ReaderNavigationProgressSource.READING)
        advanceUntilIdle()
        // The bottom of a stitched preview that ends in section 1 is not the end of the book.
        coVerify(exactly = 0) { repository.markCompleted(any(), any()) }

        state.update { it.copy(currentPage = 2, freeScrollCharacterOffset = 5900) }
        controller.saveProgress(2, ReaderNavigationProgressSource.READING)
        advanceUntilIdle()

        coVerify { repository.updateTextProgress("book", 2, 3, 1f, 5900) }
        coVerify(exactly = 1) { repository.markCompleted("book", true) }
    }

    @Test
    fun progressIsUnknownWhileTheWebViewStillShowsThePreviousSection() = runTest {
        val loading = pagedTextState.copy(currentPage = 2, currentHtmlSectionIndex = 1, sectionCurrentPage = 3)
        val (controller, _) = controller(this, loading, weights = listOf(1000, 3000, 6000))
        controller.loadSectionWeights(comic, sectionCount = 3)
        controller.onTextRuntimeSettledChanged(true)
        advanceUntilIdle()

        // Only the cursor is written; no progress (and no completion) from a mismatched document.
        coVerify(exactly = 0) { repository.updateTextProgress(any(), any(), any(), any(), any()) }
        coVerify { repository.updateReaderPosition("book", any()) }
    }

    @Test
    fun shownProgressHoldsWhileTheNextSectionLoads() = runTest {
        val (controller, state) = controller(this, pagedTextState, weights = listOf(1000, 3000, 6000))
        controller.loadSectionWeights(comic, sectionCount = 3)
        controller.onTextRuntimeSettledChanged(true)
        advanceUntilIdle()

        state.update { it.copy(currentPage = 2, sectionCurrentPage = 0) }
        controller.saveProgress(2, ReaderNavigationProgressSource.READING)
        advanceUntilIdle()

        assertEquals(0.25f, state.value.bookProgress)
        coVerify(exactly = 1) { repository.updateTextProgress(any(), any(), any(), any(), any()) }
    }

    @Test
    fun textBookCompletesOnlyOnTheLastPageOfTheLastSection() = runTest {
        val lastSectionStart = pagedTextState.copy(currentPage = 2, currentHtmlSectionIndex = 2, sectionCurrentPage = 0)
        val (controller, state) = controller(this, lastSectionStart, weights = listOf(1000, 3000, 6000))
        controller.loadSectionWeights(comic, sectionCount = 3)
        controller.onTextRuntimeSettledChanged(true)
        advanceUntilIdle()
        coVerify(exactly = 0) { repository.markCompleted(any(), any()) }

        state.update { it.copy(sectionCurrentPage = 3) }
        controller.saveProgress(2, ReaderNavigationProgressSource.READING)
        advanceUntilIdle()

        coVerify { repository.updateTextProgress("book", 2, 3, 1f, any()) }
        coVerify(exactly = 1) { repository.markCompleted("book", true) }
    }

    @Test
    fun landscapeSpreadIsPersistedAsTheBooksBaseMode() = runTest {
        val raster = ReaderUiState(
            comic = Comic(id = "manga", format = ComicFormat.CBZ),
            isLoading = false,
            readingMode = ReadingMode.DUAL_PAGE,
            totalPages = 20,
            currentPage = 6
        )
        val (controller, _) = controller(this, raster, baseMode = ReadingMode.PAGE_RTL)
        val json = slot<String>()

        controller.markPositionSettled()
        controller.saveProgress(6, ReaderNavigationProgressSource.READING)
        advanceUntilIdle()

        coVerify { repository.updateProgress("manga", 6, 20, null) }
        coVerify { repository.updateReaderPosition("manga", capture(json)) }
        assertEquals(ReadingMode.PAGE_RTL, ReaderPositionCodec.decode(json.captured)!!.mode)
    }

    private fun controller(
        scope: TestScope,
        initial: ReaderUiState,
        weights: List<Int>? = null,
        baseMode: ReadingMode = ReadingMode.PAGE_LTR
    ): Pair<ReaderProgressController, MutableStateFlow<ReaderUiState>> {
        val state = MutableStateFlow(initial)
        val controller = ReaderProgressController(
            _uiState = state,
            viewModelScope = scope,
            libraryRepository = repository,
            dailyReadingGoalStore = goalStore,
            readerCheckpointStore = mockk(relaxed = true),
            analyticsTracker = mockk(relaxed = true),
            readerSessionCoordinator = ReaderSessionCoordinator(),
            _readerProgressRecap = MutableSharedFlow(extraBufferCapacity = 1),
            baseReadingMode = { baseMode },
            sectionWeightsLoader = { _, _ -> weights }
        )
        controller.resetForOpen()
        return controller to state
    }
}
