package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.util.Log
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.engine.api.BookSession
import io.leostrange.mrcomic.engine.api.FormatReader
import io.leostrange.mrcomic.engine.api.RenderDeviceTier
import io.leostrange.mrcomic.engine.rendering.preload.PagePreloader
import io.leostrange.mrcomic.feature.reader.domain.enums.FootnotePresentation
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderOpenGuard
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionCoordinator
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionSnapshot
import io.leostrange.mrcomic.feature.reader.ui.ReaderSessionCoordinator as SessionLifecycleCoordinator
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * 4.2 (slice 1): the book-opening pipeline extracted from ReaderViewModel.
 *
 * Owns [openFromSource] (load comic -> open -> prepare -> configure ->
 * apply state -> start session -> load initial pages) together with the
 * transient [loadComicJob] and the one-shot [pendingRequestedPage] from
 * SavedStateHandle. All state reads/writes go through explicit dependencies
 * (controllers, lambdas); the ViewModel keeps lifecycle and wiring.
 */
internal class ReaderBookOpeningController(
    private val scope: CoroutineScope,
    private val openGuard: ReaderOpenGuard,
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val readerBookPreparer: ReaderBookPreparer,
    private val sessionManager: ReaderBookSessionManager,
    private val readingModeController: ReaderReadingModeController,
    private val navigationController: ReaderNavigationController,
    private val progressController: ReaderProgressController,
    private val pagePreloader: PagePreloader,
    private val pageLoader: ReaderPageLoader,
    private val warmupController: ReaderWarmupController,
    private val deferredTasks: ReaderDeferredTasks,
    private val eyeRestController: ReaderEyeRestController,
    private val textReaderOrchestrator: TextReaderOrchestrator,
    private val readerSessionCoordinator: ReaderSessionCoordinator,
    private val sessionLifecycleCoordinator: SessionLifecycleCoordinator,
    private val analyticsTracker: ReadingAnalyticsTracker,
    private val bookmarkController: ReaderBookmarkController,
    private val context: Context,
    private val renderTier: RenderDeviceTier,
    private val localizedError: suspend ((String) -> String) -> String,
    private val formatReader: () -> FormatReader?,
    private val setFormatReader: (FormatReader?) -> Unit,
    private val activeBookSession: () -> BookSession?,
    private val clearHtmlPageCache: () -> Unit,
    private val loadToc: (force: Boolean) -> Unit,
    private val prewarmHtmlPagesAround: (centerPage: Int, delayMillis: Long) -> Unit,
    private val schedulePageTranslationNote: (page: Int) -> Unit,
) {
    private var loadComicJob: Job? = null
    private var pendingRequestedPage: Int?

    init {
        pendingRequestedPage = null
    }

    fun seedPendingRequestedPage(page: Int?) {
        pendingRequestedPage = page?.takeIf { it >= 0 }
    }

    fun cancelPendingOpen() {
        loadComicJob?.cancel()
    }

    fun openFromSource(
        fetchComic: suspend () -> Comic?,
        sourcePath: (Comic) -> String,
        errorProvider: (String) -> String
    ) {
        loadComicJob?.cancel()
        val requestToken = openGuard.nextToken()
        loadComicJob = scope.launch {
            val comic = fetchComic() ?: run {
                if (openGuard.isCurrent(requestToken)) {
                    val errorMessage = localizedError(errorProvider)
                    _uiState.update { it.copy(error = errorMessage, isLoading = false) }
                }
                return@launch
            }
            openComic(comic, sourcePath(comic), requestToken)
        }
    }

    private suspend fun openComic(comic: Comic, sourcePath: String, requestToken: Long) {
        // ARC-11 slice "wire-coordinator-to-vm": pickup the lifecycle ledger
        // here. beginOpen returns false when the previous open is still in flight
        // or a close is pending � in either case we leave the existing state
        // untouched and bail out.
        if (!sessionLifecycleCoordinator.beginOpen()) return
        try {
            resetForBookOpen(requestToken)
            if (!openGuard.isCurrent(requestToken)) {
                sessionLifecycleCoordinator.reset(); return
            }

            val prepared = prepareBook(comic, sourcePath, requestToken) ?: run {
                sessionLifecycleCoordinator.reset(); return
            }
            val activeReader = prepared.reader ?: run {
                sessionLifecycleCoordinator.reset(); return
            }
            if (!openGuard.isCurrent(requestToken)) {
                activeReader.close(); setFormatReader(null)
                sessionLifecycleCoordinator.reset(); return
            }

            val config = configureOpening(comic, prepared, requestToken) ?: run {
                sessionLifecycleCoordinator.reset(); return
            }
            applyOpeningState(comic, prepared, config)
            startReaderSession(comic, config)
            if (!openGuard.isCurrent(requestToken)) {
                sessionLifecycleCoordinator.reset(); return
            }
            if (config.readerRendersHtmlContent) formatReader()?.let { reader ->
                textReaderOrchestrator.syncBookEngineTextLayer(
                    scope = scope,
                    reader = reader,
                    bookSession = activeBookSession(),
                    isStillActive = { formatReader() === reader },
                    onTocUpdated = { entries ->
                        _uiState.update { it.copy(tableOfContents = entries) }
                        progressController.rememberChapterMilestoneAnchor(_uiState.value.currentPage) { p -> navigationController.currentChapterFor(p) }
                    }
                )
            }
            loadInitialPages(comic, prepared, activeReader, config)
            scheduleDeferredPageCountIfNeeded(comic, activeReader, prepared, config, requestToken)
            schedulePostOpenTasks(comic, config.startPage, config.initialPages)
            sessionLifecycleCoordinator.markReadyAfterBeginOpen()
        } catch (e: CancellationException) {
            sessionLifecycleCoordinator.reset()
            throw e
        } catch (e: Exception) {
            sessionLifecycleCoordinator.reset()
            if (!openGuard.isCurrent(requestToken)) return
            Log.e("ReaderViewModel", "Failed to open comic", e)
            eyeRestController.cancel()
            warmupController.cancel()
            deferredTasks.cancelAll()
            val errorMessage = localizedError(::readerOpenFailedMessage)
            _uiState.update { it.copy(error = errorMessage, isLoading = false) }
        }
    }

    /** Phase 1: Cancel all pending work and reset transient state. */
    private suspend fun resetForBookOpen(requestToken: Long) {
        progressController.flushPendingProgressSave()
        progressController.progressSaveJob?.cancel()
        deferredTasks.cancelAll()
        if (!openGuard.isCurrent(requestToken)) return
        _uiState.update {
            it.copy(
                isLoading = true,
                error = null,
                currentHtmlContent = null,
                readerRendersHtmlContent = false,
                readerContainerKind = ReaderContainerKind.RASTER_PAGE,
                previousHtmlContent = null,
                previousHtmlAssetBasePath = null,
                nextHtmlContent = null,
                nextHtmlAssetBasePath = null,
                tableOfContents = emptyList(),
                bookmarkedPages = emptySet(),
                pageTranslationNote = null,
                showTocSheet = false,
                showTextSettings = false,
                footnotePopup = null,
                footnotePresentation = FootnotePresentation.PEEK,
                selectedTextActionSheet = null,
                selectedTextTranslation = null,
                sectionCharacterOffset = 0
            )
        }
        eyeRestController.cancel()
        warmupController.cancel()
        textReaderOrchestrator.cancelAllJobsAndJoin()
        if (!openGuard.isCurrent(requestToken)) return
        pagePreloader.clearPages()
        clearHtmlPageCache()
        sessionManager.closeReaderResources()
    }

    /** Phase 2: Prepare the book via [ReaderBookPreparer]. Returns null on error. */
    private suspend fun prepareBook(
        comic: Comic,
        sourcePath: String,
        requestToken: Long
    ): PreparedReaderOpen? {
        if (!openGuard.isCurrent(requestToken)) return null
        val prepared = readerBookPreparer.prepare(
            context = context,
            comic = comic,
            sourcePath = sourcePath,
            textFormatReaderOpener = sessionManager::openTextFormatReader,
        )
        if (!openGuard.isCurrent(requestToken)) {
            prepared.reader?.close(); return null
        }
        setFormatReader(prepared.reader)
        progressController.sectionPageCounts.reset()
        progressController.totalBookSections = prepared.pages.coerceAtLeast(1)
        if (formatReader() == null) {
            val errorMessage = localizedError { language ->
                readerUnsupportedFormatMessage(prepared.detectedFormat.name, language)
            }
            _uiState.update { it.copy(error = errorMessage, isLoading = false) }
            return null
        }
        return prepared
    }

    private data class OpeningConfig(
        val readerRendersHtmlContent: Boolean,
        val openingMode: ReadingMode,
        val shouldDeferCount: Boolean,
        val initialPages: Int,
        val startPage: Int,
        val requestedStartPage: Int,
        val requestedPage: Int?
    )

    /** Phase 3: Compute opening configuration (mode, start page, deferred count). */
    private fun configureOpening(
        comic: Comic,
        prepared: PreparedReaderOpen,
        requestToken: Long
    ): OpeningConfig? {
        if (!openGuard.isCurrent(requestToken)) return null
        val readerRendersHtmlContent = prepared.readerRendersHtmlContent
        val openingMode = readingModeController.effectiveOpeningModeFor(prepared.detectedFormat, readerRendersHtmlContent)
        val requestedPage = pendingRequestedPage
        val shouldDeferCount = prepared.deferPageCount
        val initialPages = if (shouldDeferCount) 1 else prepared.pages.coerceAtLeast(1)
        val requestedStartPage = requestedPage ?: comic.currentPage
        val startPage = navigationController.normalizePageForMode(requestedStartPage, openingMode, initialPages)
        pendingRequestedPage = null
        progressController.lastPersistedProgress = PersistedProgressMarker(
            comicId = comic.id,
            page = if (requestedPage != null && requestedPage != comic.currentPage) {
                navigationController.normalizePageForMode(comic.currentPage, openingMode, initialPages)
            } else startPage
        )
        return OpeningConfig(
            readerRendersHtmlContent = readerRendersHtmlContent,
            openingMode = openingMode,
            shouldDeferCount = shouldDeferCount,
            initialPages = initialPages,
            startPage = startPage,
            requestedStartPage = requestedStartPage,
            requestedPage = requestedPage
        )
    }

    /** Phase 4: Apply the opening state to [_uiState]. */
    private fun applyOpeningState(
        comic: Comic,
        prepared: PreparedReaderOpen,
        config: OpeningConfig
    ) {
        // When the page count is deferred and the reader is resuming mid-book, keep the
        // loading shell visible until the real count resolves. Otherwise the provisional
        // one-page model briefly renders the cover and then jumps to the saved page.
        val holdLoadingForDeferredRestore = shouldHoldLoadingForDeferredRestore(
            shouldDeferCount = config.shouldDeferCount,
            requestedStartPage = config.requestedStartPage
        )
        _uiState.update {
            it.copy(
                comic = comic,
                totalPages = config.initialPages,
                readerRendersHtmlContent = config.readerRendersHtmlContent,
                readerContainerKind = resolveReaderContainerKind(
                    format = prepared.detectedFormat,
                    readingMode = config.openingMode,
                    readerRendersHtmlContent = config.readerRendersHtmlContent
                ),
                readingMode = config.openingMode,
                currentPage = config.startPage,
                isLoading = holdLoadingForDeferredRestore,
                htmlBaseUrl = formatReader()?.htmlBaseUrl(),
                htmlAssetBasePath = null,
                textWebtoonHtmlContent = null,
                textWebtoonHtmlAssetBasePath = null,
                textWebtoonHtmlPageCount = 0,
                previousHtmlContent = null,
                previousHtmlAssetBasePath = null,
                nextHtmlContent = null,
                nextHtmlAssetBasePath = null,
                selectedTextActionSheet = null,
                selectedTextTranslation = null,
                sectionCharacterOffset = 0
            )
        }
    }

    /** Phase 5: Start the reader session and track analytics. */
    private fun startReaderSession(comic: Comic, config: OpeningConfig) {
        val sessionStartedAtMillis = System.currentTimeMillis()
        val resumedFromProgress = config.requestedPage != null || comic.currentPage > 0
        readerSessionCoordinator.start(
            ReaderSessionSnapshot(
                comicId = comic.id,
                format = comic.format.name,
                totalPages = config.initialPages,
                startPage = config.startPage,
                readingMode = config.openingMode.name,
                startedAtMillis = sessionStartedAtMillis,
                resumedFromProgress = resumedFromProgress
            )
        )
        analyticsTracker.track(
            ReadingAnalyticsEvent.ReaderOpened(
                comicId = comic.id,
                format = comic.format.name,
                totalPages = config.initialPages,
                startPage = config.startPage,
                readingMode = config.openingMode.name,
                startedAtMillis = sessionStartedAtMillis,
                resumedFromProgress = resumedFromProgress
            )
        )
    }

    /** Phase 6a: Load visible pages and warmup. */
    private fun loadInitialPages(
        comic: Comic,
        prepared: PreparedReaderOpen,
        activeReader: FormatReader,
        config: OpeningConfig
    ) {
        val visiblePages = navigationController.visiblePagesFor(config.startPage, config.openingMode)
        if (!config.shouldDeferCount) {
            formatReader()?.takeUnless { config.readerRendersHtmlContent }?.let { reader ->
                pagePreloader.preloadAround(reader, visiblePages, prepared.pages, _uiState.value.preloadPages)
            }
        }
        visiblePages.forEach { pageLoader.loadPage(it) }
        if (config.readerRendersHtmlContent) {
            prewarmHtmlPagesAround(config.startPage, 180L)
            if (_uiState.value.readerContainerKind == ReaderContainerKind.TEXT_PAGE) {
                textReaderOrchestrator.controller.clearTextPagePagination()
            }
        }
    }

    /** Phase 6b: Schedule deferred page count resolution if needed. */
    private fun scheduleDeferredPageCountIfNeeded(
        comic: Comic,
        activeReader: FormatReader,
        prepared: PreparedReaderOpen,
        config: OpeningConfig,
        requestToken: Long
    ) {
        if (config.shouldDeferCount) {
            deferredTasks.scheduleDeferredPageCountResolution(
                comic = comic,
                reader = activeReader,
                requestToken = requestToken,
                openingMode = config.openingMode,
                requestedStartPage = config.requestedStartPage,
                initialPages = config.initialPages,
                openGuard = openGuard,
                isReaderCurrent = { formatReader() === activeReader },
                currentTotalPages = { _uiState.value.totalPages },
                onResolved = { realPages, normalizedStartPage, resolvedComic ->
                    applyDeferredPageCount(realPages, normalizedStartPage, resolvedComic, activeReader, config.openingMode)
                },
                onSkipped = {
                    // Deferred count failed or was not applicable. Release the loading shell
                    // so the provisional single-page model is at least interactive.
                    _uiState.update { it.copy(isLoading = false) }
                }
            )
        }
    }

    private suspend fun applyDeferredPageCount(
        realPages: Int,
        normalizedStartPage: Int,
        comic: Comic,
        reader: FormatReader,
        openingMode: ReadingMode
    ) {
        progressController.totalBookSections = realPages.coerceAtLeast(1)
        _uiState.update { it.copy(totalPages = realPages, currentPage = normalizedStartPage, isLoading = false) }
        readerSessionCoordinator.updateTotalPages(realPages)
        val visiblePages = navigationController.visiblePagesFor(normalizedStartPage, openingMode)
        reader.takeUnless { _uiState.value.readerRendersHtmlContent }?.let { r ->
            pagePreloader.preloadAround(r, visiblePages, realPages, _uiState.value.preloadPages)
        }
        visiblePages.forEach { pageLoader.loadPage(it) }
        if (_uiState.value.readerRendersHtmlContent) {
            prewarmHtmlPagesAround(normalizedStartPage, 0L)
            if (_uiState.value.readerContainerKind == ReaderContainerKind.TEXT_PAGE) {
                textReaderOrchestrator.controller.clearTextPagePagination()
            }
        }
        bookmarkController.loadBookmarks(comic.id, realPages)
    }

    private fun schedulePostOpenTasks(comic: Comic, startPage: Int, initialPages: Int) {
        warmupAroundPage(startPage)
        deferredTasks.scheduleDeferredTocWarmup(
            getFormatReader = { formatReader() },
            isTocEmpty = { _uiState.value.tableOfContents.isEmpty() },
            loadToc = { loadToc(false) }
        )
        bookmarkController.loadBookmarks(comic.id, initialPages)
        schedulePageTranslationNote(startPage)
        eyeRestController.restartEyeRestTimer()
    }

    fun warmupAroundPage(page: Int) {
        warmupController.scheduleWarmup(
            page = page,
            renderTier = renderTier,
            getFormatReader = { formatReader() },
            supportsBitmapPreload = { !_uiState.value.readerRendersHtmlContent },
            getComicId = { _uiState.value.comic?.id },
            getReadingMode = { _uiState.value.readingMode },
            getCurrentPage = { _uiState.value.currentPage },
            visiblePagesFor = { p, mode -> navigationController.visiblePagesFor(p, mode) }
        )
    }
}
