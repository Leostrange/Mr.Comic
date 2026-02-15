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
import com.example.core.reader.domain.MediaType
import com.example.core.reader.domain.BookReaderFactory
import com.example.core.data.repository.SettingsRepository
import com.example.core.data.repository.ReadingSessionRepository
import com.example.core.data.reader.ReadingModeDetector
import com.example.core.reader.preload.PagePreloader
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.flow.debounce
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import javax.inject.Inject
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlin.math.abs
import kotlinx.coroutines.channels.BufferOverflow
import android.os.SystemClock
import androidx.compose.runtime.Immutable

@Immutable
data class ReaderDiagnostics(
    val lastRenderedPage: Int = -1,
    val renderWidth: Int = 0,
    val renderHeight: Int = 0,
    val renderTimeMs: Long = 0,
    val imageQuality: String = "high",
    val imageDpi: Int = 0,
    val readingMode: ReadingMode = ReadingMode.PAGE,
    val currentMediaType: MediaType? = null,
    val currentUri: String? = null,
    val uriScheme: String? = null,
    val preloadStats: com.example.core.reader.preload.PreloadStats? = null,
    val cacheStats: com.example.core.reader.cache.CacheStats? = null
)

@HiltViewModel
class ReaderViewModel @Inject constructor(
    private val readerFactory: BookReaderFactory,
    private val settingsRepository: SettingsRepository,
    private val saveReadingProgressUseCase: SaveReadingProgressUseCase,
    private val readingSessionRepository: ReadingSessionRepository,
    private val bookmarkRepository: com.example.core.data.repository.BookmarkRepository,
    val pagePreloader: PagePreloader,
    private val readingModeDetector: ReadingModeDetector,
    val bitmapCache: com.example.core.reader.cache.BitmapCache,
    @ApplicationContext private val context: Context,
    private val analyticsHelper: com.example.core.analytics.AnalyticsHelper,
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
        3200 // Увеличено для лучшего качества
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

    val enableDualPageMode = settingsRepository.enableDualPageMode.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        true
    )

    val enableWebtoonMode = settingsRepository.enableWebtoonMode.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        false
    )

    private var bookReader: MediaReader? = null
    private var currentComicId: String? = null
    private var lastProgressSavedPage: Int = -1
    private var lastProgressSaveTimestamp: Long = 0L
    private val _brightnessState = MutableStateFlow(1.0f)
    val brightnessState = _brightnessState.asStateFlow()

    private val brightnessWriteFlow = MutableSharedFlow<Float>(
        extraBufferCapacity = 32,
        onBufferOverflow = BufferOverflow.DROP_OLDEST
    )
    private val _diagnosticsState = MutableStateFlow(ReaderDiagnostics())
    val diagnostics = _diagnosticsState.asStateFlow()

    companion object {
        private const val PRELOAD_DISTANCE = 3 // Preload 3 pages ahead/behind for smoother UX
        private const val TAG = "ReaderViewModel"
        private const val PROGRESS_SAVE_DEBOUNCE_MS = 750L
    }

    init {
        // Путь к файлу приходит как аргумент навигации.
        android.util.Log.d(TAG, "🎬 ReaderViewModel initialized")
        android.util.Log.d(TAG, "📋 SavedStateHandle keys: ${savedStateHandle.keys()}")
        observeReaderPreferences()
        observeBrightnessWrites()

        val uriString = savedStateHandle.get<String>("uri")
        android.util.Log.d(TAG, "📁 Received URI from navigation: $uriString")
        if (uriString != null) {
            android.util.Log.d(TAG, "✅ URI found, opening book...")
            val decoded = runCatching { Uri.decode(uriString) }.getOrElse { uriString }
            val uri = runCatching { Uri.parse(decoded) }.getOrElse {
                android.util.Log.w(TAG, "Failed to parse decoded URI, trying raw", it)
                Uri.parse(uriString)
            }
            openBook(uri)
        } else {
            android.util.Log.e(TAG, "❌ No URI provided in navigation arguments!")
            _uiState.update { it.copy(isLoading = false, error = "File URI not provided.") }
        }
    }

    private fun observeReaderPreferences() {
        viewModelScope.launch {
            settingsRepository.readingMode.collect { mode ->
                val resolvedMode = when (normalizeReadingMode(mode)) {
                    "webtoon" -> ReadingMode.WEBTOON
                    "dual" -> ReadingMode.DUAL_PAGE
                    else -> ReadingMode.PAGE
                }
                _uiState.update {
                    it.copy(
                        readingMode = resolvedMode,
                        visibleWebtoonPage = if (resolvedMode == ReadingMode.WEBTOON) it.currentPageIndex else 0
                    )
                }
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
                _brightnessState.value = coerced
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

    private fun observeBrightnessWrites() {
        viewModelScope.launch {
            brightnessWriteFlow
                .debounce(60)
                .collectLatest { value ->
                    runCatching {
                        settingsRepository.setReaderBrightness(value)
                    }.onFailure {
                        android.util.Log.e(TAG, "Failed to persist brightness", it)
                    }
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
            
            // 🔥 КРИТИЧЕСКИ ВАЖНО: Проверяем и запрашиваем permissions для content:// URI
            if (uri.scheme == "content") {
                try {
                    android.util.Log.d(TAG, "🔐 Checking permissions for content URI: $uri")
                    
                    // Проверяем, есть ли у нас уже persistable permission
                    val persistedUris = context.contentResolver.persistedUriPermissions
                    
                    // 🔥 ВАЖНО: Проверяем permission для разных вариантов URI (encoded/decoded)
                    // Потому что Android может сохранять их по-разному
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
                            android.util.Log.d(TAG, "✅ Found matching persisted URI: ${persistedUri.uri}")
                        }
                        match
                    }
                    
                    if (!hasPermission) {
                        android.util.Log.w(TAG, "⚠️ No persistable permission found for URI: $uri")
                        android.util.Log.d(TAG, "📋 Current persisted URIs (${persistedUris.size}):")
                        persistedUris.forEach { 
                            android.util.Log.d(TAG, "  - ${it.uri} (read=${it.isReadPermission}, write=${it.isWritePermission})")
                        }
                        
                        // Пытаемся взять persistable permission (может не сработать, если URI не поддерживает)
                        try {
                            context.contentResolver.takePersistableUriPermission(
                                uri,
                                android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                            )
                            android.util.Log.d(TAG, "✅ Successfully took persistable URI permission")
                        } catch (e: SecurityException) {
                            android.util.Log.w(TAG, "⚠️ Could not take persistable permission: ${e.message}")
                            // Это нормально для некоторых URI, продолжаем
                        }
                    } else {
                        android.util.Log.d(TAG, "✅ Persistable permission already exists for URI")
                        
                        // 🔥 КРИТИЧЕСКИ ВАЖНО: Используем persisted URI вместо decoded URI
                        // Потому что permission работает только с тем URI, для которого он был взят
                        if (matchedPersistedUri != null && matchedPersistedUri != uri) {
                            android.util.Log.d(TAG, "🔄 Replacing decoded URI with persisted URI")
                            android.util.Log.d(TAG, "   Original: $uri")
                            android.util.Log.d(TAG, "   Persisted: $matchedPersistedUri")
                            // Заменяем URI на persisted вариант для дальнейшего использования
                            val persistedUri = matchedPersistedUri!!
                            
                            // Проверяем, можем ли мы прочитать файл с persisted URI
                            try {
                                context.contentResolver.openInputStream(persistedUri)?.use {
                                    android.util.Log.d(TAG, "✅ Successfully opened input stream with persisted URI")
                                }
                                // Если успешно, обновляем URI для дальнейшего использования
                                // Но это не сработает, потому что uri - это val параметр
                                // Нужно передавать persistedUri дальше в код
                            } catch (e: SecurityException) {
                                android.util.Log.e(TAG, "❌ SecurityException with persisted URI: ${e.message}")
                            }
                        }
                    }
                    
                    // Проверяем, можем ли мы вообще прочитать файл
                    // Используем matchedPersistedUri если он есть, иначе original uri
                    val uriToUse = matchedPersistedUri ?: uri
                    try {
                        context.contentResolver.openInputStream(uriToUse)?.use {
                            android.util.Log.d(TAG, "✅ Successfully opened input stream for URI")
                        }
                    } catch (e: SecurityException) {
                        android.util.Log.e(TAG, "❌ SecurityException: Cannot read URI: ${e.message}")
                        _uiState.update {
                            it.copy(
                                isLoading = false,
                                error = "Нет доступа к файлу. Пожалуйста, добавьте файл заново через библиотеку."
                            )
                        }
                        return@launch
                    }
                } catch (e: Exception) {
                    android.util.Log.e(TAG, "❌ Error checking permissions", e)
                }
            }
            
            // 🔥 ВАЖНО: Определяем финальный URI для использования
            // Если нашли persisted URI, используем его, иначе используем original
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
                android.util.Log.d(TAG, "🔄 Using persisted URI instead of decoded URI")
                android.util.Log.d(TAG, "   Original: $uri")
                android.util.Log.d(TAG, "   Final: $finalUri")
            }
            
            // Закрываем предыдущий reader при открытии новой книги
            try {
                bookReader?.close()
            } catch (e: Exception) {
                android.util.Log.w(TAG, "Error closing previous reader", e)
            }

            try {
                android.util.Log.d(TAG, "🔧 Creating reader for URI: $finalUri")
                val reader = readerFactory.create(finalUri)
                android.util.Log.d(TAG, "✅ Reader created: ${reader::class.simpleName}")
                
                android.util.Log.d(TAG, "📖 Opening book with reader...")
                val result = reader.open(context, finalUri)
                
                android.util.Log.d(TAG, "📊 Open result: success=${result.isSuccess}, failure=${result.isFailure}")
                
                if (result.isSuccess) {
                    bookReader = reader // назначаем только после успешного открытия
                    currentComicId = finalUri.toString()
                    val metadata = result.getOrThrow()
                    val pageCount = metadata.pageCount
                    android.util.Log.d(TAG, "✅ Book opened successfully. Page count: $pageCount")

                    _diagnosticsState.update {
                        it.copy(
                            currentMediaType = metadata.type,
                            currentUri = finalUri.toString(),
                            uriScheme = finalUri.scheme
                        )
                    }
                    
                    // Определение режима чтения с приоритетом сохраненного режима
                    val savedMode = currentComicId?.let { settingsRepository.getReadingModeForComic(it) }
                    
                    val finalMode: String
                    val finalDirection: String
                    
                    if (savedMode != null) {
                        // Используем сохраненный режим для этого комикса (пользователь выбрал вручную)
                        finalMode = savedMode
                        finalDirection = readingModeDetector.getReadingDirection(savedMode)
                        android.util.Log.d(TAG, "✅ Using saved reading mode for comic: $finalMode, direction: $finalDirection")
                    } else {
                        // Нет сохраненного режима - проверяем автоопределение
                        val autoDetectEnabled = settingsRepository.readingModeAutoDetect.first()
                        
                        if (autoDetectEnabled) {
                            // Автоопределение включено - определяем режим
                            finalMode = readingModeDetector.detectReadingMode(finalUri)
                            finalDirection = readingModeDetector.getReadingDirection(finalMode)
                            
                            android.util.Log.d(TAG, "🔍 Auto-detected reading mode: $finalMode, direction: $finalDirection")
                            
                            // Сохраняем определенный режим для этого комикса (только если пользователь не выбирал вручную)
                            currentComicId?.let { settingsRepository.setReadingModeForComic(it, finalMode) }
                        } else {
                            // Автоопределение выключено - используем режим по умолчанию
                            finalMode = "comic" // По умолчанию комикс (PAGE режим)
                            finalDirection = "ltr"
                            android.util.Log.d(TAG, "📖 Using default reading mode: $finalMode (auto-detect disabled)")
                        }
                    }
                    
                    // Обновляем UI с определенным режимом
                    val readingMode = when (finalMode) {
                        "webtoon" -> ReadingMode.WEBTOON
                        "dual" -> ReadingMode.DUAL_PAGE
                        else -> ReadingMode.PAGE
                    }
                    
                    val readingDirection = when (finalDirection) {
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
                    
                    // Настраиваем PagePreloader для предзагрузки
                    val preloadBase = imageRenderDpi.value
                    pagePreloader.setCurrentReader(
                        reader = reader,
                        uri = finalUri.toString(),
                        maxWidth = maxOf(1920, (preloadBase * 1.2f).toInt()),
                        maxHeight = maxOf(1080, (preloadBase).toInt()),
                        scale = 1.0f
                    )
                    
                    // Устанавливаем флаги готовности для предзагрузки
                    pagePreloader.markBookSelected()
                    pagePreloader.markArchiveValidated()
                    pagePreloader.markReaderReady()
                    
                    // Автоматическая предзагрузка миниатюр для всех страниц (независимо от режима чтения)
                    viewModelScope.launch {
                        android.util.Log.d(TAG, "📸 Starting automatic thumbnail preload for all ${pageCount} pages")
                        // Предзагружаем миниатюры в фоне для всех страниц
                        pagePreloader.preloadThumbnails(0, pageCount - 1)
                    }

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

                    if (resolvedPageCount > 0) {
                        loadPage(lastReadPage)
                    } else {
                        _uiState.update { it.copy(isLoading = false) }
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
        val step = if (currentState.readingMode == ReadingMode.DUAL_PAGE) 2 else 1
        val nextPage = currentState.currentPageIndex + step
        android.util.Log.d(TAG, "goToNextPage: current=${currentState.currentPageIndex}, next=$nextPage, total=${currentState.pageCount}")
        if (nextPage < currentState.pageCount) {
            loadPage(nextPage)
        } else {
            android.util.Log.d(TAG, "Already at last page")
        }
    }

    fun goToPreviousPage() {
        val currentState = _uiState.value
        val step = if (currentState.readingMode == ReadingMode.DUAL_PAGE) 2 else 1
        val prevPage = currentState.currentPageIndex - step
        android.util.Log.d(TAG, "goToPreviousPage: current=${currentState.currentPageIndex}, prev=$prevPage")
        if (prevPage >= 0) {
            loadPage(prevPage)
        } else {
            android.util.Log.d(TAG, "Already at first page")
        }
    }

    // Debounce для предотвращения множественных переключений режима
    private var lastReadingModeChangeTime = 0L
    private val READING_MODE_DEBOUNCE_MS = 500L
    
    fun setReadingMode(mode: ReadingMode) {
        android.util.Log.d(TAG, "Setting reading mode: $mode")
        
        // Проверяем, не переключаем ли мы уже режим
        val currentTime = System.currentTimeMillis()
        if (currentTime - lastReadingModeChangeTime < READING_MODE_DEBOUNCE_MS) {
            android.util.Log.d(TAG, "Reading mode switch debounced, ignoring")
            return
        }
        
        // Проверяем, действительно ли режим изменился
        if (mode == _uiState.value.readingMode) {
            android.util.Log.d(TAG, "Reading mode already set to $mode, skipping")
            return
        }
        
        lastReadingModeChangeTime = currentTime
        
        viewModelScope.launch {
            // Сохраняем текущую страницу перед переключением
            val currentPage = _uiState.value.currentPageIndex
            val currentPageCount = _uiState.value.pageCount
            val currentUri = _uiState.value.currentComicUri
            
            // 1. Обновляем настройки
            settingsRepository.setReadingMode(
                when (mode) {
                    ReadingMode.WEBTOON -> "webtoon"
                    ReadingMode.DUAL_PAGE -> "dual"
                    ReadingMode.PAGE -> "page"
                }
            )
            
            // 2. Автоматически переключаем ориентацию для DUAL_PAGE режима
            if (mode == ReadingMode.DUAL_PAGE) {
                // Переключаем в landscape режим для режима двух страниц
                settingsRepository.setOrientation("landscape")
                android.util.Log.d(TAG, "✅ Auto-switched to landscape for DUAL_PAGE mode")
            }
            
            // 3. Обновляем режим чтения БЕЗ полного сброса кэша
            // Сохраняем текущую страницу и состояние
            _uiState.update { 
                val adjustedPage = if (mode == ReadingMode.DUAL_PAGE) {
                    currentPage - (currentPage % 2)
                } else {
                    currentPage
                }
                it.copy(
                    readingMode = mode,
                    currentPageIndex = adjustedPage,
                    // НЕ сбрасываем bitmaps - они могут быть полезны
                    // НЕ сбрасываем currentPageIndex - сохраняем позицию
                    // НЕ сбрасываем pageCount - количество страниц не меняется
                    currentPageBitmap = it.bitmaps[adjustedPage] // Восстанавливаем текущую страницу из кэша
                )
            }
            
            // 3. Если текущая страница есть в кэше, используем её, иначе загружаем
            val restoredPage = _uiState.value.currentPageIndex
            if (_uiState.value.currentPageBitmap == null && restoredPage < currentPageCount) {
                loadPage(restoredPage)
            }
            
            // 4. Analytics
            analyticsHelper.track(
                com.example.core.analytics.AnalyticsEvent.ReadingModeChanged(
                    mode = when (mode) {
                        ReadingMode.WEBTOON -> "webtoon"
                        ReadingMode.DUAL_PAGE -> "dual"
                        ReadingMode.PAGE -> "page"
                    }
                ),
                this
            )
        }
    }

    fun setReadingDirection(direction: ReadingDirection) {
        android.util.Log.d(TAG, "Setting reading direction: $direction")
        _uiState.update { it.copy(readingDirection = direction) }
    }

    fun updateVisibleWebtoonPage(pageIndex: Int) {
        val state = _uiState.value
        if (state.readingMode != ReadingMode.WEBTOON || state.pageCount == 0) return

        val clamped = pageIndex.coerceIn(0, state.pageCount - 1)
        if (clamped == state.visibleWebtoonPage) return

        _uiState.update {
            it.copy(
                visibleWebtoonPage = clamped,
                currentPageIndex = clamped,
                currentPageBitmap = it.bitmaps[clamped] ?: it.currentPageBitmap
            )
        }

        // Сохраняем прогресс при изменении видимой страницы в Webtoon
        saveProgressAsync(clamped)
    }
    
    private fun normalizeReadingMode(raw: String?): String {
        return when (raw?.lowercase()?.trim()) {
            "vertical", "webtoon" -> "webtoon"
            "dual", "dual_page", "landscape_dual" -> "dual"
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
                val startTime = SystemClock.elapsedRealtime()
                // Используем настройки качества изображений
                val dpi = imageRenderDpi.value
                val qualityPreset = imageQuality.value
                val quality = when (qualityPreset) {
                    "high" -> 1.0f
                    "medium" -> 0.9f
                    "low" -> 0.75f
                    else -> 1.0f
                }

                val (width, height) = when (qualityPreset) {
                    "high" -> Int.MAX_VALUE to Int.MAX_VALUE
                    "medium" -> ((dpi * 1.4f).toInt()) to ((dpi * 1.1f).toInt())
                    "low" -> ((dpi * 1.1f).toInt()) to ((dpi * 0.9f).toInt())
                    else -> ((dpi * 1.6f).toInt()) to ((dpi * 1.2f).toInt())
                }
                
                val result = reader.renderPage(pageIndex, width, height, quality)
                if (result.isSuccess) {
                    result.getOrNull()?.also { bitmap ->
                        val renderTime = SystemClock.elapsedRealtime() - startTime
                        android.util.Log.d(
                            TAG,
                            "Decoded page $pageIndex at ${bitmap.width}x${bitmap.height} (quality=$qualityPreset, dpi=$dpi)"
                        )
                        val cacheUri = _uiState.value.currentComicUri ?: currentComicId
                        if (cacheUri != null) {
                            val cacheKey = bitmapCache.createKey(
                                cacheUri,
                                pageIndex,
                                bitmap.width,
                                bitmap.height,
                                quality
                            )
                            bitmapCache.putBitmap(cacheKey, bitmap)
                        }
                        val preloadStats = pagePreloader.getPreloadStats()
                        val cacheStats = runCatching { bitmapCache.getCacheStats() }.getOrNull()
                        _diagnosticsState.update {
                            it.copy(
                                lastRenderedPage = pageIndex,
                                renderWidth = bitmap.width,
                                renderHeight = bitmap.height,
                                renderTimeMs = renderTime,
                                imageQuality = qualityPreset,
                                imageDpi = dpi,
                                readingMode = _uiState.value.readingMode,
                                preloadStats = preloadStats,
                                cacheStats = cacheStats
                            )
                        }
                    }
                } else {
                    android.util.Log.e(TAG, "Failed to render page $pageIndex: ${result.exceptionOrNull()?.message}")
                    null
                }
            } else {
                null
            }
        }
    }

    fun loadPage(pageIndex: Int, showLoadingIndicator: Boolean = true) {
        android.util.Log.d(TAG, "Loading page: $pageIndex")
        if (showLoadingIndicator) {
            _uiState.update { it.copy(isLoading = true) }
        }
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

                val shouldResetCustomScale = currentState.scaleMode == "custom" &&
                    currentState.currentZoomScale <= 1.001f
                val restoredScaleMode = if (shouldResetCustomScale) {
                    normalizeScaleMode(readingScaleMode.value)
                } else {
                    currentState.scaleMode
                }

                currentState.copy(
                    isLoading = false,
                    currentPageIndex = pageIndex,
                    visibleWebtoonPage = if (currentState.readingMode == ReadingMode.WEBTOON) currentState.visibleWebtoonPage else pageIndex,
                    currentPageBitmap = bitmap,
                    bitmaps = updatedBitmaps,
                    error = if (bitmap == null) "Failed to load page ${pageIndex + 1}" else null,
                    currentZoomScale = 1.0f,
                    zoomCenter = androidx.compose.ui.geometry.Offset.Zero,
                    offsetX = 0f,
                    offsetY = 0f,
                    scaleMode = restoredScaleMode
                )
            }

            // Обновляем прогресс для обычного режима страниц и Dual Page
            saveProgressAsync(pageIndex)

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
    
    /**
     * Apply pinch-to-zoom with scale and center point
     */
    fun zoom(scale: Float, center: androidx.compose.ui.geometry.Offset) {
        android.util.Log.d(TAG, "Zoom: scale=$scale, center=$center")
        
        // Update zoom state
        _uiState.update { currentState ->
            val newScale = (currentState.currentZoomScale * scale).coerceIn(0.5f, 5.0f)
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
     * Reset zoom to default (fit-width) with proper state management
     */
    fun resetZoom() {
        android.util.Log.d(TAG, "Resetting zoom to default with animation")
        
        // Определяем оптимальный режим масштабирования по ориентации
        val optimalScaleMode = when (_uiState.value.orientation) {
            "portrait" -> "width"  // FitWidth для портрета
            "landscape" -> "height" // FitHeight для ландшафта
            else -> "width" // По умолчанию FitWidth
        }
        
        // Сбрасываем все параметры зума к исходному состоянию с анимацией
        _uiState.update { currentState ->
            currentState.copy(
                currentZoomScale = 1.0f,
                zoomCenter = androidx.compose.ui.geometry.Offset.Zero,
                offsetX = 0f,
                offsetY = 0f,
                scaleMode = optimalScaleMode // Возвращаем к оптимальному режиму по ориентации
            )
        }
        
        // Сохраняем настройки
        viewModelScope.launch {
            settingsRepository.setScaleMode(optimalScaleMode)
            
            // Аналитика
            analyticsHelper.track(
                com.example.core.analytics.AnalyticsEvent.SettingChanged(
                    settingName = "zoom_reset",
                    value = optimalScaleMode
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
     */
    fun updateBrightness(brightness: Float) {
        val clampedBrightness = brightness.coerceIn(0.0f, 1.0f)
        _brightnessState.value = clampedBrightness
        _uiState.update { it.copy(readerBrightness = clampedBrightness) }

        // В системную яркость пишем только в авто-режиме.
        // В ручном режиме работаем через оверлей, чтобы избежать мерцаний экрана.
        if (_uiState.value.readerBrightnessMode == "auto") {
            applySystemBrightness(clampedBrightness)
        }

        brightnessWriteFlow.tryEmit(clampedBrightness)
    }

    private fun applySystemBrightness(brightness: Float) {
        viewModelScope.launch {
            try {
                val activity = context as? Activity
                activity?.let { act ->
                    val layoutParams = act.window.attributes
                    layoutParams.screenBrightness = brightness
                    act.window.attributes = layoutParams
                    android.util.Log.d(TAG, "System brightness updated to: $brightness")
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
                if (currentState.readerBrightnessMode == mode) currentState
                else currentState.copy(readerBrightnessMode = mode)
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
     * Update orientation setting
     */
    fun updateOrientation(orientation: String) {
        viewModelScope.launch {
            settingsRepository.setOrientation(orientation)
        }
    }
    
    /**
     * Update scale mode setting
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
     * Toggle orientation
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
            
            currentState.copy(
                currentZoomScale = newScale,
                zoomCenter = position,
                scaleMode = if (newScale > 1.0f) "custom" else "width"
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
     * Асинхронное сохранение прогресса для заданной страницы.
     * Используется для Webtoon и обычного/двойного режима при смене страницы.
     */
    private fun saveProgressAsync(pageIndex: Int) {
        val comicId = currentComicId ?: _uiState.value.currentComicUri ?: return
        viewModelScope.launch {
            try {
                saveReadingProgressUseCase.saveProgress(
                    filePath = comicId,
                    pageIndex = pageIndex
                )
                android.util.Log.d(TAG, "Progress saved async: page=${pageIndex + 1}")
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Failed to save progress async", e)
            }
        }
    }

    /**
     * Apply dual page mode logic based on device characteristics and user settings
     * This should be called from the UI layer with current device info
     */
    fun applyDualPageLogic(isLandscape: Boolean) {
        viewModelScope.launch {
            val enableDualPage = enableDualPageMode.value
            val enableWebtoon = enableWebtoonMode.value
            val savedMode = currentComicId?.let { settingsRepository.getReadingModeForComic(it) }

            // STRICT RULE: Landscape = Dual Page Only
            if (isLandscape) {
                if (_uiState.value.readingMode != ReadingMode.DUAL_PAGE) {
                    android.util.Log.d(TAG, "📺 Landscape detected: Enforcing DUAL_PAGE mode")
                    setReadingMode(ReadingMode.DUAL_PAGE)
                }
            } 
            // STRICT RULE: Portrait = Page or Webtoon (No Dual Page)
            else {
                // If currently in Dual Page (which is for landscape), switch out.
                if (_uiState.value.readingMode == ReadingMode.DUAL_PAGE) {
                    val targetMode = if (enableWebtoon) ReadingMode.WEBTOON else ReadingMode.PAGE
                    android.util.Log.d(TAG, "📱 Portrait detected: Switching from Dual Page to $targetMode")
                    setReadingMode(targetMode)
                }
                
                // If Webtoon is enabled but we are in PAGE mode (and haven't saved a preference), auto-switch?
                // User said "Webtoon/Pages - only in portrait".
                // We respect saved preferences here for Portrait modes.
                if (savedMode == null && enableWebtoon && _uiState.value.readingMode == ReadingMode.PAGE) {
                    android.util.Log.d(TAG, "📱 Portrait default: Auto-applying WEBTOON")
                    setReadingMode(ReadingMode.WEBTOON)
                }
            }
        }
    }

}
