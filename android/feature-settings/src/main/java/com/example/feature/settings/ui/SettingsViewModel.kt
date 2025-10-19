package com.example.feature.settings.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.LocalResourcesRepository
import com.example.core.data.repository.SettingsRepository
import com.example.core.model.SortOrder
import com.example.core.model.LocalDictionary
import com.example.core.model.LocalModel
import com.example.core.ui.theme.ThemePreferencesRepository
import com.example.core.ui.theme.ThemeMode
import com.example.core.ui.theme.ReaderThemeMode
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class SettingsViewModel @Inject constructor(
    private val settingsRepository: SettingsRepository,
    private val localResourcesRepository: LocalResourcesRepository,
    private val themePreferencesRepository: ThemePreferencesRepository
) : ViewModel() {

    private val dictionariesFlow = MutableStateFlow<List<LocalDictionary>>(emptyList())
    private val modelsFlow = MutableStateFlow<List<LocalModel>>(emptyList())
    private val selectedDictionaryFlow = MutableStateFlow<LocalDictionary?>(null)
    private val selectedModelFlow = MutableStateFlow<LocalModel?>(null)

    val uiState = combine(
        settingsRepository.sortOrder,
        settingsRepository.libraryFolders,
        settingsRepository.targetLanguage,
        settingsRepository.ocrEngine,
        settingsRepository.translationProvider,
        settingsRepository.translationApiKey,
        settingsRepository.performanceMode,
        dictionariesFlow,
        modelsFlow,
        selectedDictionaryFlow,
        selectedModelFlow,
        themePreferencesRepository.themeConfig,
        themePreferencesRepository.readerThemeConfig,
        // Reading
        settingsRepository.readingMode,
        settingsRepository.scaleMode,
        settingsRepository.readingDoubleTapZoom,
        settingsRepository.readingBlockSwipeWhenZoomed,
        settingsRepository.readerBackground,
        settingsRepository.readerBrightness,
        settingsRepository.readerAnimationSpeed,
        settingsRepository.pageTurnSoundEnabled,
        // Reader Customization Settings
        settingsRepository.readerTapZonesSize,
        settingsRepository.readerTapZonesSensitivity,
        settingsRepository.readerShowPageIndicator,
        settingsRepository.readerShowProgressBar,
        settingsRepository.readerAutoHideUI,
        settingsRepository.readerAutoHideDelay,
        settingsRepository.readerGestureSensitivity,
        settingsRepository.readerVibrationFeedback,
        // Image Quality Settings
        settingsRepository.imageQuality,
        settingsRepository.imageRenderDpi,
        settingsRepository.imageCacheSize,
        settingsRepository.imagePreloadPages,
        settingsRepository.imageCompressionLevel,
        // Gesture Settings
        settingsRepository.gestureSwipeThreshold,
        settingsRepository.gestureZoomSensitivity,
        settingsRepository.gesturePanSensitivity,
        settingsRepository.navigationSwipeEnabled,
        settingsRepository.navigationTapZonesEnabled,
        settingsRepository.navigationKeyboardShortcuts,
        // Notification Settings
        settingsRepository.soundPageTurn,
        settingsRepository.soundVolume,
        settingsRepository.vibrationPageTurn,
        settingsRepository.vibrationIntensity,
        settingsRepository.notificationProgress
    ) { values ->
        val sortOrder = values[0] as SortOrder
        val folders = values[1] as Set<String>
        val language = values[2] as String
        val engine = values[3] as String
        val provider = values[4] as String
        val apiKey = values[5] as String
        val perfMode = values[6] as Boolean
        val dictionaries = values[7] as List<LocalDictionary>
        val models = values[8] as List<LocalModel>
        val selectedDictionary = values[9] as LocalDictionary?
        val selectedModel = values[10] as LocalModel?
        val themeConfig = values[11] as com.example.core.ui.theme.ThemeConfig
        val readerThemeConfig = values[12] as com.example.core.ui.theme.ReaderThemeConfig
        val readingMode = values[13] as String
        val scaleMode = values[14] as String
        val doubleTapZoom = values[15] as Float
        val blockSwipeWhenZoomed = values[16] as Boolean
        val readerBackground = values[17] as Long
        val readerBrightness = values[18] as Float
        val readerAnimationSpeed = values[19] as Float
        val pageTurnSoundEnabled = values[20] as Boolean
        // Reader Customization Settings
        val readerTapZonesSize = values[21] as Float
        val readerTapZonesSensitivity = values[22] as Float
        val readerShowPageIndicator = values[23] as Boolean
        val readerShowProgressBar = values[24] as Boolean
        val readerAutoHideUI = values[25] as Boolean
        val readerAutoHideDelay = values[26] as Int
        val readerGestureSensitivity = values[27] as Float
        val readerVibrationFeedback = values[28] as Boolean
        // Image Quality Settings
        val imageQuality = values[29] as String
        val imageRenderDpi = values[30] as Int
        val imageCacheSize = values[31] as Int
        val imagePreloadPages = values[32] as Int
        val imageCompressionLevel = values[33] as Int
        // Gesture Settings
        val gestureSwipeThreshold = values[34] as Float
        val gestureZoomSensitivity = values[35] as Float
        val gesturePanSensitivity = values[36] as Float
        val navigationSwipeEnabled = values[37] as Boolean
        val navigationTapZonesEnabled = values[38] as Boolean
        val navigationKeyboardShortcuts = values[39] as Boolean
        // Notification Settings
        val soundPageTurn = values[40] as Boolean
        val soundVolume = values[41] as Float
        val vibrationPageTurn = values[42] as Boolean
        val vibrationIntensity = values[43] as Float
        val notificationProgress = values[44] as Boolean
        
        SettingsUiState(
            sortOrder = sortOrder,
            libraryFolders = folders,
            targetLanguage = language,
            ocrEngine = engine,
            translationProvider = provider,
            translationApiKey = apiKey,
            performanceMode = perfMode,
            availableDictionaries = dictionaries,
            availableModels = models,
            selectedDictionary = selectedDictionary,
            selectedModel = selectedModel,
            themeMode = themeConfig.themeMode,
            useDynamicColor = themeConfig.useDynamicColor,
            useAmoledDark = themeConfig.useAmoledDark,
            readerThemeMode = readerThemeConfig.themeMode,
            readerUseAmoled = readerThemeConfig.useAmoled,
            readingMode = readingMode,
            scaleMode = scaleMode,
            doubleTapZoom = doubleTapZoom,
            blockSwipeWhenZoomed = blockSwipeWhenZoomed,
            readerBackground = readerBackground,
            readerBrightness = readerBrightness,
            readerAnimationSpeed = readerAnimationSpeed,
            pageTurnSoundEnabled = pageTurnSoundEnabled,
            // Reader Customization Settings
            readerTapZonesSize = readerTapZonesSize,
            readerTapZonesSensitivity = readerTapZonesSensitivity,
            readerShowPageIndicator = readerShowPageIndicator,
            readerShowProgressBar = readerShowProgressBar,
            readerAutoHideUI = readerAutoHideUI,
            readerAutoHideDelay = readerAutoHideDelay,
            readerGestureSensitivity = readerGestureSensitivity,
            readerVibrationFeedback = readerVibrationFeedback,
            // Image Quality Settings
            imageQuality = imageQuality,
            imageRenderDpi = imageRenderDpi,
            imageCacheSize = imageCacheSize,
            imagePreloadPages = imagePreloadPages,
            imageCompressionLevel = imageCompressionLevel,
            // Gesture Settings
            gestureSwipeThreshold = gestureSwipeThreshold,
            gestureZoomSensitivity = gestureZoomSensitivity,
            gesturePanSensitivity = gesturePanSensitivity,
            navigationSwipeEnabled = navigationSwipeEnabled,
            navigationTapZonesEnabled = navigationTapZonesEnabled,
            navigationKeyboardShortcuts = navigationKeyboardShortcuts,
            // Notification Settings
            soundPageTurn = soundPageTurn,
            soundVolume = soundVolume,
            vibrationPageTurn = vibrationPageTurn,
            vibrationIntensity = vibrationIntensity,
            notificationProgress = notificationProgress
        )
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5_000),
        initialValue = SettingsUiState()
    )

    init {
        refreshLocalResources()
    }

    fun refreshLocalResources() {
        viewModelScope.launch {
            dictionariesFlow.value = localResourcesRepository.listDictionaries()
            modelsFlow.value = localResourcesRepository.listModels()
        }
    }

    fun selectDictionary(dictionary: LocalDictionary?) {
        selectedDictionaryFlow.value = dictionary
    }

    fun selectModel(model: LocalModel?) {
        selectedModelFlow.value = model
    }

    fun onSortOrderSelected(sortOrder: SortOrder) {
        viewModelScope.launch {
            settingsRepository.setSortOrder(sortOrder)
        }
    }

    fun onAddFolder(folderUri: String) {
        viewModelScope.launch {
            settingsRepository.addLibraryFolder(folderUri)
        }
    }

    fun onRemoveFolder(folderUri: String) {
        viewModelScope.launch {
            settingsRepository.removeLibraryFolder(folderUri)
        }
    }

    fun onLanguageSelected(language: String) {
        viewModelScope.launch {
            settingsRepository.setTargetLanguage(language)
        }
    }

    fun onOcrEngineSelected(engine: String) {
        viewModelScope.launch {
            settingsRepository.setOcrEngine(engine)
        }
    }

    fun onTranslationProviderSelected(provider: String) {
        viewModelScope.launch {
            settingsRepository.setTranslationProvider(provider)
        }
    }

    fun onApiKeyChanged(key: String) {
        viewModelScope.launch {
            settingsRepository.setTranslationApiKey(key)
        }
    }

    fun onPerformanceModeChanged(enabled: Boolean) {
        viewModelScope.launch {
            settingsRepository.setPerformanceMode(enabled)
        }
    }

    fun createLocalBackup() {
        viewModelScope.launch {
            settingsRepository.createLocalBackup()
        }
    }

    fun restoreLocalBackup() {
        viewModelScope.launch {
            settingsRepository.restoreLocalBackup()
        }
    }

    fun createCloudBackup() {
        viewModelScope.launch {
            settingsRepository.createCloudBackup()
        }
    }

    fun restoreCloudBackup() {
        viewModelScope.launch {
            settingsRepository.restoreCloudBackup()
        }
    }

    fun changeAppIcon() {
        viewModelScope.launch {
            settingsRepository.changeAppIcon()
        }
    }

    fun clearCache() {
        viewModelScope.launch {
            settingsRepository.clearCache()
        }
    }
    
    // Reading-related methods
    fun onReadingModeChanged(mode: String) {
        viewModelScope.launch { settingsRepository.setReadingMode(mode) }
    }
    fun onScaleModeChanged(mode: String) {
        viewModelScope.launch { settingsRepository.setScaleMode(mode) }
    }
    fun onDoubleTapZoomChanged(value: Float) {
        viewModelScope.launch { settingsRepository.setReadingDoubleTapZoom(value) }
    }
    fun onBlockSwipeWhenZoomedChanged(enabled: Boolean) {
        viewModelScope.launch { settingsRepository.setReadingBlockSwipeWhenZoomed(enabled) }
    }
    fun onReaderBackgroundChanged(color: Long) {
        viewModelScope.launch { settingsRepository.setReaderBackground(color) }
    }
    fun onReaderBrightnessChanged(value: Float) {
        viewModelScope.launch { settingsRepository.setReaderBrightness(value) }
    }
    fun onReaderAnimationSpeedChanged(value: Float) {
        viewModelScope.launch { settingsRepository.setReaderAnimationSpeed(value) }
    }
    fun onPageTurnSoundChanged(enabled: Boolean) {
        viewModelScope.launch { settingsRepository.setPageTurnSoundEnabled(enabled) }
    }

    // Theme-related methods
    fun onThemeModeChanged(themeMode: ThemeMode) {
        viewModelScope.launch {
            themePreferencesRepository.setThemeMode(themeMode)
        }
    }
    
    fun onDynamicColorChanged(useDynamicColor: Boolean) {
        viewModelScope.launch {
            themePreferencesRepository.setUseDynamicColor(useDynamicColor)
        }
    }
    
    fun onAmoledDarkChanged(useAmoledDark: Boolean) {
        viewModelScope.launch {
            themePreferencesRepository.setUseAmoledDark(useAmoledDark)
        }
    }
    
    fun onReaderThemeModeChanged(readerThemeMode: ReaderThemeMode) {
        viewModelScope.launch {
            themePreferencesRepository.setReaderThemeMode(readerThemeMode)
        }
    }
    
    fun onReaderUseAmoledChanged(readerUseAmoled: Boolean) {
        viewModelScope.launch {
            themePreferencesRepository.setReaderUseAmoled(readerUseAmoled)
        }
    }

    // Reader Customization Methods
    fun onReaderTapZonesSizeChanged(size: Float) {
        viewModelScope.launch { settingsRepository.setReaderTapZonesSize(size) }
    }
    fun onReaderTapZonesSensitivityChanged(sensitivity: Float) {
        viewModelScope.launch { settingsRepository.setReaderTapZonesSensitivity(sensitivity) }
    }
    fun onReaderShowPageIndicatorChanged(show: Boolean) {
        viewModelScope.launch { settingsRepository.setReaderShowPageIndicator(show) }
    }
    fun onReaderShowProgressBarChanged(show: Boolean) {
        viewModelScope.launch { settingsRepository.setReaderShowProgressBar(show) }
    }
    fun onReaderAutoHideUIChanged(autoHide: Boolean) {
        viewModelScope.launch { settingsRepository.setReaderAutoHideUI(autoHide) }
    }
    fun onReaderAutoHideDelayChanged(delay: Int) {
        viewModelScope.launch { settingsRepository.setReaderAutoHideDelay(delay) }
    }
    fun onReaderGestureSensitivityChanged(sensitivity: Float) {
        viewModelScope.launch { settingsRepository.setReaderGestureSensitivity(sensitivity) }
    }
    fun onReaderVibrationFeedbackChanged(vibration: Boolean) {
        viewModelScope.launch { settingsRepository.setReaderVibrationFeedback(vibration) }
    }

    // Image Quality Methods
    fun onImageQualityChanged(quality: String) {
        viewModelScope.launch { settingsRepository.setImageQuality(quality) }
    }
    fun onImageRenderDpiChanged(dpi: Int) {
        viewModelScope.launch { settingsRepository.setImageRenderDpi(dpi) }
    }
    fun onImageCacheSizeChanged(size: Int) {
        viewModelScope.launch { settingsRepository.setImageCacheSize(size) }
    }
    fun onImagePreloadPagesChanged(pages: Int) {
        viewModelScope.launch { settingsRepository.setImagePreloadPages(pages) }
    }
    fun onImageCompressionLevelChanged(level: Int) {
        viewModelScope.launch { settingsRepository.setImageCompressionLevel(level) }
    }

    // Gesture Settings Methods
    fun onGestureSwipeThresholdChanged(threshold: Float) {
        viewModelScope.launch { settingsRepository.setGestureSwipeThreshold(threshold) }
    }
    fun onGestureZoomSensitivityChanged(sensitivity: Float) {
        viewModelScope.launch { settingsRepository.setGestureZoomSensitivity(sensitivity) }
    }
    fun onGesturePanSensitivityChanged(sensitivity: Float) {
        viewModelScope.launch { settingsRepository.setGesturePanSensitivity(sensitivity) }
    }
    fun onNavigationSwipeEnabledChanged(enabled: Boolean) {
        viewModelScope.launch { settingsRepository.setNavigationSwipeEnabled(enabled) }
    }
    fun onNavigationTapZonesEnabledChanged(enabled: Boolean) {
        viewModelScope.launch { settingsRepository.setNavigationTapZonesEnabled(enabled) }
    }
    fun onNavigationKeyboardShortcutsChanged(enabled: Boolean) {
        viewModelScope.launch { settingsRepository.setNavigationKeyboardShortcuts(enabled) }
    }

    // Notification Settings Methods
    fun onSoundPageTurnChanged(enabled: Boolean) {
        viewModelScope.launch { settingsRepository.setSoundPageTurn(enabled) }
    }
    fun onSoundVolumeChanged(volume: Float) {
        viewModelScope.launch { settingsRepository.setSoundVolume(volume) }
    }
    fun onVibrationPageTurnChanged(enabled: Boolean) {
        viewModelScope.launch { settingsRepository.setVibrationPageTurn(enabled) }
    }
    fun onVibrationIntensityChanged(intensity: Float) {
        viewModelScope.launch { settingsRepository.setVibrationIntensity(intensity) }
    }
    fun onNotificationProgressChanged(enabled: Boolean) {
        viewModelScope.launch { settingsRepository.setNotificationProgress(enabled) }
    }
}
