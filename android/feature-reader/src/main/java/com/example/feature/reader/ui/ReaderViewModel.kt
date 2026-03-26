package com.example.feature.reader.ui

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.graphics.Bitmap
import android.net.Uri
import android.os.Environment
import android.provider.DocumentsContract
import android.util.Log
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.data.repository.ComicRepository
import com.example.core.data.repository.QuoteRepository
import com.example.core.model.Comic
import com.example.core.model.ComicFormat
import com.example.core.model.DictionaryEntry
import com.example.core.model.ExplainRequest
import com.example.core.model.ReadingMode
import com.example.core.model.ReaderInfoSlot
import com.example.core.model.ReaderImageScaleMode
import com.example.core.model.ReaderScreenTimeoutMode
import com.example.core.model.ReaderTapZoneAction
import com.example.core.model.ReaderTapZoneMode
import com.example.core.model.ReaderTtsProviderType
import com.example.core.model.ReaderTtsSleepTimerMode
import com.example.core.model.TranslationServiceConfig
import com.example.core.model.supportsHighResZoomTiers
import com.example.core.model.isTextReadingFormat
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationRequest
import com.example.core.model.TranslationRoutingRequest
import com.example.core.model.TranslationSourceType
import com.example.core.model.TranslationTransportPreference
import com.example.core.domain.translation.DictionaryEngine
import com.example.core.domain.translation.LlmExplainEngine
import com.example.core.domain.translation.SingleWordDictionaryMatch
import com.example.core.domain.translation.TranslationBackendUnavailableException
import com.example.core.domain.translation.hasMeaningfulTranslationFor
import com.example.core.domain.analytics.DailyReadingGoalState
import com.example.core.domain.analytics.DailyReadingGoalStore
import com.example.core.domain.analytics.ReadingAnalyticsEvent
import com.example.core.domain.analytics.ReadingAnalyticsTracker
import com.example.core.ui.locale.normalizeAppLanguageCode
import com.example.core.ui.locale.normalizeTranslationLanguageCode
import com.example.core.ui.locale.supportedTranslationLanguageCodes
import com.example.core.ui.theme.ReadingPreset
import com.example.core.ui.theme.style
import com.example.core.domain.translation.LookupRouter
import com.example.core.domain.translation.LanguageDetector
import com.example.core.domain.translation.OfflineTranslationEngine
import com.example.core.domain.translation.OnlineTranslationEngine
import com.example.core.domain.translation.resolveBestSingleWordDictionaryMatch
import com.example.core.domain.analytics.ReaderCheckpointStore
import com.example.core.domain.util.Result
import com.example.engine.formats.base.FormatFactory
import com.example.engine.formats.base.FormatDetector
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.RenderDeviceTier
import com.example.engine.formats.base.resolveRenderDeviceProfile
import com.example.engine.formats.base.TocEntry
import com.example.engine.rendering.preload.PagePreloader
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import com.example.core.model.LanguageDetectionResult
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.util.concurrent.atomic.AtomicReference
import javax.inject.Inject

enum class ReaderChromeState { HIDDEN, EXPANDED }

enum class FootnotePresentation { PEEK, EXPANDED }

private const val DEFAULT_TEXT_FONT_SIZE = 18
private const val DEFAULT_TEXT_COLOR_SCHEME = "DAY"
private const val DEFAULT_TEXT_FONT_FAMILY = "Georgia"
private const val DEFAULT_TEXT_LINE_HEIGHT = 1.6f
private const val DEFAULT_TEXT_ALIGNMENT = "justify"
private const val DEFAULT_TEXT_BOLD = false

private fun normalizeTapZoneActionName(value: String?): String {
    val action = ReaderTapZoneAction.fromStored(value)
    return if (action == ReaderTapZoneAction.TOGGLE_UI) {
        ReaderTapZoneAction.MENU.name
    } else {
        action.name
    }
}

data class ReaderUiState(
    val comic: Comic? = null,
    val currentPage: Int = 0,
    val totalPages: Int = 0,
    val isLoading: Boolean = true,
    val error: String? = null,
    val readingMode: ReadingMode = ReadingMode.PAGE_LTR,
    val chromeState: ReaderChromeState = ReaderChromeState.HIDDEN,
    val brightness: Float = -1f,
    val keepScreenOn: Boolean = false,
    val screenTimeoutMode: String = ReaderScreenTimeoutMode.SYSTEM.storedValue,
    val landscapeSpreadEnabled: Boolean = true,
    /** true when the screen is in landscape; used to drive automatic DUAL_PAGE switch */
    val isLandscape: Boolean = false,
    /** Page transition animation: "NONE" | "SLIDE" | "FADE" */
    val readerPageAnimation: String = "SLIDE",
    /** Whether page-flip sound effects are enabled */
    val pageSoundEnabled: Boolean = false,
    /** Page-flip sound style: "PAPER" | "CRISP" | "SOFT" */
    val pageSoundStyle: String = "PAPER",
    /** Immersive (fullscreen) mode — hides system bars while reading */
    val immersiveMode: Boolean = false,
    /** Whether expanded reader chrome should hide itself after a short pause. */
    val chromeAutoHideEnabled: Boolean = true,
    /** Opacity for the expanded top toolbar. */
    val topToolbarOpacity: Float = 0.86f,
    /** Opacity for the expanded bottom toolbar. */
    val bottomToolbarOpacity: Float = 0.9f,
    /** Soft blur amount for reader chrome and info panels. */
    val toolbarBlur: Float = READER_TOOLBAR_DEFAULT_BLUR,
    /** How graphic pages should be fitted on the reader canvas. */
    val imageScaleMode: String = ReaderImageScaleMode.FIT_WIDTH.storedValue,
    /** Number of pages to preload ahead of the current page */
    val preloadPages: Int = 3,
    /**
     * Non-null when the current page is rendered as HTML (text EPUB / FB2 novel).
     * Null when the page is a Bitmap (image-based formats).
     */
    val currentHtmlContent: String? = null,
    /** Base URL for resolving relative resources inside [currentHtmlContent]. */
    val htmlBaseUrl: String? = null,
    /** Table of contents entries (chapters). Empty for image-based formats. */
    val tableOfContents: List<TocEntry> = emptyList(),
    /** Whether the TOC bottom sheet is open. */
    val showTocSheet: Boolean = false,
    /** Non-null when a footnote popup should be shown. */
    val footnotePopup: FootnotePopup? = null,
    /** Peek card vs expanded note sheet for inline notes/translations. */
    val footnotePresentation: FootnotePresentation = FootnotePresentation.PEEK,
    /** Font size for text books (sp). */
    val textFontSize: Int = 18,
    /** Color scheme for text books: "DAY" | "SEPIA" | "NIGHT" */
    val textColorScheme: String = "DAY",
    /** Font family for text books: "Georgia" | "Merriweather" | "Open Sans" | "Roboto Slab" | "PT Serif" | "Literata" */
    val textFontFamily: String = "Georgia",
    /** Line height multiplier for text books (e.g. 1.5 = 150%). */
    val textLineHeight: Float = 1.6f,
    /** Text alignment for text books: "justify" | "left" | "right" | "center" */
    val textAlignment: String = "justify",
    /** Bold text for text books. */
    val textBold: Boolean = false,
    /** Tap zone mode for image and text readers. */
    val tapZoneMode: String = ReaderTapZoneMode.SIMPLE.name,
    /** Whether the simple three-zone layout should swap left/right actions. */
    val tapZoneSwap: Boolean = false,
    /** Whether hardware volume buttons should turn pages inside the reader. */
    val volumeKeysPagingEnabled: Boolean = false,
    /** System TTS defaults used by the reader services tab. */
    val ttsProvider: String = ReaderTtsProviderType.SYSTEM.storedValue,
    val ttsSpeed: Float = 1.0f,
    val ttsPitch: Float = 1.0f,
    val ttsVolume: Float = 1.0f,
    val ttsVoiceName: String? = null,
    val ttsSleepTimerMode: String = ReaderTtsSleepTimerMode.OFF.storedValue,
    /** Custom left zone action. */
    val tapZoneLeftAction: String = ReaderTapZoneAction.PREVIOUS_PAGE.name,
    /** Custom center zone action. */
    val tapZoneCenterAction: String = ReaderTapZoneAction.MENU.name,
    /** Custom right zone action. */
    val tapZoneRightAction: String = ReaderTapZoneAction.NEXT_PAGE.name,
    /** Header/footer slot configuration. */
    val headerLeftSlot: String = ReaderInfoSlot.BOOK_TITLE.name,
    val headerCenterSlot: String = ReaderInfoSlot.NONE.name,
    val headerRightSlot: String = ReaderInfoSlot.TIME.name,
    val footerLeftSlot: String = ReaderInfoSlot.CHAPTER_TITLE.name,
    val footerCenterSlot: String = ReaderInfoSlot.PAGE.name,
    val footerRightSlot: String = ReaderInfoSlot.PROGRESS.name,
    val headerFooterFontSize: Int = 12,
    val headerFooterVerticalPadding: Int = 6,
    val headerFooterLeftPadding: Int = 16,
    val headerFooterRightPadding: Int = 16,
    /** Whether the text settings bottom sheet is open. */
    val showTextSettings: Boolean = false,
    /** Set of bookmarked page indices for the current comic. */
    val bookmarkedPages: Set<Int> = emptySet(),
    /** Saved translation/note for the current page, if any. */
    val pageTranslationNote: String? = null,
    /** Pending action sheet for selected text. */
    val selectedTextActionSheet: SelectedTextActionSheetState? = null,
    /** Selected text translation state for text-based books. */
    val selectedTextTranslation: SelectedTextTranslationState? = null,
    /** Shared reading preset applied to theme + reader controls. */
    val readerPreset: String = ReadingPreset.CUSTOM.name,
    /** Whether eye-rest reminders are enabled for reading sessions. */
    val eyeRestEnabled: Boolean = false,
    /** Eye-rest reminder interval in minutes. */
    val eyeRestMinutes: Int = 20,
    /** Global mascot visibility for reader chrome and milestone feedback. */
    val mascotUiEnabled: Boolean = true
)

data class SelectedTextTranslationState(
    val originalText: String,
    val translatedText: String = "",
    val dictionaryEntry: DictionaryEntry? = null,
    val sourceLanguage: String? = null,
    val targetLanguage: String? = null,
    val mode: TranslationMode? = null,
    val preferredTransport: TranslationTransportPreference = TranslationTransportPreference.AUTO,
    val canUseDictionary: Boolean = false,
    val canTranslateAsPhrase: Boolean = false,
    val canExplain: Boolean = false,
    val isLoading: Boolean = true,
    val error: String? = null
)

data class SelectedTextActionSheetState(
    val originalText: String,
    val canUseDictionary: Boolean,
    val canExplain: Boolean
)

/** Data for the inline footnote popup shown when the user taps a footnote link. */
data class FootnotePopup(
    /** Raw HTML text of the footnote (stripped to plain text for display). */
    val text: String
)

data class OcrLaunchRequest(
    val imagePath: String,
    val comicId: String?,
    val page: Int
)

private data class PendingProgressSave(
    val comicId: String,
    val page: Int,
    val totalPages: Int,
    val countsTowardReadingProgress: Boolean
)

private data class PersistedProgressMarker(
    val comicId: String,
    val page: Int
)

private data class ChapterMilestoneMarker(
    val comicId: String,
    val chapterPage: Int
)

enum class ReaderNavigationProgressSource {
    READING,
    JUMP
}

private const val TITLE_COMPLETE_BONUS_XP = 60

enum class ReaderProgressRecapType { CHAPTER, TITLE_COMPLETE }

data class ReaderProgressRecap(
    val type: ReaderProgressRecapType,
    val comicId: String,
    val comicTitle: String,
    val chapterTitle: String? = null,
    val currentPage: Int,
    val totalPages: Int,
    val pagesDelta: Int,
    val xpAwarded: Int,
    val goalEnabled: Boolean,
    val pagesReadToday: Int,
    val targetPages: Int,
    val isDailyGoalComplete: Boolean,
    val pagesReadThisWeek: Int,
    val weeklyTargetPages: Int,
    val isWeeklyPlanComplete: Boolean,
    val streakEnabled: Boolean,
    val currentStreak: Int,
    val emittedAtMillis: Long = System.currentTimeMillis()
)

private data class ReaderSessionSnapshot(
    val comicId: String,
    val format: String,
    val totalPages: Int,
    val startPage: Int,
    val readingMode: String,
    val startedAtMillis: Long,
    val resumedFromProgress: Boolean
)

@HiltViewModel
class ReaderViewModel @Inject constructor(
    savedStateHandle: SavedStateHandle,
    private val comicRepository: ComicRepository,
    private val quoteRepository: QuoteRepository,
    private val formatFactory: FormatFactory,
    private val pagePreloader: PagePreloader,
    private val languageDetector: LanguageDetector,
    private val dictionaryEngine: DictionaryEngine,
    private val lookupRouter: LookupRouter,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val llmExplainEngine: LlmExplainEngine,
    private val analyticsTracker: ReadingAnalyticsTracker,
    private val readerCheckpointStore: ReaderCheckpointStore,
    private val dailyReadingGoalStore: DailyReadingGoalStore,
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
    private val renderProfile = context.resolveRenderDeviceProfile()
    private var formatReader: FormatReader? = null
    private var loadComicJob: Job? = null
    private var eyeRestJob: Job? = null
    private var highQualityWarmupJob: Job? = null
    private var progressSaveJob: Job? = null
    private var pageTranslationNoteJob: Job? = null
    private var pendingProgressSave: PendingProgressSave? = null
    private var lastPersistedProgress: PersistedProgressMarker? = null
    private val lastChapterMilestone = AtomicReference<ChapterMilestoneMarker?>(null)
    private var activeReaderSession: ReaderSessionSnapshot? = null
    private var sessionManualPageTurns: Int = 0
    private var sessionChapterTransitions: Int = 0
    private var lastRetainedHighQualityPages: Set<Int> = emptySet()
    private var currentOpenRequestToken: Long = 0L
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
        val requestToken = ++currentOpenRequestToken
        loadComicJob = viewModelScope.launch {
            val comic = comicRepository.getComicById(comicId)
            if (!isOpenRequestCurrent(requestToken)) return@launch
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
        val requestToken = ++currentOpenRequestToken
        loadComicJob = viewModelScope.launch {
            val comic = comicRepository.getComicByPath(path) ?: run {
                comicRepository.addComic(Uri.parse(path))
            }
            if (!isOpenRequestCurrent(requestToken)) return@launch
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
            if (!isOpenRequestCurrent(requestToken)) return
            _uiState.update {
                it.copy(
                    isLoading = true,
                    error = null,
                    currentHtmlContent = null,
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
            if (!isOpenRequestCurrent(requestToken)) return
            lastRetainedHighQualityPages = emptySet()
            pagePreloader.clearPages()
            formatReader?.close()

            if (!isOpenRequestCurrent(requestToken)) return
            val resolvedPath = resolveReadablePath(comic, sourcePath)
            if (!isOpenRequestCurrent(requestToken)) return
            // Re-detect by extension when stored format might be wrong (e.g. EPUB stored as CBZ
            // because magic bytes of EPUB == ZIP). Extension is always more reliable than magic.
            val detectedFormat = when (comic.format) {
                ComicFormat.UNKNOWN, ComicFormat.CBZ, ComicFormat.ZIP -> {
                    val byPath = detectFormatForPath(resolvedPath)
                    if (byPath != ComicFormat.UNKNOWN) byPath else comic.format
                }
                else -> comic.format
            }
            val newReader = formatFactory.createReader(resolvedPath, detectedFormat)
            if (!isOpenRequestCurrent(requestToken)) {
                newReader?.close()
                return
            }
            formatReader = newReader

            if (formatReader == null) {
                val errorMessage = localizedReaderError { language ->
                    readerUnsupportedFormatMessage(detectedFormat.name, language)
                }
                _uiState.update { it.copy(error = errorMessage, isLoading = false) }
                return
            }

            if (!isOpenRequestCurrent(requestToken)) return
            val pages = formatReader?.getPageCount() ?: 0
            if (!isOpenRequestCurrent(requestToken)) {
                formatReader?.takeIf { it === newReader }?.close()
                if (formatReader === newReader) {
                    formatReader = null
                }
                return
            }
            if (pages <= 0) {
                val errorMessage = localizedReaderError(::readerNoReadablePagesMessage)
                _uiState.update { it.copy(error = errorMessage, isLoading = false) }
                return
            }

            val openingMode = effectiveOpeningModeFor(detectedFormat)
            val requestedPage = pendingRequestedPage
            val startPage = normalizePageForMode(
                page = requestedPage ?: comic.currentPage,
                mode = openingMode,
                totalPages = pages
            )
            pendingRequestedPage = null
            lastPersistedProgress = if (requestedPage != null && requestedPage != comic.currentPage) {
                PersistedProgressMarker(
                    comicId = comic.id,
                    page = normalizePageForMode(
                        page = comic.currentPage,
                        mode = openingMode,
                        totalPages = pages
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
                    totalPages = pages,
                    readingMode = openingMode,
                    currentPage = startPage,
                    isLoading = false,
                    htmlBaseUrl = formatReader?.htmlBaseUrl(),
                    selectedTextActionSheet = null,
                    selectedTextTranslation = null
                )
            }
            val sessionStartedAtMillis = System.currentTimeMillis()
            val resumedFromProgress = requestedPage != null || comic.currentPage > 0
            activeReaderSession = ReaderSessionSnapshot(
                comicId = comic.id,
                format = comic.format.name,
                totalPages = pages,
                startPage = startPage,
                readingMode = openingMode.name,
                startedAtMillis = sessionStartedAtMillis,
                resumedFromProgress = resumedFromProgress
            )
            sessionManualPageTurns = 0
            sessionChapterTransitions = 0
            analyticsTracker.track(
                ReadingAnalyticsEvent.ReaderOpened(
                    comicId = comic.id,
                    format = comic.format.name,
                    totalPages = pages,
                    startPage = startPage,
                    readingMode = openingMode.name,
                    startedAtMillis = sessionStartedAtMillis,
                    resumedFromProgress = resumedFromProgress
                )
            )
            if (!isOpenRequestCurrent(requestToken)) return
            val visiblePages = visiblePagesFor(startPage, openingMode)
            formatReader?.takeUnless { detectedFormat.isTextReadingFormat() }?.let { reader ->
                pagePreloader.preloadAround(reader, visiblePages, pages, _uiState.value.preloadPages)
            }
            visiblePages.forEach { visiblePage ->
                loadPage(visiblePage)
            }
            scheduleHighQualityWarmup(startPage)
            loadToc()
            loadBookmarks(comic.id, pages)
            loadPageTranslationNote(comic.id, startPage)
            restartEyeRestTimer()
        } catch (e: CancellationException) {
            throw e
        } catch (e: Exception) {
            if (!isOpenRequestCurrent(requestToken)) return
            Log.e("ReaderViewModel", "Failed to open comic", e)
            eyeRestJob?.cancel()
            highQualityWarmupJob?.cancel()
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
            // Try HTML page first (text-based EPUB / FB2 novel)
            val html = reader.getHtmlPage(index)
            if (html != null) {
                if (formatReader === reader && _uiState.value.comic?.id == comicId && _uiState.value.currentPage == index) {
                    _uiState.update { it.copy(currentHtmlContent = html) }
                }
                return@launch
            }
            // Bitmap page (image-based formats)
            if (renderQuality == 1) {
                if (formatReader === reader && _uiState.value.comic?.id == comicId && _uiState.value.currentPage == index) {
                    _uiState.update { it.copy(currentHtmlContent = null) }
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

    fun navigateTo(
        page: Int,
        progressSource: ReaderNavigationProgressSource = ReaderNavigationProgressSource.READING
    ) {
        val clamped = normalizePageForMode(
            page = page,
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
            sessionManualPageTurns += 1
        }
        _uiState.update {
            it.copy(
                currentPage = clamped,
                footnotePopup = null,
                footnotePresentation = FootnotePresentation.PEEK,
                selectedTextActionSheet = null,
                selectedTextTranslation = null
            )
        }
        if (_uiState.value.pageSoundEnabled) {
            // Prefer real-audio UIFeedback; fall back to PCM when UIFeedback is off
            if (com.example.core.ui.sound.UIFeedback.enabled) {
                com.example.core.ui.sound.UIFeedback.playPageFlip()
            } else {
                PageSoundPlayer.play(PageSoundStyle.valueOf(_uiState.value.pageSoundStyle))
            }
        }
        syncReaderPosition(
            page = clamped,
            mode = _uiState.value.readingMode,
            persistProgress = true,
            progressSource = progressSource
        )
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
    fun toggleTocSheet() = _uiState.update {
        it.copy(
            showTocSheet = !it.showTocSheet,
            chromeState = ReaderChromeState.EXPANDED
        )
    }

    /**
     * Called by the WebView JS bridge when the user taps a footnote / anchor link.
     * If the format reader has text for that anchor, shows it in the footnote popup.
     */
    fun onAnchorClick(anchorId: String) {
        val text = formatReader?.getFootnoteText(anchorId) ?: return
        if (text.isBlank()) return
        // Strip HTML tags, soft hyphens, and leading note-number prefix (e.g. "2 ")
        val plain = text.replace(Regex("<[^>]+>"), "")
            .replace("\u00AD", "")               // soft hyphens → invisible
            .replace(Regex("""^\d+[\s\u00A0]+"""), "") // strip leading "2 " or "12 "
            .trim()
        _uiState.update {
            it.copy(
                footnotePopup = FootnotePopup(plain),
                footnotePresentation = FootnotePresentation.PEEK
            )
        }
    }

    /** Shows a footnote popup directly from inline EPUB metadata like anchor title="...". */
    fun showInlineFootnote(text: String) {
        val plain = text.replace(Regex("<[^>]+>"), "")
            .replace("\u00AD", "")
            .replace(Regex("""^\d+[\s\u00A0]+"""), "")
            .trim()
        if (plain.isBlank()) return
        _uiState.update {
            it.copy(
                footnotePopup = FootnotePopup(plain),
                footnotePresentation = FootnotePresentation.PEEK
            )
        }
    }

    /** Dismisses the footnote popup without navigating anywhere. */
    fun dismissFootnote() = _uiState.update {
        it.copy(footnotePopup = null, footnotePresentation = FootnotePresentation.PEEK)
    }

    fun expandFootnote() = _uiState.update {
        it.copy(
            footnotePresentation = FootnotePresentation.EXPANDED,
            chromeState = ReaderChromeState.EXPANDED
        )
    }

    fun collapseFootnote() = _uiState.update { it.copy(footnotePresentation = FootnotePresentation.PEEK) }

    /** Opens/closes the text reader settings bottom sheet. */
    fun toggleTextSettings() = _uiState.update {
        it.copy(
            showTextSettings = !it.showTextSettings,
            chromeState = ReaderChromeState.EXPANDED
        )
    }

    private fun markReaderPresetCustom() {
        _uiState.update { it.copy(readerPreset = ReadingPreset.CUSTOM.name) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name) }
    }

    fun applyReadingPreset(preset: ReadingPreset) {
        if (preset == ReadingPreset.CUSTOM) {
            markReaderPresetCustom()
            return
        }
        val style = preset.style()
        _uiState.update {
            it.copy(
                readerPreset = preset.name,
                textColorScheme = style.textColorScheme,
                textFontFamily = style.fontFamily,
                textLineHeight = style.lineHeight,
                immersiveMode = style.immersiveMode,
                readerPageAnimation = style.pageAnimation,
                chromeState = ReaderChromeState.EXPANDED
            )
        }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, preset.name)
            readerPreferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, style.immersiveMode)
            readerPreferences.set(PreferencesKeys.READER_PAGE_ANIMATION, style.pageAnimation)
            readerPreferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, style.textColorScheme)
            readerPreferences.set(PreferencesKeys.TEXT_FONT_FAMILY, style.fontFamily)
            readerPreferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, style.lineHeight)
        }
    }

    /** Updates font size for text books. */
    fun setTextFontSize(size: Int) {
        markReaderPresetCustom()
        _uiState.update { it.copy(textFontSize = size) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.TEXT_FONT_SIZE, size) }
    }

    /** Updates color scheme for text books: "DAY" | "SEPIA" | "NIGHT". */
    fun setTextColorScheme(scheme: String) {
        markReaderPresetCustom()
        _uiState.update { it.copy(textColorScheme = scheme) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, scheme) }
    }

    /** Updates font family for text books. */
    fun setTextFontFamily(family: String) {
        markReaderPresetCustom()
        _uiState.update { it.copy(textFontFamily = family) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.TEXT_FONT_FAMILY, family) }
    }

    /** Updates line height multiplier for text books. */
    fun setTextLineHeight(height: Float) {
        markReaderPresetCustom()
        _uiState.update { it.copy(textLineHeight = height) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, height) }
    }

    /** Updates text alignment for text books: "justify" | "left" | "right" | "center". */
    fun setTextAlignment(align: String) {
        markReaderPresetCustom()
        _uiState.update { it.copy(textAlignment = align) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.TEXT_ALIGNMENT, align) }
    }

    /** Toggles bold text for text books. */
    fun setTextBold(bold: Boolean) {
        markReaderPresetCustom()
        _uiState.update { it.copy(textBold = bold) }
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.TEXT_BOLD, bold) }
    }

    fun resetTextSettings() {
        markReaderPresetCustom()
        _uiState.update {
            it.copy(
                textFontSize = DEFAULT_TEXT_FONT_SIZE,
                textColorScheme = DEFAULT_TEXT_COLOR_SCHEME,
                textFontFamily = DEFAULT_TEXT_FONT_FAMILY,
                textLineHeight = DEFAULT_TEXT_LINE_HEIGHT,
                textAlignment = DEFAULT_TEXT_ALIGNMENT,
                textBold = DEFAULT_TEXT_BOLD
            )
        }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.TEXT_FONT_SIZE, DEFAULT_TEXT_FONT_SIZE)
            readerPreferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, DEFAULT_TEXT_COLOR_SCHEME)
            readerPreferences.set(PreferencesKeys.TEXT_FONT_FAMILY, DEFAULT_TEXT_FONT_FAMILY)
            readerPreferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, DEFAULT_TEXT_LINE_HEIGHT)
            readerPreferences.set(PreferencesKeys.TEXT_ALIGNMENT, DEFAULT_TEXT_ALIGNMENT)
            readerPreferences.set(PreferencesKeys.TEXT_BOLD, DEFAULT_TEXT_BOLD)
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

    /** Loads the TOC from the current format reader (IO-bound, runs on Dispatchers.IO). */
    private fun loadToc() {
        val reader = formatReader ?: run {
            _uiState.update { it.copy(tableOfContents = emptyList()) }
            return
        }
        viewModelScope.launch(Dispatchers.IO) {
            val toc = reader.getTableOfContents()
            if (formatReader !== reader) return@launch
            _uiState.update { it.copy(tableOfContents = toc) }
            rememberChapterMilestoneAnchor()
        }
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
            supportsAutomaticLandscapeSpread(portraitReadingMode)
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
                currentPage = alignedPage
            )
        }
        syncReaderPosition(
            page = alignedPage,
            mode = mode,
            persistProgress = !isProgressAlreadyPersisted(_uiState.value.comic?.id, alignedPage),
            announceChapterMilestone = false
        )
    }
    private var brightnessJob: Job? = null
    fun setBrightness(value: Float) {
        markReaderPresetCustom()
        val safe = if (value <= 0.01f) {
            -1f
        } else {
            value.coerceIn(0.05f, 1f)
        }
        _uiState.update { it.copy(brightness = safe) }   // immediate UI update
        brightnessJob?.cancel()
        brightnessJob = viewModelScope.launch {
            delay(300)   // debounce: only write after dragging stops
            readerPreferences.set(PreferencesKeys.READING_BRIGHTNESS, safe)
        }
    }

    fun setKeepScreenOn(enabled: Boolean) {
        _uiState.update { it.copy(keepScreenOn = enabled) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_KEEP_SCREEN_ON, enabled)
        }
    }

    fun setScreenTimeoutMode(mode: String) {
        val resolved = ReaderScreenTimeoutMode.fromStored(mode)
        _uiState.update { it.copy(screenTimeoutMode = resolved.storedValue) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_SCREEN_TIMEOUT_MODE, resolved.storedValue)
        }
    }

    fun setImmersiveMode(enabled: Boolean) {
        markReaderPresetCustom()
        _uiState.update { it.copy(immersiveMode = enabled) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, enabled)
        }
    }

    fun setLandscapeSpreadEnabled(enabled: Boolean) {
        _uiState.update { it.copy(landscapeSpreadEnabled = enabled) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_LANDSCAPE_SPREAD_ENABLED, enabled)
        }
        onOrientationChanged(
            useLandscapeSpread = _uiState.value.isLandscape,
            isTextReader = _uiState.value.currentHtmlContent != null ||
                (_uiState.value.comic?.format?.isTextReadingFormat() == true)
        )
    }

    fun setPreloadPages(count: Int) {
        val safe = count.coerceIn(2, 8)
        _uiState.update { it.copy(preloadPages = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRELOAD_PAGES, safe)
        }
    }

    fun setPageAnimation(animation: String) {
        markReaderPresetCustom()
        _uiState.update { it.copy(readerPageAnimation = animation) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PAGE_ANIMATION, animation)
        }
    }

    fun setVolumeKeysPagingEnabled(enabled: Boolean) {
        _uiState.update { it.copy(volumeKeysPagingEnabled = enabled) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_VOLUME_KEYS_PAGING, enabled)
        }
    }

    fun setTapZoneMode(value: String) {
        val resolved = ReaderTapZoneMode.fromStored(value)
        _uiState.update { it.copy(tapZoneMode = resolved.name) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TAP_ZONE_MODE, resolved.name)
        }
    }

    fun setTapZoneSwap(enabled: Boolean) {
        _uiState.update { it.copy(tapZoneSwap = enabled) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TAP_ZONE_SWAP, enabled)
        }
    }

    fun setTapZoneAction(position: String, action: String) {
        val normalizedActionName = normalizeTapZoneActionName(action)
        val normalizedPosition = position.uppercase()
        _uiState.update {
            when (normalizedPosition) {
                "LEFT" -> it.copy(
                    tapZoneMode = ReaderTapZoneMode.CUSTOM.name,
                    tapZoneLeftAction = normalizedActionName
                )
                "CENTER" -> it.copy(
                    tapZoneMode = ReaderTapZoneMode.CUSTOM.name,
                    tapZoneCenterAction = normalizedActionName
                )
                else -> it.copy(
                    tapZoneMode = ReaderTapZoneMode.CUSTOM.name,
                    tapZoneRightAction = normalizedActionName
                )
            }
        }
        val key = when (normalizedPosition) {
            "LEFT" -> PreferencesKeys.READER_TAP_ZONE_LEFT
            "CENTER" -> PreferencesKeys.READER_TAP_ZONE_CENTER
            else -> PreferencesKeys.READER_TAP_ZONE_RIGHT
        }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TAP_ZONE_MODE, ReaderTapZoneMode.CUSTOM.name)
            readerPreferences.set(key, normalizedActionName)
        }
    }

    fun toggleTapZoneDirectionShortcut() {
        val state = _uiState.value
        val mode = ReaderTapZoneMode.fromStored(state.tapZoneMode)
        if (mode == ReaderTapZoneMode.CUSTOM) {
            val left = state.tapZoneLeftAction
            val right = state.tapZoneRightAction
            _uiState.update {
                it.copy(
                    tapZoneLeftAction = right,
                    tapZoneRightAction = left
                )
            }
            viewModelScope.launch {
                readerPreferences.set(PreferencesKeys.READER_TAP_ZONE_LEFT, right)
                readerPreferences.set(PreferencesKeys.READER_TAP_ZONE_RIGHT, left)
            }
        } else {
            val nextSwap = !state.tapZoneSwap
            _uiState.update { it.copy(tapZoneSwap = nextSwap) }
            viewModelScope.launch {
                readerPreferences.set(PreferencesKeys.READER_TAP_ZONE_SWAP, nextSwap)
            }
        }
    }

    fun setHeaderSlot(position: String, slot: String) {
        val normalizedSlot = ReaderInfoSlot.fromStored(slot).name
        val normalizedPosition = position.uppercase()
        _uiState.update {
            when (normalizedPosition) {
                "LEFT" -> it.copy(headerLeftSlot = normalizedSlot)
                "CENTER" -> it.copy(headerCenterSlot = normalizedSlot)
                else -> it.copy(headerRightSlot = normalizedSlot)
            }
        }
        val key = when (normalizedPosition) {
            "LEFT" -> PreferencesKeys.READER_HEADER_LEFT_SLOT
            "CENTER" -> PreferencesKeys.READER_HEADER_CENTER_SLOT
            else -> PreferencesKeys.READER_HEADER_RIGHT_SLOT
        }
        viewModelScope.launch {
            readerPreferences.set(key, normalizedSlot)
        }
    }

    fun setFooterSlot(position: String, slot: String) {
        val normalizedSlot = ReaderInfoSlot.fromStored(slot).name
        val normalizedPosition = position.uppercase()
        _uiState.update {
            when (normalizedPosition) {
                "LEFT" -> it.copy(footerLeftSlot = normalizedSlot)
                "CENTER" -> it.copy(footerCenterSlot = normalizedSlot)
                else -> it.copy(footerRightSlot = normalizedSlot)
            }
        }
        val key = when (normalizedPosition) {
            "LEFT" -> PreferencesKeys.READER_FOOTER_LEFT_SLOT
            "CENTER" -> PreferencesKeys.READER_FOOTER_CENTER_SLOT
            else -> PreferencesKeys.READER_FOOTER_RIGHT_SLOT
        }
        viewModelScope.launch {
            readerPreferences.set(key, normalizedSlot)
        }
    }

    fun setHeaderFooterFontSize(size: Int) {
        val safe = size.coerceIn(10, 20)
        _uiState.update { it.copy(headerFooterFontSize = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_HEADER_FOOTER_FONT_SIZE, safe)
        }
    }

    fun setHeaderFooterVerticalPadding(padding: Int) {
        val safe = padding.coerceIn(4, 20)
        _uiState.update { it.copy(headerFooterVerticalPadding = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_HEADER_FOOTER_VERTICAL_PADDING, safe)
        }
    }

    fun setHeaderFooterLeftPadding(padding: Int) {
        val safe = padding.coerceIn(8, 32)
        _uiState.update { it.copy(headerFooterLeftPadding = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_HEADER_FOOTER_LEFT_PADDING, safe)
        }
    }

    fun setHeaderFooterRightPadding(padding: Int) {
        val safe = padding.coerceIn(8, 32)
        _uiState.update { it.copy(headerFooterRightPadding = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_HEADER_FOOTER_RIGHT_PADDING, safe)
        }
    }

    fun setChromeAutoHideEnabled(enabled: Boolean) {
        _uiState.update { it.copy(chromeAutoHideEnabled = enabled) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_CHROME_AUTO_HIDE, enabled)
        }
    }

    fun setTopToolbarOpacity(value: Float) {
        val safe = value.coerceIn(READER_TOOLBAR_MIN_OPACITY, 1.0f)
        _uiState.update { it.copy(topToolbarOpacity = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, safe)
        }
    }

    fun setBottomToolbarOpacity(value: Float) {
        val safe = value.coerceIn(READER_TOOLBAR_MIN_OPACITY, 1.0f)
        _uiState.update { it.copy(bottomToolbarOpacity = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, safe)
        }
    }

    fun setToolbarBlur(value: Float) {
        val safe = value.coerceIn(0f, 1.0f)
        _uiState.update { it.copy(toolbarBlur = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TOOLBAR_BLUR, safe)
        }
    }

    fun setImageScaleMode(value: String) {
        val resolved = ReaderImageScaleMode.fromStored(value)
        _uiState.update { it.copy(imageScaleMode = resolved.storedValue) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_IMAGE_SCALE_MODE, resolved.storedValue)
        }
    }

    fun setTtsSpeed(value: Float) {
        val safe = value.coerceIn(0.5f, 2.0f)
        _uiState.update { it.copy(ttsSpeed = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TTS_SPEED, safe)
        }
    }

    fun setTtsProvider(value: String) {
        val resolved = ReaderTtsProviderType.fromStored(value)
        _uiState.update { it.copy(ttsProvider = resolved.storedValue) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TTS_PROVIDER, resolved.storedValue)
        }
    }

    fun setTtsPitch(value: Float) {
        val safe = value.coerceIn(0.5f, 2.0f)
        _uiState.update { it.copy(ttsPitch = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TTS_PITCH, safe)
        }
    }

    fun setTtsVolume(value: Float) {
        val safe = value.coerceIn(0f, 1.0f)
        _uiState.update { it.copy(ttsVolume = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TTS_VOLUME, safe)
        }
    }

    fun setTtsVoiceName(value: String?) {
        _uiState.update { it.copy(ttsVoiceName = value?.takeIf(String::isNotBlank)) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TTS_VOICE_NAME, value.orEmpty())
        }
    }

    fun setTtsSleepTimerMode(value: String) {
        val resolved = ReaderTtsSleepTimerMode.fromStored(value)
        _uiState.update { it.copy(ttsSleepTimerMode = resolved.storedValue) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_TTS_SLEEP_TIMER_MODE, resolved.storedValue)
        }
    }

    private fun saveProgress(
        page: Int,
        progressSource: ReaderNavigationProgressSource
    ) {
        val comic = _uiState.value.comic ?: return
        val pending = PendingProgressSave(
            comicId = comic.id,
            page = page,
            totalPages = _uiState.value.totalPages,
            countsTowardReadingProgress = progressSource == ReaderNavigationProgressSource.READING
        )
        if (pending == pendingProgressSave || isProgressAlreadyPersisted(comic.id, page)) return
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
        sessionChapterTransitions += 1
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
            formatReader?.let { reader ->
                pagePreloader.preloadAround(reader, visiblePages, _uiState.value.totalPages, _uiState.value.preloadPages)
            }
            scheduleHighQualityWarmup(page)
        } else {
            applyHighQualityRetention(emptySet())
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
        val totalPages = _uiState.value.totalPages
        val normalizedPage = normalizePageForMode(page, mode, totalPages)
        return when (mode) {
            ReadingMode.DUAL_PAGE -> buildList {
                add(normalizedPage)
                val rightPage = (normalizedPage + 1).takeIf { it < totalPages }
                if (rightPage != null) add(rightPage)
            }
            else -> listOf(normalizedPage)
        }
    }

    private fun currentChapterFor(page: Int): TocEntry? {
        val toc = _uiState.value.tableOfContents
        if (toc.isEmpty()) return null
        return toc.asSequence()
            .sortedBy { it.pageIndex }
            .lastOrNull { it.pageIndex <= page }
    }

    private fun normalizePageForMode(
        page: Int,
        mode: ReadingMode,
        totalPages: Int = _uiState.value.totalPages
    ): Int {
        val clamped = page.coerceIn(0, (totalPages - 1).coerceAtLeast(0))
        return when (mode) {
            ReadingMode.DUAL_PAGE -> (clamped / 2) * 2
            else -> clamped
        }
    }

    private fun pageStepForMode(mode: ReadingMode): Int =
        if (mode == ReadingMode.DUAL_PAGE) 2 else 1

    private fun effectiveOpeningModeFor(format: ComicFormat): ReadingMode {
        val state = _uiState.value
        return when {
            format.isTextReadingFormat() -> portraitPagedReadingMode
            state.isLandscape &&
                state.landscapeSpreadEnabled &&
                supportsAutomaticLandscapeSpread(portraitReadingMode) &&
                state.readingMode != ReadingMode.WEBTOON -> ReadingMode.DUAL_PAGE
            state.readingMode == ReadingMode.DUAL_PAGE -> portraitReadingMode
            else -> state.readingMode
        }
    }

    private fun isOpenRequestCurrent(requestToken: Long): Boolean =
        requestToken == currentOpenRequestToken

    private fun rememberPortraitMode(mode: ReadingMode) {
        if (mode == ReadingMode.DUAL_PAGE) return
        portraitReadingMode = mode
        if (mode == ReadingMode.PAGE_LTR || mode == ReadingMode.PAGE_RTL) {
            portraitPagedReadingMode = mode
        }
    }

    private fun supportsAutomaticLandscapeSpread(mode: ReadingMode): Boolean =
        mode == ReadingMode.PAGE_LTR || mode == ReadingMode.PAGE_RTL

    private fun applyHighQualityRetention(indices: Set<Int>) {
        if (indices == lastRetainedHighQualityPages) return
        pagePreloader.retainHighQualityPages(indices)
        lastRetainedHighQualityPages = indices
    }

    private fun activeComicSupportsBitmapPreload(): Boolean =
        !(_uiState.value.comic?.format?.isTextReadingFormat() ?: false)

    private fun activeComicSupportsHighResZoom(): Boolean =
        _uiState.value.comic?.format?.supportsHighResZoomTiers() == true

    private fun isProgressAlreadyPersisted(comicId: String?, page: Int): Boolean =
        comicId != null && lastPersistedProgress == PersistedProgressMarker(comicId = comicId, page = page)

    private suspend fun flushPendingProgressSave() {
        val pending = pendingProgressSave ?: return
        pendingProgressSave = null
        try {
            val previousPersistedPage = lastPersistedProgress
                ?.takeIf { it.comicId == pending.comicId }
                ?.page
            comicRepository.updateProgress(
                comicId = pending.comicId,
                currentPage = pending.page,
                totalPages = pending.totalPages
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
            val reachedLastPage = pending.totalPages > 0 && pending.page >= pending.totalPages - 1
            val currentComic = _uiState.value.comic ?: return
            val titleCompletionPolicy = resolveTitleCompletionPolicy(
                reachedLastPage = reachedLastPage,
                currentComicIdMatches = currentComic.id == pending.comicId,
                alreadyCompleted = currentComic.isCompleted,
                countsTowardReadingProgress = pending.countsTowardReadingProgress,
                sessionManualPageTurns = sessionManualPageTurns,
                goalProgressDelta = goalProgressDelta
            )
            if (titleCompletionPolicy.shouldComplete) {
                comicRepository.markCompleted(pending.comicId, completed = true)
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
        runCatching { kotlinx.coroutines.runBlocking { flushPendingProgressSave() } }
        emitReaderClosed()
        super.onCleared()
        loadComicJob?.cancel()
        eyeRestJob?.cancel()
        highQualityWarmupJob?.cancel()
        progressSaveJob?.cancel()
        pageTranslationNoteJob?.cancel()
        formatReader?.close()
        pagePreloader.cancelPreload()
        pagePreloader.clearPages()
    }

    private fun emitReaderClosed() {
        val session = activeReaderSession ?: return
        activeReaderSession = null
        val state = _uiState.value
        val currentComic = state.comic?.takeIf { it.id == session.comicId }
        val sessionMetrics = resolveReaderClosedSessionMetrics(
            sessionComicId = session.comicId,
            currentComicId = currentComic?.id,
            currentComicCompleted = currentComic?.isCompleted == true,
            currentPage = state.currentPage,
            startPage = session.startPage,
            manualPageTurns = sessionManualPageTurns,
            chapterTransitions = sessionChapterTransitions
        )
        val finishedAtMillis = System.currentTimeMillis()
        if (shouldRecordReaderSessionMinutes(sessionMetrics)) {
            runCatching {
                kotlinx.coroutines.runBlocking {
                    dailyReadingGoalStore.recordSessionMinutes(
                        durationMillis = finishedAtMillis - session.startedAtMillis,
                        nowMillis = finishedAtMillis
                    )
                }
            }.onFailure { error ->
                Log.e("ReaderViewModel", "Failed to record reading session minutes", error)
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

    private suspend fun restoreReaderPreferences() {
        val storedMode = readerPreferences.get(PreferencesKeys.READING_MODE, ReadingMode.PAGE_LTR.name).first()
        val mode = runCatching { ReadingMode.valueOf(storedMode) }.getOrDefault(ReadingMode.PAGE_LTR)
        rememberPortraitMode(mode)
        val brightness = readerPreferences.get(PreferencesKeys.READING_BRIGHTNESS, -1f).first().let { stored ->
            if (stored < 0f) -1f else stored.coerceIn(0.05f, 1f)
        }
        val keepScreenOn = readerPreferences.get(PreferencesKeys.READER_KEEP_SCREEN_ON, false).first()
        val screenTimeoutMode = ReaderScreenTimeoutMode.fromStored(
            readerPreferences.get(
                PreferencesKeys.READER_SCREEN_TIMEOUT_MODE,
                ReaderScreenTimeoutMode.SYSTEM.storedValue
            ).first()
        )
        val landscapeSpreadEnabled = readerPreferences.get(PreferencesKeys.READER_LANDSCAPE_SPREAD_ENABLED, true).first()
        val animation    = readerPreferences.get(PreferencesKeys.READER_PAGE_ANIMATION, "SLIDE").first()
        val pageSound    = readerPreferences.get(PreferencesKeys.READER_PAGE_SOUND, false).first()
        val soundStyle   = readerPreferences.get(PreferencesKeys.READER_PAGE_SOUND_STYLE, "PAPER").first()
        val immersive    = readerPreferences.get(PreferencesKeys.READER_IMMERSIVE_MODE, false).first()
        val chromeAutoHideEnabled = readerPreferences.get(PreferencesKeys.READER_CHROME_AUTO_HIDE, true).first()
        val topToolbarOpacity = readerPreferences.get(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, 0.86f).first().coerceIn(READER_TOOLBAR_MIN_OPACITY, 1.0f)
        val bottomToolbarOpacity = readerPreferences.get(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, 0.9f).first().coerceIn(READER_TOOLBAR_MIN_OPACITY, 1.0f)
        val toolbarBlur = readerPreferences.get(PreferencesKeys.READER_TOOLBAR_BLUR, READER_TOOLBAR_DEFAULT_BLUR).first().coerceIn(0f, 1f)
        val imageScaleMode = ReaderImageScaleMode.fromStored(
            readerPreferences.get(
                PreferencesKeys.READER_IMAGE_SCALE_MODE,
                ReaderImageScaleMode.FIT_WIDTH.storedValue
            ).first()
        )
        val preload      = readerPreferences.get(
            PreferencesKeys.READER_PRELOAD_PAGES,
            renderProfile.defaultPreloadPages
        ).first()
            .coerceIn(2, 8)
            .coerceAtMost(renderProfile.maxPreloadPages)
        // Text reader settings
        val fontSize     = readerPreferences.get(PreferencesKeys.TEXT_FONT_SIZE, 18).first().coerceIn(12, 32)
        val colorScheme  = readerPreferences.get(PreferencesKeys.TEXT_COLOR_SCHEME, "DAY").first()
        val fontFamily   = readerPreferences.get(PreferencesKeys.TEXT_FONT_FAMILY, "Georgia").first()
        val lineHeight   = readerPreferences.get(PreferencesKeys.TEXT_LINE_HEIGHT, 1.8f).first().coerceIn(1.0f, 3.0f)
        val alignment    = readerPreferences.get(PreferencesKeys.TEXT_ALIGNMENT, "justify").first()
        val bold         = readerPreferences.get(PreferencesKeys.TEXT_BOLD, false).first()
        val tapZoneMode = ReaderTapZoneMode.fromStored(
            readerPreferences.get(PreferencesKeys.READER_TAP_ZONE_MODE, ReaderTapZoneMode.SIMPLE.name).first()
        )
        val tapZoneSwap = readerPreferences.get(PreferencesKeys.READER_TAP_ZONE_SWAP, false).first()
        val volumeKeysPagingEnabled = readerPreferences.get(PreferencesKeys.READER_VOLUME_KEYS_PAGING, false).first()
        val ttsProvider = ReaderTtsProviderType.fromStored(
            readerPreferences.get(
                PreferencesKeys.READER_TTS_PROVIDER,
                ReaderTtsProviderType.SYSTEM.storedValue
            ).first()
        )
        val ttsSpeed = readerPreferences.get(PreferencesKeys.READER_TTS_SPEED, 1.0f).first().coerceIn(0.5f, 2.0f)
        val ttsPitch = readerPreferences.get(PreferencesKeys.READER_TTS_PITCH, 1.0f).first().coerceIn(0.5f, 2.0f)
        val ttsVolume = readerPreferences.get(PreferencesKeys.READER_TTS_VOLUME, 1.0f).first().coerceIn(0f, 1.0f)
        val ttsVoiceName = readerPreferences.get(PreferencesKeys.READER_TTS_VOICE_NAME, "").first().ifBlank { null }
        val ttsSleepTimerMode = ReaderTtsSleepTimerMode.fromStored(
            readerPreferences.get(
                PreferencesKeys.READER_TTS_SLEEP_TIMER_MODE,
                ReaderTtsSleepTimerMode.OFF.storedValue
            ).first()
        )
        val tapZoneLeft = normalizeTapZoneActionName(
            readerPreferences.get(PreferencesKeys.READER_TAP_ZONE_LEFT, ReaderTapZoneAction.PREVIOUS_PAGE.name).first()
        )
        val tapZoneCenter = normalizeTapZoneActionName(
            readerPreferences.get(PreferencesKeys.READER_TAP_ZONE_CENTER, ReaderTapZoneAction.MENU.name).first()
        )
        val tapZoneRight = normalizeTapZoneActionName(
            readerPreferences.get(PreferencesKeys.READER_TAP_ZONE_RIGHT, ReaderTapZoneAction.NEXT_PAGE.name).first()
        )
        val headerLeftSlot = ReaderInfoSlot.fromStored(
            readerPreferences.get(PreferencesKeys.READER_HEADER_LEFT_SLOT, ReaderInfoSlot.BOOK_TITLE.name).first()
        )
        val headerCenterSlot = ReaderInfoSlot.fromStored(
            readerPreferences.get(PreferencesKeys.READER_HEADER_CENTER_SLOT, ReaderInfoSlot.NONE.name).first()
        )
        val headerRightSlot = ReaderInfoSlot.fromStored(
            readerPreferences.get(PreferencesKeys.READER_HEADER_RIGHT_SLOT, ReaderInfoSlot.TIME.name).first()
        )
        val footerLeftSlot = ReaderInfoSlot.fromStored(
            readerPreferences.get(PreferencesKeys.READER_FOOTER_LEFT_SLOT, ReaderInfoSlot.CHAPTER_TITLE.name).first()
        )
        val footerCenterSlot = ReaderInfoSlot.fromStored(
            readerPreferences.get(PreferencesKeys.READER_FOOTER_CENTER_SLOT, ReaderInfoSlot.PAGE.name).first()
        )
        val footerRightSlot = ReaderInfoSlot.fromStored(
            readerPreferences.get(PreferencesKeys.READER_FOOTER_RIGHT_SLOT, ReaderInfoSlot.PROGRESS.name).first()
        )
        val headerFooterFontSize = readerPreferences.get(PreferencesKeys.READER_HEADER_FOOTER_FONT_SIZE, 12).first().coerceIn(10, 20)
        val headerFooterVerticalPadding = readerPreferences.get(PreferencesKeys.READER_HEADER_FOOTER_VERTICAL_PADDING, 6).first().coerceIn(4, 20)
        val headerFooterLeftPadding = readerPreferences.get(PreferencesKeys.READER_HEADER_FOOTER_LEFT_PADDING, 16).first().coerceIn(8, 32)
        val headerFooterRightPadding = readerPreferences.get(PreferencesKeys.READER_HEADER_FOOTER_RIGHT_PADDING, 16).first().coerceIn(8, 32)
        val eyeRestEnabled = readerPreferences.get(PreferencesKeys.READER_EYE_REST_ENABLED, false).first()
        val eyeRestMinutes = readerPreferences.get(PreferencesKeys.READER_EYE_REST_MINUTES, 20).first().coerceIn(10, 60)
        val mascotUiEnabled = readerPreferences.get(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, true).first()
        val readerPreset = ReadingPreset.fromStored(
            readerPreferences.get(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name).first()
        )
        _uiState.update { state ->
            val effectiveMode = if (state.isLandscape && supportsAutomaticLandscapeSpread(mode)) {
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
                preloadPages     = preload,
                textFontSize     = fontSize,
                textColorScheme  = colorScheme,
                textFontFamily   = fontFamily,
                textLineHeight   = lineHeight,
                textAlignment    = alignment,
                textBold         = bold,
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
                mascotUiEnabled  = mascotUiEnabled
            )
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

    private fun resolveReadablePath(comic: Comic, fallbackPath: String): String {
        if (!fallbackPath.startsWith("content://")) {
            val filePath = java.io.File(fallbackPath)
            if (filePath.exists()) return fallbackPath
            val sourceUri = comic.treeUri
            if (!sourceUri.isNullOrBlank() && !DocumentsContract.isTreeUri(Uri.parse(sourceUri)) && hasReadAccess(sourceUri)) {
                return sourceUri
            }
            resolveReadablePathFromPersistedPermissions(comic)?.let { return it }
            return fallbackPath
        }
        if (hasReadAccess(fallbackPath)) return fallbackPath

        val sourceUri = comic.treeUri
        if (!sourceUri.isNullOrBlank() && !DocumentsContract.isTreeUri(Uri.parse(sourceUri)) && hasReadAccess(sourceUri)) {
            return sourceUri
        }

        val treeUri = comic.treeUri
        val documentId = comic.documentId
        if (treeUri.isNullOrBlank() || documentId.isNullOrBlank()) {
            return resolveReadablePathFromPersistedPermissions(comic) ?: fallbackPath
        }

        return runCatching {
            val rebuilt = DocumentsContract.buildDocumentUriUsingTree(Uri.parse(treeUri), documentId).toString()
            if (hasReadAccess(rebuilt)) rebuilt else fallbackPath
        }.getOrElse {
            resolveReadablePathFromPersistedPermissions(comic) ?: fallbackPath
        }.let { resolved ->
            if (resolved != fallbackPath) resolved else resolveReadablePathFromPersistedPermissions(comic) ?: fallbackPath
        }
    }

    private fun resolveReadablePathFromPersistedPermissions(comic: Comic): String? {
        val documentId = comic.documentId?.trim().orEmpty()
        if (documentId.isBlank()) return documentIdToExternalPath(documentId)?.takeIf(::isLocalFileReadable)

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
            java.io.File(path).exists()
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
                if (result == null) return@onSuccess
                val readerText = localizedReaderText()
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

internal fun positiveProgressDelta(
    previousPersistedPage: Int?,
    newPage: Int
): Int {
    if (previousPersistedPage == null) return 0
    return (newPage - previousPersistedPage).coerceAtLeast(0)
}

internal fun navigationProgressDelta(
    previousPersistedPage: Int?,
    newPage: Int,
    countsTowardReadingProgress: Boolean
): Int {
    if (!countsTowardReadingProgress) return 0
    return positiveProgressDelta(previousPersistedPage = previousPersistedPage, newPage = newPage)
}

internal fun countsAsManualPageTurn(
    progressSource: ReaderNavigationProgressSource
): Boolean = progressSource == ReaderNavigationProgressSource.READING

internal data class TitleCompletionPolicy(
    val shouldComplete: Boolean,
    val recapPagesDelta: Int,
    val recapXpAwarded: Int,
    val bonusXpAwarded: Int
)

internal data class ReaderClosedSessionMetrics(
    val endPage: Int,
    val completed: Boolean,
    val manualPageTurns: Int,
    val chapterTransitions: Int
)

internal fun resolveGoalCompletedAnalyticsEvent(
    comicId: String,
    previousState: DailyReadingGoalState,
    currentState: DailyReadingGoalState
): ReadingAnalyticsEvent.GoalCompleted? {
    val dailyCompleted = currentState.enabled && !previousState.isCompleted && currentState.isCompleted
    val weeklyCompleted = currentState.enabled &&
        !previousState.isWeeklyPlanCompleted &&
        currentState.isWeeklyPlanCompleted
    if (!dailyCompleted && !weeklyCompleted) return null
    return ReadingAnalyticsEvent.GoalCompleted(
        comicId = comicId,
        targetPages = currentState.targetPages,
        pagesReadToday = currentState.pagesReadToday,
        weeklyTargetPages = currentState.weeklyTargetPages,
        pagesReadThisWeek = currentState.pagesReadThisWeek,
        completedDaysThisWeek = currentState.completedDaysThisWeek,
        currentStreak = currentState.currentStreak,
        dailyCompleted = dailyCompleted,
        weeklyCompleted = weeklyCompleted
    )
}

internal fun shouldRecordReaderSessionMinutes(
    sessionMetrics: ReaderClosedSessionMetrics
): Boolean = sessionMetrics.manualPageTurns > 0 || sessionMetrics.chapterTransitions > 0

internal fun buildReaderClosedAnalyticsEvent(
    comicId: String,
    format: String,
    totalPages: Int,
    readingMode: String,
    startedAtMillis: Long,
    finishedAtMillis: Long,
    sessionMetrics: ReaderClosedSessionMetrics
): ReadingAnalyticsEvent.ReaderClosed = ReadingAnalyticsEvent.ReaderClosed(
    comicId = comicId,
    format = format,
    totalPages = totalPages,
    endPage = sessionMetrics.endPage,
    readingMode = readingMode,
    startedAtMillis = startedAtMillis,
    durationMs = (finishedAtMillis - startedAtMillis).coerceAtLeast(0L),
    completed = sessionMetrics.completed,
    manualPageTurns = sessionMetrics.manualPageTurns,
    chapterTransitions = sessionMetrics.chapterTransitions
)

internal fun shouldAutoCompleteTitle(
    reachedLastPage: Boolean,
    currentComicIdMatches: Boolean,
    alreadyCompleted: Boolean,
    countsTowardReadingProgress: Boolean,
    sessionManualPageTurns: Int
): Boolean {
    if (!reachedLastPage || !currentComicIdMatches || alreadyCompleted) return false
    return countsTowardReadingProgress || sessionManualPageTurns > 0
}

internal fun resolveTitleCompletionPolicy(
    reachedLastPage: Boolean,
    currentComicIdMatches: Boolean,
    alreadyCompleted: Boolean,
    countsTowardReadingProgress: Boolean,
    sessionManualPageTurns: Int,
    goalProgressDelta: Int
): TitleCompletionPolicy {
    val shouldComplete = shouldAutoCompleteTitle(
        reachedLastPage = reachedLastPage,
        currentComicIdMatches = currentComicIdMatches,
        alreadyCompleted = alreadyCompleted,
        countsTowardReadingProgress = countsTowardReadingProgress,
        sessionManualPageTurns = sessionManualPageTurns
    )
    if (!shouldComplete) {
        return TitleCompletionPolicy(
            shouldComplete = false,
            recapPagesDelta = 0,
            recapXpAwarded = 0,
            bonusXpAwarded = 0
        )
    }
    val safePagesDelta = goalProgressDelta.coerceAtLeast(0)
    return TitleCompletionPolicy(
        shouldComplete = true,
        recapPagesDelta = safePagesDelta,
        recapXpAwarded = safePagesDelta + TITLE_COMPLETE_BONUS_XP,
        bonusXpAwarded = TITLE_COMPLETE_BONUS_XP
    )
}

internal fun resolveReaderClosedSessionMetrics(
    sessionComicId: String,
    currentComicId: String?,
    currentComicCompleted: Boolean,
    currentPage: Int,
    startPage: Int,
    manualPageTurns: Int,
    chapterTransitions: Int
): ReaderClosedSessionMetrics {
    val currentComicMatches = currentComicId == sessionComicId
    return ReaderClosedSessionMetrics(
        endPage = if (currentComicMatches) currentPage else currentPage.coerceAtLeast(startPage),
        completed = currentComicMatches && currentComicCompleted,
        manualPageTurns = manualPageTurns,
        chapterTransitions = chapterTransitions
    )
}

internal fun shouldEmitChapterProgressRecap(
    page: Int,
    totalPages: Int
): Boolean = totalPages <= 0 || page < totalPages - 1

internal fun DailyReadingGoalState.projectReaderProgressRecap(
    additionalPages: Int
): DailyReadingGoalState {
    val safeAdditionalPages = additionalPages.coerceAtLeast(0)
    if (!enabled || safeAdditionalPages == 0) return this
    return copy(
        pagesReadToday = pagesReadToday + safeAdditionalPages,
        pagesReadThisWeek = pagesReadThisWeek + safeAdditionalPages
    )
}
