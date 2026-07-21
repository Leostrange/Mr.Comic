package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.graphics.Bitmap
import android.net.Uri
import android.os.Environment
import android.provider.DocumentsContract
import android.util.Log
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.emptyPreferences
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import androidx.core.text.HtmlCompat
import io.leostrange.mrcomic.feature.reader.domain.enums.FootnotePresentation
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderChromeState
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderProgressRecapType
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
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSlot
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSnapshot
import io.leostrange.mrcomic.feature.reader.domain.preset.migrateLegacyReaderStyleSlotsToEntries
import io.leostrange.mrcomic.feature.reader.domain.preset.parseReaderStylePreset
import io.leostrange.mrcomic.feature.reader.domain.preset.parseReaderStylePresetEntries
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
import io.leostrange.mrcomic.core.model.ReaderScreenTimeoutMode
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
import io.leostrange.mrcomic.core.domain.util.normalizeTapZoneActionName
import io.leostrange.mrcomic.engine.formats.base.FormatFactory
import io.leostrange.mrcomic.engine.formats.base.FormatDetector
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.epub.EpubReadablePath
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
    private val settingsController = ReaderSettingsController(
        _uiState = _uiState,
        viewModelScope = viewModelScope,
        readerPreferences = readerPreferences,
        dataStore = context.dataStore
    )
    private val renderProfile = context.resolveRenderDeviceProfile()
    private var formatReader: FormatReader? = null
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
    private val textWebtoonSessionController = TextWebtoonSessionController(viewModelScope)
    private val textReaderOrchestrator = TextReaderOrchestrator(
        TextReaderController(textWebtoonSessionController)
    )

    /**
     * Per-page HTML cache for WEBTOON mode — used for formats (DjVu) where some pages
     * have no bitmap render path but do provide HTML content via [FormatReader.getHtmlPage].
     */
    private val _webtoonHtmlCache = MutableStateFlow<Map<Int, String>>(emptyMap())

    fun getWebtoonHtmlPageFlow(index: Int): kotlinx.coroutines.flow.Flow<String?> =
        _webtoonHtmlCache.map { it[index] }.distinctUntilChanged()
    private var loadComicJob: Job? = null
    private var tocLoadJob: Job? = null
    private var deferredTocWarmupJob: Job? = null
    private var deferredPageCountJob: Job? = null
    private var eyeRestJob: Job? = null
    private var highQualityWarmupJob: Job? = null
    private var progressSaveJob: Job? = null
    private var pageTranslationNoteJob: Job? = null
    private var pendingProgressSave: PendingProgressSave? = null
    private var lastPersistedProgress: PersistedProgressMarker? = null
    private val lastChapterMilestone = AtomicReference<ChapterMilestoneMarker?>(null)
    private val readerSessionCoordinator = ReaderSessionCoordinator()
    private var lastRetainedHighQualityPages: Set<Int> = emptySet()
    private val openGuard = io.leostrange.mrcomic.feature.reader.domain.session.ReaderOpenGuard()
    /**
     * Accumulated visual page counts per spine section for EPUB (sectionIndex → pageCount).
     *
     * Accessed concurrently: written from [onPagedLayoutPageCountChanged] (WebView callback,
     * main thread) and iterated from [calculateAccuratePage]/[accumulatedTotalPagesForEpub]
     * (coroutine progress-save + main). [ConcurrentHashMap] makes individual reads/writes
     * atomic; iterations use a stable snapshot copy via [snapshotSectionPageCounts] so
     * accumulation never races with a concurrent put (no ConcurrentModificationException,
     * no missed pages).
     */
    private val sectionPageCounts = java.util.concurrent.ConcurrentHashMap<Int, Int>()

    /**
     * Total number of sections (spine items) in the book. Set once when the book opens.
     * Used by [accumulatedTotalPagesForEpub] to estimate total visual pages including
     * unvisited sections, preventing premature 100% progress display.
     */
    private var totalBookSections: Int = 0

    /** Returns a stable snapshot copy for accumulation; never expose the live map. */
    private fun snapshotSectionPageCounts(): Map<Int, Int> =
        synchronized(sectionPageCounts) { sectionPageCounts.toMap() }
    private val encodedUri: String? = savedStateHandle["uri"]
    private val encodedComicId: String? = savedStateHandle["comicId"]
    private var pendingRequestedPage: Int? = savedStateHandle.get<Int>("page")?.takeIf { it >= 0 }

    /**
     * The reading mode to restore when rotating back to portrait.
     * Updated every time the user manually picks a portrait mode
     * (PAGE_LTR / PAGE_RTL / WEBTOON).
     */
    private var portraitReadingMode: ReadingMode = ReadingMode.PAGE_LTR
    private var portraitPagedReadingMode: ReadingMode = ReadingMode.PAGE_LTR

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
            flushPendingProgressSave()
            progressSaveJob?.cancel()
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
            eyeRestJob?.cancel()
            highQualityWarmupJob?.cancel()
            textReaderOrchestrator.cancelPrewarmJob()
            if (!openGuard.isCurrent(requestToken)) return
            lastRetainedHighQualityPages = emptySet()
            pagePreloader.clearPages()
            clearHtmlPageCache()
            closeReaderResources()

            if (!openGuard.isCurrent(requestToken)) return
            val prepared = withContext(Dispatchers.IO) {
                val resolvedPath = resolveReadablePath(comic, sourcePath)
                    ?: throw java.io.FileNotFoundException("Reader source is not readable: $sourcePath")
                // Re-detect by extension when stored format might be wrong (e.g. EPUB stored as CBZ
                // because magic bytes of EPUB == ZIP). Extension is always more reliable than magic.
                val detectedFormat = when (comic.format) {
                    ComicFormat.UNKNOWN, ComicFormat.CBZ, ComicFormat.ZIP -> {
                        val byPath = detectFormatForPath(resolvedPath)
                        if (byPath != ComicFormat.UNKNOWN) byPath else comic.format
                    }
                    else -> comic.format
                }
                val newReader = if (detectedFormat.isTextReadingFormat()) {
                    openTextFormatReader(comic, resolvedPath, detectedFormat)
                } else {
                    formatFactory.createReader(resolvedPath, detectedFormat)
                }
                val readerRendersHtmlContent =
                    newReader?.rendersHtmlContent() == true || detectedFormat.isTextReadingFormat()
                val contentFormat = newReader?.resolvedContentFormat() ?: detectedFormat
                val deferPageCount = shouldDeferReaderPageCount(
                    readerRendersHtmlContent = readerRendersHtmlContent,
                    contentFormat = contentFormat
                )
                val pages = if (deferPageCount) {
                    1
                } else {
                    try {
                        newReader?.getPageCount() ?: 0
                    } catch (t: Throwable) {
                        newReader?.close()
                        throw t
                    }
                }
                PreparedReaderOpen(
                    resolvedPath = resolvedPath,
                    detectedFormat = detectedFormat,
                    contentFormat = contentFormat,
                    reader = newReader,
                    pages = pages,
                    readerRendersHtmlContent = readerRendersHtmlContent,
                    deferPageCount = deferPageCount
                )
            }
            if (!openGuard.isCurrent(requestToken)) {
                prepared.reader?.close()
                return
            }
            val detectedFormat = prepared.detectedFormat
            val newReader = prepared.reader
            formatReader = newReader
            sectionPageCounts.clear()
            totalBookSections = prepared.pages.coerceAtLeast(1)

            if (formatReader == null) {
                val errorMessage = localizedReaderError { language ->
                    readerUnsupportedFormatMessage(detectedFormat.name, language)
                }
                _uiState.update { it.copy(error = errorMessage, isLoading = false) }
                return
            }
            val activeReader = newReader ?: return

            if (!openGuard.isCurrent(requestToken)) {
                formatReader?.takeIf { it === activeReader }?.close()
                if (formatReader === activeReader) {
                    formatReader = null
                }
                return
            }

            val readerRendersHtmlContent = prepared.readerRendersHtmlContent
            val openingMode = effectiveOpeningModeFor(detectedFormat, readerRendersHtmlContent)
            val requestedPage = pendingRequestedPage
            val shouldDeferCount = prepared.deferPageCount
            val initialPages = if (shouldDeferCount) 1 else prepared.pages.coerceAtLeast(1)
            val startPage = normalizePageForMode(
                page = requestedPage ?: comic.currentPage,
                mode = openingMode,
                totalPages = initialPages
            )
            pendingRequestedPage = null
            lastPersistedProgress = if (requestedPage != null && requestedPage != comic.currentPage) {
                PersistedProgressMarker(
                    comicId = comic.id,
                    page = normalizePageForMode(
                        page = comic.currentPage,
                        mode = openingMode,
                        totalPages = initialPages
                    )
                )
            } else {
                PersistedProgressMarker(
                    comicId = comic.id,
                    page = startPage
                )
            }
            _uiState.update {
                it.copy(
                    comic = comic,
                    totalPages = initialPages,
                    readerRendersHtmlContent = readerRendersHtmlContent,
                    readerContainerKind = resolveReaderContainerKind(
                        format = detectedFormat,
                        readingMode = openingMode,
                        readerRendersHtmlContent = readerRendersHtmlContent
                    ),
                    readingMode = openingMode,
                    currentPage = startPage,
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
            val sessionStartedAtMillis = System.currentTimeMillis()
            val resumedFromProgress = requestedPage != null || comic.currentPage > 0
            val readerSession = ReaderSessionSnapshot(
                comicId = comic.id,
                format = comic.format.name,
                totalPages = initialPages,
                startPage = startPage,
                readingMode = openingMode.name,
                startedAtMillis = sessionStartedAtMillis,
                resumedFromProgress = resumedFromProgress
            )
            readerSessionCoordinator.start(readerSession)
            analyticsTracker.track(
                ReadingAnalyticsEvent.ReaderOpened(
                    comicId = comic.id,
                    format = comic.format.name,
                    totalPages = initialPages,
                    startPage = startPage,
                    readingMode = openingMode.name,
                    startedAtMillis = sessionStartedAtMillis,
                    resumedFromProgress = resumedFromProgress
                )
            )
            if (!openGuard.isCurrent(requestToken)) return
            formatReader?.let { reader ->
                if (readerRendersHtmlContent) {
                    syncBookEngineTextLayer(reader)
                }
            }
            val visiblePages = visiblePagesFor(startPage, openingMode)
            if (!shouldDeferCount) {
                formatReader?.takeUnless { readerRendersHtmlContent }?.let { reader ->
                    pagePreloader.preloadAround(reader, visiblePages, prepared.pages, _uiState.value.preloadPages)
                }
                visiblePages.forEach { visiblePage ->
                    loadPage(visiblePage)
                }
                if (readerRendersHtmlContent) {
                    prewarmHtmlPagesAround(startPage, delayMillis = 180L)
                    if (_uiState.value.readerContainerKind == ReaderContainerKind.TEXT_PAGE) {
                        scheduleTextPagePaginationBuild()
                    }
                }
            } else {
                // For heavy reflowable formats, load the first page immediately so the UI
                // is not blank, then resolve the real page count in the background.
                visiblePages.forEach { visiblePage ->
                    loadPage(visiblePage)
                }
                if (readerRendersHtmlContent) {
                    prewarmHtmlPagesAround(startPage, delayMillis = 180L)
                    if (_uiState.value.readerContainerKind == ReaderContainerKind.TEXT_PAGE) {
                        scheduleTextPagePaginationBuild()
                    }
                }
                scheduleDeferredPageCountResolution(
                    comic = comic,
                    reader = activeReader,
                    requestToken = requestToken,
                    openingMode = openingMode,
                    startPage = startPage,
                    initialPages = initialPages
                )
            }
            scheduleHighQualityWarmup(startPage)
            scheduleDeferredTocWarmup()
            loadBookmarks(comic.id, initialPages)
            loadPageTranslationNote(comic.id, startPage)
            restartEyeRestTimer()
        } catch (e: CancellationException) {
            throw e
        } catch (e: Exception) {
            if (!openGuard.isCurrent(requestToken)) return
            Log.e("ReaderViewModel", "Failed to open comic", e)
            eyeRestJob?.cancel()
            highQualityWarmupJob?.cancel()
            deferredPageCountJob?.cancel()
            val errorMessage = localizedReaderError(::readerOpenFailedMessage)
            _uiState.update { it.copy(error = errorMessage, isLoading = false) }
        }
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

    fun getPage(index: Int, renderQuality: Int = 1): Bitmap? =
        pagePreloader.getPage(index, renderQuality)

    /** Flow-based accessor — no polling needed in the UI. */
    fun getPageFlow(index: Int, renderQuality: Int = 1) =
        pagePreloader.getPageFlow(index, renderQuality)

    fun loadPage(index: Int, renderQuality: Int = 1) {
        val comicId = _uiState.value.comic?.id
        val reader = formatReader
        viewModelScope.launch {
            if (reader == null || formatReader !== reader) return@launch
            // HTML rendering is only the contract for text/reflowable formats.
            // Raster formats such as DjVu can expose diagnostic/visual HTML, but
            // the reader must keep them on the bitmap path.
            if (_uiState.value.readerRendersHtmlContent) {
                val cachedHtmlPage = runCatching {
                    getOrLoadHtmlPage(reader, index)
                }.getOrElse { error ->
                    Log.e("ReaderViewModel", "Failed to load HTML page $index", error)
                    if (_uiState.value.currentPage == index) {
                        CachedHtmlPage(
                            html = textReaderOrchestrator.loadErrorHtml(index, error),
                            assetBasePath = null
                        )
                    } else {
                        null
                    }
                }
                if (cachedHtmlPage != null) {
                    if (
                        formatReader === reader &&
                        _uiState.value.comic?.id == comicId &&
                        _uiState.value.currentPage == index
                    ) {
                        _uiState.update {
                            it.copy(
                                currentHtmlContent = cachedHtmlPage.html,
                                htmlAssetBasePath = cachedHtmlPage.assetBasePath,
                                textWebtoonHtmlContent = if (it.readingMode == ReadingMode.WEBTOON) {
                                    it.textWebtoonHtmlContent
                                } else {
                                    null
                                },
                                textWebtoonHtmlAssetBasePath = if (it.readingMode == ReadingMode.WEBTOON) {
                                    it.textWebtoonHtmlAssetBasePath
                                } else {
                                    null
                                },
                                textWebtoonHtmlPageCount = if (it.readingMode == ReadingMode.WEBTOON) {
                                    it.textWebtoonHtmlPageCount
                                } else {
                                    0
                                }
                            )
                        }
                        refreshAdjacentHtmlPages(index)
                        loadHighlightsForCurrentPage()
                    }
                    return@launch
                }
                if (_uiState.value.currentPage == index && formatReader === reader && comicId != null) {
                    Log.w("ReaderViewModel", "Empty HTML for page $index; showing error surface")
                    _uiState.update {
                        it.copy(
                            currentHtmlContent = textReaderOrchestrator.loadErrorHtml(
                                index,
                                IllegalStateException("Empty HTML page")
                            ),
                            htmlAssetBasePath = null
                        )
                    }
                }
                return@launch
            }
            // Bitmap page (image-based formats)
            if (renderQuality == 1) {
                if (formatReader === reader && _uiState.value.comic?.id == comicId && _uiState.value.currentPage == index) {
                    _uiState.update {
                        it.copy(
                            currentHtmlContent = null,
                            htmlAssetBasePath = null,
                            previousHtmlContent = null,
                            previousHtmlAssetBasePath = null,
                            nextHtmlContent = null,
                            nextHtmlAssetBasePath = null
                        )
                    }
                }
            }
            if (pagePreloader.getPage(index, renderQuality) == null) {
                pagePreloader.loadPage(reader, index, renderQuality)
            }
            // preloadAround is NOT called here — calling it per-item (e.g. from LazyColumn)
            // would cancel the previous preload job on every item composition, starving
            // the first pages. Preloading is triggered only from navigateTo / openComic.
        }
    }

    fun preloadWebtoonWindow(pages: List<Int>) {
        val reader = formatReader ?: return
        val state = _uiState.value
        if (state.totalPages <= 0 || state.readerRendersHtmlContent) return
        val validPages = pages
            .asSequence()
            .filter { it in 0 until state.totalPages }
            .distinct()
            .toList()
        if (validPages.isEmpty()) return

        validPages.forEach { pageIndex ->
            viewModelScope.launch {
                if (formatReader !== reader) return@launch
                if (pagePreloader.getPage(pageIndex, 1) == null) {
                    pagePreloader.loadPage(reader, pageIndex, 1)
                }
                // HTML fallback for formats (e.g. DjVu) where some pages have no bitmap.
                if (formatReader !== reader) return@launch
                if (pagePreloader.getPage(pageIndex, 1) == null &&
                    _webtoonHtmlCache.value[pageIndex] == null
                ) {
                    val html = withContext(Dispatchers.IO) {
                        runCatching { reader.getHtmlPage(pageIndex) }.getOrNull()
                    }
                    if (html != null && formatReader === reader) {
                        _webtoonHtmlCache.update { it + (pageIndex to html) }
                    }
                }
            }
        }

        pagePreloader.preloadAround(
            reader = reader,
            visiblePages = validPages,
            totalPages = state.totalPages,
            preloadAhead = state.preloadPages
        )
    }

    fun ensureTextWebtoonDocumentLoaded() {
        val reader = formatReader ?: return
        val state = _uiState.value
        val comic = state.comic ?: return
        if (state.readerContainerKind != ReaderContainerKind.TEXT_WEBTOON) return
        textReaderOrchestrator.controller.ensureTextWebtoonDocumentLoaded(
            scope = viewModelScope,
            reader = reader,
            comic = comic,
            state = state,
            isSessionActive = { activeReader, comicId ->
                formatReader === activeReader && _uiState.value.comic?.id == comicId
            },
            loadPage = { activeReader, pageIndex -> getOrLoadHtmlPage(activeReader, pageIndex) },
            buildDocument = TextWebtoonDocumentBuilder::build,
            publish = { document, loadedCount ->
                _uiState.update { current ->
                    if (current.comic?.id != comic.id || formatReader !== reader) {
                        current
                    } else if (
                        current.textWebtoonHtmlContent != null &&
                        current.textWebtoonHtmlPageCount >= loadedCount
                    ) {
                        current
                    } else {
                        current.copy(
                            textWebtoonHtmlContent = document.html,
                            textWebtoonHtmlAssetBasePath = document.assetBasePath,
                            textWebtoonHtmlPageCount = loadedCount
                        )
                    }
                }
            }
        )
    }

    fun navigateTo(
        page: Int,
        progressSource: ReaderNavigationProgressSource = ReaderNavigationProgressSource.READING
    ) {
        val resolvedPage = resolveNavigationPage(page, progressSource)
        val clamped = normalizePageForMode(
            page = resolvedPage,
            mode = _uiState.value.readingMode,
            totalPages = _uiState.value.totalPages
        )
        val previousState = _uiState.value
        val shouldResetInlineState =
            previousState.selectedTextActionSheet != null || previousState.selectedTextTranslation != null
        if (clamped == previousState.currentPage && !shouldResetInlineState) {
            return
        }
        if (countsAsManualPageTurn(progressSource)) {
            readerSessionCoordinator.recordManualPageTurn()
        }
        _uiState.update {
            val sectionPaging = sectionPagingStateAfterNavigation(
                previousSection = previousState.currentPage,
                nextSection = clamped,
                previousPageCount = previousState.sectionPageCount,
                previousPageIndex = previousState.sectionCurrentPage
            )
            it.copy(
                currentPage = clamped,
                sectionPageCount = sectionPaging.pageCount,
                sectionCurrentPage = sectionPaging.pageIndex,
                footnotePopup = null,
                footnotePresentation = FootnotePresentation.PEEK,
                selectedTextActionSheet = null,
                selectedTextTranslation = null
            )
        }
        if (_uiState.value.pageSoundEnabled && progressSource == ReaderNavigationProgressSource.READING) {
            PageSoundPlayer.play(
                context = context,
                style = PageSoundStyle.fromStored(_uiState.value.pageSoundStyle)
            )
        }
        syncReaderPosition(
            page = clamped,
            mode = _uiState.value.readingMode,
            persistProgress = true,
            progressSource = progressSource
        )
    }

    fun navigateToTocEntry(page: Int, anchorId: String, sectionIndex: Int = -1, charOffset: Int = -1) {
        val current = _uiState.value.currentPage
        if (sectionIndex >= 0 && sectionIndex != current) {
            _uiState.update { it.copy(pendingScrollToAnchor = anchorId) }
            navigateTo(sectionIndex, progressSource = ReaderNavigationProgressSource.JUMP)
            return
        }
        if (page == current) {
            _uiState.update { it.copy(pendingScrollToAnchor = anchorId) }
            return
        }
        _uiState.update { it.copy(pendingScrollToAnchor = anchorId) }
        navigateTo(page, progressSource = ReaderNavigationProgressSource.JUMP)
    }

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

    fun nextPage() = navigateTo(
        _uiState.value.currentPage + pageStepForMode(_uiState.value.readingMode),
        progressSource = ReaderNavigationProgressSource.READING
    )
    fun prevPage() = navigateTo(
        _uiState.value.currentPage - pageStepForMode(_uiState.value.readingMode),
        progressSource = ReaderNavigationProgressSource.READING
    )

    /**
     * Saves the current page bitmap to the app cache directory and emits the file path
     * via [ocrPagePath] for the OCR screen to consume.
     */
    fun requestOcr() {
        viewModelScope.launch {
            val pageIndex = _uiState.value.currentPage
            val comicId = _uiState.value.comic?.id
            val reader = formatReader ?: return@launch
            val preferredOcrQualityTier = when (renderProfile.tier) {
                RenderDeviceTier.HIGH_END -> 3
                RenderDeviceTier.MID_RANGE -> 2
                else -> 1
            }
            val bitmap = getPage(pageIndex, preferredOcrQualityTier)
                ?: getPage(pageIndex, 3)
                ?: getPage(pageIndex, 2)
                ?: getPage(pageIndex, 1)
                ?: pagePreloader.loadPage(reader, pageIndex, preferredOcrQualityTier)
                ?: pagePreloader.loadPage(reader, pageIndex, 3)
                ?: pagePreloader.loadPage(reader, pageIndex, 2)
                ?: pagePreloader.loadPage(reader, pageIndex, 1)
                ?: return@launch
            try {
                if (formatReader !== reader || _uiState.value.comic?.id != comicId || _uiState.value.currentPage != pageIndex) {
                    return@launch
                }
                val file = java.io.File.createTempFile(
                    "ocr_page_${comicId ?: "standalone"}_${pageIndex}_",
                    ".png",
                    context.cacheDir
                )
                withContext(Dispatchers.IO) {
                    file.outputStream().use { out ->
                        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, out)
                    }
                }
                _ocrPagePath.emit(
                    OcrLaunchRequest(
                        imagePath = file.absolutePath,
                        comicId = comicId,
                        page = pageIndex
                    )
                )
            } catch (e: Exception) {
                Log.e("ReaderViewModel", "Failed to save page for OCR", e)
            }
        }
    }

    fun requestTextPageTranslation(page: Int = _uiState.value.currentPage) {
        viewModelScope.launch {
            val reader = formatReader ?: return@launch
            val totalPages = _uiState.value.totalPages
            val safePage = page.coerceIn(0, (totalPages - 1).coerceAtLeast(0))
            val html = runCatching { reader.getHtmlPage(safePage) }.getOrNull() ?: return@launch
            val plainText = HtmlCompat.fromHtml(html, HtmlCompat.FROM_HTML_MODE_LEGACY)
                .toString()
                .replace('\u00A0', ' ')
                .replace(Regex("\\s+"), " ")
                .trim()
                .take(5000)
            if (plainText.isBlank()) return@launch
            translateSelectedText(
                selectedText = plainText,
                preferDictionary = false
            )
        }
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
        translateSelectedText(
            selectedText = selectedText,
            preferDictionary = false
        )
    }

    fun openDictionaryFromSelectedTextActions() {
        val selectedText = _uiState.value.selectedTextActionSheet?.originalText ?: return
        dismissSelectedTextActions()
        translateSelectedText(
            selectedText = selectedText,
            preferDictionary = true
        )
    }

    fun saveQuoteFromSelectedTextActions() {
        val selectedText = _uiState.value.selectedTextActionSheet?.originalText ?: return
        dismissSelectedTextActions()
        saveQuote(
            text = selectedText,
            translatedText = null,
            sourceLanguage = null,
            targetLanguage = null
        )
    }

    fun saveQuoteDirectly(selectedText: String) {
        saveQuote(
            text = selectedText,
            translatedText = null,
            sourceLanguage = null,
            targetLanguage = null
        )
    }

    fun explainFromSelectedTextActions() {
        val selectedText = _uiState.value.selectedTextActionSheet?.originalText ?: return
        dismissSelectedTextActions()
        explainSelectedText(selectedText)
    }

    fun explainSelectedTextDirect(selectedText: String) {
        explainSelectedText(selectedText)
    }

    fun highlightSelectedText(selectedText: String) {
        val normalized = selectedText.trim().replace(Regex("\\s+"), " ")
        if (normalized.isBlank()) return
        _uiState.update { it.copy(pendingHighlightText = normalized) }
    }

    fun confirmHighlight(colorArgb: Int) {
        val text = _uiState.value.pendingHighlightText ?: return
        _uiState.update { it.copy(pendingHighlightText = null) }
        val comic = _uiState.value.comic ?: return
        val page = _uiState.value.currentPage
        viewModelScope.launch {
            runCatching {
                val html = _uiState.value.currentHtmlContent.orEmpty()
                val bodyText = html.replace(Regex("<[^>]+>"), " ").replace(Regex("\\s+"), " ")
                val startOffset = bodyText.indexOf(text).coerceAtLeast(0)
                val endOffset = startOffset + text.length
                textHighlightRepository.saveHighlight(
                    io.leostrange.mrcomic.core.model.TextHighlight(
                        comicId = comic.id,
                        comicTitle = comic.title ?: "",
                        page = page,
                        text = text,
                        startOffset = startOffset,
                        endOffset = endOffset,
                        colorArgb = colorArgb
                    )
                )
                loadHighlightsForCurrentPage()
            }.onFailure { e ->
                Log.w("ReaderVM", "Failed to save highlight", e)
            }
        }
    }

    fun dismissHighlight() {
        _uiState.update { it.copy(pendingHighlightText = null) }
    }

    fun deleteHighlight(id: String) {
        viewModelScope.launch {
            runCatching {
                textHighlightRepository.deleteHighlight(id)
                loadHighlightsForCurrentPage()
            }
        }
    }

    private fun loadHighlightsForCurrentPage() {
        val comicId = _uiState.value.comic?.id ?: return
        val page = _uiState.value.currentPage
        viewModelScope.launch {
            textHighlightRepository.highlightsForPage(comicId, page).collect { highlights ->
                _uiState.update { it.copy(pageHighlights = highlights) }
            }
        }
    }

    fun injectHighlightsJs(): String {
        val highlights = _uiState.value.pageHighlights
        return HighlightJsGenerator.generate(highlights)
    }

    /**
     * Compare translations from multiple engines side by side.
     */
    fun compareTranslations(selectedText: String) {
        val normalized = selectedText.trim().replace(Regex("\\s+"), " ")
        if (normalized.isBlank()) return

        _uiState.update {
            it.copy(translationComparison = TranslationComparisonUi(
                originalText = normalized,
                results = emptyList(),
                isLoading = true
            ))
        }

        viewModelScope.launch {
            val translationSettings = resolveTranslationSettings()
            val sourceLang = translationSettings.sourceLanguage ?: "auto"
            val targetLang = translationSettings.targetLanguage

            val comparisonResults = translationComparisonEngine.compare(
                normalized, sourceLang, targetLang
            )

            _uiState.update {
                it.copy(translationComparison = TranslationComparisonUi(
                    originalText = normalized,
                    results = comparisonResults.map { r ->
                        ComparisonResultUi(
                            engineName = r.engineName,
                            translatedText = r.translatedText,
                            success = r.success,
                            error = r.error
                        )
                    },
                    isLoading = false
                ))
            }
        }
    }

    fun dismissTranslationComparison() {
        _uiState.update { it.copy(translationComparison = null) }
    }

    /**
     * Translate the current page/chapter text using the unified TranslatorEngine.
     * Splits text into paragraphs, translates sequentially, reports progress.
     */
    fun translateCurrentChapter() {
        val html = _uiState.value.currentHtmlContent ?: return

        viewModelScope.launch {
            val translationSettings = resolveTranslationSettings()
            val sourceLang = translationSettings.sourceLanguage ?: "auto"
            val targetLang = translationSettings.targetLanguage

            // Check if engine is available before starting
            val engineAvailable = try {
                translatorEngine.isLanguagePairAvailable(sourceLang, targetLang)
            } catch (e: Exception) {
                false
            }

            if (!engineAvailable) {
                _uiState.update {
                    it.copy(error = "Translation not available. Configure an engine in Settings → AI Services.")
                }
                return@launch
            }

            // Extract paragraphs from HTML
            val paragraphs = html
                .replace(Regex("<br\\s*/?>", RegexOption.IGNORE_CASE), "\n")
                .replace(Regex("<p[^>]*>", RegexOption.IGNORE_CASE), "\n")
                .replace(Regex("</p>", RegexOption.IGNORE_CASE), "\n")
                .replace(Regex("<[^>]+>"), "")
                .split(Regex("\n+"))
                .map { it.trim() }
                .filter { it.isNotBlank() }

            if (paragraphs.isEmpty()) return@launch

            _uiState.update {
                it.copy(chapterTranslationProgress = ChapterTranslationProgressUi(
                    totalParagraphs = paragraphs.size,
                    completedParagraphs = 0
                ))
            }

            val translatedParagraphs = mutableListOf<String>()
            for ((index, paragraph) in paragraphs.withIndex()) {
                try {
                    val translated = translatorEngine.translate(paragraph, sourceLang, targetLang)
                    translatedParagraphs.add(translated)
                } catch (e: Exception) {
                    translatedParagraphs.add(paragraph) // Keep original on failure
                }
                _uiState.update {
                    it.copy(chapterTranslationProgress = ChapterTranslationProgressUi(
                        totalParagraphs = paragraphs.size,
                        completedParagraphs = index + 1,
                        currentPreview = paragraph.take(50)
                    ))
                }
            }

            // Build translated HTML
            val translatedHtml = translatedParagraphs.joinToString("\n") { "<p>$it</p>" }
            _uiState.update {
                it.copy(
                    currentHtmlContent = translatedHtml,
                    chapterTranslationProgress = null
                )
            }
        }
    }

    fun translateSelectedText(
        selectedText: String,
        preferredTransport: TranslationTransportPreference? = null,
        preferDictionary: Boolean = true
    ) {
        val normalizedText = selectedText
            .trim()
            .replace(Regex("\\s+"), " ")
        if (normalizedText.isBlank()) return
        val tokenCount = normalizedText.countSelectionTokens()
        val canTranslateAsPhrase = tokenCount <= 3
        val canUseDictionaryLookup = tokenCount <= 3

        viewModelScope.launch {
            val translationSettings = resolveTranslationSettings()
            val effectiveTransport = preferredTransport ?: translationSettings.preferredTransport
            val targetLanguage = translationSettings.targetLanguage
            val canExplainSelection = true
            _uiState.update {
                it.copy(
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canTranslateAsPhrase = canTranslateAsPhrase,
                            canExplain = canExplainSelection,
                            isLoading = true
                        )
                    )
            }

            val detectionResult = translationSettings.sourceLanguage?.let { sourceLanguage ->
                LanguageDetectionResult(
                    languageCode = sourceLanguage,
                    isReliable = true,
                    fallbackUsed = true
                )
            } ?: when (val detection = languageDetector.detectLanguage(normalizedText)) {
                is Result.Success -> detection.data
                is Result.Error -> null
                Result.Loading -> null
            }

            val detectedLanguage = detectionResult
                ?.languageCode
                ?.takeUnless { it == "und" }

            val singleWordDictionaryMatch = if (tokenCount == 1) {
                resolveSingleWordDictionaryMatch(
                    rawWord = normalizedText,
                    targetLanguage = targetLanguage,
                    preferredSourceLanguage = translationSettings.sourceLanguage,
                    detectionResult = detectionResult
                )
            } else {
                null
            }

            val resolvedSourceLanguage = singleWordDictionaryMatch?.sourceLanguage ?: detectedLanguage

            if (resolvedSourceLanguage == null) {
                val errorMessage = localizedReaderError(::readerTranslationLanguageDetectFailedMessage)
                _uiState.update {
                    it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                targetLanguage = targetLanguage,
                                preferredTransport = effectiveTransport,
                                canTranslateAsPhrase = canTranslateAsPhrase,
                                canExplain = canExplainSelection,
                                isLoading = false,
                                error = errorMessage
                            )
                    )
                }
                return@launch
            }

            if (resolvedSourceLanguage == targetLanguage) {
                _uiState.update {
                    it.copy(
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            translatedText = normalizedText,
                            sourceLanguage = resolvedSourceLanguage,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canExplain = canExplainSelection,
                            isLoading = false
                        )
                    )
                }
                return@launch
            }

            val networkAvailable = isNetworkAvailable()
            val dictionaryAvailable = singleWordDictionaryMatch != null || when (
                val availability = dictionaryEngine.isLookupAvailable(
                    sourceLanguage = resolvedSourceLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }

            val offlineAvailable = when (
                val availability = offlineTranslationEngine.isLanguagePairAvailable(
                    sourceLanguage = resolvedSourceLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }
            val onlineTranslationAvailable = when (val configured = onlineTranslationEngine.isConfigured()) {
                is Result.Success -> configured.data
                is Result.Error -> false
                Result.Loading -> false
            }
            val phraseTranslationAvailable = readerPhraseTranslationAvailable(
                canTranslateAsPhrase = canTranslateAsPhrase,
                offlineAvailable = offlineAvailable,
                networkAvailable = networkAvailable,
                onlineTranslationAvailable = onlineTranslationAvailable
            )
            val dictionarySourceLanguage = singleWordDictionaryMatch?.sourceLanguage ?: resolvedSourceLanguage
            val fallbackDictionaryEntry = if (canUseDictionaryLookup && dictionaryAvailable) {
                if (tokenCount == 1) {
                    singleWordDictionaryMatch?.entry ?: resolveReaderDictionaryEntry(
                        rawWord = normalizedText,
                        sourceLanguage = resolvedSourceLanguage,
                        targetLanguage = targetLanguage
                    )
                } else {
                    resolveReaderDictionaryEntry(
                        rawWord = normalizedText,
                        sourceLanguage = resolvedSourceLanguage,
                        targetLanguage = targetLanguage
                    )
                }
            } else {
                null
            }
            val dictionaryActionAvailable = fallbackDictionaryEntry != null

            val routingDecision = when (
                val routeResult = lookupRouter.route(
                    TranslationRoutingRequest(
                        text = normalizedText,
                        sourceType = TranslationSourceType.BOOK_TEXT,
                        sourceLanguageHint = resolvedSourceLanguage,
                        fallbackLanguage = resolvedSourceLanguage,
                        preferredTransport = effectiveTransport,
                        networkAvailable = networkAvailable,
                        onlineTranslationAvailable = onlineTranslationAvailable,
                        offlineModelAvailable = offlineAvailable,
                        dictionaryAvailable = dictionaryAvailable && preferDictionary,
                        llmAvailable = translationSettings.explainEnabled && false
                    )
                )
            ) {
                is Result.Success -> routeResult.data
                is Result.Error -> null
                Result.Loading -> null
            }

            val translationMode = when {
                routingDecision == null -> null
                routingDecision.primaryMode == TranslationMode.DICTIONARY && tokenCount > 1 ->
                    routingDecision.secondaryModes.firstOrNull {
                        it == TranslationMode.OFFLINE_MT || it == TranslationMode.ONLINE_MT
                    }
                else -> routingDecision.primaryMode
            }

            if (translationMode == TranslationMode.DICTIONARY) {
                when (val entry = fallbackDictionaryEntry) {
                    null -> {
                        val errorMessage = localizedReaderError(::readerDictionaryUnavailableMessage)
                        _uiState.update {
                            it.copy(
                                selectedTextTranslation = SelectedTextTranslationState(
                                    originalText = normalizedText,
                                    sourceLanguage = resolvedSourceLanguage,
                                    targetLanguage = targetLanguage,
                                    mode = TranslationMode.DICTIONARY,
                                    preferredTransport = effectiveTransport,
                                    canUseDictionary = dictionaryActionAvailable,
                                    canTranslateAsPhrase = phraseTranslationAvailable,
                                    canExplain = canExplainSelection,
                                    isLoading = false,
                                    error = errorMessage
                                )
                            )
                        }
                    }

                    else -> {
                        showSelectedTextDictionaryResult(
                            originalText = normalizedText,
                            entry = entry,
                            sourceLanguage = dictionarySourceLanguage,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canUseDictionary = dictionaryActionAvailable,
                            canTranslateAsPhrase = phraseTranslationAvailable,
                            canExplainSelection = canExplainSelection
                        )
                    }
                }
                return@launch
            }

            if (translationMode == null || translationMode == TranslationMode.LLM) {
                if (fallbackDictionaryEntry != null) {
                    showSelectedTextDictionaryResult(
                        originalText = normalizedText,
                        entry = fallbackDictionaryEntry,
                        sourceLanguage = dictionarySourceLanguage,
                        targetLanguage = targetLanguage,
                        preferredTransport = effectiveTransport,
                        canUseDictionary = dictionaryActionAvailable,
                        canTranslateAsPhrase = phraseTranslationAvailable,
                        canExplainSelection = canExplainSelection
                    )
                    return@launch
                }
                val uiLanguage = currentReaderUiLanguage()
                val errorMessage = resolveReaderTranslationUnavailableMessage(
                    language = uiLanguage,
                    preferredTransport = effectiveTransport,
                    networkAvailable = networkAvailable,
                    onlineConfigured = onlineTranslationAvailable,
                    offlineModelAvailable = offlineAvailable,
                    dictionaryRouteAvailable = dictionaryActionAvailable,
                    sourceLanguage = resolvedSourceLanguage,
                    targetLanguage = targetLanguage
                )
                _uiState.update {
                    it.copy(
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            sourceLanguage = resolvedSourceLanguage,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canUseDictionary = dictionaryActionAvailable,
                            canTranslateAsPhrase = phraseTranslationAvailable,
                            canExplain = canExplainSelection,
                            isLoading = false,
                            error = errorMessage
                        )
                    )
                }
                return@launch
            }

            val request = TranslationRequest(
                id = "reader-selection-${System.currentTimeMillis()}",
                sourceType = TranslationSourceType.BOOK_TEXT,
                text = normalizedText,
                sourceLanguage = resolvedSourceLanguage,
                targetLanguage = targetLanguage,
                mode = translationMode,
                createdAt = System.currentTimeMillis()
            )

            val translationResult = when (translationMode) {
                TranslationMode.OFFLINE_MT -> offlineTranslationEngine.translate(request)
                TranslationMode.ONLINE_MT -> onlineTranslationEngine.translate(request)
                else -> Result.Error(IllegalStateException("Unsupported reader translation mode: $translationMode"))
            }

            when (translationResult) {
                is Result.Success -> {
                    val resolvedMode = if (translationResult.data.isOffline) {
                        TranslationMode.OFFLINE_MT
                    } else {
                        translationMode
                    }
                    _uiState.update {
                        it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                translatedText = translationResult.data.translatedText,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage,
                                mode = resolvedMode,
                                preferredTransport = effectiveTransport,
                                canUseDictionary = dictionaryActionAvailable,
                                canExplain = canExplainSelection,
                                isLoading = false
                            )
                        )
                    }
                }

                is Result.Error -> {
                    if (fallbackDictionaryEntry != null) {
                        showSelectedTextDictionaryResult(
                            originalText = normalizedText,
                            entry = fallbackDictionaryEntry,
                            sourceLanguage = dictionarySourceLanguage,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canUseDictionary = dictionaryActionAvailable,
                            canTranslateAsPhrase = phraseTranslationAvailable,
                            canExplainSelection = canExplainSelection
                        )
                        return@launch
                    }

                    val uiLanguage = currentReaderUiLanguage()
                    val errorMessage = when (translationResult.exception) {
                        is TranslationBackendUnavailableException ->
                            resolveReaderTranslationUnavailableMessage(
                                language = uiLanguage,
                                preferredTransport = effectiveTransport,
                                networkAvailable = networkAvailable,
                                onlineConfigured = onlineTranslationAvailable,
                                offlineModelAvailable = offlineAvailable,
                                dictionaryRouteAvailable = dictionaryActionAvailable,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage
                            )
                        else -> translationResult.message
                            ?: resolveReaderTranslationUnavailableMessage(
                                language = uiLanguage,
                                preferredTransport = effectiveTransport,
                                networkAvailable = networkAvailable,
                                onlineConfigured = onlineTranslationAvailable,
                                offlineModelAvailable = offlineAvailable,
                                dictionaryRouteAvailable = dictionaryActionAvailable,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage
                            )
                    }
                    _uiState.update {
                        it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage,
                                mode = translationMode,
                                preferredTransport = effectiveTransport,
                                canUseDictionary = dictionaryActionAvailable,
                                canTranslateAsPhrase = phraseTranslationAvailable,
                                canExplain = canExplainSelection,
                                isLoading = false,
                                error = errorMessage
                            )
                        )
                    }
                }

                Result.Loading -> Unit
            }
        }
    }

    fun translateSelectedTextWithTransport(preferredTransport: TranslationTransportPreference) {
        val selectedText = _uiState.value.selectedTextTranslation?.originalText ?: return
        translateSelectedText(
            selectedText = selectedText,
            preferredTransport = preferredTransport,
            preferDictionary = false
        )
    }

    fun translateSelectedTextAsPhrase() {
        val selectedText = _uiState.value.selectedTextTranslation?.originalText ?: return
        translateSelectedText(
            selectedText = selectedText,
            preferredTransport = _uiState.value.selectedTextTranslation?.preferredTransport
                ?: TranslationTransportPreference.AUTO,
            preferDictionary = false
        )
    }

    fun openDictionaryForSelectedText() {
        val selectedText = _uiState.value.selectedTextTranslation?.originalText ?: return
        translateSelectedText(
            selectedText = selectedText,
            preferredTransport = _uiState.value.selectedTextTranslation?.preferredTransport
                ?: TranslationTransportPreference.AUTO,
            preferDictionary = true
        )
    }

    fun explainSelectedTextFromResult() {
        val selectedText = _uiState.value.selectedTextTranslation?.originalText ?: return
        explainSelectedText(selectedText)
    }

    fun dismissSelectedTextTranslation() {
        _uiState.update { it.copy(selectedTextTranslation = null) }
    }

    fun saveQuoteFromSelectedTextResult() {
        val state = _uiState.value.selectedTextTranslation ?: return
        _uiState.update { it.copy(selectedTextTranslation = null) }
        saveQuote(
            text = state.originalText,
            translatedText = state.translatedText.ifBlank { null },
            sourceLanguage = state.sourceLanguage,
            targetLanguage = state.targetLanguage
        )
    }

    private fun explainSelectedText(selectedText: String) {
        val normalizedText = selectedText
            .trim()
            .replace(Regex("\\s+"), " ")
        if (normalizedText.isBlank()) return

        viewModelScope.launch {
            val translationSettings = resolveTranslationSettings()
            val uiLanguage = normalizeAppLanguageCode(
                readerPreferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first()
            )
            val targetLanguage = translationSettings.targetLanguage
            val preferredTransport = _uiState.value.selectedTextTranslation?.preferredTransport
                ?: translationSettings.preferredTransport
            val tokenCount = normalizedText.countSelectionTokens()
            val canTranslateAsPhrase = tokenCount <= 3
            val canUseDictionaryLookup = tokenCount <= 3
            val canExplainSelection = true

            _uiState.update {
                it.copy(
                    selectedTextTranslation = SelectedTextTranslationState(
                        originalText = normalizedText,
                        targetLanguage = targetLanguage,
                        mode = TranslationMode.LLM,
                        preferredTransport = preferredTransport,
                        canTranslateAsPhrase = canTranslateAsPhrase,
                        canExplain = canExplainSelection,
                        isLoading = true
                    )
                )
            }

            val detectionResult = translationSettings.sourceLanguage?.let { sourceLanguage ->
                LanguageDetectionResult(
                    languageCode = sourceLanguage,
                    isReliable = true,
                    fallbackUsed = true
                )
            } ?: when (val detection = languageDetector.detectLanguage(normalizedText)) {
                is Result.Success -> detection.data
                is Result.Error -> null
                Result.Loading -> null
            }

            val detectedLanguage = detectionResult
                ?.languageCode
                ?.takeUnless { it == "und" }

            val singleWordDictionaryMatch = if (tokenCount == 1) {
                resolveSingleWordDictionaryMatch(
                    rawWord = normalizedText,
                    targetLanguage = targetLanguage,
                    preferredSourceLanguage = translationSettings.sourceLanguage,
                    detectionResult = detectionResult
                )
            } else {
                null
            }

            val resolvedSourceLanguage = singleWordDictionaryMatch?.sourceLanguage ?: detectedLanguage

            if (resolvedSourceLanguage == null) {
                val errorMessage = localizedReaderError(::readerTranslationLanguageDetectFailedMessage)
                _uiState.update {
                    it.copy(
                        selectedTextActionSheet = null,
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            targetLanguage = targetLanguage,
                            mode = TranslationMode.LLM,
                            preferredTransport = preferredTransport,
                            canTranslateAsPhrase = canTranslateAsPhrase,
                            canExplain = true,
                            isLoading = false,
                            error = errorMessage
                        )
                    )
                }
                return@launch
            }

            val dictionaryAvailable = when (
                val availability = dictionaryEngine.isLookupAvailable(
                    sourceLanguage = resolvedSourceLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }
            var dictionaryActionAvailable = false

            if (canUseDictionaryLookup && dictionaryAvailable) {
                when (val entry = if (tokenCount == 1) {
                    singleWordDictionaryMatch?.entry ?: resolveReaderDictionaryEntry(
                        rawWord = normalizedText,
                        sourceLanguage = resolvedSourceLanguage,
                        targetLanguage = targetLanguage
                    )
                } else {
                    resolveReaderDictionaryEntry(
                        rawWord = normalizedText,
                        sourceLanguage = resolvedSourceLanguage,
                        targetLanguage = targetLanguage
                    )
                }) {
                    null -> Unit
                    else -> {
                        dictionaryActionAvailable = true
                        _uiState.update {
                            it.copy(
                                selectedTextTranslation = SelectedTextTranslationState(
                                    originalText = normalizedText,
                                    translatedText = buildDictionaryExplanation(
                                        entry = entry,
                                        uiLanguage = uiLanguage
                                    ),
                                    sourceLanguage = singleWordDictionaryMatch?.sourceLanguage ?: resolvedSourceLanguage,
                                    targetLanguage = targetLanguage,
                                    mode = TranslationMode.LLM,
                                    preferredTransport = preferredTransport,
                                    canUseDictionary = dictionaryActionAvailable,
                                    canTranslateAsPhrase = canTranslateAsPhrase,
                                    canExplain = true,
                                    isLoading = false
                                )
                            )
                        }
                        return@launch
                    }
                }
            }

            when (
                val explainResult = llmExplainEngine.explain(
                    ExplainRequest(
                        id = "reader-explain-${System.currentTimeMillis()}",
                        sourceType = TranslationSourceType.BOOK_TEXT,
                        text = normalizedText,
                        sourceLanguage = resolvedSourceLanguage,
                        targetLanguage = targetLanguage,
                        translatedText = _uiState.value.selectedTextTranslation
                            ?.translatedText
                            ?.takeIf { it.isNotBlank() },
                        createdAt = System.currentTimeMillis()
                    )
                )
            ) {
                is Result.Success -> {
                    _uiState.update {
                        it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                translatedText = explainResult.data.explanation,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage,
                                mode = TranslationMode.LLM,
                                preferredTransport = preferredTransport,
                                canUseDictionary = dictionaryActionAvailable,
                                canTranslateAsPhrase = canTranslateAsPhrase,
                                canExplain = true,
                                isLoading = false
                            )
                        )
                    }
                }

                is Result.Error -> {
                    val errorMessage = localizedReaderError(::readerExplainUnavailableMessage)
                    _uiState.update {
                        it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage,
                                mode = TranslationMode.LLM,
                                preferredTransport = preferredTransport,
                                canUseDictionary = dictionaryActionAvailable,
                                canTranslateAsPhrase = canTranslateAsPhrase,
                                canExplain = true,
                                isLoading = false,
                                error = errorMessage
                            )
                        )
                    }
                }

                Result.Loading -> Unit
            }
        }
    }

    private fun buildDictionaryExplanation(
        entry: DictionaryEntry,
        uiLanguage: String
    ): String {
        val readerText = readerUiText(uiLanguage)
        return buildList {
            add("${readerText.dictionaryLemmaLabel}: ${entry.lemma}")
            readerDictionaryPartOfSpeechLabel(entry.partOfSpeech, uiLanguage)?.let { posLabel ->
                add("${readerText.dictionaryPartOfSpeechLabel}: $posLabel")
            }
            val meanings = entry.translations
                .map { it.trim() }
                .filter { it.isNotBlank() }
                .take(4)
            if (meanings.isNotEmpty()) {
                add("${readerText.dictionaryMeaningsLabel}: ${meanings.joinToString("; ")}")
            }
            val glosses = entry.glosses
                .map { it.trim() }
                .filter { it.isNotBlank() }
                .take(2)
            if (glosses.isNotEmpty()) {
                add(glosses.joinToString("\n"))
            }
            val forms = entry.forms
                .map { it.trim() }
                .filter { it.isNotBlank() }
                .take(4)
            if (forms.isNotEmpty()) {
                add("${readerText.dictionaryFormsLabel}: ${forms.joinToString(", ")}")
            }
        }.joinToString("\n")
    }

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
     fun onAnchorClick(href: String) {
         val rawHref = href.trim()
         val explicitlyFootnote = rawHref.startsWith("noteref://", ignoreCase = true) ||
             rawHref.startsWith("noteref:", ignoreCase = true)
         val cleanHref = normalizeReaderAnchorHref(rawHref).trimStart('/')
         val hashIdx = cleanHref.indexOf('#')
         val filePart = if (hashIdx >= 0) cleanHref.substring(0, hashIdx) else cleanHref
         val fragPart = if (hashIdx >= 0) cleanHref.substring(hashIdx + 1) else cleanHref

         if (explicitlyFootnote || looksLikeReaderFootnoteAnchor(fragPart.ifBlank { cleanHref })) {
             val footnoteCandidates = readerFootnoteCandidates(cleanHref, fragPart)
             val footnoteText = footnoteCandidates.firstNotNullOfOrNull { candidate ->
                 formatReader?.getFootnoteText(candidate)
             } ?: extractCurrentHtmlFootnote(fragPart.ifBlank { cleanHref }, cleanHref)
             if (!footnoteText.isNullOrBlank()) {
                 showFootnotePopup(footnoteText)
                 return
             }
             if (explicitlyFootnote) return
         }

         // 2. Try page navigation for cross-file links and internal document anchors.
         // For bare "#fragment" links inside the current page we avoid reloading the same
         // page so the WebView can keep its native in-page scroll behaviour.
         if ((filePart.isNotBlank() && filePart.contains('.')) || cleanHref.startsWith("#") || cleanHref.contains("#")) {
             if (shouldBlockInlineHtmlChapterNavigation(
                     containerKind = _uiState.value.readerContainerKind,
                     readingMode = _uiState.value.readingMode,
                     hrefFilePart = filePart,
                     currentAssetBasePath = _uiState.value.htmlAssetBasePath
                 )
             ) {
                 return
             }
              val pageIdx = formatReader?.resolveHrefToPage(cleanHref)
              if (pageIdx != null && pageIdx >= 0) {
                  if (pageIdx != enginePageForUiPage(_uiState.value.currentPage)) {
                      if (fragPart.isNotBlank()) {
                          _uiState.update { it.copy(pendingScrollToAnchor = fragPart) }
                      }
                      navigateTo(pageIdx, progressSource = ReaderNavigationProgressSource.JUMP)
                  }
                  return
              }
         }

         // 3. Last-resort HTML fallback: look for the anchor inside the current page HTML.
         // Only treat elements with footnote-like id/class patterns as popups; plain headings
         // and chapter anchors are skipped so they don't produce false footnote popups.
         val anchorId = fragPart.ifBlank { cleanHref }
         val text = formatReader?.getFootnoteText(anchorId)
             ?: extractCurrentHtmlFootnote(anchorId, cleanHref)
             ?: return
         if (text.isBlank()) return
         showFootnotePopup(text)
     }

    private fun readerFootnoteCandidates(cleanHref: String, fragPart: String): List<String> {
        return ReaderFootnoteAnchorPolicy.lookupCandidates(cleanHref, fragPart)
    }

    private fun looksLikeReaderFootnoteAnchor(anchor: String): Boolean {
        return ReaderFootnoteAnchorPolicy.isFootnoteAnchor(anchor)
    }

    private fun extractCurrentHtmlFootnote(anchorId: String, href: String): String? {
        val currentHtml = _uiState.value.currentHtmlContent ?: return null
        val fragment = href.substringAfter('#', "")
            .trim()
            .ifBlank { anchorId.trimStart('#').trim() }
        if (fragment.isBlank()) return null

        // Only treat elements as footnotes if the anchor ID looks like a footnote/note,
        // not a chapter heading (e.g. "txt-chapter-1", "chapter_1" etc.)
        val isFootnoteAnchor = FOOTNOTE_MARKER_RE.containsMatchIn(fragment) ||
            fragment.matches(Regex("""^fn[-_]?\d+$""", RegexOption.IGNORE_CASE)) ||
            fragment.matches(Regex("""^\d+$"""))
        if (!isFootnoteAnchor) return null

        val escapedFragment = Regex.escape(fragment)
        val directBlock = Regex(
            """<([a-z0-9:_-]+)\b(?=[^>]*(?:id|name)\s*=\s*["']$escapedFragment["'])[^>]*>(.*?)</\1>""",
            setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        ).find(currentHtml)?.groupValues?.getOrNull(2)?.trim()
        if (!directBlock.isNullOrBlank()) {
            return directBlock
        }

        val anchoredParagraph = Regex(
            """<a\b(?=[^>]*(?:id|name)\s*=\s*["']$escapedFragment["'])[^>]*>\s*</a>\s*(.*?)</(p|div|li|aside|blockquote|section)>""",
            setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        ).find(currentHtml)?.groupValues?.getOrNull(1)?.trim()
        return anchoredParagraph?.takeIf { it.isNotBlank() }
    }

    private fun showFootnotePopup(html: String) {
        val plain = ReaderFootnotePopupPolicy.toPopupText(html) ?: return
        _uiState.update {
            it.copy(
                footnotePopup = FootnotePopup(plain),
                footnotePresentation = FootnotePresentation.PEEK
            )
        }
    }

    /** Shows a footnote popup directly from inline EPUB metadata like anchor title="...". */
    fun showInlineFootnote(text: String) {
        val plain = ReaderFootnotePopupPolicy.toPopupText(text) ?: return
        _uiState.update {
            it.copy(
                footnotePopup = FootnotePopup(plain),
                footnotePresentation = FootnotePresentation.PEEK
            )
        }
    }

    fun onPagedLayoutPageCountChanged(pageCount: Int, pageIndex: Int = 0) {
        // This callback reports visual subpages inside the currently loaded HTML
        // section as calculated by the WebView JS pagination engine.
        if (pageCount <= 0) return
        val sectionIndex = _uiState.value.currentPage
        val safePageIndex = pageIndex.coerceIn(0, pageCount - 1)
        sectionPageCounts[sectionIndex] = pageCount
        val progress = EpubProgressCalculator.accumulate(
            sectionPageCounts = snapshotSectionPageCounts(),
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

    fun consumePendingScrollToAnchor() = _uiState.update {
        it.copy(pendingScrollToAnchor = null)
    }

    /** Dismisses the footnote popup without navigating anywhere. */
    fun dismissFootnote() = _uiState.update {
        it.copy(footnotePopup = null, footnotePresentation = FootnotePresentation.PEEK)
    }

    fun openHtmlAsset(path: String) = formatReader?.openHtmlAsset(path)

    fun expandFootnote() = _uiState.update {
        it.copy(footnotePresentation = FootnotePresentation.EXPANDED)
    }

    fun collapseFootnote() = _uiState.update { it.copy(footnotePresentation = FootnotePresentation.PEEK) }

    /** Opens/closes the text reader settings bottom sheet. */
    fun toggleTextSettings() = _uiState.update {
        it.copy(
            showTextSettings = !it.showTextSettings,
            chromeState = ReaderChromeState.EXPANDED
        )
    }

    private fun markReaderPresetCustom() = settingsController.markReaderPresetCustom()

    fun applyReadingPreset(preset: ReadingPreset) = settingsController.applyReadingPreset(preset)

    /** Updates font size for text books. */
    fun setTextFontSize(size: Int) = settingsController.setTextFontSize(size)

    /** Updates color scheme for text books: "DAY" | "SEPIA" | "NIGHT". */
    fun setTextColorScheme(scheme: String) = settingsController.setTextColorScheme(scheme)

    fun setTextCustomTextColor(color: Long?) = settingsController.setTextCustomTextColor(color)

    fun setTextCustomBackgroundColor(color: Long?) = settingsController.setTextCustomBackgroundColor(color)

    fun setTextCustomAccentColor(color: Long?) = settingsController.setTextCustomAccentColor(color)

    /** Updates font family for text books. */
    fun setTextFontFamily(family: String) = settingsController.setTextFontFamily(family)

    /** Updates line height multiplier for text books. */
    fun setTextLineHeight(height: Float) = settingsController.setTextLineHeight(height)

    /** Updates letter spacing for text books in em units. */
    fun setTextLetterSpacing(spacing: Float) = settingsController.setTextLetterSpacing(spacing)

    /** Updates word spacing for text books in em units. */
    fun setTextWordSpacing(spacing: Float) = settingsController.setTextWordSpacing(spacing)

    /** Updates paragraph spacing for text books in em units. */
    fun setTextParagraphSpacing(spacing: Float) = settingsController.setTextParagraphSpacing(spacing)

    /** Updates text alignment for text books: "justify" | "left" | "right" | "center". */
    fun setTextAlignment(align: String) = settingsController.setTextAlignment(align)

    /** Toggles bold text for text books. */
    fun setTextBold(bold: Boolean) = settingsController.setTextBold(bold)

    fun saveReaderStylePreset(slot: Int) = settingsController.saveReaderStylePreset(slot)

    fun saveCurrentReaderStylePreset(displayName: String? = null) = settingsController.saveCurrentReaderStylePreset(displayName)

    fun overwriteReaderStylePreset(id: String) = settingsController.overwriteReaderStylePreset(id)

    fun applyReaderStylePreset(slot: Int) = settingsController.applyReaderStylePreset(slot)

    fun applyReaderStylePreset(id: String) = settingsController.applyReaderStylePreset(id)

    fun clearReaderStylePreset(slot: Int) = settingsController.clearReaderStylePreset(slot)

    fun deleteReaderStylePreset(id: String) = settingsController.deleteReaderStylePreset(id)

    fun renameReaderStylePreset(id: String, displayName: String) = settingsController.renameReaderStylePreset(id, displayName)

    fun importReaderStyleFromJson(rawJson: String): String? = settingsController.importReaderStyleFromJson(rawJson)

    fun resetTextSettings() = settingsController.resetTextSettings()

    private fun localizedReaderStyleFallbackName(index: Int): String = "Style $index"

    private fun updateReaderStylePresetEntries(entries: List<ReaderStylePresetEntry>) {
        val normalizedEntries = ReaderStylePresetEntries.normalize(entries)
        _uiState.update { state ->
            state.copy(
                readerStylePresetEntries = normalizedEntries,
                readerStylePresetSlots = ReaderStylePresetEntries.toLegacySlots(normalizedEntries)
            )
        }
        viewModelScope.launch {
            persistReaderStylePresetEntries(normalizedEntries)
        }
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

    private suspend fun persistNullablePreference(key: Preferences.Key<Long>, value: Long?) {
        context.dataStore.edit { prefs ->
            if (value == null) prefs.remove(key) else prefs[key] = value
        }
    }

    private fun applyReaderStylePresetSnapshot(snapshot: ReaderStylePresetSnapshot) {
        _uiState.update { ReaderStylePresetReducer.applySnapshot(it, snapshot) }
        viewModelScope.launch {
            persistReaderStylePresetSnapshot(
                snapshot = snapshot,
                readerPreferences = readerPreferences,
                dataStore = context.dataStore
            )
        }
    }

    // ── Закладки ──────────────────────────────────────────────────────────────

    /** Toggles a bookmark on/off for the current page. */
    fun toggleBookmark() {
        val page = _uiState.value.currentPage
        val comicId = _uiState.value.comic?.id ?: return
        val updated = _uiState.value.bookmarkedPages.toMutableSet()
        val isNowBookmarked = if (page in updated) {
            updated.remove(page)
            false
        } else {
            updated.add(page)
            true
        }
        _uiState.update { it.copy(bookmarkedPages = updated) }
        saveBookmarks(updated)
        analyticsTracker.track(
            ReadingAnalyticsEvent.BookmarkToggled(
                comicId = comicId,
                page = page,
                bookmarked = isNowBookmarked
            )
        )
    }

    /** Removes a specific page bookmark (called from the bookmarks list in TOC). */
    fun removeBookmark(page: Int) {
        val updated = _uiState.value.bookmarkedPages.toMutableSet()
        if (updated.remove(page)) {
            _uiState.update { it.copy(bookmarkedPages = updated) }
            saveBookmarks(updated)
        }
    }

    private fun loadBookmarks(comicId: String, totalPages: Int) {
        viewModelScope.launch {
            val raw = readerPreferences.get(PreferencesKeys.bookmarks(comicId), "").first()
            val maxPage = (totalPages - 1).coerceAtLeast(0)
            val pages = raw
                .split(",")
                .mapNotNull { it.trim().toIntOrNull() }
                .filter { it in 0..maxPage }
                .toSet()
            if (_uiState.value.comic?.id != comicId) return@launch
            _uiState.update { it.copy(bookmarkedPages = pages) }
            if (pages.joinToString(",") != raw) {
                saveBookmarksForComic(comicId, pages)
            }
        }
    }

    private fun saveBookmarks(pages: Set<Int>) {
        val comicId = _uiState.value.comic?.id ?: return
        saveBookmarksForComic(comicId, pages)
    }

    private fun saveBookmarksForComic(comicId: String, pages: Set<Int>) {
        val raw = pages.sorted().joinToString(",")
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.bookmarks(comicId), raw) }
    }

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
        startPage: Int,
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
            val normalizedStartPage = normalizePageForMode(
                page = startPage,
                mode = openingMode,
                totalPages = realPages
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

    fun setReadingMode(mode: ReadingMode) {
        val currentState = _uiState.value
        val alignedPage = normalizePageForMode(
            page = currentState.currentPage,
            mode = mode,
            totalPages = currentState.totalPages
        )
        if (currentState.readingMode == mode && currentState.currentPage == alignedPage) {
            rememberPortraitMode(mode)
            return
        }
        // Remember portrait-specific mode so we can restore it on landscape→portrait rotation
        rememberPortraitMode(mode)
        markReaderPresetCustom()
        applyReadingMode(mode)
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READING_MODE, mode.name)
        }
    }

    /**
     * Called from the UI when the viewport changes enough to allow or disallow a
     * landscape spread. Text books never switch to DUAL_PAGE.
     */
    fun onOrientationChanged(
        useLandscapeSpread: Boolean,
        isTextReader: Boolean = false
    ) {
        _uiState.update { it.copy(isLandscape = useLandscapeSpread) }
        val currentMode = _uiState.value.readingMode
        val canAutoLandscapeSpread = _uiState.value.landscapeSpreadEnabled &&
            ReaderOpeningModePolicy.supportsAutomaticLandscapeSpread(portraitReadingMode)
        if (isTextReader) {
            if (currentMode == ReadingMode.DUAL_PAGE) {
                applyReadingMode(portraitPagedReadingMode)
            }
            return
        }
        if (useLandscapeSpread && canAutoLandscapeSpread && currentMode != ReadingMode.DUAL_PAGE) {
            applyReadingMode(ReadingMode.DUAL_PAGE)
        } else if (!useLandscapeSpread && currentMode == ReadingMode.DUAL_PAGE) {
            applyReadingMode(portraitReadingMode)
        }
    }

    private fun applyReadingMode(mode: ReadingMode) {
        val currentState = _uiState.value
        val alignedPage = normalizePageForMode(
            page = currentState.currentPage,
            mode = mode,
            totalPages = currentState.totalPages
        )
        if (currentState.readingMode == mode && currentState.currentPage == alignedPage) {
            return
        }
        _uiState.update { state ->
            state.copy(
                readingMode = mode,
                currentPage = alignedPage,
                readerContainerKind = resolveReaderContainerKind(
                    format = state.comic?.format,
                    readingMode = mode,
                    readerRendersHtmlContent = state.readerRendersHtmlContent
                )
            )
        }
        if (_uiState.value.readerContainerKind == ReaderContainerKind.TEXT_WEBTOON) {
            textReaderOrchestrator.clearTextPagePagination()
            textReaderOrchestrator.cancelPaginationJob()
        } else if (_uiState.value.readerContainerKind == ReaderContainerKind.TEXT_PAGE) {
            scheduleTextPagePaginationBuild()
        }
        syncReaderPosition(
            page = alignedPage,
            mode = mode,
            persistProgress = !isProgressAlreadyPersisted(_uiState.value.comic?.id, alignedPage),
            announceChapterMilestone = false
        )
    }
    private var brightnessJob: Job? = null
    fun setBrightness(value: Float) = settingsController.setBrightness(value)

    fun setKeepScreenOn(enabled: Boolean) = settingsController.setKeepScreenOn(enabled)

    /** Set auto-scroll speed. 0 disables, positive values = pixels per second. */
    fun setAutoScrollSpeed(speed: Float) = settingsController.setAutoScrollSpeed(speed)

    /** Cycle through auto-scroll presets: off → slow → medium → fast → off. */
    fun cycleAutoScrollSpeed() = settingsController.cycleAutoScrollSpeed()

    fun setScreenTimeoutMode(mode: String) = settingsController.setScreenTimeoutMode(mode)

    fun setImmersiveMode(enabled: Boolean) = settingsController.setImmersiveMode(enabled)

    fun setLandscapeSpreadEnabled(enabled: Boolean) {
        _uiState.update { it.copy(landscapeSpreadEnabled = enabled) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_LANDSCAPE_SPREAD_ENABLED, enabled)
        }
        onOrientationChanged(
            useLandscapeSpread = _uiState.value.isLandscape,
            isTextReader = _uiState.value.currentHtmlContent != null ||
                _uiState.value.readerRendersHtmlContent
        )
    }

    fun setPreloadPages(count: Int) {
        val safe = count.coerceIn(2, 8)
        _uiState.update { it.copy(preloadPages = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRELOAD_PAGES, safe)
        }
        if (!activeComicSupportsBitmapPreload()) {
            prewarmHtmlPagesAround(_uiState.value.currentPage)
        }
    }

    fun setPageAnimation(animation: String) = settingsController.setPageAnimation(animation)

    fun setVolumeKeysPagingEnabled(enabled: Boolean) = settingsController.setVolumeKeysPagingEnabled(enabled)

    fun setTapZoneMode(value: String) = settingsController.setTapZoneMode(value)

    fun setTapZoneSwap(enabled: Boolean) = settingsController.setTapZoneSwap(enabled)

    fun setTapZoneAction(position: String, action: String) = settingsController.setTapZoneAction(position, action)

    fun toggleTapZoneDirectionShortcut() = settingsController.toggleTapZoneDirectionShortcut()

    fun setHeaderSlot(position: String, slot: String) = settingsController.setHeaderSlot(position, slot)

    fun setFooterSlot(position: String, slot: String) = settingsController.setFooterSlot(position, slot)

    fun setHeaderFooterFontSize(size: Int) = settingsController.setHeaderFooterFontSize(size)

    fun setHeaderFooterVerticalPadding(padding: Int) = settingsController.setHeaderFooterVerticalPadding(padding)

    fun setHeaderFooterLeftPadding(padding: Int) = settingsController.setHeaderFooterLeftPadding(padding)

    fun setHeaderFooterRightPadding(padding: Int) = settingsController.setHeaderFooterRightPadding(padding)

    fun setChromeAutoHideEnabled(enabled: Boolean) = settingsController.setChromeAutoHideEnabled(enabled)

    fun setTopToolbarOpacity(value: Float) = settingsController.setTopToolbarOpacity(value)

    fun setBottomToolbarOpacity(value: Float) = settingsController.setBottomToolbarOpacity(value)

    fun setToolbarOpacity(value: Float) = settingsController.setToolbarOpacity(value)

    fun setToolbarBlur(value: Float) = settingsController.setToolbarBlur(value)

    fun setImageScaleMode(value: String) = settingsController.setImageScaleMode(value)

    fun setImageMarginCropHorizontal(value: Float) = settingsController.setImageMarginCropHorizontal(value)

    fun setImageMarginCropVertical(value: Float) = settingsController.setImageMarginCropVertical(value)

    fun setTtsSpeed(value: Float) = settingsController.setTtsSpeed(value)

    fun setTtsProvider(value: String) = settingsController.setTtsProvider(value)

    fun setTtsPitch(value: Float) = settingsController.setTtsPitch(value)

    fun setTtsVolume(value: Float) = settingsController.setTtsVolume(value)

    fun setTtsVoiceName(value: String?) = settingsController.setTtsVoiceName(value)

    fun setTtsSleepTimerMode(value: String) = settingsController.setTtsSleepTimerMode(value)

    fun setChromeIconVisible(icon: String, visible: Boolean) = settingsController.setChromeIconVisible(icon, visible)

    fun moveChromeIcon(icon: String, delta: Int) = settingsController.moveChromeIcon(icon, delta)

    private fun saveProgress(
        page: Int,
        progressSource: ReaderNavigationProgressSource
    ) {
        val comic = _uiState.value.comic ?: return
        val epubAccumulated = accumulatedTotalPagesForEpub()
        val totalPages = if (epubAccumulated > 0) epubAccumulated else _uiState.value.totalPages
        if (!ReaderProgressPolicy.shouldPersist(
                totalPages = totalPages,
                isHeavyReflowable = comic.format.isHeavyReflowableFormat(),
                isEpub = comic.format == ComicFormat.EPUB,
                epubAccumulatedPages = epubAccumulated,
                paginatedSectionCount = snapshotSectionPageCounts().size
            )
        ) return
        val accuratePage = ReaderProgressPolicy.pageForPersistence(
            format = comic.format,
            readerPage = page,
            epubAbsolutePage = calculateAccuratePage(page)
        )
        val pending = PendingProgressSave(
            comicId = comic.id,
            page = accuratePage,
            totalPages = totalPages,
            countsTowardReadingProgress = progressSource == ReaderNavigationProgressSource.READING
        )
        if (pending == pendingProgressSave || isProgressAlreadyPersisted(comic.id, accuratePage)) return
        pendingProgressSave = pending
        progressSaveJob?.cancel()
        progressSaveJob = viewModelScope.launch {
            delay(220)
            flushPendingProgressSave()
        }
    }

    private fun rememberChapterMilestoneAnchor(page: Int = _uiState.value.currentPage) {
        val comicId = _uiState.value.comic?.id ?: return
        val chapter = currentChapterFor(page) ?: return
        lastChapterMilestone.set(
            ChapterMilestoneMarker(
                comicId = comicId,
                chapterPage = chapter.pageIndex
            )
        )
    }

    private fun maybeEmitChapterMilestone(
        page: Int,
        progressSource: ReaderNavigationProgressSource
    ) {
        val comic = _uiState.value.comic ?: return
        val chapter = currentChapterFor(page) ?: return
        val chapterTitle = chapter.title.trim()
        if (chapterTitle.isBlank()) return
        val totalPages = _uiState.value.totalPages
        val projectedPagesDelta = navigationProgressDelta(
            previousPersistedPage = lastPersistedProgress
                ?.takeIf { it.comicId == comic.id }
                ?.page,
            newPage = page,
            countsTowardReadingProgress = progressSource == ReaderNavigationProgressSource.READING
        )
        val marker = ChapterMilestoneMarker(
            comicId = comic.id,
            chapterPage = chapter.pageIndex
        )
        if (progressSource != ReaderNavigationProgressSource.READING) {
            lastChapterMilestone.set(marker)
            return
        }
        val previous = lastChapterMilestone.getAndSet(marker)
        if (previous == marker) return
        readerSessionCoordinator.recordChapterTransition()
        viewModelScope.launch {
            dailyReadingGoalStore.recordCompletedCheckpoint()
            readerCheckpointStore.recordChapterReached(
                comicId = comic.id,
                comicTitle = comic.title,
                chapterTitle = chapterTitle,
                page = page
            )
            analyticsTracker.track(
                ReadingAnalyticsEvent.ChapterReached(
                    comicId = comic.id,
                    page = page,
                    chapterTitle = chapterTitle
                )
            )
            if (shouldEmitChapterProgressRecap(page = page, totalPages = totalPages)) {
                emitProgressRecap(
                    type = ReaderProgressRecapType.CHAPTER,
                    comicId = comic.id,
                    comicTitle = comic.title,
                    chapterTitle = chapterTitle,
                    currentPage = page,
                    totalPages = totalPages,
                    pagesDelta = projectedPagesDelta,
                    xpAwarded = projectedPagesDelta,
                    projectedGoalPagesDelta = projectedPagesDelta
                )
            }
        }
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
        val goalState = dailyReadingGoalStore.goalState
            .first()
            .projectReaderProgressRecap(projectedGoalPagesDelta)
        _readerProgressRecap.emit(
            ReaderProgressRecap(
                type = type,
                comicId = comicId,
                comicTitle = comicTitle,
                chapterTitle = chapterTitle,
                currentPage = currentPage,
                totalPages = totalPages,
                pagesDelta = pagesDelta,
                xpAwarded = xpAwarded,
                goalEnabled = goalState.enabled,
                pagesReadToday = goalState.pagesReadToday,
                targetPages = goalState.targetPages,
                isDailyGoalComplete = goalState.isCompleted,
                pagesReadThisWeek = goalState.pagesReadThisWeek,
                weeklyTargetPages = goalState.weeklyTargetPages,
                isWeeklyPlanComplete = goalState.isWeeklyPlanCompleted,
                streakEnabled = goalState.streakEnabled,
                currentStreak = goalState.currentStreak
            )
        )
    }

    private fun syncReaderPosition(
        page: Int,
        mode: ReadingMode,
        persistProgress: Boolean,
        progressSource: ReaderNavigationProgressSource = ReaderNavigationProgressSource.READING,
        announceChapterMilestone: Boolean = true
    ) {
        val visiblePages = visiblePagesFor(page, mode)
        visiblePages.forEach { visiblePage ->
            loadPage(visiblePage)
        }
        if (activeComicSupportsBitmapPreload()) {
            applyHighQualityRetention(visiblePages.toSet())
            if (mode != ReadingMode.WEBTOON) {
                formatReader?.let { reader ->
                    pagePreloader.preloadAround(reader, visiblePages, _uiState.value.totalPages, _uiState.value.preloadPages)
                }
                scheduleHighQualityWarmup(page)
            }
        } else {
            applyHighQualityRetention(emptySet())
            prewarmHtmlPagesAround(page)
        }
        loadPageTranslationNote(page = page)
        if (persistProgress) {
            saveProgress(page, progressSource)
        }
        if (announceChapterMilestone) {
            maybeEmitChapterMilestone(page, progressSource)
        }
    }

    private fun visiblePagesFor(page: Int, mode: ReadingMode): List<Int> {
        return ReaderNavigationPolicy.visiblePages(
            page = page,
            mode = mode,
            totalPages = _uiState.value.totalPages
        )
    }

    private fun currentChapterFor(page: Int): TocEntry? {
        return ReaderChapterPolicy.currentChapter(
            tableOfContents = _uiState.value.tableOfContents,
            enginePage = enginePageForUiPage(page)
        )
    }

    private fun enginePageForUiPage(page: Int): Int =
        TextReaderNavigation.enginePageForUiPage(
            state = _uiState.value,
            controller = textReaderOrchestrator.controller,
            page = page
        )

    private fun resolveNavigationPage(
        page: Int,
        progressSource: ReaderNavigationProgressSource
    ): Int = TextReaderNavigation.resolveNavigationPage(
        state = _uiState.value,
        controller = textReaderOrchestrator.controller,
        page = page,
        progressSource = progressSource
    )

    private fun normalizePageForMode(
        page: Int,
        mode: ReadingMode,
        totalPages: Int = _uiState.value.totalPages
    ): Int = ReaderNavigationPolicy.normalizePage(page, mode, totalPages)

    private fun pageStepForMode(mode: ReadingMode): Int = ReaderNavigationPolicy.pageStep(mode)

    private fun effectiveOpeningModeFor(
        format: ComicFormat,
        readerRendersHtmlContent: Boolean = format.isTextReadingFormat()
    ): ReadingMode = ReaderOpeningModePolicy.resolve(
        readerRendersHtmlContent = readerRendersHtmlContent,
        currentMode = _uiState.value.readingMode,
        portraitMode = portraitReadingMode,
        portraitPagedMode = portraitPagedReadingMode,
        isLandscape = _uiState.value.isLandscape,
        landscapeSpreadEnabled = _uiState.value.landscapeSpreadEnabled
    )

    // isOpenRequestCurrent replaced by openGuard.isCurrent()

    private fun rememberPortraitMode(mode: ReadingMode) {
        if (mode == ReadingMode.DUAL_PAGE) return
        portraitReadingMode = mode
        if (mode == ReadingMode.PAGE_LTR || mode == ReadingMode.PAGE_RTL) {
            portraitPagedReadingMode = mode
        }
    }

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
        val state = _uiState.value
        val snapshot = snapshotSectionPageCounts()
        if (snapshot.isNotEmpty()) {
            return EpubProgressCalculator.absolutePage(
                sectionPageCounts = snapshot,
                sectionIndex = sectionIndex,
                sectionPageIndex = state.sectionCurrentPage,
                totalSections = totalBookSections
            )
        }
        // No paginated data yet — return 0 to avoid storing a raw spine index
        // that would be misinterpreted as a visual page on reopen.
        return 0
    }

    private fun accumulatedTotalPagesForEpub(): Int {
        return EpubProgressCalculator.estimatedTotalPages(
            sectionPageCounts = snapshotSectionPageCounts(),
            totalSections = totalBookSections
        )
    }

    private fun isProgressAlreadyPersisted(comicId: String?, page: Int): Boolean =
        comicId != null && lastPersistedProgress == PersistedProgressMarker(comicId = comicId, page = page)

    private suspend fun flushPendingProgressSave() {
        val pending = pendingProgressSave ?: return
        pendingProgressSave = null
        try {
            val previousPersistedPage = lastPersistedProgress
                ?.takeIf { it.comicId == pending.comicId }
                ?.page
            val storedPageCount = libraryRepository.getComicById(pending.comicId)?.pageCount ?: 0
            val safeTotalPages = maxOf(pending.totalPages, storedPageCount).coerceAtLeast(1)
            libraryRepository.updateProgress(
                comicId = pending.comicId,
                currentPage = pending.page,
                totalPages = safeTotalPages
            )
            val goalStateBeforeProgress = dailyReadingGoalStore.goalState.first()
            val goalProgressDelta = navigationProgressDelta(
                previousPersistedPage = previousPersistedPage,
                newPage = pending.page,
                countsTowardReadingProgress = pending.countsTowardReadingProgress
            )
            if (goalProgressDelta > 0) {
                dailyReadingGoalStore.recordProgressDelta(goalProgressDelta)
                dailyReadingGoalStore.recordXpDelta(goalProgressDelta)
                resolveGoalCompletedAnalyticsEvent(
                    comicId = pending.comicId,
                    previousState = goalStateBeforeProgress,
                    currentState = dailyReadingGoalStore.goalState.first()
                )?.let(analyticsTracker::track)
                analyticsTracker.track(
                    ReadingAnalyticsEvent.XpAwarded(
                        comicId = pending.comicId,
                        amount = goalProgressDelta,
                        reason = "pages_read"
                    )
                )
            }
            analyticsTracker.track(
                ReadingAnalyticsEvent.ProgressPersisted(
                    comicId = pending.comicId,
                    page = pending.page,
                    totalPages = pending.totalPages
                )
            )
            lastPersistedProgress = PersistedProgressMarker(
                comicId = pending.comicId,
                page = pending.page
            )
            val currentComic = _uiState.value.comic ?: return
            val authoritativeTotal = maxOf(pending.totalPages, storedPageCount)
            val reachedLastPageSafe = authoritativeTotal > 0 && pending.page >= authoritativeTotal - 1
            val titleCompletionPolicy = resolveTitleCompletionPolicy(
                reachedLastPage = reachedLastPageSafe,
                currentComicIdMatches = currentComic.id == pending.comicId,
                alreadyCompleted = currentComic.isCompleted,
                countsTowardReadingProgress = pending.countsTowardReadingProgress,
                sessionManualPageTurns = readerSessionCoordinator.currentManualPageTurns,
                goalProgressDelta = goalProgressDelta
            )
            if (titleCompletionPolicy.shouldComplete) {
                libraryRepository.markCompleted(pending.comicId, completed = true)
                _uiState.update { state ->
                    state.copy(
                        comic = state.comic?.copy(
                            isCompleted = true,
                            readingProgress = 1f
                        )
                    )
                }
                dailyReadingGoalStore.recordCompletedCheckpoint()
                analyticsTracker.track(
                    ReadingAnalyticsEvent.TitleCompleted(
                        comicId = pending.comicId,
                        totalPages = pending.totalPages
                    )
                )
                analyticsTracker.track(
                    ReadingAnalyticsEvent.XpAwarded(
                        comicId = pending.comicId,
                        amount = titleCompletionPolicy.bonusXpAwarded,
                        reason = "title_complete"
                    )
                )
                dailyReadingGoalStore.recordXpDelta(titleCompletionPolicy.bonusXpAwarded)
                emitProgressRecap(
                    type = ReaderProgressRecapType.TITLE_COMPLETE,
                    comicId = pending.comicId,
                    comicTitle = currentComic.title,
                    currentPage = pending.page,
                    totalPages = pending.totalPages,
                    pagesDelta = titleCompletionPolicy.recapPagesDelta,
                    xpAwarded = titleCompletionPolicy.recapXpAwarded,
                    projectedGoalPagesDelta = 0
                )
            }
        } catch (e: Exception) {
            Log.e("ReaderViewModel", "Failed to save progress", e)
        }
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
        eyeRestJob?.cancel()
        highQualityWarmupJob?.cancel()
        textReaderOrchestrator.cancelAllJobs()
        progressSaveJob?.cancel()
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
        val state = _uiState.value
        val currentComic = state.comic
        val closedSession = readerSessionCoordinator.close(
            currentComicId = currentComic?.id,
            currentComicCompleted = currentComic?.isCompleted == true,
            currentPage = state.currentPage
        )
            ?: return
        val session = closedSession.session
        val sessionMetrics = closedSession.metrics
        val finishedAtMillis = System.currentTimeMillis()
        if (shouldRecordReaderSessionMinutes(sessionMetrics)) {
            appScope.launch {
                runCatching {
                    dailyReadingGoalStore.recordSessionMinutes(
                        durationMillis = finishedAtMillis - session.startedAtMillis,
                        nowMillis = finishedAtMillis
                    )
                }.onFailure { error ->
                    Log.e("ReaderViewModel", "Failed to record reading session minutes", error)
                }
            }
        }
        analyticsTracker.track(
            buildReaderClosedAnalyticsEvent(
                comicId = session.comicId,
                format = session.format,
                totalPages = session.totalPages,
                readingMode = state.readingMode.name,
                startedAtMillis = session.startedAtMillis,
                finishedAtMillis = finishedAtMillis,
                sessionMetrics = sessionMetrics
            )
        )
    }

    private suspend fun readReaderPreferencesSnapshot(): Preferences =
        context.dataStore.data
            .catch { exception ->
                if (exception is IOException) {
                    emit(emptyPreferences())
                } else {
                    throw exception
                }
            }
            .first()

    private suspend fun restoreReaderPreferences() {
        val preferences = readReaderPreferencesSnapshot()
        fun <T> pref(key: Preferences.Key<T>, defaultValue: T): T = preferences[key] ?: defaultValue

        val storedMode = pref(PreferencesKeys.READING_MODE, ReadingMode.PAGE_LTR.name)
        val mode = runCatching { ReadingMode.valueOf(storedMode) }.getOrDefault(ReadingMode.PAGE_LTR)
        rememberPortraitMode(mode)
        val brightness = pref(PreferencesKeys.READING_BRIGHTNESS, -1f).let { stored ->
            if (stored < 0f) -1f else stored.coerceIn(0.05f, 1f)
        }
        val keepScreenOn = pref(PreferencesKeys.READER_KEEP_SCREEN_ON, false)
        val screenTimeoutMode = ReaderScreenTimeoutMode.fromStored(
            pref(
                PreferencesKeys.READER_SCREEN_TIMEOUT_MODE,
                ReaderScreenTimeoutMode.SYSTEM.storedValue
            )
        )
        val landscapeSpreadEnabled = pref(PreferencesKeys.READER_LANDSCAPE_SPREAD_ENABLED, true)
        val animation    = pref(PreferencesKeys.READER_PAGE_ANIMATION, "SLIDE")
        val pageSound    = pref(PreferencesKeys.READER_PAGE_SOUND, false)
        val soundStyle   = pref(PreferencesKeys.READER_PAGE_SOUND_STYLE, "PAPER")
        val immersive    = pref(PreferencesKeys.READER_IMMERSIVE_MODE, false)
        val chromeAutoHideEnabled = pref(PreferencesKeys.READER_CHROME_AUTO_HIDE, true)
        val topToolbarOpacity = pref(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, 0.86f).coerceIn(0f, 1.0f)
        val bottomToolbarOpacity = pref(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, 0.9f).coerceIn(0f, 1.0f)
        val toolbarBlur = pref(PreferencesKeys.READER_TOOLBAR_BLUR, READER_TOOLBAR_DEFAULT_BLUR).coerceIn(0f, 1f)
        val imageScaleMode = ReaderImageScaleMode.fromStored(
            pref(
                PreferencesKeys.READER_IMAGE_SCALE_MODE,
                ReaderImageScaleMode.FIT_WIDTH.storedValue
            )
        )
        val imageMarginCropHorizontal = pref(
            PreferencesKeys.READER_PAGE_MARGIN_CROP_HORIZONTAL,
            DEFAULT_IMAGE_MARGIN_CROP_HORIZONTAL
        ).coerceIn(0f, 0.22f)
        val imageMarginCropVertical = pref(
            PreferencesKeys.READER_PAGE_MARGIN_CROP_VERTICAL,
            DEFAULT_IMAGE_MARGIN_CROP_VERTICAL
        ).coerceIn(0f, 0.22f)
        val preload      = pref(
            PreferencesKeys.READER_PRELOAD_PAGES,
            renderProfile.defaultPreloadPages
        )
            .coerceIn(2, 8)
            .coerceAtMost(renderProfile.maxPreloadPages)
        // Text reader settings
        val fontSize     = pref(PreferencesKeys.TEXT_FONT_SIZE, DEFAULT_TEXT_FONT_SIZE).coerceIn(12, 32)
        val colorScheme  = pref(PreferencesKeys.TEXT_COLOR_SCHEME, DEFAULT_TEXT_COLOR_SCHEME)
        val customTextColor = pref(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, Long.MIN_VALUE)
            .takeUnless { it == Long.MIN_VALUE }
        val customBackgroundColor = pref(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, Long.MIN_VALUE)
            .takeUnless { it == Long.MIN_VALUE }
        val customAccentColor = pref(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, Long.MIN_VALUE)
            .takeUnless { it == Long.MIN_VALUE }
        val fontFamily   = pref(PreferencesKeys.TEXT_FONT_FAMILY, DEFAULT_TEXT_FONT_FAMILY)
        val lineHeight   = pref(PreferencesKeys.TEXT_LINE_HEIGHT, DEFAULT_TEXT_LINE_HEIGHT).coerceIn(1.0f, 3.0f)
        val letterSpacing = pref(PreferencesKeys.TEXT_LETTER_SPACING, DEFAULT_TEXT_LETTER_SPACING).coerceIn(0f, 0.2f)
        val wordSpacing  = pref(PreferencesKeys.TEXT_WORD_SPACING, DEFAULT_TEXT_WORD_SPACING).coerceIn(0f, 0.6f)
        val paragraphSpacing = pref(PreferencesKeys.TEXT_PARAGRAPH_SPACING, DEFAULT_TEXT_PARAGRAPH_SPACING).coerceIn(0.1f, 1.2f)
        val alignment    = pref(PreferencesKeys.TEXT_ALIGNMENT, DEFAULT_TEXT_ALIGNMENT)
        val bold         = pref(PreferencesKeys.TEXT_BOLD, DEFAULT_TEXT_BOLD)
        val tapZoneMode = ReaderTapZoneMode.fromStored(
            pref(PreferencesKeys.READER_TAP_ZONE_MODE, ReaderTapZoneMode.SIMPLE.name)
        )
        val tapZoneSwap = pref(PreferencesKeys.READER_TAP_ZONE_SWAP, false)
        val volumeKeysPagingEnabled = pref(PreferencesKeys.READER_VOLUME_KEYS_PAGING, false)
        val ttsProvider = ReaderTtsProviderType.fromStored(
            pref(
                PreferencesKeys.READER_TTS_PROVIDER,
                ReaderTtsProviderType.SYSTEM.storedValue
            )
        )
        val ttsSpeed = pref(PreferencesKeys.READER_TTS_SPEED, 1.0f).coerceIn(0.5f, 2.0f)
        val ttsPitch = pref(PreferencesKeys.READER_TTS_PITCH, 1.0f).coerceIn(0.5f, 2.0f)
        val ttsVolume = pref(PreferencesKeys.READER_TTS_VOLUME, 1.0f).coerceIn(0f, 1.0f)
        val ttsVoiceName = pref(PreferencesKeys.READER_TTS_VOICE_NAME, "").ifBlank { null }
        val ttsSleepTimerMode = ReaderTtsSleepTimerMode.fromStored(
            pref(
                PreferencesKeys.READER_TTS_SLEEP_TIMER_MODE,
                ReaderTtsSleepTimerMode.OFF.storedValue
            )
        )
        val tapZoneLeft = normalizeTapZoneActionName(
            pref(PreferencesKeys.READER_TAP_ZONE_LEFT, ReaderTapZoneAction.PREVIOUS_PAGE.name)
        )
        val tapZoneCenter = normalizeTapZoneActionName(
            pref(PreferencesKeys.READER_TAP_ZONE_CENTER, ReaderTapZoneAction.MENU.name)
        )
        val tapZoneRight = normalizeTapZoneActionName(
            pref(PreferencesKeys.READER_TAP_ZONE_RIGHT, ReaderTapZoneAction.NEXT_PAGE.name)
        )
        val headerLeftSlot = ReaderInfoSlot.fromStored(
            pref(PreferencesKeys.READER_HEADER_LEFT_SLOT, ReaderInfoSlot.BOOK_TITLE.name)
        )
        val headerCenterSlot = ReaderInfoSlot.fromStored(
            pref(PreferencesKeys.READER_HEADER_CENTER_SLOT, ReaderInfoSlot.NONE.name)
        )
        val headerRightSlot = ReaderInfoSlot.fromStored(
            pref(PreferencesKeys.READER_HEADER_RIGHT_SLOT, ReaderInfoSlot.TIME.name)
        )
        val footerLeftSlot = ReaderInfoSlot.fromStored(
            pref(PreferencesKeys.READER_FOOTER_LEFT_SLOT, ReaderInfoSlot.CHAPTER_TITLE.name)
        )
        val footerCenterSlot = ReaderInfoSlot.fromStored(
            pref(PreferencesKeys.READER_FOOTER_CENTER_SLOT, ReaderInfoSlot.PAGE.name)
        )
        val footerRightSlot = ReaderInfoSlot.fromStored(
            pref(PreferencesKeys.READER_FOOTER_RIGHT_SLOT, ReaderInfoSlot.PROGRESS.name)
        )
        val headerFooterFontSize = pref(PreferencesKeys.READER_HEADER_FOOTER_FONT_SIZE, 12).coerceIn(10, 20)
        val headerFooterVerticalPadding = pref(PreferencesKeys.READER_HEADER_FOOTER_VERTICAL_PADDING, 6).coerceIn(4, 20)
        val headerFooterLeftPadding = pref(PreferencesKeys.READER_HEADER_FOOTER_LEFT_PADDING, 16).coerceIn(8, 32)
        val headerFooterRightPadding = pref(PreferencesKeys.READER_HEADER_FOOTER_RIGHT_PADDING, 16).coerceIn(8, 32)
        val eyeRestEnabled = pref(PreferencesKeys.READER_EYE_REST_ENABLED, false)
        val eyeRestMinutes = pref(PreferencesKeys.READER_EYE_REST_MINUTES, 20).coerceIn(10, 60)
        val mascotUiEnabled = pref(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, true)
        val chromeIconOrder = ReaderChromeButton.normalizeStoredOrder(
            pref(
                PreferencesKeys.READER_CHROME_ICON_ORDER,
                ReaderChromeButton.defaultStoredOrder
            )
        )
        val chromeShowTocIcon = pref(PreferencesKeys.READER_CHROME_SHOW_TOC, true)
        val chromeShowStyleIcon = pref(PreferencesKeys.READER_CHROME_SHOW_STYLE, true)
        val chromeShowAudioIcon = pref(PreferencesKeys.READER_CHROME_SHOW_AUDIO, true)
        val chromeShowDirectionIcon = pref(PreferencesKeys.READER_CHROME_SHOW_DIRECTION, true)
        val chromeShowTranslateIcon = pref(PreferencesKeys.READER_CHROME_SHOW_TRANSLATE, true)
        val chromeShowBrightnessIcon = pref(PreferencesKeys.READER_CHROME_SHOW_BRIGHTNESS, true)
        val legacyReaderStylePresetSlots = listOf(
            ReaderStylePresetSlot(1, pref(PreferencesKeys.READER_STYLE_PRESET_1, "").ifBlank { null }),
            ReaderStylePresetSlot(2, pref(PreferencesKeys.READER_STYLE_PRESET_2, "").ifBlank { null }),
            ReaderStylePresetSlot(3, pref(PreferencesKeys.READER_STYLE_PRESET_3, "").ifBlank { null })
        )
        val savedReaderStylePresetEntries = parseReaderStylePresetEntries(
            pref(PreferencesKeys.READER_STYLE_PRESET_LIST, "")
        )
        val readerStylePresetEntries = savedReaderStylePresetEntries.ifEmpty {
            migrateLegacyReaderStyleSlotsToEntries(legacyReaderStylePresetSlots)
        }
        val readerStylePresetSlots = if (readerStylePresetEntries.isNotEmpty()) {
            ReaderStylePresetEntries.toLegacySlots(readerStylePresetEntries)
        } else {
            legacyReaderStylePresetSlots
        }
        val readerPreset = ReadingPreset.fromStored(
            pref(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
        )
        _uiState.update { state ->
            val effectiveMode = if (
                state.isLandscape && ReaderOpeningModePolicy.supportsAutomaticLandscapeSpread(mode)
            ) {
                ReadingMode.DUAL_PAGE
            } else {
                mode
            }
            state.copy(
                readingMode      = effectiveMode,
                chromeState      = ReaderChromeState.HIDDEN,
                brightness       = brightness,
                keepScreenOn     = keepScreenOn,
                screenTimeoutMode = screenTimeoutMode.storedValue,
                landscapeSpreadEnabled = landscapeSpreadEnabled,
                readerPageAnimation = if (renderProfile.disableAnimations) "NONE" else animation,
                pageSoundEnabled = pageSound,
                pageSoundStyle   = soundStyle,
                immersiveMode    = immersive,
                chromeAutoHideEnabled = chromeAutoHideEnabled,
                topToolbarOpacity = topToolbarOpacity,
                bottomToolbarOpacity = bottomToolbarOpacity,
                toolbarBlur = toolbarBlur,
                imageScaleMode = imageScaleMode.storedValue,
                imageMarginCropHorizontal = imageMarginCropHorizontal,
                imageMarginCropVertical = imageMarginCropVertical,
                preloadPages     = preload,
                textFontSize     = fontSize,
                textColorScheme  = colorScheme,
                textCustomTextColor = customTextColor,
                textCustomBackgroundColor = customBackgroundColor,
                textCustomAccentColor = customAccentColor,
                textFontFamily   = fontFamily,
                textLineHeight   = lineHeight,
                textLetterSpacing = letterSpacing,
                textWordSpacing  = wordSpacing,
                textParagraphSpacing = paragraphSpacing,
                textAlignment    = alignment,
                textBold         = bold,
                readerStylePresetEntries = readerStylePresetEntries,
                readerStylePresetSlots = readerStylePresetSlots,
                tapZoneMode      = tapZoneMode.name,
                tapZoneSwap      = tapZoneSwap,
                volumeKeysPagingEnabled = volumeKeysPagingEnabled,
                ttsProvider = ttsProvider.storedValue,
                ttsSpeed = ttsSpeed,
                ttsPitch = ttsPitch,
                ttsVolume = ttsVolume,
                ttsVoiceName = ttsVoiceName,
                ttsSleepTimerMode = ttsSleepTimerMode.storedValue,
                tapZoneLeftAction = tapZoneLeft,
                tapZoneCenterAction = tapZoneCenter,
                tapZoneRightAction = tapZoneRight,
                headerLeftSlot   = headerLeftSlot.name,
                headerCenterSlot = headerCenterSlot.name,
                headerRightSlot  = headerRightSlot.name,
                footerLeftSlot   = footerLeftSlot.name,
                footerCenterSlot = footerCenterSlot.name,
                footerRightSlot  = footerRightSlot.name,
                headerFooterFontSize = headerFooterFontSize,
                headerFooterVerticalPadding = headerFooterVerticalPadding,
                headerFooterLeftPadding = headerFooterLeftPadding,
                headerFooterRightPadding = headerFooterRightPadding,
                readerPreset     = readerPreset.name,
                eyeRestEnabled   = eyeRestEnabled,
                eyeRestMinutes   = eyeRestMinutes,
                mascotUiEnabled  = mascotUiEnabled,
                chromeIconOrder = chromeIconOrder,
                chromeShowTocIcon = chromeShowTocIcon,
                chromeShowStyleIcon = chromeShowStyleIcon,
                chromeShowAudioIcon = chromeShowAudioIcon,
                chromeShowDirectionIcon = chromeShowDirectionIcon,
                chromeShowTranslateIcon = chromeShowTranslateIcon,
                chromeShowBrightnessIcon = chromeShowBrightnessIcon
            )
        }
        if (savedReaderStylePresetEntries.isEmpty() && readerStylePresetEntries.isNotEmpty()) {
            persistReaderStylePresetEntries(readerStylePresetEntries)
        }
        restartEyeRestTimer()
    }

    fun snoozeEyeRestReminder(minutes: Int = 5) {
        restartEyeRestTimer(initialDelayMinutes = minutes.coerceAtLeast(1))
    }

    private fun restartEyeRestTimer(initialDelayMinutes: Int? = null) {
        eyeRestJob?.cancel()
        val state = _uiState.value
        if (!state.eyeRestEnabled || state.eyeRestMinutes <= 0 || state.comic == null || state.isLoading || state.error != null) {
            return
        }
        eyeRestJob = viewModelScope.launch {
            var nextDelayMinutes = initialDelayMinutes ?: state.eyeRestMinutes
            while (true) {
                delay(nextDelayMinutes * 60_000L)
                val currentState = _uiState.value
                if (!currentState.eyeRestEnabled || currentState.eyeRestMinutes <= 0 || currentState.comic == null || currentState.isLoading || currentState.error != null) {
                    break
                }
                _eyeRestReminder.emit(currentState.eyeRestMinutes)
                nextDelayMinutes = currentState.eyeRestMinutes
            }
        }
    }

    private fun detectFormatForPath(path: String): ComicFormat {
        val byExtension = FormatDetector.detectByExtension(path)
        if (byExtension != ComicFormat.UNKNOWN) return byExtension

        return try {
            val uri = Uri.parse(path)
            if (uri.scheme == "content") {
                context.contentResolver.openInputStream(uri)?.use { stream ->
                    FormatDetector.detect(stream, path)
                } ?: ComicFormat.UNKNOWN
            } else {
                val file = java.io.File(path)
                if (!file.exists()) {
                    ComicFormat.UNKNOWN
                } else {
                    file.inputStream().use { stream ->
                        FormatDetector.detect(stream, file.name)
                    }
                }
            }
        } catch (e: Exception) {
            Log.w("ReaderViewModel", "Fallback format detection failed for $path", e)
            ComicFormat.UNKNOWN
        }
    }

    private fun resolveReadablePath(comic: Comic, fallbackPath: String): String? {
        val treeUri = comic.treeUri
        val documentId = comic.documentId
        if (!treeUri.isNullOrBlank() && !documentId.isNullOrBlank() &&
            DocumentsContract.isTreeUri(Uri.parse(treeUri))
        ) {
            runCatching {
                DocumentsContract.buildDocumentUriUsingTree(Uri.parse(treeUri), documentId).toString()
            }.getOrNull()?.takeIf(::hasReadAccess)?.let { resolvedUri ->
                cacheContentUriForEpub(comic, resolvedUri)?.let { return it }
                return resolvedUri
            }
        }

        if (!fallbackPath.startsWith("content://")) {
            val normalizedPath = fallbackPath.removePrefix("file://")
            EpubReadablePath.ensureLocal(context, normalizedPath)?.let { return it }
            if (isLocalFileReadable(normalizedPath)) return java.io.File(normalizedPath).absolutePath
            val sourceUri = comic.treeUri
            if (!sourceUri.isNullOrBlank() && !DocumentsContract.isTreeUri(Uri.parse(sourceUri)) && hasReadAccess(sourceUri)) {
                return sourceUri
            }
            resolveReadablePathFromPersistedPermissions(comic)?.let { return it }
            return null
        }
        if (hasReadAccess(fallbackPath)) {
            cacheContentUriForEpub(comic, fallbackPath)?.let { return it }
            return fallbackPath
        }

        val sourceUri = comic.treeUri
        if (!sourceUri.isNullOrBlank() && !DocumentsContract.isTreeUri(Uri.parse(sourceUri)) && hasReadAccess(sourceUri)) {
            return sourceUri
        }

        if (treeUri.isNullOrBlank() || documentId.isNullOrBlank()) {
            return resolveReadablePathFromPersistedPermissions(comic)
        }

        return runCatching {
            val rebuilt = DocumentsContract.buildDocumentUriUsingTree(Uri.parse(treeUri), documentId).toString()
            if (hasReadAccess(rebuilt)) rebuilt else null
        }.getOrElse {
            resolveReadablePathFromPersistedPermissions(comic)
        }
    }

    private fun cacheContentUriForEpub(comic: Comic, contentUri: String): String? {
        if (!contentUri.startsWith("content://")) return null
        val format = comic.format
        if (format != ComicFormat.EPUB && format != ComicFormat.UNKNOWN) return null
        return EpubReadablePath.ensureLocalFromContentUri(context, contentUri)
    }

    private fun resolveReadablePathFromPersistedPermissions(comic: Comic): String? {
        val documentId = comic.documentId?.trim().orEmpty()
        if (documentId.isBlank()) return null

        context.contentResolver.persistedUriPermissions
            .asSequence()
            .map { it.uri }
            .forEach { grantedUri ->
                runCatching {
                    when {
                        DocumentsContract.isTreeUri(grantedUri) &&
                            isDocumentInsideTree(DocumentsContract.getTreeDocumentId(grantedUri), documentId) -> {
                            val rebuilt = DocumentsContract.buildDocumentUriUsingTree(grantedUri, documentId).toString()
                            if (hasReadAccess(rebuilt)) return rebuilt
                        }

                        DocumentsContract.isDocumentUri(context, grantedUri) &&
                            DocumentsContract.getDocumentId(grantedUri) == documentId &&
                            hasReadAccess(grantedUri.toString()) -> {
                            return grantedUri.toString()
                        }
                    }
                }
            }

        return documentIdToExternalPath(documentId)?.takeIf(::isLocalFileReadable)
    }

    private fun isDocumentInsideTree(treeDocumentId: String, documentId: String): Boolean {
        val normalizedTreeId = treeDocumentId.trim().removeSuffix("/")
        val normalizedDocumentId = documentId.trim()
        return normalizedDocumentId == normalizedTreeId ||
            normalizedDocumentId.startsWith("$normalizedTreeId/")
    }

    private fun documentIdToExternalPath(documentId: String): String? {
        val separatorIndex = documentId.indexOf(':')
        if (separatorIndex <= 0 || separatorIndex >= documentId.lastIndex) return null
        val volume = documentId.substring(0, separatorIndex)
        val relativePath = documentId.substring(separatorIndex + 1).trim().removePrefix("/")
        if (relativePath.isBlank()) return null
        return when {
            volume.equals("primary", ignoreCase = true) -> {
                java.io.File(Environment.getExternalStorageDirectory(), relativePath).absolutePath
            }
            else -> null
        }
    }

    private fun isLocalFileReadable(path: String): Boolean {
        return runCatching {
            java.io.File(path).let { file ->
                file.exists() && file.isFile && file.canRead()
            }
        }.getOrDefault(false)
    }

    private fun hasReadAccess(path: String): Boolean {
        return try {
            context.contentResolver.openInputStream(Uri.parse(path))?.use { true } ?: false
        } catch (_: Exception) {
            false
        }
    }

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

    private suspend fun resolveSingleWordDictionaryMatch(
        rawWord: String,
        targetLanguage: String,
        preferredSourceLanguage: String?,
        detectionResult: LanguageDetectionResult?
    ): SingleWordDictionaryMatch? {
        return resolveBestSingleWordDictionaryMatch(
            rawWord = rawWord,
            targetLanguage = targetLanguage,
            dictionaryEngine = dictionaryEngine,
            preferredSourceLanguage = preferredSourceLanguage,
            detectedLanguage = detectionResult?.languageCode,
            detectedCandidates = detectionResult?.candidates?.map { it.languageCode }.orEmpty(),
            fallbackSourceLanguages = supportedTranslationLanguageCodes.filter { it != targetLanguage }
        )
    }

    private suspend fun resolveReaderDictionaryEntry(
        rawWord: String,
        sourceLanguage: String,
        targetLanguage: String
    ): DictionaryEntry? {
        return when (
            val dictionaryResult = dictionaryEngine.lookup(
                rawWord = rawWord,
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> dictionaryResult.data.takeIf { entry ->
                entry.hasMeaningfulTranslationFor(rawWord) || entry.translations.isNotEmpty() || entry.glosses.isNotEmpty()
            }
            is Result.Error -> null
            Result.Loading -> null
        }
    }

    private fun showSelectedTextDictionaryResult(
        originalText: String,
        entry: DictionaryEntry,
        sourceLanguage: String,
        targetLanguage: String,
        preferredTransport: TranslationTransportPreference,
        canUseDictionary: Boolean,
        canTranslateAsPhrase: Boolean,
        canExplainSelection: Boolean
    ) {
        _uiState.update {
            it.copy(
                selectedTextTranslation = SelectedTextTranslationState(
                    originalText = originalText,
                    translatedText = entry.translations.firstOrNull().orEmpty(),
                    dictionaryEntry = entry,
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage,
                    mode = TranslationMode.DICTIONARY,
                    preferredTransport = preferredTransport,
                    canUseDictionary = canUseDictionary,
                    canTranslateAsPhrase = canTranslateAsPhrase,
                    canExplain = canExplainSelection,
                    isLoading = false
                )
            )
        }
    }

    private fun String.countSelectionTokens(): Int =
        SELECTION_TOKEN_REGEX.findAll(this).count().coerceAtLeast(if (isBlank()) 0 else 1)

    private fun saveQuote(
        text: String,
        translatedText: String?,
        sourceLanguage: String?,
        targetLanguage: String?
    ) {
        val comic = _uiState.value.comic ?: return
        val page = _uiState.value.currentPage
        viewModelScope.launch {
            runCatching {
                quoteRepository.saveQuote(
                    comic = comic,
                    page = page,
                    text = text,
                    translatedText = translatedText,
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage
                )
            }.onSuccess { result ->
                val readerText = localizedReaderText()
                if (result == null) {
                    _quoteSaveMessages.emit(readerText.quoteSaveFailed)
                    return@onSuccess
                }
                analyticsTracker.track(
                    ReadingAnalyticsEvent.QuoteSaved(
                        comicId = comic.id,
                        page = page,
                        inserted = result.inserted
                    )
                )
                _quoteSaveMessages.emit(
                    if (result.inserted) readerText.quoteSaved else readerText.quoteUpdated
                )
            }.onFailure { error ->
                Log.e("ReaderViewModel", "Failed to save quote", error)
                _quoteSaveMessages.emit(localizedReaderText().quoteSaveFailed)
            }
        }
    }

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

