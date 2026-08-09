package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.net.Uri
import android.util.Log
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderProgressRecap
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionCoordinator
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.model.repository.ImportRepository
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.LanguageDetector
import io.leostrange.mrcomic.core.domain.translation.LlmExplainEngine
import io.leostrange.mrcomic.core.domain.translation.LookupRouter
import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.ui.locale.normalizeAppLanguageCode
import io.leostrange.mrcomic.core.interfaces.analytics.ReaderCheckpointRepository
import io.leostrange.mrcomic.engine.api.BookSession
import io.leostrange.mrcomic.engine.api.FormatReader
import io.leostrange.mrcomic.engine.api.ReaderFactory
import io.leostrange.mrcomic.engine.api.SectionPaginator
import io.leostrange.mrcomic.engine.api.resolveRenderDeviceProfile
import io.leostrange.mrcomic.engine.registry.BookEngineRegistry
import io.leostrange.mrcomic.engine.rendering.preload.PagePreloader
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
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
    private val readerFactory: ReaderFactory,
    private val sectionPaginator: SectionPaginator,
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
    private val readerCheckpointStore: ReaderCheckpointRepository,
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
        TextReaderController(
            textWebtoonSessionController,
            TextPagePaginationController(sectionPaginator)
        )
    )
    private val sessionManager = ReaderBookSessionManager(
        bookEngineRegistry = bookEngineRegistry,
        readerFactory = readerFactory,
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
        getOrLoadHtmlPage = { reader, index -> pageCacheController.getOrLoadHtmlPage(reader, index) },
        refreshAdjacentHtmlPages = { pageCacheController.refreshAdjacentHtmlPages(it) },
        loadHighlightsForCurrentPage = { highlightController.loadHighlightsForCurrentPage() },
        activeBookSession = { activeBookSession }
    )

    fun getWebtoonHtmlPageFlow(index: Int): kotlinx.coroutines.flow.Flow<String?> =
        _webtoonHtmlCache.map { it[index] }.distinctUntilChanged()

    /** Clears the current error and retries loading the given bitmap page. */
    fun retryLoadPage(page: Int) {
        _uiState.update { it.copy(error = null) }
        pageLoader.loadPage(page)
    }

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
        prewarmHtmlPagesAround = { pageCacheController.prewarmHtmlPagesAround(it) },
        loadPageTranslationNote = { schedulePageTranslationNote(it) },
        saveProgress = { page, source -> progressController.saveProgress(page, source) },
        maybeEmitChapterMilestone = { page, source -> maybeEmitChapterMilestone(page, source) },
        isProgressAlreadyPersisted = { comicId, page -> progressController.isProgressAlreadyPersisted(comicId, page) },
        scheduleHighQualityWarmup = { openingController.warmupAroundPage(it) },
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
        prewarmHtmlPagesAround = { pageCacheController.prewarmHtmlPagesAround(it) },
        activeComicSupportsBitmapPreload = { !_uiState.value.readerRendersHtmlContent },
        markReaderPresetCustom = { settingsController.markReaderPresetCustom() },
        getLastTextWebtoonSection = { navigationController.lastTextWebtoonVisibleSection }
    )
    private val openGuard = io.leostrange.mrcomic.feature.reader.domain.session.ReaderOpenGuard()

    /** 4.2 (slice 2): html page cache / TOC / prewarm operations. */
    private val pageCacheController: ReaderPageCacheController by lazy {
        ReaderPageCacheController(
            scope = viewModelScope,
            _uiState = _uiState,
            textReaderOrchestrator = textReaderOrchestrator,
            _webtoonHtmlCache = _webtoonHtmlCache,
            navigationController = navigationController,
            progressController = progressController,
            formatReader = { formatReader },
            activeBookSession = { activeBookSession }
        )
    }

    /** 4.2 (slice 1): the book-opening pipeline. */
    private val openingController: ReaderBookOpeningController by lazy {
        ReaderBookOpeningController(
            scope = viewModelScope,
            openGuard = openGuard,
            _uiState = _uiState,
            readerBookPreparer = readerBookPreparer,
            sessionManager = sessionManager,
            readingModeController = readingModeController,
            navigationController = navigationController,
            progressController = progressController,
            pagePreloader = pagePreloader,
            pageLoader = pageLoader,
            warmupController = warmupController,
            deferredTasks = deferredTasks,
            eyeRestController = eyeRestController,
            textReaderOrchestrator = textReaderOrchestrator,
            readerSessionCoordinator = readerSessionCoordinator,
            analyticsTracker = analyticsTracker,
            bookmarkController = bookmarkController,
            context = context,
            renderTier = renderProfile.tier,
            localizedError = { provider -> localizedReaderError(provider) },
            formatReader = { formatReader },
            setFormatReader = { formatReader = it },
            activeBookSession = { activeBookSession },
            clearHtmlPageCache = { pageCacheController.clearHtmlPageCache() },
            loadToc = { force -> pageCacheController.loadToc(force) },
            prewarmHtmlPagesAround = { page, delayMillis -> pageCacheController.prewarmHtmlPagesAround(page, delayMillis) },
            schedulePageTranslationNote = { schedulePageTranslationNote(it) },
        )
    }

    private val encodedUri: String? = savedStateHandle["uri"]
    private val encodedComicId: String? = savedStateHandle["comicId"]

    init {
        openingController.seedPendingRequestedPage(savedStateHandle.get<Int>("page"))
        viewModelScope.launch {
            restoreReaderPreferences()
            when {
                !encodedComicId.isNullOrBlank() -> {
                    val id = Uri.decode(encodedComicId)
                    openingController.openFromSource(
                        fetchComic = { libraryRepository.getComicById(id) },
                        sourcePath = { it.path },
                        errorProvider = ::readerComicNotFoundMessage
                    )
                }
                !encodedUri.isNullOrBlank() -> {
                    val path = Uri.decode(encodedUri)
                    openingController.openFromSource(
                        fetchComic = { libraryRepository.getComicByPath(path) ?: importRepository.addComic(Uri.parse(path)) },
                        sourcePath = { path },
                        errorProvider = ::readerComicLookupFailedMessage
                    )
                }
            }
        }
    }

    /** Opens/closes the table-of-contents bottom sheet. */
    fun toggleTocSheet() = chromeController.toggleTocSheet(
        hasTableOfContents = _uiState.value.tableOfContents.isNotEmpty(),
        loadToc = { pageCacheController.loadToc(force = true) }
    )

    fun onPagedLayoutPageCountChanged(
        pageCount: Int,
        pageIndex: Int = 0,
        characterOffset: Int = 0
    ) {
        // This callback reports visual subpages inside the currently loaded HTML
        // section as calculated by the WebView JS pagination engine.
        if (pageCount <= 0) return
        val sectionIndex = _uiState.value.currentPage
        val safePageIndex = pageIndex.coerceIn(0, pageCount - 1)
        val safeCharacterOffset = characterOffset.coerceAtLeast(0)
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
                sectionCharacterOffset = safeCharacterOffset,
                epubAccumulatedTotalPages = progress.accumulatedTotalPages,
                epubAccumulatedCurrentPage = progress.accumulatedCurrentPage
            )
        }
    }

    fun tocDisplayPage(enginePageIndex: Int): Int =
        pageCacheController.tocDisplayPage(enginePageIndex)

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

    override fun onCleared() {
        // Snapshot the pending IO work, then run it on an application-scoped coroutine so leaving
        // the reader never blocks the main thread. These paths (progress save, session close) only
        // touch Room/DataStore/engine registry — all independent of the resources torn down below —
        // so completing them slightly after onCleared returns is safe. Previously three runBlocking
        // calls here caused an ANR on slow storage.
        progressController.emitReaderClosed(appScope)
        super.onCleared()
        openingController.cancelPendingOpen()
        pageCacheController.cancelPendingToc()
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
        pageCacheController.clearHtmlPageCache()
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

    private companion object {
        const val TAG = "ReaderViewModel"
    }

}
