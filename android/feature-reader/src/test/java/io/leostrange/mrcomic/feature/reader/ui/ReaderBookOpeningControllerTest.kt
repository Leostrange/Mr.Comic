package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.engine.api.FormatReader
import io.leostrange.mrcomic.engine.api.RenderDeviceTier
import io.leostrange.mrcomic.engine.rendering.preload.PagePreloader
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderOpenGuard
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionCoordinator
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import io.mockk.verify
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.test.TestScope
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class ReaderBookOpeningControllerTest {

    private val uiState = MutableStateFlow(ReaderUiState())
    private val openGuard = ReaderOpenGuard()
    private val bookmarksLoaded = mutableListOf<Pair<String, Int>>()
    private val clearedHtmlCache = mutableListOf<Unit>()
    private val tocLoads = mutableListOf<Boolean>()
    private val translationNotes = mutableListOf<Int>()

    private fun comic(
        id: String = "c1",
        format: ComicFormat = ComicFormat.CBZ,
        currentPage: Int = 0,
    ) = Comic(id = id, format = format, currentPage = currentPage)

    private fun prepared(
        reader: FormatReader? = mockk(relaxed = true),
        pages: Int = 10,
        renderHtml: Boolean = false,
        deferCount: Boolean = false,
    ) = PreparedReaderOpen(
        resolvedPath = "/tmp/book.cbz",
        detectedFormat = ComicFormat.CBZ,
        contentFormat = ComicFormat.CBZ,
        reader = reader,
        pages = pages,
        readerRendersHtmlContent = renderHtml,
        deferPageCount = deferCount,
    )

    private fun TestScope.createController(
        fetchResult: Comic? = comic(),
        preparedResult: PreparedReaderOpen = prepared(),
        readerBookPreparer: io.leostrange.mrcomic.feature.reader.ui.ReaderBookPreparer =
            mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderBookPreparer>(relaxed = true),
        navigation: io.leostrange.mrcomic.feature.reader.ui.ReaderNavigationController =
            mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderNavigationController>(relaxed = true),
        progress: io.leostrange.mrcomic.feature.reader.ui.ReaderProgressController =
            mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderProgressController>(relaxed = true),
        analytics: ReadingAnalyticsTracker = mockk(relaxed = true),
    ): ReaderBookOpeningController {
        coEvery { readerBookPreparer.prepare(any(), any(), any(), any()) } returns preparedResult
        every { navigation.normalizePageForMode(any(), any(), any()) } answers { firstArg() }
        every { navigation.visiblePagesFor(any(), any()) } returns emptyList()
        currentFormatReader = mockk(relaxed = true)
        return ReaderBookOpeningController(
            scope = this,
            openGuard = openGuard,
            _uiState = uiState,
            readerBookPreparer = readerBookPreparer,
            sessionManager = mockk(relaxed = true),
            readingModeController = mockk(relaxed = true),
            navigationController = navigation,
            progressController = progress,
            pagePreloader = mockk<PagePreloader>(relaxed = true),
            pageLoader = mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderPageLoader>(relaxed = true),
            warmupController = mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderWarmupController>(relaxed = true),
            deferredTasks = mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderDeferredTasks>(relaxed = true),
            eyeRestController = mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderEyeRestController>(relaxed = true),
            textReaderOrchestrator = mockk<io.leostrange.mrcomic.feature.reader.ui.TextReaderOrchestrator>(relaxed = true),
            readerSessionCoordinator = mockk<ReaderSessionCoordinator>(relaxed = true),
            analyticsTracker = analytics,
            bookmarkController = mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderBookmarkController>(relaxed = true),
            context = mockk<Context>(relaxed = true),
            renderTier = RenderDeviceTier.HIGH_END,
            localizedError = { provider -> provider("en") },
            formatReader = { currentFormatReader },
            setFormatReader = { currentFormatReader = it },
            activeBookSession = { null },
            clearHtmlPageCache = { clearedHtmlCache += Unit },
            loadToc = { force -> tocLoads += force },
            prewarmHtmlPagesAround = { _, _ -> },
            schedulePageTranslationNote = { page -> translationNotes += page },
        ).also { controller ->
            coEvery { progress.flushPendingProgressSave() } returns Unit
            controller.seedPendingRequestedPage(null)
            controller.openFromSource(
                fetchComic = { fetchResult },
                sourcePath = { it.path },
                errorProvider = { "lookup failed" }
            )
            advanceUntilIdle()
        }
    }

    private var currentFormatReader: FormatReader? = mockk(relaxed = true)

    @Test
    fun openFromSourceSetsErrorWhenComicMissing() = runTest {
        createController(fetchResult = null)

        assertEquals("lookup failed", uiState.value.error)
        assertFalse(uiState.value.isLoading)
    }

    @Test
    fun openFromSourceAppliesOpeningStateAndStartsSession() = runTest {
        val analytics = mockk<ReadingAnalyticsTracker>(relaxed = true)
        val controller = createController(analytics = analytics)

        assertEquals("c1", uiState.value.comic?.id)
        assertFalse(uiState.value.isLoading)
        assertEquals(10, uiState.value.totalPages)
        verify(exactly = 1) { analytics.track(any<ReadingAnalyticsEvent.ReaderOpened>()) }
    }

    @Test
    fun openComicAbortsWhenRequestBecomesStale() = runTest {
        // Invalidate the token after launch: openFromSource captures token 1,
        // then nextToken() makes it stale before the pipeline resumes.
        val readerBookPreparer = mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderBookPreparer>(relaxed = true)
        val controller = ReaderBookOpeningController(
            scope = this,
            openGuard = openGuard,
            _uiState = uiState,
            readerBookPreparer = readerBookPreparer,
            sessionManager = mockk(relaxed = true),
            readingModeController = mockk(relaxed = true),
            navigationController = mockk(relaxed = true),
            progressController = mockk(relaxed = true),
            pagePreloader = mockk<PagePreloader>(relaxed = true),
            pageLoader = mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderPageLoader>(relaxed = true),
            warmupController = mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderWarmupController>(relaxed = true),
            deferredTasks = mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderDeferredTasks>(relaxed = true),
            eyeRestController = mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderEyeRestController>(relaxed = true),
            textReaderOrchestrator = mockk<io.leostrange.mrcomic.feature.reader.ui.TextReaderOrchestrator>(relaxed = true),
            readerSessionCoordinator = mockk<ReaderSessionCoordinator>(relaxed = true),
            analyticsTracker = mockk(relaxed = true),
            bookmarkController = mockk<io.leostrange.mrcomic.feature.reader.ui.ReaderBookmarkController>(relaxed = true),
            context = mockk<Context>(relaxed = true),
            renderTier = RenderDeviceTier.HIGH_END,
            localizedError = { provider -> provider("en") },
            formatReader = { null },
            setFormatReader = { },
            activeBookSession = { null },
            clearHtmlPageCache = { clearedHtmlCache += Unit },
            loadToc = { force -> tocLoads += force },
            prewarmHtmlPagesAround = { _, _ -> },
            schedulePageTranslationNote = { page -> translationNotes += page },
        )
        controller.seedPendingRequestedPage(null)
        controller.openFromSource(
            fetchComic = { comic() },
            sourcePath = { it.path },
            errorProvider = { "lookup failed" }
        )
        openGuard.nextToken() // make the captured token stale
        advanceUntilIdle()

        coVerify(exactly = 0) { readerBookPreparer.prepare(any(), any(), any(), any()) }
        assertNull(uiState.value.comic)
    }

    @Test
    fun unsupportedFormatSetsErrorWhenReaderIsNull() = runTest {
        createController(preparedResult = prepared(reader = null))

        assertTrue(uiState.value.error?.contains("CBZ") == true)
        assertFalse(uiState.value.isLoading)
    }
}
