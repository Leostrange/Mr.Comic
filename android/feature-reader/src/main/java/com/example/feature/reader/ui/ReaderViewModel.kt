package com.example.feature.reader.ui

import android.app.Activity
import android.content.Context
import android.net.Uri
import android.graphics.Bitmap
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.feature.reader.domain.SaveReadingProgressUseCase
import com.example.core.domain.util.Result
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.domain.BookReaderFactory
import com.example.core.data.repository.SettingsRepository
import com.example.core.data.repository.ReadingSessionRepository
import com.example.core.data.reader.ReadingModeDetector
import com.example.core.reader.preload.PagePreloader
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import javax.inject.Inject
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlin.math.abs

@HiltViewModel
class ReaderViewModel @Inject constructor(
    private val readerFactory: BookReaderFactory,
    private val settingsRepository: SettingsRepository,
    private val saveReadingProgressUseCase: SaveReadingProgressUseCase,
    private val readingSessionRepository: ReadingSessionRepository,
    private val bookmarkRepository: com.example.core.data.repository.BookmarkRepository,
    private val pagePreloader: PagePreloader,
    private val readingModeDetector: ReadingModeDetector,
    val bitmapCache: com.example.core.reader.cache.BitmapCache,
    @ApplicationContext private val context: Context,
    private val analyticsHelper: com.example.core.analytics.AnalyticsHelper,
    val thumbnailProvider: ThumbnailProvider,
    savedStateHandle: SavedStateHandle
) : ViewModel() {

    private val _uiState = MutableStateFlow(ReaderUiState())
    val uiState = _uiState.asStateFlow()

    val lineSpacing = settingsRepository.readerLineSpacing.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        1.5f
    )

    val font = settingsRepository.readerFont.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        "Sans"
    )

    val background = settingsRepository.readerBackground.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        0xFFFFFFFF
    )


    val readingDoubleTapZoom = settingsRepository.readingDoubleTapZoom.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        2.0f
    )

    val readingBlockSwipeWhenZoomed = settingsRepository.readingBlockSwipeWhenZoomed.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        true
    )

    // Reader Customization Settings
    val readerTapZonesSize = settingsRepository.readerTapZonesSize.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        1.0f
    )
    val readerTapZonesSensitivity = settingsRepository.readerTapZonesSensitivity.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        1.0f
    )
    val readerShowPageIndicator = settingsRepository.readerShowPageIndicator.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        true
    )
    val readerShowProgressBar = settingsRepository.readerShowProgressBar.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        true
    )
    val readerAutoHideUI = settingsRepository.readerAutoHideUI.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        true
    )
    val readerAutoHideDelay = settingsRepository.readerAutoHideDelay.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        3000
    )
    val readerGestureSensitivity = settingsRepository.readerGestureSensitivity.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        1.0f
    )
    val readerVibrationFeedback = settingsRepository.readerVibrationFeedback.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        true
    )

    // Image Quality Settings
    val imageQuality = settingsRepository.imageQuality.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        "high"
    )
    val imageRenderDpi = settingsRepository.imageRenderDpi.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        2560
    )
    val imageCacheSize = settingsRepository.imageCacheSize.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        100
    )
    val imagePreloadPages = settingsRepository.imagePreloadPages.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        3
    )
    val imageCompressionLevel = settingsRepository.imageCompressionLevel.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        80
    )

    // Gesture Settings
    val gestureSwipeThreshold = settingsRepository.gestureSwipeThreshold.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        50f
    )
    val gestureZoomSensitivity = settingsRepository.gestureZoomSensitivity.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        1.0f
    )
    val gesturePanSensitivity = settingsRepository.gesturePanSensitivity.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        1.0f
    )
    val navigationSwipeEnabled = settingsRepository.navigationSwipeEnabled.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        true
    )
    val navigationTapZonesEnabled = settingsRepository.navigationTapZonesEnabled.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        true
    )
    val navigationKeyboardShortcuts = settingsRepository.navigationKeyboardShortcuts.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        true
    )

    // Notification Settings
    val soundPageTurn = settingsRepository.soundPageTurn.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        false
    )
    val soundVolume = settingsRepository.soundVolume.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        0.5f
    )
    val vibrationPageTurn = settingsRepository.vibrationPageTurn.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        true
    )
    val vibrationIntensity = settingsRepository.vibrationIntensity.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        0.5f
    )
    val notificationProgress = settingsRepository.notificationProgress.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        true
    )

    val readingOrientation = settingsRepository.orientation.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        "auto"
    )

    val readingScaleMode = settingsRepository.scaleMode.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        "width"
    )

    val readerBrightness = settingsRepository.readerBrightness.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        1.0f
    )
    
    val readerBrightnessMode = settingsRepository.readerBrightnessMode.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        "auto"
    )

    val readerAnimationSpeed = settingsRepository.readerAnimationSpeed.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        1.0f
    )

    val pageTurnSoundEnabled = settingsRepository.pageTurnSoundEnabled.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        false
    )

    private var bookReader: MediaReader? = null
    private var currentComicId: String? = null

    companion object {
        private const val PRELOAD_DISTANCE = 3 // Preload 3 pages ahead/behind for smoother UX
        private const val TAG = "ReaderViewModel"
    }

    init {
        // Путь к файлу приходит как аргумент навигации.
        android.util.Log.d(TAG, "ReaderViewModel initialized")
        android.util.Log.d(TAG, "SavedStateHandle keys: ${savedStateHandle.keys()}")
        
        // Set up ThumbnailProvider with this ViewModel
        thumbnailProvider.readerViewModel = this
        
        observeReaderPreferences()

        val uriString = savedStateHandle.get<String>("uri")
        android.util.Log.d(TAG, "Received URI from navigation: $uriString")
        if (uriString != null) {
            android.util.Log.d(TAG, "URI found, opening book...")
            val decoded = runCatching { Uri.decode(uriString) }.getOrElse { uriString }
            val uri = runCatching { Uri.parse(decoded) }.getOrElse {
                android.util.Log.w(TAG, "Failed to parse decoded URI, trying raw", it)
                Uri.parse(uriString)
            }
            openBook(uri)
        } else {
            android.util.Log.e(TAG, "No URI provided in navigation arguments!")
            _uiState.update { it.copy(isLoading = false, error = "File URI not provided.") }
        }
    }

    /**
     * Observe reader preferences and update UI state accordingly.
     * 
     * IMPORTANT: Reading Mode and Orientation are INDEPENDENT settings.
     * - Reading Mode: Controls how pages are displayed (PAGE vs WEBTOON)
     * - Orientation: Controls screen rotation (AUTO, PORTRAIT, LANDSCAPE, LOCKED)
     * 
     * These settings do NOT affect each other:
     * - Auto orientation does NOT force Webtoon mode
     * - Webtoon mode does NOT force any orientation
     * - User can have any combination: Auto + Page, Portrait + Webtoon, etc.
     */
    private fun observeReaderPreferences() {
        // Reading Mode: Independent setting for page display mode
        viewModelScope.launch {
            settingsRepository.readingMode.collect { mode ->
                val resolvedMode = when (normalizeReadingMode(mode)) {
                    "webtoon" -> ReadingMode.WEBTOON
                    else -> ReadingMode.PAGE
                }
                _uiState.update { it.copy(readingMode = resolvedMode) }
            }
        }

        viewModelScope.launch {
            settingsRepository.scaleMode.collect { scaleMode ->
                _uiState.update { it.copy(scaleMode = normalizeScaleMode(scaleMode)) }
            }
        }

        viewModelScope.launch {
            settingsRepository.readingDoubleTapZoom.collect { zoom ->
                val coerced = zoom.coerceAtLeast(1.0f)
                _uiState.update { it.copy(doubleTapZoom = coerced) }
                // Analytics: double tap zoom changed
                analyticsHelper.track(
                    com.example.core.analytics.AnalyticsEvent.SettingChanged(
                        settingName = "double_tap_zoom",
                        value = String.format(java.util.Locale.US, "%.2f", coerced)
                    ),
                    this
                )
            }
        }

        viewModelScope.launch {
            settingsRepository.readingBlockSwipeWhenZoomed.collect { block ->
                _uiState.update { it.copy(blockSwipeWhenZoomed = block) }
                analyticsHelper.track(
                    com.example.core.analytics.AnalyticsEvent.SettingChanged(
                        settingName = "block_swipe_when_zoomed",
                        value = block.toString()
                    ),
                    this
                )
            }
        }

        // Orientation: Independent setting for screen rotation
        // Does NOT affect reading mode - they are separate settings
        viewModelScope.launch {
            settingsRepository.orientation.collect { orientation ->
                _uiState.update { it.copy(orientation = normalizeOrientation(orientation)) }
                analyticsHelper.track(
                    com.example.core.analytics.AnalyticsEvent.SettingChanged(
                        settingName = "orientation",
                        value = normalizeOrientation(orientation)
                    ),
                    this
                )
            }
        }

        viewModelScope.launch {
            settingsRepository.readerBrightness.collect { brightness ->
                val coerced = brightness.coerceIn(0.0f, 1.0f)
                _uiState.update { it.copy(readerBrightness = coerced) }
                // Track application; UI applies it, but event captured here
                analyticsHelper.track(
                    com.example.core.analytics.AnalyticsEvent.SettingChanged(
                        settingName = "reader_brightness",
                        value = String.format(java.util.Locale.US, "%.2f", coerced)
                    ),
                    this
                )
            }
        }
        
        viewModelScope.launch {
            settingsRepository.readerBrightnessMode.collect { mode ->
                _uiState.update { it.copy(readerBrightnessMode = mode) }
                analyticsHelper.track(
                    com.example.core.analytics.AnalyticsEvent.SettingChanged(
                        settingName = "reader_brightness_mode",
                        value = mode
                    ),
                    this
                )
            }
        }

        viewModelScope.launch {
            settingsRepository.readerAnimationSpeed.collect { speed ->
                val coerced = speed.coerceIn(0.5f, 2.0f)
                analyticsHelper.track(
                    com.example.core.analytics.AnalyticsEvent.SettingChanged(
                        settingName = "reader_animation_speed",
                        value = String.format(java.util.Locale.US, "%.2f", coerced)
                    ),
                    this
                )
            }
        }

        viewModelScope.launch {
            settingsRepository.pageTurnSoundEnabled.collect { enabled ->
                analyticsHelper.track(
                    com.example.core.analytics.AnalyticsEvent.SettingChanged(
                        settingName = "page_turn_sound",
                        value = enabled.toString()
                    ),
                    this
                )
            }
        }
    }

    fun openBook(uri: Uri) {
        android.util.Log.d(TAG, "Opening book: $uri")
        viewModelScope.launch {
            _uiState.update {
                it.copy(
                    isLoading = true,
                    error = null,
                    pageCount = 0,
                    currentPageIndex = 0,
                    currentPageBitmap = null,
                    bitmaps = emptyMap()
                )
            }
            
            // CRITICALLY IMPORTANT: Check and request permissions for content:// URI
            if (uri.scheme == "content") {
                try {
                    android.util.Log.d(TAG, "Checking permissions for content URI: $uri")
                    
                    // Проверяем, есть ли у нас уже persistable permission
                    val persistedUris = context.contentResolver.persistedUriPermissions
                    
                    // IMPORTANT: Check permission for different URI variants (encoded/decoded)
                    // Because Android can save them differently
                    val uriString = uri.toString()
                    val uriStringDecoded = android.net.Uri.decode(uriString)
                    
                    // Ищем persisted URI, который соответствует нашему URI
                    var matchedPersistedUri: Uri? = null
                    val hasPermission = persistedUris.any { persistedUri ->
                        val persistedUriString = persistedUri.uri.toString()
                        val persistedUriStringDecoded = android.net.Uri.decode(persistedUriString)
                        
                        // Сравниваем как encoded, так и decoded варианты
                        val match = ((persistedUri.uri == uri) ||
                                    (persistedUriString == uriString) ||
                                    (persistedUriStringDecoded == uriString) ||
                                    (persistedUriString == uriStringDecoded) ||
                                    (persistedUriStringDecoded == uriStringDecoded)) &&
                                   persistedUri.isReadPermission
                        
                        if (match) {
                            matchedPersistedUri = persistedUri.uri
                            android.util.Log.d(TAG, "Found matching persisted URI: ${persistedUri.uri}")
                        }
                        match
                    }
                    
                    if (!hasPermission) {
                        android.util.Log.w(TAG, "No persistable permission found for URI: $uri")
                        android.util.Log.d(TAG, "Current persisted URIs (${persistedUris.size}):")
                        persistedUris.forEach { 
                            android.util.Log.d(TAG, "  - ${it.uri} (read=${it.isReadPermission}, write=${it.isWritePermission})")
                        }
                        
                        // Try to take persistable permission (might not work for some URIs)
                        try {
                            context.contentResolver.takePersistableUriPermission(
                                uri,
                                android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                            )
                            android.util.Log.d(TAG, "Successfully took persistable URI permission")
                        } catch (e: SecurityException) {
                            android.util.Log.w(TAG, "Could not take persistable permission: ${e.message}")
                            // This is normal for some URIs, continue anyway
                        }
                    } else {
                        android.util.Log.d(TAG, "Persistable permission already exists for URI")
                        
                        // CRITICALLY IMPORTANT: Use persisted URI instead of decoded URI
                        // Because permission only works with the URI it was taken for
                        if (matchedPersistedUri != null && matchedPersistedUri != uri) {
                            android.util.Log.d(TAG, "Replacing decoded URI with persisted URI")
                            android.util.Log.d(TAG, "   Original: $uri")
                            android.util.Log.d(TAG, "   Persisted: $matchedPersistedUri")
                            // Replace URI with persisted variant for further use
                            val persistedUri = matchedPersistedUri!!
                            
                            // Check if we can read file with persisted URI
                            try {
                                context.contentResolver.openInputStream(persistedUri)?.use {
                                    android.util.Log.d(TAG, "Successfully opened input stream with persisted URI")
                                }
                                // If successful, update URI for further use
                                // But this won't work because uri is a val parameter
                                // Need to pass persistedUri further down
                            } catch (e: SecurityException) {
                                android.util.Log.e(TAG, "SecurityException with persisted URI: ${e.message}")
                            }
                        }
                    }
                    
                    // Check if we can read file at all
                    // Use matchedPersistedUri if available, otherwise use original uri
                    val uriToUse = matchedPersistedUri ?: uri
                    try {
                        context.contentResolver.openInputStream(uriToUse)?.use {
                            android.util.Log.d(TAG, "Successfully opened input stream for URI")
                        }
                    } catch (e: SecurityException) {
                        android.util.Log.e(TAG, "SecurityException: Cannot read URI: ${e.message}")
                        _uiState.update {
                            it.copy(
                                isLoading = false,
                                error = "Нет доступа к файлу. Пожалуйста, добавьте файл заново через библиотеку."
                            )
                        }
                        return@launch
                    }
                } catch (e: Exception) {
                    android.util.Log.e(TAG, "Error checking permissions", e)
                }
            }
            
            // IMPORTANT: Determine final URI to use
            // If found persisted URI, use it, otherwise use original
            val finalUri = if (uri.scheme == "content") {
                val persistedUris = context.contentResolver.persistedUriPermissions
                val uriString = uri.toString()
                val uriStringDecoded = android.net.Uri.decode(uriString)
                
                val matched = persistedUris.find { persistedUri ->
                    val persistedUriString = persistedUri.uri.toString()
                    val persistedUriStringDecoded = android.net.Uri.decode(persistedUriString)
                    
                    ((persistedUri.uri == uri) ||
                     (persistedUriString == uriString) ||
                     (persistedUriStringDecoded == uriString) ||
                     (persistedUriString == uriStringDecoded) ||
                     (persistedUriStringDecoded == uriStringDecoded)) &&
                    persistedUri.isReadPermission
                }
                
                matched?.uri ?: uri
            } else {
                uri
            }
            
            if (finalUri != uri) {
                android.util.Log.d(TAG, "Using persisted URI instead of decoded URI")
                android.util.Log.d(TAG, "   Original: $uri")
                android.util.Log.d(TAG, "   Final: $finalUri")
            }
            
            // Close previous reader when opening new book
            try {
                bookReader?.close()
            } catch (e: Exception) {
                android.util.Log.w(TAG, "Error closing previous reader", e)
            }

            try {
                android.util.Log.d(TAG, "Creating reader for URI: $finalUri")
                val reader = readerFactory.create(finalUri)
                android.util.Log.d(TAG, "Reader created: ${reader::class.simpleName}")
                
                android.util.Log.d(TAG, "Opening book with reader...")
                val result = reader.open(context, finalUri)
                
                android.util.Log.d(TAG, "Open result: success=${result.isSuccess}, failure=${result.isFailure}")
                
                if (result.isSuccess) {
                    bookReader = reader // назначаем только после успешного открытия
                    currentComicId = finalUri.toString()
                    val metadata = result.getOrThrow()
                    val pageCount = metadata.pageCount
                    android.util.Log.d(TAG, "Book opened successfully. Page count: $pageCount")
                    
                    // Validate page count
                    if (pageCount <= 0) {
                        android.util.Log.e(TAG, "Invalid page count received from metadata: $pageCount")
                        throw IllegalStateException("Файл не содержит страниц или произошла ошибка при подсчете страниц")
                    }
                    
                    // Auto-detection of reading mode
                    val autoDetectEnabled = settingsRepository.readingModeAutoDetect.first()
                    
                    if (autoDetectEnabled) {
                        val detectedMode = readingModeDetector.detectReadingMode(finalUri)
                        val detectedDirection = readingModeDetector.getReadingDirection(detectedMode)
                        
                        android.util.Log.d(TAG, "Auto-detected reading mode: $detectedMode, direction: $detectedDirection")
                        
                        // Сохраняем определенный режим для этого комикса
                        settingsRepository.setReadingModeForComic(currentComicId!!, detectedMode)
                        
                        // Обновляем UI с определенным режимом
                        val readingMode = when (detectedMode) {
                            "webtoon" -> ReadingMode.WEBTOON
                            else -> ReadingMode.PAGE
                        }
                        
                        val readingDirection = when (detectedDirection) {
                            "rtl" -> ReadingDirection.RTL
                            "ltr" -> ReadingDirection.LTR
                            else -> ReadingDirection.LTR
                        }
                        
                        _uiState.update { 
                            it.copy(
                                readingMode = readingMode,
                                readingDirection = readingDirection
                            ) 
                        }
                    }
                    
                    // Настраиваем PagePreloader для предзагрузки
                    pagePreloader.setCurrentReader(
                        reader = reader,
                        uri = finalUri.toString(),
                        maxWidth = 1920,
                        maxHeight = 1080,
                        scale = 1.0f
                    )
                    
                    // Устанавливаем флаги готовности для предзагрузки
                    pagePreloader.markBookSelected()
                    pagePreloader.markArchiveValidated()
                    pagePreloader.markReaderReady()

                    // Восстанавливаем прогресс чтения
                    val lastReadPage = try {
                        saveReadingProgressUseCase.getProgress(currentComicId!!)
                    } catch (e: Exception) {
                        android.util.Log.w(TAG, "Failed to load reading progress", e)
                        0
                    }.coerceIn(0, (pageCount - 1).coerceAtLeast(0))

                    val resolvedPageCount = pageCount

                    // Загружаем pin состояние из сессии
                    val session = readingSessionRepository.getSessionByComicId(currentComicId!!)
                    val isPinned = session?.readingSettings?.contains("\"pinnedPage\"") == true
                    val pinnedPage = if (isPinned) {
                        try {
                            // Простой парсинг JSON для получения pinnedPage
                            val settings = session?.readingSettings
                            val pinnedPageMatch = "\"pinnedPage\":(\\d+)".toRegex().find(settings ?: "")
                            pinnedPageMatch?.groupValues?.get(1)?.toIntOrNull()
                        } catch (e: Exception) {
                            android.util.Log.w(TAG, "Failed to parse pinned page from settings", e)
                            null
                        }
                    } else null

                    _uiState.update { 
                        it.copy(
                            pageCount = resolvedPageCount,
                            isPinned = isPinned,
                            pinnedPage = pinnedPage,
                            currentComicUri = finalUri.toString()
                        ) 
                    }
                    
                    android.util.Log.d(TAG, "UI state updated with page count: $resolvedPageCount, current page will be: $lastReadPage")

                    if (resolvedPageCount > 0) {
                        loadPage(lastReadPage)
                    } else {
                        android.util.Log.e(TAG, "Resolved page count is 0, not loading any pages")
                        _uiState.update { it.copy(isLoading = false, error = "Не удалось определить количество страниц") }
                    }
                } else {
                    val exception = result.exceptionOrNull()
                    android.util.Log.e(TAG, "❌ Failed to open book: ${exception?.message}", exception)
                    throw exception ?: Exception("Failed to open book")
                }
            } catch (e: Exception) {
                android.util.Log.e(TAG, "❌ Exception while opening book", e)
                android.util.Log.e(TAG, "❌ Exception type: ${e::class.simpleName}")
                android.util.Log.e(TAG, "❌ Exception message: ${e.message}")
                android.util.Log.e(TAG, "❌ Exception cause: ${e.cause?.message}")
                
                val errorMessage = when {
                    e.message?.contains("Permission Denial") == true || e.message?.contains("ACTION_OPEN_DOCUMENT") == true -> 
                        "Нет доступа к файлу. Удалите файл из библиотеки и добавьте заново через кнопку \"+\"."
                    e.message?.contains("В папке не найдено изображений") == true -> 
                        "В архиве нет изображений. Проверьте содержимое файла."
                    e.message?.contains("Не удалось открыть файл") == true -> 
                        "Нет доступа к файлу. Попробуйте добавить файл заново."
                    e.message?.contains("Failed to open input stream") == true -> 
                        "Не удалось прочитать файл. Проверьте разрешения."
                    else -> "Ошибка открытия: ${e.message}"
                }
                
                _uiState.update {
                    it.copy(isLoading = false, error = errorMessage)
                }
            }
        }
    }

    fun goToNextPage() {
        val currentState = _uiState.value
        val nextPage = currentState.currentPageIndex + 1
        android.util.Log.d(TAG, "goToNextPage: current=${currentState.currentPageIndex}, next=$nextPage, total=${currentState.pageCount}")
        
        if (currentState.pageCount <= 0) {
            android.util.Log.w(TAG, "Cannot navigate: page count is ${currentState.pageCount}")
            return
        }
        
        if (nextPage < currentState.pageCount) {
            loadPage(nextPage)
        } else {
            android.util.Log.d(TAG, "Already at last page (${currentState.currentPageIndex + 1}/${currentState.pageCount})")
        }
    }

    fun goToPreviousPage() {
        val currentState = _uiState.value
        val prevPage = currentState.currentPageIndex - 1
        android.util.Log.d(TAG, "goToPreviousPage: current=${currentState.currentPageIndex}, prev=$prevPage, total=${currentState.pageCount}")
        
        if (currentState.pageCount <= 0) {
            android.util.Log.w(TAG, "Cannot navigate: page count is ${currentState.pageCount}")
            return
        }
        
        if (prevPage >= 0) {
            loadPage(prevPage)
        } else {
            android.util.Log.d(TAG, "Already at first page (1/${currentState.pageCount})")
        }
    }

    /**
     * Set the reading mode (PAGE or WEBTOON).
     * 
     * IMPORTANT: This is INDEPENDENT from orientation setting.
     * Changing reading mode does NOT change orientation.
     * 
     * @param mode The reading mode to set (PAGE or WEBTOON)
     */
    fun setReadingMode(mode: ReadingMode) {
        android.util.Log.d(TAG, "Setting reading mode: $mode (orientation remains: ${_uiState.value.orientation})")
        
        // 🔥 КРИТИЧЕСКОЕ ИСПРАВЛЕНИЕ: Сброс кэша и перезагрузка при смене режима
        // Это устранит мерцание/наложение при переключении на Webtoon
        if (mode != _uiState.value.readingMode) {
            viewModelScope.launch {
                // 1. Обновляем настройки
                settingsRepository.setReadingMode(
                    when (mode) {
                        ReadingMode.WEBTOON -> "webtoon"
                        ReadingMode.PAGE -> "page"
                    }
                )
                
                // 2. Сбрасываем кэш и UI State
                bitmapCache.clearCache()
                _uiState.update { 
                    it.copy(
                        readingMode = mode,
                        bitmaps = emptyMap(), // Сброс кэша
                        currentPageBitmap = null,
                        currentPageIndex = 0, // Сброс на первую страницу
                        pageCount = 0, // Сброс счетчика страниц
                        error = null,
                        isLoading = true
                        // NOTE: orientation is NOT changed - it remains as is
                    )
                }
                
                // 3. Перезагружаем книгу, чтобы пересчитать страницы для Webtoon
                // (Webtoon может иметь другое количество страниц/частей)
                val currentUri = _uiState.value.currentComicUri
                if (!currentUri.isNullOrEmpty()) {
                    openBook(Uri.parse(currentUri))
                }
                
                // 4. Analytics
                analyticsHelper.track(
                    com.example.core.analytics.AnalyticsEvent.ReadingModeChanged(
                        mode = when (mode) {
                            ReadingMode.WEBTOON -> "webtoon"
                            ReadingMode.PAGE -> "page"
                        }
                    ),
                    this
                )
            }
        }
    }

    fun setReadingDirection(direction: ReadingDirection) {
        android.util.Log.d(TAG, "Setting reading direction: $direction")
        _uiState.update { it.copy(readingDirection = direction) }
    }
    
    private fun normalizeReadingMode(raw: String?): String {
        return when (raw?.lowercase()?.trim()) {
            "vertical", "webtoon" -> "webtoon"
            else -> "page"
        }
    }

    private fun normalizeScaleMode(raw: String?): String {
        return when (raw?.lowercase()?.trim()) {
            "height" -> "height"
            "fit" -> "fit"
            "fill" -> "fill" // Новый режим FILL - заполнение с обрезкой
            "stretch" -> "fill" // Старый stretch теперь маппится на fill
            "custom" -> "custom"
            else -> "width"
        }
    }

    private fun normalizeOrientation(raw: String?): String {
        return when (raw?.lowercase()?.trim()) {
            "portrait" -> "portrait"
            "landscape" -> "landscape"
            "locked", "lock" -> "locked"
            else -> "auto"
        }
    }

    // Throttled zoom tracking
    private var lastZoomReported: Float = 1.0f
    private var lastZoomReportTimeMs: Long = 0L

    fun trackZoom(scale: Float) {
        val now = System.currentTimeMillis()
        // Report if significant change (>=0.2) or at least every 1.5s
        val significant = abs(scale - lastZoomReported) >= 0.2f
        val timedOut = (now - lastZoomReportTimeMs) >= 1500L
        if (significant || timedOut) {
            lastZoomReported = scale
            lastZoomReportTimeMs = now
            viewModelScope.launch {
                analyticsHelper.track(
                    com.example.core.analytics.AnalyticsEvent.SettingChanged(
                        settingName = "zoom",
                        value = String.format(java.util.Locale.US, "%.2f", scale)
                    ),
                    this
                )
            }
        }
    }

    private suspend fun getPage(pageIndex: Int): Bitmap? {
        return withContext(Dispatchers.IO) {
            val reader = bookReader
            if (reader != null) {
                // Используем настройки качества изображений
                val dpi = imageRenderDpi.value
                val quality = when (imageQuality.value) {
                    "high" -> 1.0f
                    "medium" -> 0.8f
                    "low" -> 0.6f
                    else -> 1.0f
                }
                
                // Рассчитываем размеры на основе DPI
                val width = (dpi * 1.6f).toInt() // 16:10 соотношение
                val height = (dpi * 1.0f).toInt()
                
                val result = reader.renderPage(pageIndex, width, height, quality)
                if (result.isSuccess) {
                    result.getOrNull()
                } else {
                    android.util.Log.e(TAG, "Failed to render page $pageIndex: ${result.exceptionOrNull()?.message}")
                    null
                }
            } else {
                null
            }
        }
    }

    fun loadPage(pageIndex: Int) {
        android.util.Log.d(TAG, "Loading page: $pageIndex")
        
        val currentState = _uiState.value
        if (currentState.pageCount <= 0) {
            android.util.Log.e(TAG, "Cannot load page: pageCount is ${currentState.pageCount}")
            _uiState.update { it.copy(isLoading = false, error = "Не удалось определить количество страниц") }
            return
        }
        
        if (pageIndex < 0 || pageIndex >= currentState.pageCount) {
            android.util.Log.e(TAG, "Invalid page index: $pageIndex (valid range: 0-${currentState.pageCount - 1})")
            _uiState.update { it.copy(isLoading = false, error = "Недопустимый номер страницы: ${pageIndex + 1}") }
            return
        }
        
        _uiState.update { it.copy(isLoading = true) }
        viewModelScope.launch {
            val bitmap = getPage(pageIndex)

            if (bitmap != null) {
                android.util.Log.d(TAG, "Page $pageIndex loaded successfully (${bitmap.width}x${bitmap.height})")
            } else {
                android.util.Log.w(TAG, "Failed to load page $pageIndex")
            }

            _uiState.update { currentState ->
                val updatedBitmaps = if (bitmap != null) {
                    currentState.bitmaps + (pageIndex to bitmap)
                } else {
                    currentState.bitmaps - pageIndex
                }

                currentState.copy(
                    isLoading = false,
                    currentPageIndex = pageIndex,
                    currentPageBitmap = bitmap,
                    bitmaps = updatedBitmaps,
                    error = if (bitmap == null) "Failed to load page ${pageIndex + 1}" else null
                )
            }

            // Сохраняем прогресс чтения с улучшенной обработкой
            currentComicId?.let { comicId ->
                viewModelScope.launch {
                    try {
                        saveReadingProgressUseCase.saveProgress(
                            filePath = comicId,
                            pageIndex = pageIndex
                        )
                        android.util.Log.d(TAG, "✅ Progress saved: page $pageIndex of ${_uiState.value.pageCount}")
                    } catch (e: Exception) {
                        android.util.Log.e(TAG, "Exception while saving progress", e)
                    }
                }
            }

            // Прелоадим соседние страницы через PagePreloader
            pagePreloader.preloadAroundPage(pageIndex)
            
            // ✅ Webtoon mode: предзагрузка ВСЕХ страниц для плавного скроллинга
            if (_uiState.value.readingMode == ReadingMode.WEBTOON) {
                viewModelScope.launch {
                    android.util.Log.d(TAG, "📜 Webtoon mode: preloading all ${_uiState.value.pageCount} pages")
                    for (i in 0 until _uiState.value.pageCount) {
                        if (!_uiState.value.bitmaps.containsKey(i)) {
                            kotlinx.coroutines.delay(30) // Небольшая задержка между загрузками
                            val pageBitmap = getPage(i)
                            if (pageBitmap != null) {
                                _uiState.update { currentState ->
                                    currentState.copy(
                                        bitmaps = currentState.bitmaps + (i to pageBitmap)
                                    )
                                }
                                android.util.Log.d(TAG, "✅ Webtoon: loaded page $i")
                            }
                        }
                    }
                    android.util.Log.d(TAG, "✅ Webtoon: all pages loaded")
                }
            }
        }
    }

    // ✅ [PRELOAD-12]: prefetchAround() вызовы добавлены в VM через PagePreloader

    /**
     * Toggle scale mode between fit-width, fit-height, and fit-screen
     */
    fun toggleScaleMode() {
        viewModelScope.launch {
            val currentMode = _uiState.value.scaleMode
            val nextMode = when (currentMode) {
                "width" -> "height"
                "height" -> "screen"
                else -> "width"
            }
            
            // Update UI state
            _uiState.update { it.copy(scaleMode = nextMode) }
            
            // Save to settings
            settingsRepository.setScaleMode(nextMode)
            
            // Track analytics
            analyticsHelper.track(
                com.example.core.analytics.AnalyticsEvent.SettingChanged(
                    settingName = "scale_mode",
                    value = nextMode
                ),
                this
            )
            
            android.util.Log.d(TAG, "Scale mode toggled: $currentMode -> $nextMode")
        }
    }

    // TODO [GESTURES-10]: подключить readerGestures, реализовать zoom и тап-зоны
    
    /**
     * Cycle through zoom modes: width → height → fit → fill → width
     * Обновлено для поддержки нового режима FILL
     */
    fun cycleZoom() {
        viewModelScope.launch {
            val currentMode = _uiState.value.scaleMode
            val nextMode = when (currentMode) {
                "width" -> "height"
                "height" -> "fit"
                "fit" -> "fill"
                "fill" -> "width"
                else -> "width"
            }
            
            android.util.Log.d(TAG, "Cycling zoom: $currentMode -> $nextMode")
            _uiState.update { it.copy(scaleMode = nextMode) }
            
            // Save to settings
            settingsRepository.setScaleMode(nextMode)
            
            // Analytics
            analyticsHelper.track(
                com.example.core.analytics.AnalyticsEvent.SettingChanged(
                    settingName = "scale_mode",
                    value = nextMode
                ),
                this
            )
        }
    }
    
    // Store last preset scale mode before switching to custom
    private var lastPresetScaleMode: String = "width"
    
    /**
     * Apply pinch-to-zoom with scale and center point
     * Flips scaleMode to "custom" when manually zooming
     */
    fun zoom(scale: Float, center: androidx.compose.ui.geometry.Offset) {
        android.util.Log.d(TAG, "Zoom: scale=$scale, center=$center")
        
        // Update zoom state
        _uiState.update { currentState ->
            val newScale = (currentState.currentZoomScale * scale).coerceIn(0.5f, 5.0f)
            
            // Save last preset before switching to custom
            if (currentState.scaleMode != "custom") {
                lastPresetScaleMode = currentState.scaleMode
            }
            
            currentState.copy(
                currentZoomScale = newScale,
                zoomCenter = center,
                scaleMode = "custom" // Switch to custom mode when manually zooming
            )
        }
        
        // Track zoom for analytics (throttled)
        trackZoom(_uiState.value.currentZoomScale)
    }
    
    /**
     * Reset zoom to last preset scale mode
     * Returns to the last preset when resetting from custom zoom
     */
    fun resetZoom() {
        android.util.Log.d(TAG, "Resetting zoom to last preset with animation")
        
        // Use last preset if available, otherwise determine optimal by orientation
        val targetScaleMode = if (lastPresetScaleMode.isNotEmpty()) {
            lastPresetScaleMode
        } else {
            when (_uiState.value.orientation) {
                "portrait" -> "width"  // FitWidth для портрета
                "landscape" -> "height" // FitHeight для ландшафта
                else -> "width" // По умолчанию FitWidth
            }
        }
        
        // Сбрасываем все параметры зума к исходному состоянию с анимацией
        _uiState.update { currentState ->
            currentState.copy(
                currentZoomScale = 1.0f,
                zoomCenter = androidx.compose.ui.geometry.Offset.Zero,
                offsetX = 0f,
                offsetY = 0f,
                scaleMode = targetScaleMode // Возвращаем к последнему preset режиму
            )
        }
        
        // Сохраняем настройки
        viewModelScope.launch {
            settingsRepository.setScaleMode(targetScaleMode)
            
            // Аналитика
            analyticsHelper.track(
                com.example.core.analytics.AnalyticsEvent.SettingChanged(
                    settingName = "zoom_reset",
                    value = targetScaleMode
                ),
                this
            )
        }
    }

    override fun onCleared() {
        super.onCleared()
        android.util.Log.d(TAG, "ViewModel cleared, closing book reader")
        try {
            bookReader?.let { reader ->
                kotlinx.coroutines.runBlocking {
                    reader.close()
                }
            }
        } catch (e: Exception) {
            android.util.Log.w(TAG, "Error closing reader", e)
        }
        
        // Очищаем PagePreloader
        pagePreloader.cleanup()
        
        bookReader = null
        currentComicId = null
    }
    
    /**
     * Toggle pin state for current page
     */
    fun togglePin() {
        _uiState.update { currentState ->
            val newPinnedState = !currentState.isPinned
            val newPinnedPage = if (newPinnedState) currentState.currentPageIndex else null
            
            currentState.copy(
                isPinned = newPinnedState,
                pinnedPage = newPinnedPage
            )
        }
        
        // Save pin state to session repository
        viewModelScope.launch {
            currentComicId?.let { comicId ->
                try {
                    val currentState = _uiState.value
                    val readingSettings = if (currentState.isPinned) {
                        "{\"pinnedPage\":${currentState.pinnedPage}}"
                    } else {
                        "{\"pinnedPage\":null}"
                    }
                    
                    readingSessionRepository.saveProgressAndSettings(
                        comicId = comicId,
                        currentPage = currentState.currentPageIndex,
                        totalPages = currentState.pageCount,
                        readingSettings = readingSettings
                    )
                    
                    android.util.Log.d(TAG, "Pin state saved: pinned=${currentState.isPinned}, page=${currentState.pinnedPage}")
                } catch (e: Exception) {
                    android.util.Log.e(TAG, "Failed to save pin state", e)
                }
            }
        }
    }
    
    /**
     * Check if current page is pinned
     */
    fun isCurrentPagePinned(): Boolean {
        return _uiState.value.isPinned && 
               _uiState.value.pinnedPage == _uiState.value.currentPageIndex
    }
    
    /**
     * Update brightness setting and apply to system
     * Uses proper float interpolation (not wrapping)
     */
    fun updateBrightness(brightness: Float) {
        viewModelScope.launch {
            // Clamp to valid range for brightness slider
            val clampedBrightness = brightness.coerceIn(0.1f, 1.0f)
            settingsRepository.setReaderBrightness(clampedBrightness)
            
            // Update UI state immediately for smooth slider feedback
            _uiState.update { it.copy(readerBrightness = clampedBrightness) }
            
            // Apply brightness to system window with proper flag
            try {
                val activity = context as? Activity
                activity?.let { act ->
                    val layoutParams = act.window.attributes
                    // Use clamped value directly (no additional wrapping)
                    layoutParams.screenBrightness = clampedBrightness
                    act.window.attributes = layoutParams
                    android.util.Log.d(TAG, "System brightness updated to: $clampedBrightness")
                }
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Failed to update system brightness", e)
            }
        }
    }
    
    /**
     * Update brightness mode setting
     */
    fun updateBrightnessMode(mode: String) {
        viewModelScope.launch {
            settingsRepository.setReaderBrightnessMode(mode)
            
            // Обновляем UI состояние
            _uiState.update { currentState ->
                currentState.copy(readerBrightnessMode = mode)
            }
            
            // Для Auto режима восстанавливаем системную яркость
            if (mode == "auto") {
                try {
                    val activity = context as? Activity
                    activity?.let { act ->
                        val layoutParams = act.window.attributes
                        layoutParams.screenBrightness = -1f // -1 = системная яркость
                        act.window.attributes = layoutParams
                        android.util.Log.d(TAG, "Brightness mode set to auto (system brightness)")
                    }
                } catch (e: Exception) {
                    android.util.Log.e(TAG, "Failed to set auto brightness", e)
                }
            }
        }
    }
    
    /**
     * Update orientation setting (auto, portrait, landscape, locked).
     * 
     * IMPORTANT: This is INDEPENDENT from reading mode setting.
     * Changing orientation does NOT change reading mode.
     * Auto orientation does NOT force Webtoon mode.
     * 
     * @param orientation The orientation to set ("auto", "portrait", "landscape", "locked")
     */
    fun updateOrientation(orientation: String) {
        android.util.Log.d(TAG, "Setting orientation: $orientation (reading mode remains: ${_uiState.value.readingMode})")
        viewModelScope.launch {
            settingsRepository.setOrientation(orientation)
            // NOTE: readingMode is NOT changed - it remains as is
        }
    }
    
    /**
     * Update scale mode setting
     * Routes TopSettingsPanel scale-mode buttons to immediately re-render with new scale
     */
    fun updateScaleMode(scaleMode: String) {
        viewModelScope.launch {
            // Сохраняем текущую страницу, чтобы предотвратить перелистывание
            val currentPage = _uiState.value.currentPageIndex
            
            settingsRepository.setScaleMode(scaleMode)
            _uiState.update { currentState ->
                currentState.copy(
                    scaleMode = scaleMode,
                    currentPageIndex = currentPage, // Сохраняем текущую страницу
                    // Сбрасываем только зум, не меняя режим масштабирования
                    currentZoomScale = 1.0f,
                    zoomCenter = androidx.compose.ui.geometry.Offset.Zero,
                    offsetX = 0f,
                    offsetY = 0f
                )
            }
            
            android.util.Log.d(TAG, "Scale mode updated: $scaleMode (page preserved: $currentPage)")
            
            // Immediately re-render the current page with new scale
            // This ensures the bitmap is regenerated with the new scale mode
            loadPage(currentPage)
        }
    }
    
    /**
     * Update zoom state
     */
    fun updateZoomState(scale: Float, center: androidx.compose.ui.geometry.Offset, offsetX: Float, offsetY: Float) {
        _uiState.update { currentState ->
            currentState.copy(
                currentZoomScale = scale,
                zoomCenter = center,
                offsetX = offsetX,
                offsetY = offsetY
            )
        }
    }
    
    /**
     * Toggle orientation (portrait → landscape → auto → portrait).
     * 
     * IMPORTANT: This is INDEPENDENT from reading mode.
     * Toggling orientation does NOT change reading mode.
     */
    fun toggleOrientation() {
        viewModelScope.launch {
            val currentOrientation = _uiState.value.orientation
            val newOrientation = when (currentOrientation) {
                "portrait" -> "landscape"
                "landscape" -> "auto"
                "auto" -> "portrait"
                else -> "auto"
            }
            updateOrientation(newOrientation)
        }
    }
    
    /**
     * Handle double tap zoom
     */
    fun handleDoubleTapZoom(position: androidx.compose.ui.geometry.Offset) {
        android.util.Log.d(TAG, "Double tap zoom at position: $position")
        
        _uiState.update { currentState ->
            val newScale = if (currentState.currentZoomScale > 1.0f) {
                1.0f // Reset to normal
            } else {
                2.0f // Zoom to 2x level
            }
            
            // Save last preset before switching to custom
            if (currentState.scaleMode != "custom" && newScale > 1.0f) {
                lastPresetScaleMode = currentState.scaleMode
            }
            
            currentState.copy(
                currentZoomScale = newScale,
                zoomCenter = position,
                scaleMode = if (newScale > 1.0f) "custom" else lastPresetScaleMode
            )
        }
    }
    
    /**
     * Bookmark current page
     * Переключает закладку на текущей странице (добавляет или удаляет)
     */
    fun bookmarkCurrentPage() {
        currentComicId?.let { comicId ->
            viewModelScope.launch {
                try {
                    val currentPage = _uiState.value.currentPageIndex
                    val isAdded = bookmarkRepository.toggleBookmark(
                        comicId = comicId,
                        pageIndex = currentPage,
                        note = null
                    )
                    
                    val message = if (isAdded) {
                        "Закладка добавлена на странице ${currentPage + 1}"
                    } else {
                        "Закладка удалена"
                    }
                    
                    android.util.Log.d(TAG, message)
                    
                    // Можно добавить Toast или Snackbar для уведомления пользователя
                    // Обновляем UI state если нужно
                    _uiState.update { it.copy(
                        // Можно добавить флаг isCurrentPageBookmarked если нужно
                    )}
                    
                } catch (e: Exception) {
                    android.util.Log.e(TAG, "Failed to toggle bookmark", e)
                }
            }
        }
    }
    
    /**
     * Share current page
     */
    fun shareCurrentPage() {
        // TODO: Implement share functionality
        android.util.Log.d(TAG, "Share current page: ${_uiState.value.currentPageIndex}")
    }
    
    /**
     * Open settings
     */
    fun openSettings() {
        // TODO: Implement settings navigation
        android.util.Log.d(TAG, "Open settings")
    }
    
    /**
     * Save current reading progress
     * Called when leaving the reader
     */
    fun saveCurrentProgress() {
        currentComicId?.let { comicId ->
            viewModelScope.launch {
                try {
                    val currentState = _uiState.value
                    saveReadingProgressUseCase.saveProgress(
                        filePath = comicId,
                        pageIndex = currentState.currentPageIndex
                    )
                    android.util.Log.d(TAG, "Progress saved: page ${currentState.currentPageIndex + 1}/${currentState.pageCount}")
                } catch (e: Exception) {
                    android.util.Log.e(TAG, "Failed to save progress", e)
                }
            }
        }
    }
    
    /**
     * Load thumbnail for a specific page and push into BitmapCache
     * Used by UI layer when cache miss occurs
     */
    suspend fun loadThumbnail(pageIndex: Int): Bitmap? {
        return withContext(Dispatchers.IO) {
            try {
                val reader = bookReader ?: return@withContext null
                val uri = currentComicId ?: return@withContext null
                
                // For PDF readers, call the getThumbnail method directly
                if (reader is com.example.core.reader.data.PdfReader) {
                    val result = reader.getThumbnail(pageIndex)
                    if (result.isSuccess) {
                        result.getOrNull()
                    } else {
                        android.util.Log.w(TAG, "Failed to load PDF thumbnail for page $pageIndex: ${result.exceptionOrNull()?.message}")
                        null
                    }
                } else {
                    // For other formats, render at thumbnail size
                    val result = reader.renderPage(pageIndex, 200, 200, 0.5f)
                    if (result.isSuccess) {
                        result.getOrNull()
                    } else {
                        android.util.Log.w(TAG, "Failed to load thumbnail for page $pageIndex: ${result.exceptionOrNull()?.message}")
                        null
                    }
                }
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Exception loading thumbnail for page $pageIndex", e)
                null
            }
        }
    }
    
}
