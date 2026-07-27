package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.graphics.Bitmap
import android.net.Uri

import android.util.Log
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import androidx.core.text.HtmlCompat
import io.leostrange.mrcomic.feature.reader.domain.enums.FootnotePresentation
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderChromeState
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderProgressRecapType
import io.leostrange.mrcomic.feature.reader.domain.progress.EpubSectionPageCountStore
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderProgressRecap
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderClosedSessionMetrics
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionCoordinator
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionSnapshot
import io.leostrange.mrcomic.feature.reader.domain.session.buildReaderClosedAnalyticsEvent
import io.leostrange.mrcomic.feature.reader.domain.session.shouldRecordReaderSessionMinutes
import io.leostrange.mrcomic.feature.reader.ui.preset.applyReaderStylePreset
import io.leostrange.mrcomic.feature.reader.ui.preset.persistReaderStylePresetSnapshot
import io.leostrange.mrcomic.feature.reader.ui.preset.ReaderStylePresetReducer
import io.leostrange.mrcomic.feature.reader.ui.preset.toReaderStylePresetSnapshot
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetEntry
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetEntries
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSnapshot
import io.leostrange.mrcomic.feature.reader.domain.preset.parseReaderStylePreset
import io.leostrange.mrcomic.feature.reader.domain.preset.serializeReaderStylePresetEntries
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.model.repository.ImportRepository
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.leostrange.mrcomic.engine.formats.base.DocumentKind
import io.leostrange.mrcomic.engine.formats.base.DocumentSession
import io.leostrange.mrcomic.engine.formats.base.FormatReaderDocumentSession
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.BookSource
import io.leostrange.mrcomic.core.model.storedReaderLocator
import io.leostrange.mrcomic.core.model.DictionaryEntry
import io.leostrange.mrcomic.core.model.ExplainRequest
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.ReaderInfoSlot
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderTapZoneAction
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.model.ReaderTtsProviderType
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import io.leostrange.mrcomic.core.model.TranslationServiceConfig
import io.leostrange.mrcomic.core.model.supportsHighResZoomTiers
import io.leostrange.mrcomic.core.model.isTextReadingFormat
import io.leostrange.mrcomic.core.model.isHeavyReflowableFormat
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationRequest
import io.leostrange.mrcomic.core.model.TranslationRoutingRequest
import io.leostrange.mrcomic.core.model.TranslationSourceType
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.LlmExplainEngine
import io.leostrange.mrcomic.core.domain.translation.SingleWordDictionaryMatch
import io.leostrange.mrcomic.core.domain.translation.TranslationBackendUnavailableException
import io.leostrange.mrcomic.core.domain.translation.hasMeaningfulTranslationFor
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.ui.locale.normalizeAppLanguageCode
import io.leostrange.mrcomic.core.ui.locale.normalizeTranslationLanguageCode
import io.leostrange.mrcomic.core.ui.locale.supportedTranslationLanguageCodes
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.core.domain.translation.LookupRouter
import io.leostrange.mrcomic.core.domain.translation.LanguageDetector
import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.resolveBestSingleWordDictionaryMatch
import io.leostrange.mrcomic.core.domain.analytics.ReaderCheckpointStore
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.engine.formats.base.FormatFactory

import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.LegacyFormatSessionAccess
import io.leostrange.mrcomic.engine.api.BookSession
import io.leostrange.mrcomic.engine.api.OpenBookRequest
import io.leostrange.mrcomic.engine.registry.BookEngineRegistry
import io.leostrange.mrcomic.engine.formats.base.RenderDeviceTier
import io.leostrange.mrcomic.engine.formats.base.resolveRenderDeviceProfile
import io.leostrange.mrcomic.engine.formats.base.TocEntry
import io.leostrange.mrcomic.engine.rendering.preload.PagePreloader
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import io.leostrange.mrcomic.core.model.LanguageDetectionResult
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.IOException
import java.util.Locale
import java.util.concurrent.atomic.AtomicReference
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

    /** Emits the current page payload saved for OCR. One-shot event. */
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
        enginePageForUiPage = { page -> enginePageForUiPage(page) },
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
        getPage = { index, quality -> getPage(index, quality) },
        formatReader = { formatReader }
    )
    internal var formatReader: FormatReader? = null
    private var activeBookSession: BookSession? = null

    /**
     * Returns the current reader as a [DocumentSession] (new API).
     * Falls back to wrapping [formatReader] via adapter if no native session exists.
     */
    private val documentSession: DocumentSession?
        get() = activeBookSession as? DocumentSession
            ?: formatReader?.let { FormatReaderDocumentSession(
                kind = DocumentKind.REFLOWABLE,
                format = _uiState.value.comic?.format ?: ComicFormat.UNKNOWN,
                reader = it
            ) }
    private val textWebtoonSessionController = TextWebtoonSessionController(
        scope = viewModelScope,
        builder = WebtoonDocumentBuilder(TextWebtoonDocumentBuilder::build)
    )
    private val textReaderOrchestrator = TextReaderOrchestrator(
        TextReaderController(textWebtoonSessionController)
    )

    /**
     * Per-page HTML cache for WEBTOON mode — used for formats (DjVu) where some pages
     * have no bitmap render path but do provide HTML content via [FormatReader.getHtmlPage].
     */
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
        loadHighlightsForCurrentPage = { loadHighlightsForCurrentPage() },
        activeBookSession = { activeBookSession }
    )

    fun getWebtoonHtmlPageFlow(index: Int): kotlinx.coroutines.flow.Flow<String?> =
        _webtoonHtmlCache.map { it[index] }.distinctUntilChanged()
    private var loadComicJob: Job? = null
    private var tocLoadJob: Job? = null
    private var deferredTocWarmupJob: Job? = null
    private var deferredPageCountJob: Job? = null
    private var highQualityWarmupJob: Job? = null
    private var pageTranslationNoteJob: Job? = null
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
        loadPageTranslationNote = { loadPageTranslationNote(page = it) },
        saveProgress = { page, source -> saveProgress(page, source) },
        maybeEmitChapterMilestone = { page, source -> maybeEmitChapterMilestone(page, source) },
        isProgressAlreadyPersisted = { comicId, page -> isProgressAlreadyPersisted(comicId, page) },
        scheduleHighQualityWarmup = { scheduleHighQualityWarmup(it) },
        applyHighQualityRetention = { applyHighQualityRetention(it) },
        activeComicSupportsBitmapPreload = { activeComicSupportsBitmapPreload() },
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
        totalBookSections = { totalBookSections },
        normalizePageForMode = { page, mode, total -> ReaderNavigationPolicy.normalizePage(page, mode, total) },
        syncReaderPosition = { page, mode, persist -> navigationController.syncReaderPosition(page, mode, persist) },
        scheduleTextPagePaginationBuild = { scheduleTextPagePaginationBuild() },
        isProgressAlreadyPersisted = { comicId, page -> isProgressAlreadyPersisted(comicId, page) },
        prewarmHtmlPagesAround = { prewarmHtmlPagesAround(it) },
        activeComicSupportsBitmapPreload = { activeComicSupportsBitmapPreload() },
        markReaderPresetCustom = { settingsController.markReaderPresetCustom() }
    )
    private var lastRetainedHighQualityPages: Set<Int> = emptySet()
    private val openGuard = io.leostrange.mrcomic.feature.reader.domain.session.ReaderOpenGuard()
    /** Measured visual page counts per EPUB spine section. */
    private val sectionPageCounts = EpubSectionPageCountStore()

    /**
     * Total number of sections (spine items) in the book. Set once when the book opens.
     * Used by [accumulatedTotalPagesForEpub] to estimate total visual pages including
     * unvisited sections, preventing premature 100% progress display.
     */
    private var totalBookSections: Int = 0

    /** Returns a stable, section-ordered snapshot for EPUB progress accumulation. */
    private fun snapshotSectionPageCounts(): Map<Int, Int> = sectionPageCounts.snapshot()
    private val encodedUri: String? = savedStateHandle["uri"]
    private val encodedComicId: String? = savedStateHandle["comicId"]
    private var pendingRequestedPage: Int? = savedStateHandle.get<Int>("page")?.takeIf { it >= 0 }

    init {
        viewModelScope.launch {
            restoreReaderPreferences()
            when {
                !encodedComicId.isNullOrBlank() -> loadComicById(Uri.decode(encodedComicId))
                !encodedUri.isNullOrBlank() -> loadComic(Uri.decode(encodedUri))
            }
        }
    }

    private fun loadComicById(comicId: String) {
        loadComicJob?.cancel()
        val requestToken = openGuard.nextToken()
        loadComicJob = viewModelScope.launch {
            val comic = libraryRepository.getComicById(comicId)
            if (!openGuard.isCurrent(requestToken)) return@launch
            if (comic == null) {
                val errorMessage = localizedReaderError(::readerComicNotFoundMessage)
                _uiState.update { it.copy(error = errorMessage, isLoading = false) }
                return@launch
            }
            openComic(comic, comic.path, requestToken)
        }
    }

    private fun loadComic(path: String) {
        loadComicJob?.cancel()
        val requestToken = openGuard.nextToken()
        loadComicJob = viewModelScope.launch {
            val comic = libraryRepository.getComicByPath(path) ?: run {
                importRepository.addComic(Uri.parse(path))
            }
            if (!openGuard.isCurrent(requestToken)) return@launch
            if (comic == null) {
                val errorMessage = localizedReaderError(::readerComicLookupFailedMessage)
                _uiState.update { it.copy(error = errorMessage, isLoading = false) }
                return@launch
            }
            openComic(comic, path, requestToken)
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
            syncEngineTextLayer(config.readerRendersHtmlContent)
            loadInitialPages(comic, prepared, activeReader, config)
            scheduleDeferredPageCountIfNeeded(comic, activeReader, prepared, config, requestToken)
            schedulePostOpenTasks(comic, config.startPage, config.initialPages)
        } catch (e: CancellationException) {
            throw e
        } catch (e: Exception) {
            if (!openGuard.isCurrent(requestToken)) return
            Log.e("ReaderViewModel", "Failed to open comic", e)
            eyeRestController.cancel()
            highQualityWarmupJob?.cancel()
            deferredPageCountJob?.cancel()
            val errorMessage = localizedReaderError(::readerOpenFailedMessage)
            _uiState.update { it.copy(error = errorMessage, isLoading = false) }
        }
    }

    /** Phase 1: Cancel all pending work and reset transient state. */
    private suspend fun resetForBookOpen(requestToken: Long) {
        flushPendingProgressSave()
        progressController.progressSaveJob?.cancel()
        tocLoadJob?.cancel()
        deferredTocWarmupJob?.cancel()
        deferredPageCountJob?.cancel()
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
        highQualityWarmupJob?.cancel()
        textReaderOrchestrator.cancelAllJobsAndJoin()
        if (!openGuard.isCurrent(requestToken)) return
        lastRetainedHighQualityPages = emptySet()
        pagePreloader.clearPages()
        clearHtmlPageCache()
        closeReaderResources()
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
            textFormatReaderOpener = ::openTextFormatReader,
        )
        if (!openGuard.isCurrent(requestToken)) {
            prepared.reader?.close(); return null
        }
        formatReader = prepared.reader
        sectionPageCounts.reset()
        totalBookSections = prepared.pages.coerceAtLeast(1)
        if (formatReader == null) {
            val errorMessage = localizedReaderError { language ->
                readerUnsupportedFormatMessage(prepared.detectedFormat.name, language)
            }
            _uiState.update { it.copy(error = errorMessage, isLoading = false) }
            return null
        }
        return prepared
    }

    /** Phase 3 configuration result. */
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
        val openingMode = effectiveOpeningModeFor(prepared.detectedFormat, readerRendersHtmlContent)
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

    private fun syncEngineTextLayer(readerRendersHtmlContent: Boolean) {
        formatReader?.let { reader ->
            if (readerRendersHtmlContent) syncBookEngineTextLayer(reader)
        }
    }

    /** Phase 6a: Load visible pages and warmup. */
    private fun loadInitialPages(
        comic: Comic,
        prepared: PreparedReaderOpen,
        activeReader: FormatReader,
        config: OpeningConfig
    ) {
        val visiblePages = visiblePagesFor(config.startPage, config.openingMode)
        if (!config.shouldDeferCount) {
            formatReader?.takeUnless { config.readerRendersHtmlContent }?.let { reader ->
                pagePreloader.preloadAround(reader, visiblePages, prepared.pages, _uiState.value.preloadPages)
            }
        }
        visiblePages.forEach { loadPage(it) }
        if (config.readerRendersHtmlContent) {
            prewarmHtmlPagesAround(config.startPage, delayMillis = 180L)
            if (_uiState.value.readerContainerKind == ReaderContainerKind.TEXT_PAGE) {
                scheduleTextPagePaginationBuild()
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
            scheduleDeferredPageCountResolution(
                comic = comic,
                reader = activeReader,
                requestToken = requestToken,
                openingMode = config.openingMode,
                requestedStartPage = config.requestedStartPage,
                initialPages = config.initialPages
            )
        }
    }

    /** Phase 7: Schedule post-open tasks (warmup, TOC, bookmarks, etc.). */
    private fun schedulePostOpenTasks(comic: Comic, startPage: Int, initialPages: Int) {
        scheduleHighQualityWarmup(startPage)
        scheduleDeferredTocWarmup()
        loadBookmarks(comic.id, initialPages)
        loadPageTranslationNote(comic.id, startPage)
        eyeRestController.restartEyeRestTimer()
    }

    private suspend fun localizedReaderError(messageProvider: (String) -> String): String {
        val languageCode = normalizeAppLanguageCode(
            readerPreferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first()
        )
        return messageProvider(languageCode)
    }

    private suspend fun currentReaderUiLanguage(): String =
        normalizeAppLanguageCode(
            readerPreferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first()
        )

    private suspend fun localizedReaderText(): ReaderUiText {
        val languageCode = normalizeAppLanguageCode(
            readerPreferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first()
        )
        return readerUiText(languageCode)
    }

    fun getPage(index: Int, renderQuality: Int = 1): Bitmap? = pageLoader.getPage(index, renderQuality)
    fun getPageFlow(index: Int, renderQuality: Int = 1) = pageLoader.getPageFlow(index, renderQuality)
    fun loadPage(index: Int, renderQuality: Int = 1) = pageLoader.loadPage(index, renderQuality)
    fun preloadWebtoonWindow(pages: List<Int>) = pageLoader.preloadWebtoonWindow(pages)

    fun setHighQualityFocusPages(indices: Set<Int>?) {
        if (!activeComicSupportsHighResZoom()) {
            applyHighQualityRetention(emptySet())
            return
        }
        val totalPages = _uiState.value.totalPages
        val normalized = indices
            ?.asSequence()
            ?.filter { it in 0 until totalPages }
            ?.toSet()
            ?.takeIf { it.isNotEmpty() }

        applyHighQualityRetention(
            normalized ?: visiblePagesFor(_uiState.value.currentPage, _uiState.value.readingMode).toSet()
        )
    }

    private fun scheduleHighQualityWarmup(page: Int) {
        if (!activeComicSupportsHighResZoom()) return
        val warmupTier = when (renderProfile.tier) {
            RenderDeviceTier.HIGH_END -> 3
            RenderDeviceTier.MID_RANGE -> 2
            else -> null
        } ?: return

        val reader = formatReader ?: return
        val comicId = _uiState.value.comic?.id ?: return
        val readingMode = _uiState.value.readingMode
        val targetPages = visiblePagesFor(page, readingMode)

        highQualityWarmupJob?.cancel()
        highQualityWarmupJob = viewModelScope.launch {
            delay(180)
            if (formatReader !== reader) return@launch
            if (_uiState.value.comic?.id != comicId) return@launch
            if (_uiState.value.readingMode != readingMode) return@launch
            if (visiblePagesFor(_uiState.value.currentPage, _uiState.value.readingMode) != targetPages) return@launch
            targetPages.forEach { targetPage ->
                if (pagePreloader.getPage(targetPage, warmupTier) == null) {
                    pagePreloader.loadPage(reader, targetPage, warmupTier)
                }
            }
        }
    }

    fun showSelectedTextActions(selectedText: String) {
        val normalizedText = selectedText
            .trim()
            .replace(Regex("\\s+"), " ")
        if (normalizedText.isBlank()) return

        viewModelScope.launch {
            val translationSettings = resolveTranslationSettings()
            val canExplainSelection = true
            _uiState.update {
                it.copy(
                    selectedTextActionSheet = SelectedTextActionSheetState(
                        originalText = normalizedText,
                        canUseDictionary = normalizedText.countSelectionTokens() == 1,
                        canExplain = canExplainSelection
                    ),
                    selectedTextTranslation = null
                )
            }
        }
    }

    fun dismissSelectedTextActions() {
        _uiState.update { it.copy(selectedTextActionSheet = null) }
    }

    fun translateFromSelectedTextActions() {
        val selectedText = _uiState.value.selectedTextActionSheet?.originalText ?: return
        dismissSelectedTextActions()
        translationController.translateSelectedText(selectedText, preferDictionary = false)
    }

    fun openDictionaryFromSelectedTextActions() {
        val selectedText = _uiState.value.selectedTextActionSheet?.originalText ?: return
        dismissSelectedTextActions()
        translationController.translateSelectedText(selectedText, preferDictionary = true)
    }

    fun explainFromSelectedTextActions() {
        val selectedText = _uiState.value.selectedTextActionSheet?.originalText ?: return
        dismissSelectedTextActions()
        translationController.explainSelectedText(selectedText)
    }

    fun explainSelectedTextDirect(selectedText: String) {
        translationController.explainSelectedText(selectedText)
    }

    fun explainSelectedTextFromResult() {
        val selectedText = _uiState.value.selectedTextTranslation?.originalText ?: return
        translationController.explainSelectedText(selectedText)
    }

    private fun loadHighlightsForCurrentPage() = highlightController.loadHighlightsForCurrentPage()

    fun onCenterTap() {
        _uiState.update { state ->
            state.copy(
                chromeState = when (state.chromeState) {
                    ReaderChromeState.HIDDEN -> ReaderChromeState.EXPANDED
                    ReaderChromeState.EXPANDED -> ReaderChromeState.HIDDEN
                }
            )
        }
    }

    fun toggleChromeUi() {
        _uiState.update { state ->
            state.copy(
                chromeState = if (state.chromeState == ReaderChromeState.HIDDEN) {
                    ReaderChromeState.EXPANDED
                } else {
                    ReaderChromeState.HIDDEN
                }
            )
        }
    }

    fun hideChrome() = _uiState.update { it.copy(chromeState = ReaderChromeState.HIDDEN) }

    fun showMinimalChrome() = _uiState.update { it.copy(chromeState = ReaderChromeState.HIDDEN) }

    fun showExpandedChrome() = _uiState.update { it.copy(chromeState = ReaderChromeState.EXPANDED) }

    /** Opens/closes the table-of-contents bottom sheet. */
    fun toggleTocSheet() {
        val shouldOpen = !_uiState.value.showTocSheet
        _uiState.update {
            it.copy(
                showTocSheet = !it.showTocSheet,
                chromeState = ReaderChromeState.EXPANDED
            )
        }
        if (shouldOpen && _uiState.value.tableOfContents.isEmpty()) {
            loadToc(force = true)
        }
    }

    /**
      * Called by the WebView JS bridge when the user taps an anchor link.
      *
      * [href] may be:
      *  - a bare anchor id (`FbAutId_1`, `note_42`) — footnote lookup
      *  - `#fragment` — footnote lookup by fragment
      *  - `chapter.xhtml` — navigate to the page for that file
      *  - `chapter.xhtml#fragment` — navigate to page for that file; footnote lookup for fragment
     */
    fun onPagedLayoutPageCountChanged(pageCount: Int, pageIndex: Int = 0) {
        // This callback reports visual subpages inside the currently loaded HTML
        // section as calculated by the WebView JS pagination engine.
        if (pageCount <= 0) return
        val sectionIndex = _uiState.value.currentPage
        val safePageIndex = pageIndex.coerceIn(0, pageCount - 1)
        val sectionPageCountSnapshot = sectionPageCounts.recordAndSnapshot(sectionIndex, pageCount)
        val progress = EpubProgressCalculator.accumulate(
            sectionPageCounts = sectionPageCountSnapshot,
            sectionIndex = sectionIndex,
            sectionPageIndex = safePageIndex,
            totalSections = totalBookSections
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

    fun openHtmlAsset(path: String) = formatReader?.openHtmlAsset(path)

    /** Opens/closes the text reader settings bottom sheet. */
    fun toggleTextSettings() = _uiState.update {
        it.copy(
            showTextSettings = !it.showTextSettings,
            chromeState = ReaderChromeState.EXPANDED
        )
    }

    private suspend fun persistReaderStylePresetEntries(entries: List<ReaderStylePresetEntry>) {
        val legacySlots = ReaderStylePresetEntries.toLegacySlots(entries)
        readerPreferences.set(
            PreferencesKeys.READER_STYLE_PRESET_LIST,
            serializeReaderStylePresetEntries(entries)
        )
        readerPreferences.set(PreferencesKeys.READER_STYLE_PRESET_1, legacySlots[0].serialized.orEmpty())
        readerPreferences.set(PreferencesKeys.READER_STYLE_PRESET_2, legacySlots[1].serialized.orEmpty())
        readerPreferences.set(PreferencesKeys.READER_STYLE_PRESET_3, legacySlots[2].serialized.orEmpty())
    }

    // ── Закладки ──────────────────────────────────────────────────────────────

    private fun loadBookmarks(comicId: String, totalPages: Int) = bookmarkController.loadBookmarks(comicId, totalPages)

    private fun loadPageTranslationNote(
        comicId: String? = _uiState.value.comic?.id,
        page: Int = _uiState.value.currentPage
    ) {
        val resolvedComicId = comicId ?: return
        pageTranslationNoteJob?.cancel()
        _uiState.update { it.copy(pageTranslationNote = null) }
        pageTranslationNoteJob = viewModelScope.launch {
            val note = readerPreferences.get(PreferencesKeys.translationNote(resolvedComicId, page), "").first()
            if (_uiState.value.comic?.id != resolvedComicId || _uiState.value.currentPage != page) return@launch
            _uiState.update { it.copy(pageTranslationNote = note.ifBlank { null }) }
        }
    }

    private fun scheduleDeferredTocWarmup(delayMillis: Long = 450L) {
        val reader = formatReader ?: return
        deferredTocWarmupJob?.cancel()
        deferredTocWarmupJob = viewModelScope.launch {
            delay(delayMillis)
            if (formatReader !== reader) return@launch
            if (_uiState.value.tableOfContents.isNotEmpty()) return@launch
            loadToc(force = false)
        }
    }

    private fun scheduleDeferredPageCountResolution(
        comic: Comic,
        reader: FormatReader,
        requestToken: Long,
        openingMode: ReadingMode,
        requestedStartPage: Int,
        initialPages: Int
    ) {
        deferredPageCountJob?.cancel()
        deferredPageCountJob = viewModelScope.launch(Dispatchers.IO) {
            // loadPage() publishes the first HTML section asynchronously. EPUB readers
            // serialize section access, so starting a whole-book count immediately can
            // take that lock first and leave the reader blank for the entire count.
            delay(DEFERRED_PAGE_COUNT_START_DELAY_MILLIS)
            val retryResult = resolveDeferredPageCountWithRetries(
                provisionalPages = initialPages,
                maxRetries = DEFERRED_PAGE_COUNT_MAX_RETRIES,
                retryDelayMillis = DEFERRED_PAGE_COUNT_RETRY_DELAY_MILLIS,
                pageCount = reader::getPageCount
            )
            val realPages = when (val resolution = retryResult.resolution) {
                is DeferredPageCountResolution.Resolved -> resolution.totalPages
                is DeferredPageCountResolution.RetryRequired -> {
                    Log.w(
                        "ReaderVM",
                        "Deferred page count failed after ${retryResult.attempts} attempts; " +
                            "keeping provisional=${resolution.provisionalPages}, " +
                            "format=${_uiState.value.comic?.format}",
                        retryResult.lastFailure
                    )
                    return@launch
                }
            }
            Log.d("ReaderVM", "scheduleDeferredPageCountResolution: initial=$initialPages, real=$realPages, format=${_uiState.value.comic?.format}")
            if (!openGuard.isCurrent(requestToken)) return@launch
            if (formatReader !== reader) return@launch
            if (realPages <= 0) return@launch
            if (realPages == initialPages) {
                Log.d("ReaderVM", "realPages == initialPages ($realPages), skipping update")
                return@launch
            }
            val normalizedStartPage = deferredResolvedStartPage(
                requestedPage = requestedStartPage,
                mode = openingMode,
                resolvedTotalPages = realPages
            )
            withContext(Dispatchers.Main) {
                if (!shouldApplyDeferredPageCount(
                        openRequestCurrent = openGuard.isCurrent(requestToken),
                        readerCurrent = formatReader === reader,
                        currentTotalPages = _uiState.value.totalPages,
                        provisionalPages = initialPages,
                        resolvedTotalPages = realPages
                    )
                ) return@withContext
                totalBookSections = realPages.coerceAtLeast(1)
                _uiState.update {
                    it.copy(
                        totalPages = realPages,
                        currentPage = normalizedStartPage
                    )
                }
                readerSessionCoordinator.updateTotalPages(realPages)
                val visiblePages = visiblePagesFor(normalizedStartPage, openingMode)
                reader.takeUnless { _uiState.value.readerRendersHtmlContent }?.let { r ->
                    pagePreloader.preloadAround(r, visiblePages, realPages, _uiState.value.preloadPages)
                }
                visiblePages.forEach { visiblePage ->
                    loadPage(visiblePage)
                }
                if (_uiState.value.readerRendersHtmlContent) {
                    prewarmHtmlPagesAround(normalizedStartPage, delayMillis = 0L)
                    if (_uiState.value.readerContainerKind == ReaderContainerKind.TEXT_PAGE) {
                        scheduleTextPagePaginationBuild()
                    }
                }
                loadBookmarks(comic.id, realPages)
            }
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
            rememberChapterMilestoneAnchor()
        }
    }

    private fun syncBookEngineTextLayer(reader: FormatReader) {
        textReaderOrchestrator.syncBookEngineTextLayer(
            scope = viewModelScope,
            reader = reader,
            bookSession = activeBookSession,
            isStillActive = { formatReader === reader },
            onTocUpdated = { entries ->
                _uiState.update { it.copy(tableOfContents = entries) }
                rememberChapterMilestoneAnchor()
            }
        )
    }

    private var brightnessJob: Job? = null
    private fun saveProgress(
        page: Int,
        progressSource: ReaderNavigationProgressSource
    ) {
        progressController.saveProgress(
            page = page,
            progressSource = progressSource,
            epubAccumulatedPages = accumulatedTotalPagesForEpub(),
            sectionPageCountsSnapshot = snapshotSectionPageCounts(),
            totalBookSections = totalBookSections,
            calculateAccuratePage = ::calculateAccuratePage
        )
    }

    private fun rememberChapterMilestoneAnchor(page: Int = _uiState.value.currentPage) {
        progressController.rememberChapterMilestoneAnchor(page, ::currentChapterFor)
    }

    private fun maybeEmitChapterMilestone(
        page: Int,
        progressSource: ReaderNavigationProgressSource
    ) {
        progressController.maybeEmitChapterMilestone(page, progressSource, ::currentChapterFor)
    }

    private suspend fun emitProgressRecap(
        type: ReaderProgressRecapType,
        comicId: String,
        comicTitle: String,
        chapterTitle: String? = null,
        currentPage: Int,
        totalPages: Int,
        pagesDelta: Int,
        xpAwarded: Int,
        projectedGoalPagesDelta: Int
    ) {
        progressController.emitProgressRecap(
            type = type,
            comicId = comicId,
            comicTitle = comicTitle,
            chapterTitle = chapterTitle,
            currentPage = currentPage,
            totalPages = totalPages,
            pagesDelta = pagesDelta,
            xpAwarded = xpAwarded,
            projectedGoalPagesDelta = projectedGoalPagesDelta
        )
    }

    private fun syncReaderPosition(
        page: Int,
        mode: ReadingMode,
        persistProgress: Boolean,
        progressSource: ReaderNavigationProgressSource = ReaderNavigationProgressSource.READING,
        announceChapterMilestone: Boolean = true
    ) = navigationController.syncReaderPosition(page, mode, persistProgress, progressSource, announceChapterMilestone)

    private fun visiblePagesFor(page: Int, mode: ReadingMode): List<Int> = navigationController.visiblePagesFor(page, mode)
    private fun currentChapterFor(page: Int): TocEntry? = navigationController.currentChapterFor(page)
    private fun enginePageForUiPage(page: Int): Int = navigationController.enginePageForUiPage(page)

    private fun effectiveOpeningModeFor(
        format: ComicFormat,
        readerRendersHtmlContent: Boolean = format.isTextReadingFormat()
    ): ReadingMode = readingModeController.effectiveOpeningModeFor(format, readerRendersHtmlContent)

    // isOpenRequestCurrent replaced by openGuard.isCurrent()

    private fun applyHighQualityRetention(indices: Set<Int>) {
        if (indices == lastRetainedHighQualityPages) return
        pagePreloader.retainHighQualityPages(indices)
        lastRetainedHighQualityPages = indices
    }

    private fun activeComicSupportsBitmapPreload(): Boolean =
        !_uiState.value.readerRendersHtmlContent

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

    private fun scheduleTextPagePaginationBuild() {
        // All text formats now use WebView JS viewport pagination (pixel-precise
        // TreeWalker + getClientRects()). The Kotlin char-split paginator is retired;
        // clear any stale snapshot so isTextPagePaginationReady() stays false and
        // loadHtmlPage() always returns the full section HTML for the WebView to paginate.
        textReaderOrchestrator.controller.clearTextPagePagination()
    }

    private suspend fun openTextFormatReader(
        comic: Comic,
        resolvedPath: String,
        detectedFormat: ComicFormat
    ): FormatReader? {
        closeActiveBookSession()
        return runCatching {
            val engine = bookEngineRegistry.resolve(detectedFormat)
                ?: return@runCatching null
            val bookSource = if (resolvedPath.startsWith("content://")) {
                BookSource.ContentUri(resolvedPath)
            } else {
                BookSource.FilePath(resolvedPath)
            }
            val session = engine.open(
                OpenBookRequest(
                    bookId = comic.id,
                    format = detectedFormat,
                    source = bookSource,
                    initialLocator = comic.storedReaderLocator()
                )
            )
            activeBookSession = session
            when (session) {
                is LegacyFormatSessionAccess -> session.loadLegacyReader()
                else -> formatFactory.createReader(resolvedPath, detectedFormat)
            }
        }.getOrElse { error ->
            Log.w(TAG, "BookEngine open failed for $detectedFormat; falling back to FormatFactory", error)
            activeBookSession = null
            formatFactory.createReader(resolvedPath, detectedFormat)
        }
    }

    private suspend fun closeActiveBookSession() {
        val session = activeBookSession ?: return
        activeBookSession = null
        textReaderOrchestrator.activeSession = null
        runCatching {
            bookEngineRegistry.resolve(session.format)?.close(session.sessionId)
        }.onFailure { error ->
            Log.w(TAG, "Failed to close BookEngine session ${session.sessionId}", error)
        }
    }

    private fun closeReaderResources() {
        textReaderOrchestrator.cancelWebtoonLoad()
        runCatching { formatReader?.close() }
        formatReader = null
        viewModelScope.launch { closeActiveBookSession() }
    }

    private fun refreshAdjacentHtmlPages(centerPage: Int = _uiState.value.currentPage) {
        val previous = getCachedHtmlPage(centerPage - 1)
        val next = getCachedHtmlPage(centerPage + 1)
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

    private fun getCachedHtmlPage(index: Int): CachedHtmlPage? =
        textReaderOrchestrator.controller.cachedHtmlPage(index)

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
            visiblePagesFor = ::visiblePagesFor,
            isStillActive = { formatReader === reader && _uiState.value.comic?.id == comicId },
            loadPage = { pageIndex -> getOrLoadHtmlPage(reader, pageIndex) },
            onPagePrewarmed = { refreshAdjacentHtmlPages() },
            delayMillis = delayMillis
        )
    }

    private fun activeComicSupportsHighResZoom(): Boolean =
        _uiState.value.comic?.format?.supportsHighResZoomTiers() == true

    private fun calculateAccuratePage(sectionIndex: Int): Int {
        return progressController.calculateAccuratePage(sectionIndex, sectionPageCounts, totalBookSections)
    }

    private fun accumulatedTotalPagesForEpub(): Int {
        return progressController.accumulatedTotalPagesForEpub(sectionPageCounts, totalBookSections)
    }

    private fun isProgressAlreadyPersisted(comicId: String?, page: Int): Boolean =
        progressController.isProgressAlreadyPersisted(comicId, page)

    private suspend fun flushPendingProgressSave() {
        progressController.flushPendingProgressSave()
    }

    override fun onCleared() {
        // Snapshot the pending IO work, then run it on an application-scoped coroutine so leaving
        // the reader never blocks the main thread. These paths (progress save, session close) only
        // touch Room/DataStore/engine registry — all independent of the resources torn down below —
        // so completing them slightly after onCleared returns is safe. Previously three runBlocking
        // calls here caused an ANR on slow storage.
        emitReaderClosed()
        super.onCleared()
        loadComicJob?.cancel()
        tocLoadJob?.cancel()
        deferredTocWarmupJob?.cancel()
        eyeRestController.cancel()
        highQualityWarmupJob?.cancel()
        textReaderOrchestrator.cancelAllJobs()
        progressController.progressSaveJob?.cancel()
        pageTranslationNoteJob?.cancel()
        brightnessJob?.cancel()
        runCatching { formatReader?.close() }
        formatReader = null
        appScope.launch {
            runCatching { flushPendingProgressSave() }
                .onFailure { Log.e("ReaderViewModel", "Failed to flush progress on close", it) }
            runCatching { closeActiveBookSession() }
                .onFailure { Log.w(TAG, "Failed to close book session on close", it) }
        }
        pagePreloader.cancelPreload()
        pagePreloader.clearPages()
        clearHtmlPageCache()
    }

    private fun emitReaderClosed() {
        progressController.emitReaderClosed(appScope)
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
        if (p.needsPersistStylePresets) persistReaderStylePresetEntries(p.readerStylePresetEntries)
        eyeRestController.restartEyeRestTimer()
    }

    private fun detectFormatForPath(path: String): ComicFormat =
        ReaderContentPathResolver.detectFormatForPath(context, path)

    private fun resolveReadablePath(comic: Comic, fallbackPath: String): String? =
        ReaderContentPathResolver.resolveReadablePath(context, comic, fallbackPath)

    private fun cacheContentUriForEpub(comic: Comic, contentUri: String): String? =
        ReaderContentPathResolver.cacheContentUriForEpub(context, comic, contentUri)

    private fun resolveReadablePathFromPersistedPermissions(comic: Comic): String? =
        ReaderContentPathResolver.resolveReadablePathFromPersistedPermissions(context, comic)

    private fun isDocumentInsideTree(treeDocumentId: String, documentId: String): Boolean =
        ReaderContentPathResolver.isDocumentInsideTree(treeDocumentId, documentId)

    private fun documentIdToExternalPath(documentId: String): String? =
        ReaderContentPathResolver.documentIdToExternalPath(documentId)

    private fun isLocalFileReadable(path: String): Boolean =
        ReaderContentPathResolver.isLocalFileReadable(path)

    private fun hasReadAccess(path: String): Boolean =
        ReaderContentPathResolver.hasReadAccess(context, path)

    private suspend fun resolveTranslationTargetLanguage(): String {
        return resolveTranslationSettings().targetLanguage
    }

    private suspend fun resolveTranslationSettings(): TranslationServiceConfig {
        val appLanguage = normalizeAppLanguageCode(
            readerPreferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first()
        )
        val rawTargetLanguage = readerPreferences.get(PreferencesKeys.TRANSLATION_TARGET_LANGUAGE, "APP").first()
        val rawSourceLanguage = readerPreferences.get(PreferencesKeys.TRANSLATION_SOURCE_LANGUAGE, "AUTO").first()
        val rawTransport = readerPreferences.get(
            PreferencesKeys.TRANSLATION_TRANSPORT,
            TranslationTransportPreference.AUTO.name
        ).first()
        val explainEnabled = readerPreferences.get(PreferencesKeys.TRANSLATION_EXPLAIN_ENABLED, false).first()

        val targetLanguage = normalizeTranslationLanguageCode(rawTargetLanguage)
            ?: appLanguage
            ?: "ru"

        val sourceLanguage = normalizeTranslationLanguageCode(rawSourceLanguage)

        return TranslationServiceConfig.fromStored(
            mode = null,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage,
            preferredTransport = rawTransport,
            explainEnabled = explainEnabled
        )
    }

    private fun String.countSelectionTokens(): Int =
        SELECTION_TOKEN_REGEX.findAll(this).count().coerceAtLeast(if (isBlank()) 0 else 1)



    private fun isNetworkAvailable(): Boolean {
        val connectivityManager = context.getSystemService(ConnectivityManager::class.java) ?: return false
        val network = connectivityManager.activeNetwork ?: return false
        val capabilities = connectivityManager.getNetworkCapabilities(network) ?: return false
        return capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET) &&
            capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_VALIDATED)
    }

    private companion object {
        val SELECTION_TOKEN_REGEX = "[\\p{L}\\p{N}]+".toRegex()
    }
}

