package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.net.Uri
import android.util.Log
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.feature.reader.domain.enums.FootnotePresentation
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderProgressRecap
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionCoordinator
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionSnapshot
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.model.repository.ImportRepository
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.LanguageDetector
import io.leostrange.mrcomic.core.domain.translation.LlmExplainEngine
import io.leostrange.mrcomic.core.domain.translation.LookupRouter
import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.ui.locale.normalizeAppLanguageCode
import io.leostrange.mrcomic.core.domain.analytics.ReaderCheckpointStore
import io.leostrange.mrcomic.engine.formats.base.FormatFactory
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.api.BookSession
import io.leostrange.mrcomic.engine.registry.BookEngineRegistry
import io.leostrange.mrcomic.engine.formats.base.resolveRenderDeviceProfile
import io.leostrange.mrcomic.engine.rendering.preload.PagePreloader
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import javax.inject.Inject


internal data class ChapterMilestoneMarker(
    val comicId: String,
    val chapterPage: Int
)


@HiltViewModel
class ReaderViewModel @Inject constructor(
    savedStateHandle: SavedStateHandle,
    private val libraryRepository: LibraryRepository,
    private val importRepository: ImportRepository,
    private val quoteRepository: QuoteRepository,
    private val textHighlightRepository: io.leostrange.mrcomic.core.data.repository.TextHighlightRepository,
    private val formatFactory: FormatFactory,
    private val bookEngineRegistry: BookEngineRegistry,
    private val pagePreloader: PagePreloader,
    private val languageDetector: LanguageDetector,
    private val dictionaryEngine: DictionaryEngine,
    private val lookupRouter: LookupRouter,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val llmExplainEngine: LlmExplainEngine,
    private val translatorEngine: io.leostrange.mrcomic.core.domain.translation.TranslatorEngine,
    private val translationComparisonEngine: io.leostrange.mrcomic.core.domain.translation.TranslationComparisonEngine,
    private val analyticsTracker: ReadingAnalyticsTracker,
    private val readerCheckpointStore: ReaderCheckpointStore,
    private val dailyReadingGoalStore: DailyReadingGoalStore,
    private val readerBookPreparer: ReaderBookPreparer,
    private val appScope: io.leostrange.mrcomic.core.domain.coroutines.AppCoroutineScope,
    @ApplicationContext private val context: Context
) : ViewModel() {

    private val _uiState = MutableStateFlow(ReaderUiState())
    val uiState: StateFlow<ReaderUiState> = _uiState.asStateFlow()

    private val _ocrPagePath = MutableSharedFlow<OcrLaunchRequest>(extraBufferCapacity = 1)
    val ocrPagePath: SharedFlow<OcrLaunchRequest> = _ocrPagePath.asSharedFlow()
    private val _eyeRestReminder = MutableSharedFlow<Int>(extraBufferCapacity = 1)
    val eyeRestReminder: SharedFlow<Int> = _eyeRestReminder.asSharedFlow()
    private val _quoteSaveMessages = MutableSharedFlow<String>(extraBufferCapacity = 1)
    val quoteSaveMessages: SharedFlow<String> = _quoteSaveMessages.asSharedFlow()
    private val _readerProgressRecap = MutableSharedFlow<ReaderProgressRecap>(extraBufferCapacity = 1)
    val readerProgressRecap: SharedFlow<ReaderProgressRecap> = _readerProgressRecap.asSharedFlow()

    private val readerPreferences = UserPreferences(context.dataStore)
    val settingsController = ReaderSettingsController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        readerPreferences = readerPreferences,
        dataStore = context.dataStore
    )
    internal val chromeController = ReaderChromeController(_uiState = _uiState)
    internal val translationController = ReaderTranslationController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        languageDetector = languageDetector,
        dictionaryEngine = dictionaryEngine,
        lookupRouter = lookupRouter,
        offlineTranslationEngine = offlineTranslationEngine,
        onlineTranslationEngine = onlineTranslationEngine,
        translatorEngine = translatorEngine,
        translationComparisonEngine = translationComparisonEngine,
        llmExplainEngine = llmExplainEngine,
        readerPreferences = readerPreferences,
        context = context
    )
    internal val footnoteController = ReaderFootnoteController(
        _uiState = _uiState,
        formatReader = { formatReader },
        navigateTo = { page, source -> navigationController.navigateTo(page, progressSource = source) },
        enginePageForUiPage = { page -> navigationController.enginePageForUiPage(page) },
        shouldBlockInlineHtmlChapterNavigation = { containerKind, readingMode, hrefFilePart, currentAssetBasePath ->
            shouldBlockInlineHtmlChapterNavigation(
                containerKind ?: return@ReaderFootnoteController true,
                readingMode ?: return@ReaderFootnoteController true,
                hrefFilePart,
                currentAssetBasePath
            )
        }
    )
    internal val bookmarkController = ReaderBookmarkController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        readerPreferences = readerPreferences,
        analyticsTracker = analyticsTracker
    )
    internal val highlightController = ReaderHighlightController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        textHighlightRepository = textHighlightRepository
    )
    internal val eyeRestController = ReaderEyeRestController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        readerPreferences = readerPreferences,
        _eyeRestReminder = _eyeRestReminder
    )
    internal val saveQuoteController = ReaderSaveQuoteController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        quoteRepository = quoteRepository,
        analyticsTracker = analyticsTracker,
        _quoteSaveMessages = _quoteSaveMessages,
        localizedReaderText = { localizedReaderText() }
    )
    private val renderProfile = context.resolveRenderDeviceProfile()
    internal val ocrController = ReaderOcrController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        pagePreloader = pagePreloader,
        renderProfile = renderProfile,
        context = context,
        _ocrPagePath = _ocrPagePath,
        getPage = { index, quality -> pageLoader.getPage(index, quality) },
        formatReader = { formatReader }
    )
    internal var formatReader: FormatReader?
        get() = sessionManager.formatReader
        set(value) { sessionManager.setFormatReader(value) }
    private val activeBookSession: BookSession?
        get() = sessionManager.activeBookSession

    private val textWebtoonSessionController = TextWebtoonSessionController(
        scope = viewModelScope,
        builder = TextWebtoonDocumentBuilder
    )
    private val textReaderOrchestrator = TextReaderOrchestrator(
        TextReaderController(textWebtoonSessionController)
    )
    private val sessionManager = ReaderBookSessionManager(
        bookEngineRegistry = bookEngineRegistry,
        formatFactory = formatFactory,
        textReaderOrchestrator = textReaderOrchestrator
    )

    private val _webtoonHtmlCache = MutableStateFlow<Map<Int, String>>(emptyMap())
    internal val pageLoader = ReaderPageLoader(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        pagePreloader = pagePreloader,
        textReaderOrchestrator = textReaderOrchestrator,
        _webtoonHtmlCache = _webtoonHtmlCache,
        formatReader = { formatReader },
        getOrLoadHtmlPage = { reader, index -> getOrLoadHtmlPage(reader, index) },
        refreshAdjacentHtmlPages = { refreshAdjacentHtmlPages(it) },
        loadHighlightsForCurrentPage = { highlightController.loadHighlightsForCurrentPage() },
        activeBookSession = { activeBookSession }
    )

    fun getWebtoonHtmlPageFlow(index: Int): kotlinx.coroutines.flow.Flow<String?> =
        _webtoonHtmlCache.map { it[index] }.distinctUntilChanged()
    private var loadComicJob: Job? = null
    private var tocLoadJob: Job? = null
    private val warmupController = ReaderWarmupController(
        scope = viewModelScope,
        pagePreloader = pagePreloader
    )
    private val deferredTasks = ReaderDeferredTasks(
        scope = viewModelScope,
        readerPreferences = readerPreferences
    )
    private val readerSessionCoordinator = ReaderSessionCoordinator()
    internal val navigationController = ReaderNavigationController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        readerSessionCoordinator = readerSessionCoordinator,
        pagePreloader = pagePreloader,
        textReaderOrchestrator = textReaderOrchestrator,
        formatReader = { formatReader },
        loadPage = { pageLoader.loadPage(it) },
        prewarmHtmlPagesAround = { prewarmHtmlPagesAround(it) },
        loadPageTranslationNote = { schedulePageTranslationNote(it) },
        saveProgress = { page, source -> progressController.saveProgress(page, source) },
        maybeEmitChapterMilestone = { page, source -> maybeEmitChapterMilestone(page, source) },
        isProgressAlreadyPersisted = { comicId, page -> progressController.isProgressAlreadyPersisted(comicId, page) },
        scheduleHighQualityWarmup = { scheduleHighQualityWarmup(it) },
        applyHighQualityRetention = { warmupController.applyRetention(it) },
        activeComicSupportsBitmapPreload = { !_uiState.value.readerRendersHtmlContent },
        playPageSound = {
            if (_uiState.value.pageSoundEnabled) {
                PageSoundPlayer.play(
                    context = context,
                    style = PageSoundStyle.fromStored(_uiState.value.pageSoundStyle)
                )
            }
        }
    )
    private val progressController = ReaderProgressController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        libraryRepository = libraryRepository,
        dailyReadingGoalStore = dailyReadingGoalStore,
        readerCheckpointStore = readerCheckpointStore,
        analyticsTracker = analyticsTracker,
        readerSessionCoordinator = readerSessionCoordinator,
        _readerProgressRecap = _readerProgressRecap
    )
    internal val readingModeController = ReaderReadingModeController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        readerPreferences = readerPreferences,
        textReaderOrchestrator = textReaderOrchestrator,
        totalBookSections = { progressController.totalBookSections },
        normalizePageForMode = { page, mode, total -> ReaderNavigationPolicy.normalizePage(page, mode, total) },
        syncReaderPosition = { page, mode, persist -> navigationController.syncReaderPosition(page, mode, persist) },
        scheduleTextPagePaginationBuild = { textReaderOrchestrator.controller.clearTextPagePagination() },
        isProgressAlreadyPersisted = { comicId, page -> progressController.isProgressAlreadyPersisted(comicId, page) },
        prewarmHtmlPagesAround = { prewarmHtmlPagesAround(it) },
        activeComicSupportsBitmapPreload = { !_uiState.value.readerRendersHtmlContent },
        markReaderPresetCustom = { settingsController.markReaderPresetCustom() },
        getLastTextWebtoonSection = { navigationController.lastTextWebtoonVisibleSection }
    )
    private val openGuard = io.leostrange.mrcomic.feature.reader.domain.session.ReaderOpenGuard()

    private val encodedUri: String? = savedStateHandle["uri"]
    private val encodedComicId: String? = savedStateHandle["comicId"]
    private var pendingRequestedPage: Int? = savedStateHandle.get<Int>("page")?.takeIf { it >= 0 }

    init {
        viewModelScope.launch {
            restoreReaderPreferences()
            when {
                !encodedComicId.isNullOrBlank() -> {
                    val id = Uri.decode(encodedComicId)
                    loadComicFromSource(
                        fetchComic = { libraryRepository.getComicById(id) },
                        sourcePath = { it.path },
                        errorProvider = ::readerComicNotFoundMessage
                    )
                }
                !encodedUri.isNullOrBlank() -> {
                    val path = Uri.decode(encodedUri)
                    loadComicFromSource(
                        fetchComic = { libraryRepository.getComicByPath(path) ?: importRepository.addComic(Uri.parse(path)) },
                        sourcePath = { path },
                        errorProvider = ::readerComicLookupFailedMessage
                    )
                }
            }
        }
    }

    private fun loadComicFromSource(
        fetchComic: suspend () -> Comic?,
        sourcePath: (Comic) -> String,
        errorProvider: (String) -> String
    ) {
        loadComicJob?.cancel()
        val requestToken = openGuard.nextToken()
        loadComicJob = viewModelScope.launch {
            val comic = fetchComic() ?: run {
                if (openGuard.isCurrent(requestToken)) {
                    val errorMessage = localizedReaderError(errorProvider)
                    _uiState.update { it.copy(error = errorMessage, isLoading = false) }
                }
                return@launch
            }
            openComic(comic, sourcePath(comic), requestToken)
        }
    }

    private suspend fun openComic(comic: Comic, sourcePath: String, requestToken: Long) {
        try {
            resetForBookOpen(requestToken)
            if (!openGuard.isCurrent(requestToken)) return

            val prepared = prepareBook(comic, sourcePath, requestToken) ?: return
            val activeReader = prepared.reader ?: return
            if (!openGuard.isCurrent(requestToken)) {
                activeReader.close(); formatReader = null; return
            }

            val config = configureOpening(comic, prepared, requestToken) ?: return
            applyOpeningState(comic, prepared, config)
            startReaderSession(comic, config)
            if (!openGuard.isCurrent(requestToken)) return
            if (config.readerRendersHtmlContent) formatReader?.let { reader ->
                textReaderOrchestrator.syncBookEngineTextLayer(
                    scope = viewModelScope,
                    reader = reader,
                    bookSession = activeBookSession,
                    isStillActive = { formatReader === reader },
                    onTocUpdated = { entries ->
                        _uiState.update { it.copy(tableOfContents = entries) }
                        progressController.rememberChapterMilestoneAnchor(_uiState.value.currentPage) { p -> navigationController.currentChapterFor(p) }
                    }
                )
            }
            loadInitialPages(comic, prepared, activeReader, config)
            scheduleDeferredPageCountIfNeeded(comic, activeReader, prepared, config, requestToken)
            schedulePostOpenTasks(comic, config.startPage, config.initialPages)
        } catch (e: CancellationException) {
            throw e
        } catch (e: Exception) {
            if (!openGuard.isCurrent(requestToken)) return
            Log.e("ReaderViewModel", "Failed to open comic", e)
            eyeRestController.cancel()
            warmupController.cancel()
            deferredTasks.cancelAll()
            val errorMessage = localizedReaderError(::readerOpenFailedMessage)
            _uiState.update { it.copy(error = errorMessage, isLoading = false) }
        }
    }

    /** Phase 1: Cancel all pending work and reset transient state. */
    private suspend fun resetForBookOpen(requestToken: Long) {
        progressController.flushPendingProgressSave()
        progressController.progressSaveJob?.cancel()
        tocLoadJob?.cancel()
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
                selectedTextTranslation = null
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
        formatReader = prepared.reader
        progressController.sectionPageCounts.reset()
        progressController.totalBookSections = prepared.pages.coerceAtLeast(1)
        if (formatReader == null) {
            val errorMessage = localizedReaderError { language ->
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
                isLoading = false,
                htmlBaseUrl = formatReader?.htmlBaseUrl(),
                htmlAssetBasePath = null,
                textWebtoonHtmlContent = null,
                textWebtoonHtmlAssetBasePath = null,
                textWebtoonHtmlPageCount = 0,
                previousHtmlContent = null,
                previousHtmlAssetBasePath = null,
                nextHtmlContent = null,
                nextHtmlAssetBasePath = null,
                selectedTextActionSheet = null,
                selectedTextTranslation = null
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
            formatReader?.takeUnless { config.readerRendersHtmlContent }?.let { reader ->
                pagePreloader.preloadAround(reader, visiblePages, prepared.pages, _uiState.value.preloadPages)
            }
        }
        visiblePages.forEach { pageLoader.loadPage(it) }
        if (config.readerRendersHtmlContent) {
            prewarmHtmlPagesAround(config.startPage, delayMillis = 180L)
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
                isReaderCurrent = { formatReader === activeReader },
                currentTotalPages = { _uiState.value.totalPages },
                onResolved = { realPages, normalizedStartPage, resolvedComic ->
                    applyDeferredPageCount(realPages, normalizedStartPage, resolvedComic, activeReader, config.openingMode)
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
        _uiState.update { it.copy(totalPages = realPages, currentPage = normalizedStartPage) }
        readerSessionCoordinator.updateTotalPages(realPages)
        val visiblePages = navigationController.visiblePagesFor(normalizedStartPage, openingMode)
        reader.takeUnless { _uiState.value.readerRendersHtmlContent }?.let { r ->
            pagePreloader.preloadAround(r, visiblePages, realPages, _uiState.value.preloadPages)
        }
        visiblePages.forEach { pageLoader.loadPage(it) }
        if (_uiState.value.readerRendersHtmlContent) {
            prewarmHtmlPagesAround(normalizedStartPage, delayMillis = 0L)
            if (_uiState.value.readerContainerKind == ReaderContainerKind.TEXT_PAGE) {
                textReaderOrchestrator.controller.clearTextPagePagination()
            }
        }
        bookmarkController.loadBookmarks(comic.id, realPages)
    }

    private fun schedulePostOpenTasks(comic: Comic, startPage: Int, initialPages: Int) {
        warmupAroundPage(startPage)
        deferredTasks.scheduleDeferredTocWarmup(
            getFormatReader = { formatReader },
            isTocEmpty = { _uiState.value.tableOfContents.isEmpty() },
            loadToc = { loadToc(force = false) }
        )
        bookmarkController.loadBookmarks(comic.id, initialPages)
        schedulePageTranslationNote(startPage)
        eyeRestController.restartEyeRestTimer()
    }

    private fun maybeEmitChapterMilestone(page: Int, progressSource: ReaderNavigationProgressSource) {
        progressController.maybeEmitChapterMilestone(page, progressSource, navigationController::currentChapterFor)
    }

    private fun schedulePageTranslationNote(page: Int) {
        deferredTasks.loadPageTranslationNote(
            comicId = _uiState.value.comic?.id,
            page = page,
            currentComicId = { _uiState.value.comic?.id },
            currentPage = { _uiState.value.currentPage },
            onLoaded = { note -> _uiState.update { it.copy(pageTranslationNote = note) } },
            clearNote = { _uiState.update { it.copy(pageTranslationNote = null) } }
        )
    }

    private suspend fun readerLanguageCode(): String =
        normalizeAppLanguageCode(readerPreferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first())

    private suspend fun localizedReaderError(messageProvider: (String) -> String): String =
        messageProvider(readerLanguageCode())

    private suspend fun localizedReaderText(): ReaderUiText = readerUiText(readerLanguageCode())

    /** Helper to avoid circular reference in navigationController constructor. */
    private fun scheduleHighQualityWarmup(page: Int) = warmupAroundPage(page)

    private fun warmupAroundPage(page: Int) {
        warmupController.scheduleWarmup(
            page = page,
            renderTier = renderProfile.tier,
            getFormatReader = { formatReader },
            supportsBitmapPreload = { !_uiState.value.readerRendersHtmlContent },
            getComicId = { _uiState.value.comic?.id },
            getReadingMode = { _uiState.value.readingMode },
            getCurrentPage = { _uiState.value.currentPage },
            visiblePagesFor = { p, mode -> navigationController.visiblePagesFor(p, mode) }
        )
    }

    /** Opens/closes the table-of-contents bottom sheet. */
    fun toggleTocSheet() = chromeController.toggleTocSheet(
        hasTableOfContents = _uiState.value.tableOfContents.isNotEmpty(),
        loadToc = { loadToc(force = true) }
    )

    fun onPagedLayoutPageCountChanged(pageCount: Int, pageIndex: Int = 0) {
        // This callback reports visual subpages inside the currently loaded HTML
        // section as calculated by the WebView JS pagination engine.
        if (pageCount <= 0) return
        val sectionIndex = _uiState.value.currentPage
        val safePageIndex = pageIndex.coerceIn(0, pageCount - 1)
        val sectionPageCountSnapshot = progressController.sectionPageCounts.recordAndSnapshot(sectionIndex, pageCount)
        val progress = EpubProgressCalculator.accumulate(
            sectionPageCounts = sectionPageCountSnapshot,
            sectionIndex = sectionIndex,
            sectionPageIndex = safePageIndex,
            totalSections = progressController.totalBookSections
        )
        _uiState.update {
            it.copy(
                sectionPageCount = pageCount,
                sectionCurrentPage = safePageIndex,
                epubAccumulatedTotalPages = progress.accumulatedTotalPages,
                epubAccumulatedCurrentPage = progress.accumulatedCurrentPage
            )
        }
    }

    /** Loads the TOC from BookEngine (Readium) or the legacy format reader. */
    private fun loadToc(force: Boolean = false) {
        val reader = formatReader ?: run {
            _uiState.update { it.copy(tableOfContents = emptyList()) }
            return
        }
        if (!force && _uiState.value.tableOfContents.isNotEmpty()) return
        tocLoadJob?.cancel()
        tocLoadJob = viewModelScope.launch(Dispatchers.IO) {
            val bookSession = activeBookSession
            val toc = textReaderOrchestrator.resolveTableOfContents(reader, bookSession)
            if (formatReader !== reader) return@launch
            _uiState.update { it.copy(tableOfContents = toc) }
            progressController.rememberChapterMilestoneAnchor(_uiState.value.currentPage) { p -> navigationController.currentChapterFor(p) }
        }
    }

    private fun clearHtmlPageCache() {
        textReaderOrchestrator.resetSessionAndCaches {
            _webtoonHtmlCache.value = emptyMap()
            _uiState.update {
                it.copy(
                    textWebtoonHtmlContent = null,
                    textWebtoonHtmlAssetBasePath = null,
                    textWebtoonHtmlPageCount = 0
                )
            }
        }
    }

    fun tocDisplayPage(enginePageIndex: Int): Int =
        TextReaderNavigation.tocDisplayPage(
            state = _uiState.value,
            controller = textReaderOrchestrator.controller,
            enginePageIndex = enginePageIndex
        )

    private fun refreshAdjacentHtmlPages(centerPage: Int = _uiState.value.currentPage) {
        val previous = textReaderOrchestrator.controller.cachedHtmlPage(centerPage - 1)
        val next = textReaderOrchestrator.controller.cachedHtmlPage(centerPage + 1)
        _uiState.update { state ->
            if (state.currentHtmlContent == null && state.currentPage != centerPage) {
                state
            } else {
                state.copy(
                    previousHtmlContent = previous?.html,
                    previousHtmlAssetBasePath = previous?.assetBasePath,
                    nextHtmlContent = next?.html,
                    nextHtmlAssetBasePath = next?.assetBasePath
                )
            }
        }
    }

    private suspend fun getOrLoadHtmlPage(reader: FormatReader, index: Int): CachedHtmlPage? =
        textReaderOrchestrator.loadHtmlPage(
            reader = reader,
            index = index,
            containerKind = _uiState.value.readerContainerKind,
            onWebtoonPageCached = { pageIndex, html ->
                _webtoonHtmlCache.update { it + (pageIndex to html) }
            }
        )

    private fun prewarmHtmlPagesAround(centerPage: Int, delayMillis: Long = 0L) {
        val reader = formatReader ?: return
        val comicId = _uiState.value.comic?.id ?: return
        textReaderOrchestrator.prewarmHtmlPagesAround(
            scope = viewModelScope,
            reader = reader,
            comicId = comicId,
            centerPage = centerPage,
            getUiState = { _uiState.value },
            visiblePagesFor = navigationController::visiblePagesFor,
            isStillActive = { formatReader === reader && _uiState.value.comic?.id == comicId },
            loadPage = { pageIndex -> getOrLoadHtmlPage(reader, pageIndex) },
            onPagePrewarmed = { refreshAdjacentHtmlPages() },
            delayMillis = delayMillis
        )
    }

    override fun onCleared() {
        // Snapshot the pending IO work, then run it on an application-scoped coroutine so leaving
        // the reader never blocks the main thread. These paths (progress save, session close) only
        // touch Room/DataStore/engine registry — all independent of the resources torn down below —
        // so completing them slightly after onCleared returns is safe. Previously three runBlocking
        // calls here caused an ANR on slow storage.
        progressController.emitReaderClosed(appScope)
        super.onCleared()
        loadComicJob?.cancel()
        tocLoadJob?.cancel()
        deferredTasks.cancelAll()
        eyeRestController.cancel()
        warmupController.cancel()
        textReaderOrchestrator.cancelAllJobs()
        progressController.progressSaveJob?.cancel()
        sessionManager.closeReaderResources()
        appScope.launch {
            runCatching { progressController.flushPendingProgressSave() }
                .onFailure { Log.e("ReaderViewModel", "Failed to flush progress on close", it) }
            runCatching { sessionManager.closeBookSessionAsync() }
                .onFailure { Log.w(TAG, "Failed to close book session on close", it) }
        }
        pagePreloader.cancelPreload()
        pagePreloader.clearPages()
        clearHtmlPageCache()
    }

    private suspend fun restoreReaderPreferences() {
        val p = ReaderPreferenceRestorer.restore(context, renderProfile)
        readingModeController.rememberPortraitMode(p.mode)
        ReaderPreferenceRestorer.applyTo(
            p = p,
            uiState = _uiState,
            isLandscape = _uiState.value.isLandscape,
            supportsAutomaticLandscapeSpread = ReaderOpeningModePolicy.supportsAutomaticLandscapeSpread(p.mode),
            disableAnimations = renderProfile.disableAnimations
        )
        if (p.needsPersistStylePresets) settingsController.persistReaderStylePresetEntries(p.readerStylePresetEntries)
        eyeRestController.restartEyeRestTimer()
    }

}

