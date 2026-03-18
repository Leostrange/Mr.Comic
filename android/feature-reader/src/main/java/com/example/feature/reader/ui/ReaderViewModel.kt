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
import com.example.core.model.Comic
import com.example.core.model.ComicFormat
import com.example.core.model.DictionaryEntry
import com.example.core.model.ExplainRequest
import com.example.core.model.ReadingMode
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationRequest
import com.example.core.model.TranslationRoutingRequest
import com.example.core.model.TranslationSourceType
import com.example.core.model.TranslationTransportPreference
import com.example.core.domain.translation.DictionaryEngine
import com.example.core.domain.translation.LlmExplainEngine
import com.example.core.domain.translation.TranslationBackendUnavailableException
import com.example.core.ui.locale.normalizeAppLanguageCode
import com.example.core.ui.locale.normalizeTranslationLanguageCode
import com.example.core.ui.theme.ReadingPreset
import com.example.core.ui.theme.style
import com.example.core.domain.translation.LookupRouter
import com.example.core.domain.translation.LanguageDetector
import com.example.core.domain.translation.OfflineTranslationEngine
import com.example.core.domain.translation.OnlineTranslationEngine
import com.example.core.domain.util.Result
import com.example.engine.formats.base.FormatFactory
import com.example.engine.formats.base.FormatDetector
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.resolveRenderDeviceProfile
import com.example.engine.formats.base.TocEntry
import com.example.engine.rendering.preload.PagePreloader
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import javax.inject.Inject

enum class ReaderChromeState { HIDDEN, MINIMAL, EXPANDED }

enum class FootnotePresentation { PEEK, EXPANDED }

private const val DEFAULT_TEXT_FONT_SIZE = 18
private const val DEFAULT_TEXT_COLOR_SCHEME = "DAY"
private const val DEFAULT_TEXT_FONT_FAMILY = "Georgia"
private const val DEFAULT_TEXT_LINE_HEIGHT = 1.6f
private const val DEFAULT_TEXT_ALIGNMENT = "justify"
private const val DEFAULT_TEXT_BOLD = false

data class ReaderUiState(
    val comic: Comic? = null,
    val currentPage: Int = 0,
    val totalPages: Int = 0,
    val isLoading: Boolean = true,
    val error: String? = null,
    val readingMode: ReadingMode = ReadingMode.PAGE_LTR,
    val chromeState: ReaderChromeState = ReaderChromeState.MINIMAL,
    val brightness: Float = 0.5f,
    val keepScreenOn: Boolean = false,
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
    val eyeRestMinutes: Int = 20
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

@HiltViewModel
class ReaderViewModel @Inject constructor(
    savedStateHandle: SavedStateHandle,
    private val comicRepository: ComicRepository,
    private val formatFactory: FormatFactory,
    private val pagePreloader: PagePreloader,
    private val languageDetector: LanguageDetector,
    private val dictionaryEngine: DictionaryEngine,
    private val lookupRouter: LookupRouter,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val llmExplainEngine: LlmExplainEngine,
    @ApplicationContext private val context: Context
) : ViewModel() {

    private val _uiState = MutableStateFlow(ReaderUiState())
    val uiState: StateFlow<ReaderUiState> = _uiState.asStateFlow()

    /** Emits the current page payload saved for OCR. One-shot event. */
    private val _ocrPagePath = MutableSharedFlow<OcrLaunchRequest>(extraBufferCapacity = 1)
    val ocrPagePath: SharedFlow<OcrLaunchRequest> = _ocrPagePath.asSharedFlow()
    private val _eyeRestReminder = MutableSharedFlow<Int>(extraBufferCapacity = 1)
    val eyeRestReminder: SharedFlow<Int> = _eyeRestReminder.asSharedFlow()

    private val readerPreferences = UserPreferences(context.dataStore)
    private val renderProfile = context.resolveRenderDeviceProfile()
    private var formatReader: FormatReader? = null
    private var eyeRestJob: Job? = null
    private val encodedUri: String? = savedStateHandle["uri"]
    private val encodedComicId: String? = savedStateHandle["comicId"]

    /**
     * The reading mode to restore when rotating back to portrait.
     * Updated every time the user manually picks a portrait mode
     * (PAGE_LTR / PAGE_RTL / WEBTOON).
     */
    private var portraitReadingMode: ReadingMode = ReadingMode.PAGE_LTR

    init {
        restoreReaderPreferences()
        when {
            !encodedComicId.isNullOrBlank() -> loadComicById(Uri.decode(encodedComicId))
            !encodedUri.isNullOrBlank() -> loadComic(Uri.decode(encodedUri))
        }
    }

    private fun loadComicById(comicId: String) {
        viewModelScope.launch {
            val comic = comicRepository.getComicById(comicId)
            if (comic == null) {
                val errorMessage = localizedReaderError(::readerComicNotFoundMessage)
                _uiState.update { it.copy(error = errorMessage, isLoading = false) }
                return@launch
            }
            openComic(comic, comic.path)
        }
    }

    private fun loadComic(path: String) {
        viewModelScope.launch {
            val comic = comicRepository.getComicByPath(path) ?: run {
                comicRepository.addComic(Uri.parse(path))
            }
            if (comic == null) {
                val errorMessage = localizedReaderError(::readerComicLookupFailedMessage)
                _uiState.update { it.copy(error = errorMessage, isLoading = false) }
                return@launch
            }
            openComic(comic, path)
        }
    }

    private suspend fun openComic(comic: Comic, sourcePath: String) {
        try {
            _uiState.update { it.copy(isLoading = true, error = null) }
            eyeRestJob?.cancel()
            pagePreloader.clearPages()
            formatReader?.close()

            val resolvedPath = resolveReadablePath(comic, sourcePath)
            // Re-detect by extension when stored format might be wrong (e.g. EPUB stored as CBZ
            // because magic bytes of EPUB == ZIP). Extension is always more reliable than magic.
            val detectedFormat = when (comic.format) {
                ComicFormat.UNKNOWN, ComicFormat.CBZ, ComicFormat.ZIP -> {
                    val byPath = detectFormatForPath(resolvedPath)
                    if (byPath != ComicFormat.UNKNOWN) byPath else comic.format
                }
                else -> comic.format
            }
            formatReader = formatFactory.createReader(resolvedPath, detectedFormat)

            if (formatReader == null) {
                val errorMessage = localizedReaderError { language ->
                    readerUnsupportedFormatMessage(detectedFormat.name, language)
                }
                _uiState.update { it.copy(error = errorMessage, isLoading = false) }
                return
            }

            val pages = formatReader?.getPageCount() ?: 0
            if (pages <= 0) {
                val errorMessage = localizedReaderError(::readerNoReadablePagesMessage)
                _uiState.update { it.copy(error = errorMessage, isLoading = false) }
                return
            }

            val startPage = comic.currentPage.coerceIn(0, (pages - 1).coerceAtLeast(0))
            _uiState.update {
                it.copy(
                    comic = comic,
                    totalPages = pages,
                    currentPage = startPage,
                    isLoading = false,
                    htmlBaseUrl = formatReader?.htmlBaseUrl(),
                    selectedTextActionSheet = null,
                    selectedTextTranslation = null
                )
            }
            formatReader?.let { reader ->
                pagePreloader.preloadAround(reader, startPage, pages, _uiState.value.preloadPages)
            }
            loadPage(startPage)
            loadToc()
            loadBookmarks(comic.id)
            loadPageTranslationNote(startPage)
            restartEyeRestTimer()
        } catch (e: Exception) {
            Log.e("ReaderViewModel", "Failed to open comic", e)
            eyeRestJob?.cancel()
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

    fun getPage(index: Int, renderQuality: Int = 1): Bitmap? =
        pagePreloader.getPage(index, renderQuality)

    /** Flow-based accessor — no polling needed in the UI. */
    fun getPageFlow(index: Int, renderQuality: Int = 1) =
        pagePreloader.getPageFlow(index, renderQuality)

    fun loadPage(index: Int, renderQuality: Int = 1) {
        viewModelScope.launch {
            // Try HTML page first (text-based EPUB / FB2 novel)
            val html = formatReader?.getHtmlPage(index)
            if (html != null) {
                _uiState.update { it.copy(currentHtmlContent = html) }
                return@launch
            }
            // Bitmap page (image-based formats)
            if (renderQuality == 1) {
                _uiState.update { it.copy(currentHtmlContent = null) }
            }
            if (pagePreloader.getPage(index, renderQuality) == null) {
                val reader = formatReader ?: return@launch
                pagePreloader.loadPage(reader, index, renderQuality)
            }
            // preloadAround is NOT called here — calling it per-item (e.g. from LazyColumn)
            // would cancel the previous preload job on every item composition, starving
            // the first pages. Preloading is triggered only from navigateTo / openComic.
        }
    }

    fun navigateTo(page: Int) {
        val clamped = page.coerceIn(0, (_uiState.value.totalPages - 1).coerceAtLeast(0))
        _uiState.update {
            it.copy(
                currentPage = clamped,
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
        loadPage(clamped)
        formatReader?.let { reader ->
            pagePreloader.preloadAround(reader, clamped, _uiState.value.totalPages, _uiState.value.preloadPages)
        }
        saveProgress(clamped)
        loadPageTranslationNote(clamped)
    }

    fun nextPage() = navigateTo(_uiState.value.currentPage + 1)
    fun prevPage() = navigateTo(_uiState.value.currentPage - 1)

    /**
     * Saves the current page bitmap to the app cache directory and emits the file path
     * via [ocrPagePath] for the OCR screen to consume.
     */
    fun requestOcr() {
        viewModelScope.launch {
            val bitmap = getPage(_uiState.value.currentPage) ?: return@launch
            try {
                val file = java.io.File(context.cacheDir, "ocr_page.jpg")
                withContext(Dispatchers.IO) {
                    file.outputStream().use { out ->
                        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, out)
                    }
                }
                _ocrPagePath.emit(
                    OcrLaunchRequest(
                        imagePath = file.absolutePath,
                        comicId = _uiState.value.comic?.id,
                        page = _uiState.value.currentPage
                    )
                )
            } catch (e: Exception) {
                Log.e("ReaderViewModel", "Failed to save page for OCR", e)
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

            val detectedLanguage = translationSettings.sourceLanguage
                ?: when (val detection = languageDetector.detectLanguage(normalizedText)) {
                    is Result.Success -> detection.data.languageCode
                    is Result.Error -> null
                    Result.Loading -> null
                }?.takeUnless { it == "und" }

            if (detectedLanguage == null) {
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

            if (detectedLanguage == targetLanguage) {
                _uiState.update {
                    it.copy(
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            translatedText = normalizedText,
                            sourceLanguage = detectedLanguage,
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
            val dictionaryAvailable = when (
                val availability = dictionaryEngine.isLookupAvailable(
                    sourceLanguage = detectedLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }

            val offlineAvailable = when (
                val availability = offlineTranslationEngine.isLanguagePairAvailable(
                    sourceLanguage = detectedLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }

            val routingDecision = when (
                val routeResult = lookupRouter.route(
                    TranslationRoutingRequest(
                        text = normalizedText,
                        sourceType = TranslationSourceType.BOOK_TEXT,
                        sourceLanguageHint = detectedLanguage,
                        fallbackLanguage = detectedLanguage,
                        preferredTransport = effectiveTransport,
                        networkAvailable = networkAvailable,
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
                when (
                    val dictionaryResult = dictionaryEngine.lookup(
                        rawWord = normalizedText,
                        sourceLanguage = detectedLanguage,
                        targetLanguage = targetLanguage
                    )
                ) {
                    is Result.Success -> {
                        val entry = dictionaryResult.data
                        _uiState.update {
                            it.copy(
                                selectedTextTranslation = SelectedTextTranslationState(
                                    originalText = normalizedText,
                                    translatedText = entry.translations.firstOrNull().orEmpty(),
                                    dictionaryEntry = entry,
                                    sourceLanguage = detectedLanguage,
                                    targetLanguage = targetLanguage,
                                    mode = TranslationMode.DICTIONARY,
                                    preferredTransport = effectiveTransport,
                                    canUseDictionary = dictionaryAvailable,
                                    canTranslateAsPhrase = canTranslateAsPhrase && (offlineAvailable || networkAvailable),
                                    canExplain = canExplainSelection,
                                    isLoading = false
                                )
                            )
                        }
                    }

                    is Result.Error -> {
                        val errorMessage = dictionaryResult.message
                            ?: localizedReaderError(::readerDictionaryUnavailableMessage)
                        _uiState.update {
                            it.copy(
                                selectedTextTranslation = SelectedTextTranslationState(
                                    originalText = normalizedText,
                                    sourceLanguage = detectedLanguage,
                                    targetLanguage = targetLanguage,
                                    mode = TranslationMode.DICTIONARY,
                                    preferredTransport = effectiveTransport,
                                    canUseDictionary = dictionaryAvailable,
                                    canTranslateAsPhrase = canTranslateAsPhrase && (offlineAvailable || networkAvailable),
                                    canExplain = canExplainSelection,
                                    isLoading = false,
                                    error = errorMessage
                                )
                            )
                        }
                    }

                    Result.Loading -> Unit
                }
                return@launch
            }

            if (translationMode == null || translationMode == TranslationMode.LLM) {
                val errorMessage = localizedReaderError(::readerTranslationUnavailableMessage)
                _uiState.update {
                    it.copy(
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            sourceLanguage = detectedLanguage,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canUseDictionary = tokenCount == 1 && dictionaryAvailable,
                            canTranslateAsPhrase = canTranslateAsPhrase && (offlineAvailable || networkAvailable),
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
                sourceLanguage = detectedLanguage,
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
                                sourceLanguage = detectedLanguage,
                                targetLanguage = targetLanguage,
                                mode = resolvedMode,
                                preferredTransport = effectiveTransport,
                                canUseDictionary = tokenCount == 1 && dictionaryAvailable,
                                canExplain = canExplainSelection,
                                isLoading = false
                            )
                        )
                    }
                }

                is Result.Error -> {
                    if (tokenCount == 1 && dictionaryAvailable) {
                        when (
                            val dictionaryResult = dictionaryEngine.lookup(
                                rawWord = normalizedText,
                                sourceLanguage = detectedLanguage,
                                targetLanguage = targetLanguage
                            )
                        ) {
                            is Result.Success -> {
                                val entry = dictionaryResult.data
                                _uiState.update {
                                    it.copy(
                                        selectedTextTranslation = SelectedTextTranslationState(
                                            originalText = normalizedText,
                                            translatedText = entry.translations.firstOrNull().orEmpty(),
                                            dictionaryEntry = entry,
                                            sourceLanguage = detectedLanguage,
                                            targetLanguage = targetLanguage,
                                            mode = TranslationMode.DICTIONARY,
                                            preferredTransport = effectiveTransport,
                                            canUseDictionary = true,
                                            canTranslateAsPhrase = canTranslateAsPhrase && (offlineAvailable || networkAvailable),
                                            canExplain = canExplainSelection,
                                            isLoading = false
                                        )
                                    )
                                }
                                return@launch
                            }

                            is Result.Error -> Unit
                            Result.Loading -> Unit
                        }
                    }

                    val errorMessage = when (translationResult.exception) {
                        is TranslationBackendUnavailableException ->
                            localizedReaderError(::readerTranslationBackendUnavailableMessage)
                        else -> translationResult.message
                            ?: localizedReaderError(::readerTranslationUnavailableMessage)
                    }
                    _uiState.update {
                        it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                sourceLanguage = detectedLanguage,
                                targetLanguage = targetLanguage,
                                mode = translationMode,
                                preferredTransport = effectiveTransport,
                                canUseDictionary = tokenCount == 1 && dictionaryAvailable,
                                canTranslateAsPhrase = canTranslateAsPhrase && (offlineAvailable || networkAvailable),
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

            val detectedLanguage = translationSettings.sourceLanguage
                ?: when (val detection = languageDetector.detectLanguage(normalizedText)) {
                    is Result.Success -> detection.data.languageCode
                    is Result.Error -> null
                    Result.Loading -> null
                }?.takeUnless { it == "und" }

            if (detectedLanguage == null) {
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
                    sourceLanguage = detectedLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }

            if (tokenCount == 1 && dictionaryAvailable) {
                when (
                    val dictionaryResult = dictionaryEngine.lookup(
                        rawWord = normalizedText,
                        sourceLanguage = detectedLanguage,
                        targetLanguage = targetLanguage
                    )
                ) {
                    is Result.Success -> {
                        _uiState.update {
                            it.copy(
                                selectedTextTranslation = SelectedTextTranslationState(
                                    originalText = normalizedText,
                                    translatedText = buildDictionaryExplanation(
                                        entry = dictionaryResult.data,
                                        uiLanguage = uiLanguage
                                    ),
                                    sourceLanguage = detectedLanguage,
                                    targetLanguage = targetLanguage,
                                    mode = TranslationMode.LLM,
                                    preferredTransport = preferredTransport,
                                    canUseDictionary = true,
                                    canTranslateAsPhrase = canTranslateAsPhrase,
                                    canExplain = true,
                                    isLoading = false
                                )
                            )
                        }
                        return@launch
                    }

                    is Result.Error -> Unit
                    Result.Loading -> Unit
                }
            }

            when (
                val explainResult = llmExplainEngine.explain(
                    ExplainRequest(
                        id = "reader-explain-${System.currentTimeMillis()}",
                        sourceType = TranslationSourceType.BOOK_TEXT,
                        text = normalizedText,
                        sourceLanguage = detectedLanguage,
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
                                sourceLanguage = detectedLanguage,
                                targetLanguage = targetLanguage,
                                mode = TranslationMode.LLM,
                                preferredTransport = preferredTransport,
                                canUseDictionary = tokenCount == 1 && dictionaryAvailable,
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
                                sourceLanguage = detectedLanguage,
                                targetLanguage = targetLanguage,
                                mode = TranslationMode.LLM,
                                preferredTransport = preferredTransport,
                                canUseDictionary = tokenCount == 1 && dictionaryAvailable,
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
                    ReaderChromeState.HIDDEN -> ReaderChromeState.MINIMAL
                    ReaderChromeState.MINIMAL -> ReaderChromeState.HIDDEN
                    ReaderChromeState.EXPANDED -> ReaderChromeState.HIDDEN
                }
            )
        }
    }

    fun hideChrome() = _uiState.update { it.copy(chromeState = ReaderChromeState.HIDDEN) }

    fun showMinimalChrome() = _uiState.update { it.copy(chromeState = ReaderChromeState.MINIMAL) }

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
                brightness = style.brightness,
                immersiveMode = style.immersiveMode,
                readerPageAnimation = style.pageAnimation,
                chromeState = ReaderChromeState.EXPANDED
            )
        }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRESET, preset.name)
            readerPreferences.set(PreferencesKeys.READING_BRIGHTNESS, style.brightness)
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
        val updated = _uiState.value.bookmarkedPages.toMutableSet()
        if (page in updated) updated.remove(page) else updated.add(page)
        _uiState.update { it.copy(bookmarkedPages = updated) }
        saveBookmarks(updated)
    }

    /** Removes a specific page bookmark (called from the bookmarks list in TOC). */
    fun removeBookmark(page: Int) {
        val updated = _uiState.value.bookmarkedPages.toMutableSet()
        if (updated.remove(page)) {
            _uiState.update { it.copy(bookmarkedPages = updated) }
            saveBookmarks(updated)
        }
    }

    private fun loadBookmarks(comicId: String) {
        viewModelScope.launch {
            val raw = readerPreferences.get(PreferencesKeys.bookmarks(comicId), "").first()
            val maxPage = (_uiState.value.totalPages - 1).coerceAtLeast(0)
            val pages = raw
                .split(",")
                .mapNotNull { it.trim().toIntOrNull() }
                .filter { it in 0..maxPage }
                .toSet()
            _uiState.update { it.copy(bookmarkedPages = pages) }
            if (pages.joinToString(",") != raw) {
                saveBookmarks(pages)
            }
        }
    }

    private fun saveBookmarks(pages: Set<Int>) {
        val comicId = _uiState.value.comic?.id ?: return
        val raw = pages.sorted().joinToString(",")
        viewModelScope.launch { readerPreferences.set(PreferencesKeys.bookmarks(comicId), raw) }
    }

    private fun loadPageTranslationNote(page: Int = _uiState.value.currentPage) {
        val comicId = _uiState.value.comic?.id ?: return
        viewModelScope.launch {
            val note = readerPreferences.get(PreferencesKeys.translationNote(comicId, page), "").first()
            _uiState.update { it.copy(pageTranslationNote = note.ifBlank { null }) }
        }
    }

    /** Loads the TOC from the current format reader (IO-bound, runs on Dispatchers.IO). */
    private fun loadToc() {
        viewModelScope.launch(Dispatchers.IO) {
            val toc = formatReader?.getTableOfContents() ?: return@launch
            if (toc.isEmpty()) return@launch
            _uiState.update { it.copy(tableOfContents = toc) }
        }
    }

    fun setReadingMode(mode: ReadingMode) {
        // Remember portrait-specific mode so we can restore it on landscape→portrait rotation
        if (mode != ReadingMode.DUAL_PAGE) portraitReadingMode = mode
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
        if (isTextReader) {
            if (currentMode == ReadingMode.DUAL_PAGE) {
                applyReadingMode(portraitReadingMode)
            }
            return
        }
        if (useLandscapeSpread && currentMode != ReadingMode.DUAL_PAGE) {
            applyReadingMode(ReadingMode.DUAL_PAGE)
        } else if (!useLandscapeSpread && currentMode == ReadingMode.DUAL_PAGE) {
            applyReadingMode(portraitReadingMode)
        }
    }

    private fun applyReadingMode(mode: ReadingMode) {
        _uiState.update { state ->
            val alignedPage = if (mode == ReadingMode.DUAL_PAGE) {
                (state.currentPage / 2) * 2
            } else {
                state.currentPage
            }
            state.copy(
                readingMode = mode,
                currentPage = alignedPage.coerceIn(0, (state.totalPages - 1).coerceAtLeast(0))
            )
        }
    }
    private var brightnessJob: Job? = null
    fun setBrightness(value: Float) {
        markReaderPresetCustom()
        val safe = value.coerceIn(0f, 1f)
        _uiState.update { it.copy(brightness = safe) }   // immediate UI update
        brightnessJob?.cancel()
        brightnessJob = viewModelScope.launch {
            delay(300)   // debounce: only write after dragging stops
            readerPreferences.set(PreferencesKeys.READING_BRIGHTNESS, safe)
        }
    }

    private fun saveProgress(page: Int) {
        viewModelScope.launch {
            val comic = _uiState.value.comic ?: return@launch
            try {
                comicRepository.updateProgress(comic.id, page, _uiState.value.totalPages)
            } catch (e: Exception) {
                Log.e("ReaderViewModel", "Failed to save progress", e)
            }
        }
    }

    override fun onCleared() {
        super.onCleared()
        eyeRestJob?.cancel()
        formatReader?.close()
        pagePreloader.cancelPreload()
        pagePreloader.clearPages()
    }

    private fun restoreReaderPreferences() {
        viewModelScope.launch {
            val storedMode = readerPreferences.get(PreferencesKeys.READING_MODE, ReadingMode.PAGE_LTR.name).first()
            val mode = runCatching { ReadingMode.valueOf(storedMode) }.getOrDefault(ReadingMode.PAGE_LTR)
            if (mode != ReadingMode.DUAL_PAGE) portraitReadingMode = mode
            val brightness   = readerPreferences.get(PreferencesKeys.READING_BRIGHTNESS, 0.5f).first().coerceIn(0f, 1f)
            val keepScreenOn = readerPreferences.get(PreferencesKeys.READER_KEEP_SCREEN_ON, false).first()
            val animation    = readerPreferences.get(PreferencesKeys.READER_PAGE_ANIMATION, "SLIDE").first()
            val pageSound    = readerPreferences.get(PreferencesKeys.READER_PAGE_SOUND, false).first()
            val soundStyle   = readerPreferences.get(PreferencesKeys.READER_PAGE_SOUND_STYLE, "PAPER").first()
            val immersive    = readerPreferences.get(PreferencesKeys.READER_IMMERSIVE_MODE, false).first()
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
            val eyeRestEnabled = readerPreferences.get(PreferencesKeys.READER_EYE_REST_ENABLED, false).first()
            val eyeRestMinutes = readerPreferences.get(PreferencesKeys.READER_EYE_REST_MINUTES, 20).first().coerceIn(10, 60)
            val readerPreset = ReadingPreset.fromStored(
                readerPreferences.get(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name).first()
            )
            _uiState.update { state ->
                val effectiveMode = if (state.isLandscape) ReadingMode.DUAL_PAGE else mode
                state.copy(
                    readingMode      = effectiveMode,
                    chromeState      = ReaderChromeState.MINIMAL,
                    brightness       = brightness,
                    keepScreenOn     = keepScreenOn,
                    readerPageAnimation = if (renderProfile.disableAnimations) "NONE" else animation,
                    pageSoundEnabled = pageSound,
                    pageSoundStyle   = soundStyle,
                    immersiveMode    = immersive,
                    preloadPages     = preload,
                    textFontSize     = fontSize,
                    textColorScheme  = colorScheme,
                    textFontFamily   = fontFamily,
                    textLineHeight   = lineHeight,
                    textAlignment    = alignment,
                    textBold         = bold,
                    readerPreset     = readerPreset.name,
                    eyeRestEnabled   = eyeRestEnabled,
                    eyeRestMinutes   = eyeRestMinutes
                )
            }
            restartEyeRestTimer()
        }
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

    private suspend fun resolveTranslationSettings(): ReaderTranslationSettings {
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

        val preferredTransport = runCatching {
            TranslationTransportPreference.valueOf(rawTransport.uppercase())
        }.getOrDefault(TranslationTransportPreference.AUTO)

        return ReaderTranslationSettings(
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage,
            preferredTransport = preferredTransport,
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

private data class ReaderTranslationSettings(
    val sourceLanguage: String?,
    val targetLanguage: String,
    val preferredTransport: TranslationTransportPreference,
    val explainEnabled: Boolean
)
